<##############################################################################
Part of PowerShell module : GenXdev.Coding.PowerShell.Modules
Original cmdlet filename  : New-ModuleMarkdownHelp.ps1
Original author           : René Vaessen / GenXdev
Version                   : 3.26.2026
################################################################################
Copyright (c) 2026 René Vaessen / GenXdev

Licensed under the Apache License, Version 2.0 (the "License");
you may not use this file except in compliance with the License.
You may obtain a copy of the License at

    http://www.apache.org/licenses/LICENSE-2.0

Unless required by applicable law or agreed to in writing, software
distributed under the License is distributed on an "AS IS" BASIS,
WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
See the License for the specific language governing permissions and
limitations under the License.
################################################################################>

###############################################################################
<#
.SYNOPSIS
Generates rich Markdown help files for any PowerShell module.

.DESCRIPTION
Generates a comprehensive Markdown help site for any PowerShell module:
one .md file per cmdlet with all metadata sections, plus a README.md
index with per-sub-module tables linking to each cmdlet file.

Sub-module discovery is portable: .psm1 dot-source directories for
script cmdlets, .NET namespaces for compiled cmdlets, with a layered
fallback chain for modules without sub-module structure.

.PARAMETER ModuleName
The name of the PowerShell module to generate help for (e.g., 'Pester',
'PSReadLine', 'GenXdev').

.PARAMETER OutputPath
Custom output directory for generated .md files. Defaults to
<moduleRoot>\Docs\. The directory is created if it doesn't exist.

.PARAMETER Language
BCP 47 language tag for translation. Defaults to 'en-US' which skips
translation.

.PARAMETER Force
Overwrite existing .md files without prompting.

.PARAMETER SkipTranslation
Skip LLM-based translation; keep help text in the source language.

.PARAMETER Model
The model identifier or pattern to use for AI translations.

.PARAMETER ApiEndpoint
The API endpoint URL for AI translations.

.PARAMETER ApiKey
The API key for authenticated AI translations.

.PARAMETER LinkPrefix
URL prefix for README index links. When specified, cmdlet links use
absolute URLs (e.g., https://github.com/org/repo/Docs/CmdletName.md).
When omitted, links use relative paths (./CmdletName.md).

.PARAMETER TranslationInstructions
Custom instructions for the AI translation model.

.EXAMPLE
New-ModuleMarkdownHelp -ModuleName 'Pester' -SkipTranslation

Generates Docs\ folder with one .md per Pester cmdlet + README.md index.

.EXAMPLE
New-ModuleMarkdownHelp -ModuleName 'GenXdev' -Language 'nl-NL' -Force -Model 'deepseek-v4-pro' -ApiKey 'your-api-key' -ApiEndpoint 'https://api.deepseek.com/chat/completions'

Generates Dutch-translated markdown help, overwriting existing files.

.EXAMPLE
New-ModuleMarkdownHelp -ModuleName 'GenXdev' -LinkPrefix `
    'https://github.com/genXdev/genXdev/Docs/' -SkipTranslation

Generates help with absolute GitHub links in the README index.
#>
function New-ModuleMarkdownHelp {

    [CmdletBinding(SupportsShouldProcess, ConfirmImpact = 'Medium')]
    [OutputType([System.String[]])]
    param (
        #######################################################################
        [Parameter(
            Position = 0,
            Mandatory = $true,
            HelpMessage = 'The name of the PowerShell module to generate ' +
            'help for'
        )]
        [ValidateScript({
                $m = Microsoft.PowerShell.Core\Get-Module -Name $_ `
                    -ErrorAction SilentlyContinue
                if (-not $m) {
                    $m = Microsoft.PowerShell.Core\Get-Module -Name $_ `
                        -ListAvailable -ErrorAction SilentlyContinue
                }
                if (-not $m) {
                    throw "Module '$_' not found. " +
                    'Provide a valid module name.'
                }
                $true
            })]
        [string] $ModuleName,
        #######################################################################
        [Parameter(
            Mandatory = $false,
            HelpMessage = 'Custom output directory for .md files. ' +
            'Defaults to <moduleRoot>\Docs\<language>.'
        )]
        [ValidateNotNullOrEmpty()]
        [string] $OutputPath,
        #######################################################################
        [ValidateSet(
            'ar-SA',
            'bg-BG',
            'bn-IN',
            'ca-ES',
            'cs-CZ',
            'da-DK',
            'de-DE',
            'el-GR',
            'en-US',
            'es-ES',
            'et-EE',
            'fi-FI',
            'fr-FR',
            'gu-IN',
            'he-IL',
            'hi-IN',
            'hr-HR',
            'hu-HU',
            'id-ID',
            'it-IT',
            'ja-JP',
            'kn-IN',
            'ko-KR',
            'lt-LT',
            'lv-LV',
            'ml-IN',
            'mr-IN',
            'ms-MY',
            'nb-NO',
            'nl-NL',
            'pa-IN',
            'pl-PL',
            'pt-BR',
            'ro-RO',
            'ru-RU',
            'sk-SK',
            'sl-SI',
            'sr-RS',
            'sv-SE',
            'ta-IN',
            'te-IN',
            'th-TH',
            'tr-TR',
            'uk-UA',
            'vi-VN',
            'zh-Hans-CN'
        )]
        [Parameter(
            Mandatory = $false,
            HelpMessage = 'BCP 47 language tag for the generated help ' +
            '(e.g., en-US, nl-NL, de-DE)'
        )]
        [string] $Language = 'en-US',
        #######################################################################
        [Parameter(
            Mandatory = $false,
            HelpMessage = 'Overwrite existing .md files without prompting'
        )]
        [switch] $Force,
        #######################################################################
        [Parameter(
            Mandatory = $false,
            HelpMessage = 'Skip LLM translation; keep help in source ' +
            'language'
        )]
        [switch] $SkipTranslation,
        #######################################################################
        [Parameter(
            Mandatory = $false,
            HelpMessage = ('The model identifier or pattern to use for AI translations')
        )]
        [string] $Model,
        ###########################################################################
        [Parameter(
            Mandatory = $false,
            HelpMessage = 'The API endpoint URL for AI translations'
        )]
        [string] $ApiEndpoint,
        ###########################################################################
        [Parameter(
            Mandatory = $false,
            HelpMessage = 'The API key for authenticated AI translations'
        )]
        [string] $ApiKey,
        ###################################################################
        [Parameter(
            Mandatory = $false,
            HelpMessage = 'Indicates that LLM has no support for JSON schemas'
        )]
        [string] $NoSupportForJsonSchema,
        ###########################################################################
        [Parameter(
            Mandatory = $false,
            HelpMessage = 'URL prefix for README index links (e.g., ' +
            'https://github.com/org/repo/Docs/)'
        )]
        [string] $LinkPrefix,
        #######################################################################
        [Parameter(
            Mandatory = $false,
            HelpMessage = 'Custom AI translation instructions'
        )]
        [string] $TranslationInstructions
    )

    begin {

        function BuildSyntaxLine {
            param(
                [string] $CmdletName,
                [object[]] $Parameters,
                [string] $SetName
            )

            # Filter to parameters that belong to this set.
            $setParams = $Parameters | Microsoft.PowerShell.Core\Where-Object {
                if ($_.ParameterSetNames) {
                    $_.ParameterSetNames -contains $SetName
                }
                elseif ($_.ParameterSetName) {
                    $_.ParameterSetName -eq $SetName
                }
                else { $SetName -eq 'All' }
            }

            if (-not $setParams -or $setParams.Count -eq 0) {
                return "${CmdletName} [<CommonParameters>]"
            }

            # Sort: positional first (by numeric Position), then alpha.
            $sortedParams = $setParams |
                Microsoft.PowerShell.Utility\Sort-Object -Property @{
                    Expression = {
                        $pos = $_.Position
                        if ($pos -and $pos -ne 'Named') {
                            try { return [int]$pos } catch { }
                        }
                        return [int]::MaxValue
                    }
                }, 'Name'

            $line = $CmdletName
            foreach ($p in $sortedParams) {
                if ($p.DontShow) { continue }

                $shortType = if ($p.ParameterType) {
                    ($p.ParameterType `
                        -replace '^System\.', '' `
                        -replace 'Management\.Automation\.', '' `
                        -replace 'Collections\.Generic\.', '' `
                        -replace '``1', '')
                }
                else { 'Object' }

                $isPositional = ($p.Position -and $p.Position -ne 'Named')
                $isMandatory = $p.Mandatory
                $isSwitch = ($shortType -eq 'SwitchParameter')

                if ($isSwitch) {
                    $line += if ($isMandatory) {
                        " -$($p.Name)"
                    }
                    else { " [-$($p.Name)]" }
                }
                elseif ($isMandatory) {
                    $line += " -$($p.Name) <$shortType>"
                }
                elseif ($isPositional) {
                    $line += " [[-$($p.Name)] <$shortType>]"
                }
                else {
                    $line += " [-$($p.Name) <$shortType>]"
                }
            }
            $line += ' [<CommonParameters>]'

            return $line
        }

        function RenderCmdletMarkdown {
            param(
                [hashtable] $Meta,
                [string] $SubModuleName,
                [object[]] $SiblingCmdlets = @(),
                [string] $LinkPrefix = ''
            )

            $cmdletName = if ($Meta['CmdletName']) {
                $Meta['CmdletName']
            }
            else {
                ($Meta['Definition'] -split '\s+')[0]
            }

            $cmdletType = if ($Meta['CmdletType']) {
                $Meta['CmdletType']
            }
            else { 'Function' }

            $aliases = if ($Meta['Aliases'] -and $Meta['Aliases'].Count -gt 0) {
                ($Meta['Aliases'] | Microsoft.PowerShell.Core\ForEach-Object { "``${_}``" }) -join ', '
            }
            else { '—' }

            [System.Text.StringBuilder] $sb = [System.Text.StringBuilder]::new()

            # -- Header --------------------------------------------------------------
            $null = $sb.AppendLine("# ${cmdletName}")
            $null = $sb.AppendLine()
            $null = $sb.AppendLine(
                "> **Module:** ${SubModuleName} | **Type:** ${cmdletType} | " +
                "**Aliases:** ${aliases}")
            $null = $sb.AppendLine()

            # -- Synopsis ------------------------------------------------------------
            $synopsis = if (-not [string]::IsNullOrWhiteSpace($Meta['Synopsis'])) {
                $Meta['Synopsis']
            }
            else { '*(No synopsis provided)*' }

            $null = $sb.AppendLine('## Synopsis')
            $null = $sb.AppendLine()
            $null = $sb.AppendLine("> ${synopsis}")
            $null = $sb.AppendLine()

            # -- Description ---------------------------------------------------------
            if (-not [string]::IsNullOrWhiteSpace($Meta['Description'])) {
                $null = $sb.AppendLine('## Description')
                $null = $sb.AppendLine()

                $desc = $Meta['Description'].Trim()

                # Detect structured/indented content (bulleted lists, nested
                # indentation) that would lose formatting in plain markdown.
                # When detected, wrap in a fenced code block to preserve
                # line breaks and indentation exactly as authored.
                $isStructured = $desc -match '(?m)^\s{2,}(\*|-)'

                if ($isStructured) {
                    $null = $sb.AppendLine('```text')
                    $null = $sb.AppendLine($desc)
                    $null = $sb.AppendLine('```')
                }
                else {
                    # Use <details> for long descriptions (> 3 paragraphs).
                    $paragraphs = $desc -split '\r?\n\s*\r?\n'
                    if ($paragraphs.Count -gt 3) {
                        $null = $sb.AppendLine('<details>')
                        $null = $sb.AppendLine(
                            '<summary><b>Expand description</b></summary>')
                        $null = $sb.AppendLine()
                        foreach ($p in $paragraphs) {
                            $null = $sb.AppendLine($p.Trim())
                            $null = $sb.AppendLine()
                        }
                        $null = $sb.AppendLine('</details>')
                    }
                    else {
                        foreach ($p in $paragraphs) {
                            $null = $sb.AppendLine($p.Trim())
                            $null = $sb.AppendLine()
                        }
                    }
                }
            }

            # -- Syntax --------------------------------------------------------------
            $null = $sb.AppendLine('## Syntax')
            $null = $sb.AppendLine()

            $parameters = $Meta['Parameters']

            # Build syntax from parameter metadata for all cmdlet types.
            if ($parameters -and $parameters.Count -gt 0) {

                # Collect all unique parameter set names across all parameters.
                $allSetNames = [System.Collections.Generic.List[string]]::new()
                foreach ($p in $parameters) {
                    $sets = if ($p.ParameterSetNames) {
                        $p.ParameterSetNames
                    }
                    elseif ($p.ParameterSetName) {
                        @($p.ParameterSetName)
                    }
                    else { @('All') }

                    foreach ($sn in $sets) {
                        if ($sn -notin $allSetNames) {
                            $null = $allSetNames.Add($sn)
                        }
                    }
                }

                $null = $sb.AppendLine('```powershell')

                if ($allSetNames.Count -le 1) {
                    # Single set — render inline.
                    $singleSetName = if ($allSetNames.Count -eq 1) {
                        $allSetNames[0]
                    }
                    else { 'All' }
                    $null = $sb.AppendLine(
                        (BuildSyntaxLine $cmdletName $parameters $singleSetName))
                }
                else {
                    # Multiple sets — one line per set, first line is default.
                    $isFirst = $true
                    foreach ($setName in $allSetNames) {
                        if (-not $isFirst) {
                            $null = $sb.AppendLine()
                        }
                        $isFirst = $false

                        $null = $sb.AppendLine(
                            (BuildSyntaxLine $cmdletName $parameters $setName))
                    }
                }
                $null = $sb.AppendLine('```')
            }
            else {
                # No parameters — minimal syntax line.
                $null = $sb.AppendLine('```powershell')
                $null = $sb.AppendLine("${cmdletName} [<CommonParameters>]")
                $null = $sb.AppendLine('```')
            }
            $null = $sb.AppendLine()

            # -- Parameters ----------------------------------------------------------
            $parameters = $Meta['Parameters']
            if ($parameters -and $parameters.Count -gt 0) {
                $null = $sb.AppendLine('## Parameters')
                $null = $sb.AppendLine()

                # Column headers.
                $null = $sb.AppendLine(
                    '| Name | Type | Required | Pipeline | Position | ' +
                    'Default | Description |')
                $null = $sb.AppendLine(
                    '|:---|:---|:---:|:---|:---:|:---|:---|')

                foreach ($p in $parameters) {
                    $pName = "``-$($p.Name)``"

                    # Type — shorten common types.
                    $pType = $p.ParameterType
                    if ($pType) {
                        $pType = $pType `
                            -replace '^System\.', '' `
                            -replace 'Management\.Automation\.', '' `
                            -replace 'Collections\.Generic\.', '' `
                            -replace '``1', ''
                    }
                    else { $pType = '—' }

                    # Required.
                    $pRequired = if ($p.Mandatory) { '✅' } else { '—' }

                    # Pipeline.
                    $pipelineParts = @()
                    if ($p.ValueFromPipeline) {
                        $pipelineParts += 'ByValue'
                    }
                    if ($p.ValueFromPipelineByPropertyName) {
                        $pipelineParts += 'ByPropertyName'
                    }
                    $pPipeline = if ($pipelineParts.Count -gt 0) {
                        '✅ (' + ($pipelineParts -join ', ') + ')'
                    }
                    else { '—' }

                    # Remaining arguments.
                    if ($p.ValueFromRemainingArguments) {
                        $pPipeline += ' 🌐 Remaining'
                    }

                    # Position.
                    $pPosition = if ($p.Position -and $p.Position -ne 'Named') {
                        $p.Position
                    }
                    else { 'Named' }

                    # Default value.
                    $pDefault = if (-not [string]::IsNullOrWhiteSpace(
                            $p.DefaultValue)) {
                        "``$($p.DefaultValue)``"
                    }
                    else { '—' }

                    # Description (prefer HelpMessage, fallback to parameter name).
                    $pDesc = if (-not [string]::IsNullOrWhiteSpace(
                            $p.HelpMessage)) {
                        $p.HelpMessage
                    }
                    else { "The ${pName} parameter." }

                    # Parameter set name.
                    if ($p.ParameterSetName -and
                        $p.ParameterSetName -ne 'All' -and
                        $p.ParameterSetName -ne '__AllParameterSets') {
                        $pDesc += " *(Parameter set: ${p.ParameterSetName})*"
                    }

                    # Wildcards.
                    if ($p.SupportsWildcards) {
                        $pDesc += ' 🌐 *Supports wildcards*'
                    }

                    # DontShow.
                    if ($p.DontShow) {
                        $pDesc += ' *(hidden)*'
                    }

                    $null = $sb.AppendLine(
                        "| ${pName} | ${pType} | ${pRequired} | ${pPipeline} | " +
                        "${pPosition} | ${pDefault} | ${pDesc} |")
                }
                $null = $sb.AppendLine()
            }

            # -- Examples ------------------------------------------------------------
            $examples = $Meta['Examples']
            if ($examples -and $examples.Count -gt 0) {
                $null = $sb.AppendLine('## Examples')
                $null = $sb.AppendLine()

                $exampleNum = 1
                foreach ($ex in $examples) {
                    $exText = $ex.ToString().Trim()
                    if ([string]::IsNullOrWhiteSpace($exText)) { continue }

                    # Try to extract a title from the first non-code line.
                    $title = ''
                    $hasFence = $exText -match '```'

                    if ($hasFence) {
                        # Everything before first ``` is the title/description.
                        $fencePos = $exText.IndexOf('```')
                        if ($fencePos -gt 0) {
                            $title = $exText.Substring(0, $fencePos).Trim()
                        }
                    }
                    else {
                        # First non-blank line until first blank line.
                        $lines = $exText -split '\r?\n'
                        $titleLines = @()
                        foreach ($line in $lines) {
                            if ([string]::IsNullOrWhiteSpace($line)) { break }
                            $titleLines += $line
                        }
                        $title = ($titleLines -join ' ').Trim()
                    }

                    if ([string]::IsNullOrWhiteSpace($title)) {
                        $title = "Example ${exampleNum}"
                    }

                    $null = $sb.AppendLine("### ${title}")
                    $null = $sb.AppendLine()

                    # Render the example text with code fences.
                    if ($hasFence) {
                        $null = $sb.AppendLine($exText)
                    }
                    else {
                        $blankMatch = [regex]::Match(
                            $exText, '\r?\n\s*\r?\n')
                        if ($blankMatch.Success) {
                            $codePart = $exText.Substring(
                                0, $blankMatch.Index).TrimEnd()
                            $descPart = $exText.Substring(
                                $blankMatch.Index + $blankMatch.Length).Trim()

                            $null = $sb.AppendLine('```powershell')
                            $null = $sb.AppendLine($codePart)
                            $null = $sb.AppendLine('```')
                            $null = $sb.AppendLine()
                            if ($descPart) {
                                $null = $sb.AppendLine($descPart)
                            }
                        }
                        else {
                            $null = $sb.AppendLine('```powershell')
                            $null = $sb.AppendLine($exText)
                            $null = $sb.AppendLine('```')
                        }
                    }
                    $null = $sb.AppendLine()
                    $exampleNum++
                }
            }

            # -- Parameter Details ---------------------------------------------------
            $parameters = $Meta['Parameters']
            if ($parameters -and $parameters.Count -gt 0) {
                $null = $sb.AppendLine('## Parameter Details')
                $null = $sb.AppendLine()

                foreach ($p in $parameters) {
                    if ($p.DontShow) { continue }

                    # Normalize aliases: C# cmdlets may have string instead of
                    # array.
                    $pAliases = if ($p.Aliases) {
                        if ($p.Aliases -is [string]) { @($p.Aliases) }
                        else { @($p.Aliases) }
                    }
                    else { @() }

                    $pAliases = @($pAliases |
                        Microsoft.PowerShell.Core\Where-Object { -not [string]::IsNullOrWhiteSpace($_) })

                    $shortType = if ($p.ParameterType) {
                        ($p.ParameterType `
                            -replace '^System\.', '' `
                            -replace 'Management\.Automation\.', '' `
                            -replace 'Collections\.Generic\.', '' `
                            -replace '``1', '')
                    }
                    else { 'Object' }

                    $isSwitch = ($shortType -eq 'SwitchParameter')

                    if ($isSwitch) {
                        $null = $sb.AppendLine("### ``-$($p.Name)``")
                    }
                    else {
                        $null = $sb.AppendLine(
                            "### ``-$($p.Name) <${shortType}>``")
                    }
                    $null = $sb.AppendLine()

                    # Description (prefer HelpMessage, fallback to parameter
                    # name).
                    $pDesc = if (-not [string]::IsNullOrWhiteSpace(
                            $p.HelpMessage)) {
                        $p.HelpMessage
                    }
                    else { "The ``-$($p.Name)`` parameter." }

                    $null = $sb.AppendLine("> ${pDesc}")
                    $null = $sb.AppendLine()

                    # Detail table.
                    $null = $sb.AppendLine('| Property | Value |')
                    $null = $sb.AppendLine('|:---|:---|')

                    # Required?
                    $reqText = if ($p.Mandatory) { 'Yes' } else { 'No' }
                    $null = $sb.AppendLine(
                        "| **Required?** | ${reqText} |")

                    # Position?
                    $posText = if ($p.Position `
                            -and $p.Position -ne 'Named') {
                        $p.Position
                    }
                    else { 'Named' }
                    $null = $sb.AppendLine(
                        "| **Position?** | ${posText} |")

                    # Default value.
                    $defText = if ($null -ne $p.DefaultValue) {
                        if ($p.DefaultValue -is `
                            [System.Collections.IDictionary] -and `
                            $p.DefaultValue.Contains('IsPresent')) {
                            if ($p.DefaultValue['IsPresent']) {
                                '`$true`'
                            }
                            else { '`$false`' }
                        }
                        elseif (-not [string]::IsNullOrWhiteSpace(
                                [string]$p.DefaultValue)) {
                            "``$($p.DefaultValue)``"
                        }
                        else { '*(none)*' }
                    }
                    else { '*(none)*' }
                    $null = $sb.AppendLine(
                        "| **Default value** | ${defText} |")

                    # Pipeline input.
                    $pipelineParts = @()
                    if ($p.ValueFromPipeline) {
                        $pipelineParts += 'ByValue'
                    }
                    if ($p.ValueFromPipelineByPropertyName) {
                        $pipelineParts += 'ByPropertyName'
                    }
                    $pipelineText = if ($pipelineParts.Count -gt 0) {
                        'True (' + ($pipelineParts -join ', ') + ')'
                    }
                    else { 'False' }
                    $null = $sb.AppendLine(
                        "| **Accept pipeline input?** | ${pipelineText} |")

                    # Aliases.
                    $aliasText = if ($pAliases.Count -gt 0) {
                        ($pAliases |
                            Microsoft.PowerShell.Core\ForEach-Object { "``${_}``" }) -join ', '
                    }
                    else { '*(none)*' }
                    $null = $sb.AppendLine(
                        "| **Aliases** | ${aliasText} |")

                    # Wildcards.
                    $wcText = if ($p.SupportsWildcards) {
                        'Yes'
                    }
                    else { 'No' }
                    $null = $sb.AppendLine(
                        "| **Accept wildcard characters?** | ${wcText} |")

                    # Parameter set name (if not default).
                    $setName = if ($p.ParameterSetNames) {
                        $p.ParameterSetNames[0]
                    }
                    elseif ($p.ParameterSetName) {
                        $p.ParameterSetName
                    }
                    else { 'All' }
                    if ($setName -ne 'All' -and
                        $setName -ne '__AllParameterSets') {
                        $null = $sb.AppendLine(
                            "| **Parameter set** | ${setName} |")
                    }

                    $null = $sb.AppendLine()

                    # Add Remaining Arguments note if applicable.
                    if ($p.ValueFromRemainingArguments) {
                        $null = $sb.AppendLine(
                            '> This parameter accepts all remaining ' +
                            'arguments.')
                        $null = $sb.AppendLine()
                    }

                    $null = $sb.AppendLine("<hr/>")
                }
            }

            # -- Outputs -------------------------------------------------------------
            $outputs = $Meta['OutputType']
            if ($outputs -and $outputs.Count -gt 0) {
                $null = $sb.AppendLine('## Outputs')
                $null = $sb.AppendLine()
                foreach ($o in $outputs) {
                    if (-not $o) { continue }
                    $typeName = $o.ToString() `
                        -replace '^System\.', '' `
                        -replace 'Management\.Automation\.', '' `
                        -replace 'Collections\.Generic\.', ''
                    $null = $sb.AppendLine("- ``${typeName}``")
                }
                $null = $sb.AppendLine()
            }

            # -- Related Links -------------------------------------------------------
            $null = $sb.AppendLine('## Related Links')
            $null = $sb.AppendLine()

            if ($SiblingCmdlets.Count -gt 0) {
                # Build link URL prefix — same logic as README.md index.
                $linkPrefix = if ($LinkPrefix) {
                    $LinkPrefix
                }
                else { './' }

                foreach ($s in $SiblingCmdlets) {
                    $sName = $s['Name']
                    $null = $sb.AppendLine(
                        "- [${sName}](${linkPrefix}${sName}.md)")
                }
            }
            $null = $sb.AppendLine()

            return $sb.ToString().TrimEnd() + "`r`n"
        }

        ###############################################################################
        # README index renderer
        ###############################################################################
        function RenderReadmeIndex {
            param(
                [string] $ModuleName,
                [System.Collections.IDictionary] $LinkMap,
                [string] $LinkPrefix
            )

            [System.Text.StringBuilder] $sb = [System.Text.StringBuilder]::new()

            # -- Header --------------------------------------------------------------
            $null = $sb.AppendLine("# ${ModuleName} — Cmdlet Reference")
            $null = $sb.AppendLine()
            $null = $sb.AppendLine(
                'Auto-generated cmdlet reference documentation. ' +
                "Last updated: $(Microsoft.PowerShell.Utility\Get-Date -Format 'yyyy-MM-dd').")
            $null = $sb.AppendLine()

            # -- Per sub-module tables -----------------------------------------------
            $sortedKeys = @($LinkMap.Keys | Microsoft.PowerShell.Utility\Sort-Object)
            $first = $true

            foreach ($subModule in $sortedKeys) {
                $cmdlets = $LinkMap[$subModule]

                if (-not $first) {
                    $null = $sb.AppendLine('---')
                    $null = $sb.AppendLine()
                }
                $first = $false

                $null = $sb.AppendLine("## ${subModule}")
                $null = $sb.AppendLine()
                $null = $sb.AppendLine('| Command | Aliases | Description |')
                $null = $sb.AppendLine('|:---|:---|:---|')

                foreach ($c in $cmdlets) {
                    $name = $c['Name']
                    $synopsis = if ($c['Synopsis']) { $c['Synopsis'] } else { '' }
                    $aliases = if ($c['Aliases'] -and $c['Aliases'].Count -gt 0) {
                        ($c['Aliases'] -join ', ')
                    }
                    else { '' }

                    # Build link URL.
                    if ($LinkPrefix) {
                        $url = "${LinkPrefix}${name}.md"
                    }
                    else {
                        $url = "./${name}.md"
                    }

                    # Empty cells → &nbsp; strip line breaks to keep table intact
                    $aliasCell = if ($aliases) {
                        $aliases -replace '\r?\n', ' '
                    }
                    else { '&nbsp;' }
                    $synopsisCell = if ($synopsis) {
                        $synopsis -replace '\r?\n', ' '
                    }
                    else { '&nbsp;' }

                    $null = $sb.AppendLine(
                        "| [${name}](${url}) | ${aliasCell} | ${synopsisCell} |")
                }
                $null = $sb.AppendLine()
            }

            return $sb.ToString().TrimEnd() + "`r`n"
        }
        ################################################################################

        # -- Resolve module --------------------------------------------------
        # Prefer the actually-loaded module (has ExportedCommands).
        # Otherwise fall back to the available module with the highest
        # version number.
        $module = @(Microsoft.PowerShell.Core\Get-Module -Name $ModuleName `
                -ErrorAction SilentlyContinue |
            Microsoft.PowerShell.Core\Where-Object {
                $_.ExportedCommands.Count -gt 0 })[0]

        if (-not $module) {
            $module = @(Microsoft.PowerShell.Core\Get-Module `
                    -Name $ModuleName -ListAvailable `
                    -ErrorAction SilentlyContinue |
                Microsoft.PowerShell.Utility\Sort-Object Version -Descending)[0]
        }

        if (-not $module) {
            Microsoft.PowerShell.Utility\Write-Error `
                "Module '${ModuleName}' not found."
            return
        }

        $moduleRoot = $module.ModuleBase

        Microsoft.PowerShell.Utility\Write-Verbose (
            "Module root: ${moduleRoot}")

        # -- Determine output path -------------------------------------------
        if (-not $OutputPath) {
            $OutputPath = [System.IO.Path]::Combine($moduleRoot, 'Docs', $Language)
        }

        # Resolve and create output directory.
        $docsDir = $ExecutionContext.SessionState.Path.GetUnresolvedProviderPathFromPSPath(
            $OutputPath)
        if (-not (Microsoft.PowerShell.Management\Test-Path $docsDir)) {
            $null = Microsoft.PowerShell.Management\New-Item `
                -ItemType Directory -Path $docsDir -Force `
                -ErrorAction Stop
        }

        Microsoft.PowerShell.Utility\Write-Verbose (
            "Output directory: ${docsDir}")

        # -- Track generated files for pipeline output -----------------------
        $generatedFiles = [System.Collections.Generic.List[string]]::new()

        # -- Cache module-level metadata params ------------------------------
        $metaModuleParams = GenXdev\Copy-IdenticalParamValues `
            -BoundParameters $PSBoundParameters `
            -FunctionName "GenXdev\Get-ModuleCmdletMetaData" ;
    }

    process {
        # -- Collect metadata for all cmdlets --------------------------------
        if (-not $PSCmdlet.ShouldProcess(
                $ModuleName,
                'Retrieve cmdlet metadata for all cmdlets')) {
            return
        }

        try {
            $cmdletMetaData = @(GenXdev\Get-ModuleCmdletMetaData `
                    @metaModuleParams -ErrorAction Stop)
        }
        catch {
            Microsoft.PowerShell.Utility\Write-Error (
                "Failed to get metadata for module '${ModuleName}': $_")
            return
        }

        if ($cmdletMetaData.Count -eq 0) {
            Microsoft.PowerShell.Utility\Write-Warning (
                "No cmdlet metadata retrieved for '${ModuleName}'.")
            return
        }

        $cmdletMetaDataList = `
            [System.Collections.Generic.List[hashtable]]::new()
        foreach ($meta in $cmdletMetaData) {
            $null = $cmdletMetaDataList.Add($meta)
        }

        Microsoft.PowerShell.Utility\Write-Verbose (
            "Retrieved metadata for $($cmdletMetaDataList.Count) " +
            'cmdlet(s).')

        # -- Phase 1: Generate per-cmdlet .md files --------------------------
        $relativeLinkMap = @{}

        # Pass 1: collect all cmdlet metadata into the link map (no
        # rendering yet) so that each cmdlet can reference all its siblings.
        foreach ($meta in $cmdletMetaDataList) {
            $cmdletName = if ($meta['CmdletName']) {
                $meta['CmdletName']
            }
            elseif ($meta['Definition']) {
                ($meta['Definition'] -split '\s+')[0]
            }
            else {
                ''
            }

            if ([string]::IsNullOrWhiteSpace($cmdletName)) {
                continue
            }

            # Store for README linking.
            $subModule = if ($meta.ContainsKey('SubModuleName')) {
                $meta['SubModuleName']
            }
            else { $module.Name }

            if (-not $relativeLinkMap.ContainsKey($subModule)) {
                $relativeLinkMap[$subModule] = `
                    [System.Collections.Generic.List[hashtable]]::new()
            }

            $null = $relativeLinkMap[$subModule].Add(@{
                    Name     = $cmdletName
                    Synopsis = $meta['Synopsis']
                    Aliases  = $meta['Aliases']
                })
        }

        # Pass 2: render each cmdlet, now that sibling lists are complete.
        foreach ($meta in $cmdletMetaDataList) {
            $cmdletName = if ($meta['CmdletName']) {
                $meta['CmdletName']
            }
            elseif ($meta['Definition']) {
                ($meta['Definition'] -split '\s+')[0]
            }
            else {
                ''
            }

            if ([string]::IsNullOrWhiteSpace($cmdletName)) {
                continue
            }

            $mdFilePath = [System.IO.Path]::Combine(
                $docsDir, "${cmdletName}.md")

            $subModule = if ($meta.ContainsKey('SubModuleName')) {
                $meta['SubModuleName']
            }
            else { $module.Name }

            # Build sibling cmdlets list (all cmdlets in same submodule
            # except the current one).
            $siblingCmdlets = if ($relativeLinkMap.ContainsKey($subModule)) {
                @($relativeLinkMap[$subModule] |
                    Microsoft.PowerShell.Core\Where-Object { $_['Name'] -ne $cmdletName })
            }
            else { @() }

            # Skip if file exists and -Force not specified.
            if (-not $Force -and [System.IO.File]::Exists($mdFilePath)) {
                Microsoft.PowerShell.Utility\Write-Verbose (
                    "Skipping existing file: ${mdFilePath} " +
                    '(use -Force to overwrite)')
                $null = $generatedFiles.Add($mdFilePath)
                continue
            }

            if (-not $PSCmdlet.ShouldProcess(
                    $cmdletName,
                    "Generate ${cmdletName}.md")) {
                continue
            }

            $markdown = RenderCmdletMarkdown -Meta $meta `
                -SubModuleName $subModule `
                -SiblingCmdlets $siblingCmdlets `
                -LinkPrefix $LinkPrefix

            [System.IO.File]::WriteAllText($mdFilePath, $markdown)
            $null = $generatedFiles.Add($mdFilePath)

            Microsoft.PowerShell.Utility\Write-Verbose (
                "Wrote: ${cmdletName}.md")
        }

        # -- Phase 2: Generate README.md index -------------------------------
        $readmePath = [System.IO.Path]::Combine($docsDir, 'README.md')

        if (-not $Force -and [System.IO.File]::Exists($readmePath)) {
            Microsoft.PowerShell.Utility\Write-Verbose (
                'Skipping existing README.md (use -Force to overwrite)')
        }
        elseif ($PSCmdlet.ShouldProcess(
                'README.md',
                'Generate module README index')) {

            $readmeMarkdown = RenderReadmeIndex `
                -ModuleName $module.Name `
                -LinkMap $relativeLinkMap `
                -LinkPrefix $LinkPrefix

            [System.IO.File]::WriteAllText($readmePath, $readmeMarkdown)
            $null = $generatedFiles.Add($readmePath)

            Microsoft.PowerShell.Utility\Write-Verbose (
                'Wrote: README.md')
        }

        if ($generatedFiles.Count -gt 0) { Microsoft.PowerShell.Management\Get-ChildItem $generatedFiles }
    }

    end {
    }
}
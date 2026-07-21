<##############################################################################
Part of PowerShell module : GenXdev.Coding.PowerShell.Modules
Original cmdlet filename  : Get-ModuleCmdletMetaData.ps1
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
Retrieves metadata for all cmdlets in a PowerShell module.

.DESCRIPTION
Retrieves full cmdlet metadata (synopsis, description, parameters,
examples, outputs, and aliases) for every cmdlet in the specified
module, adding SubModuleName and CmdletType properties to each result.

Sub-module assignment uses two independent paths:

- Script cmdlets (.ps1): source file matched against .psm1 dot-source
  directory mappings (Functions\<SubModuleName>\FileName.ps1).
- Compiled cmdlets (.dll): namespace from ImplementationType.Namespace
  (e.g., GenXdev.FileSystem).

.PARAMETER ModuleName
The name of the PowerShell module to retrieve cmdlet metadata for
(e.g., 'GenXdev', 'Pester').

.PARAMETER Language
BCP 47 language tag for translating help text (e.g., nl-NL, de-DE).

.PARAMETER Model
The model identifier or pattern to use for AI translations.

.PARAMETER ApiEndpoint
The API endpoint URL for AI translations.

.PARAMETER ApiKey
The API key for authenticated AI translations.

.PARAMETER TranslationInstructions
Custom instructions for the AI translation model. Passed through to
Get-CmdletMetaData.

.PARAMETER SkipTranslation
Skip LLM-based translation; keep help text in the source language even
when -Language is specified.

.EXAMPLE
Get-ModuleCmdletMetaData -ModuleName 'GenXdev'

Returns metadata for all cmdlets in the GenXdev module.

.EXAMPLE
Get-ModuleCmdletMetaData -ModuleName 'GenXdev' -Language 'nl-NL'

Returns Dutch-translated metadata for all GenXdev cmdlets.
#>
function Get-ModuleCmdletMetaData {

    [CmdletBinding()]
    [OutputType([hashtable[]])]
    param (
        #######################################################################
        [Parameter(
            Position = 0,
            Mandatory = $true,
            HelpMessage = 'The name of the PowerShell module to retrieve ' +
            'cmdlet metadata for'
        )]
        [ValidateNotNullOrEmpty()]
        [string] $ModuleName,
        #######################################################################
        [Parameter(
            Mandatory = $false,
            HelpMessage = 'BCP 47 language tag for translation (e.g., ' +
            'nl-NL, de-DE)'
        )]
        [string] $Language,
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
        #######################################################################
        [Parameter(
            Mandatory = $false,
            HelpMessage = 'Custom AI translation instructions'
        )]
        [string] $TranslationInstructions,
        #######################################################################
        [Parameter(
            Mandatory = $false,
            HelpMessage = 'Skip LLM-based translation'
        )]
        [switch] $SkipTranslation
    )

    begin {

        ###############################################################################
        # Internal helper: build filename → sub-module-name mapping from .psm1 files.
        ###############################################################################
        function GetSubModuleMap {
            param(
                [System.Management.Automation.PSModuleInfo]$Module
            )

            [System.Collections.Hashtable] $map = @{}
            $moduleRoot = $Module.ModuleBase

            if (-not $moduleRoot) {
                Microsoft.PowerShell.Utility\Write-Warning `
                    'GetSubModuleMap: Module has no ModuleBase path.'
                return $map
            }

            $mainPsm1 = "$($Module.Name).psm1"

            # -- Strategy 1: Read .psd1 NestedModules key (most authoritative) ------
            $psm1Files = [System.Collections.Generic.List[System.IO.FileInfo]]::new()

            if ($Module.Path -and (Microsoft.PowerShell.Management\Test-Path `
                        $Module.Path -PathType Leaf)) {
                try {
                    $psd1Content = [System.IO.File]::ReadAllText($Module.Path)

                    # Extract everything between NestedModules = @( and the matching )
                    $regex = [regex]::new(
                        "NestedModules\s*=\s*@\(([\s\S]*?)\)",
                        [System.Text.RegularExpressions.RegexOptions]::Multiline)

                    $match = $regex.Match($psd1Content)
                    if ($match.Success) {
                        $nestedStr = $match.Groups[1].Value
                        $fileRegex = [regex]::new(
                            "'([^']*\.psm1)'",
                            [System.Text.RegularExpressions.RegexOptions]::Multiline)

                        foreach ($fm in $fileRegex.Matches($nestedStr)) {
                            $relativePath = $fm.Groups[1].Value
                            $fullPath = [System.IO.Path]::Combine(
                                $moduleRoot, $relativePath)

                            if ([System.IO.File]::Exists($fullPath)) {
                                $null = $psm1Files.Add(
                                    [System.IO.FileInfo]::new($fullPath))
                            }
                        }
                    }
                }
                catch {
                    Microsoft.PowerShell.Utility\Write-Verbose (
                        "GetSubModuleMap: Failed to parse .psd1: $_")
                }
            }

            # -- Strategy 2: Glob *.psm1 files (fallback if .psd1 didn't yield any) -
            if ($psm1Files.Count -eq 0) {
                $globbed = Microsoft.PowerShell.Management\Get-ChildItem `
                    "$moduleRoot\*.psm1" -File -ErrorAction SilentlyContinue |
                    Microsoft.PowerShell.Core\Where-Object {
                        $_.Name -ne $mainPsm1
                    }

                foreach ($g in $globbed) {
                    $null = $psm1Files.Add($g)
                }
            }

            # -- Parse each .psm1 for dot-source lines ------------------------------
            # Pattern: . "$PSScriptRoot\Functions\<SubModuleName>\<FileName>"
            $dotSourceRegex = [regex]::new(
                '\.\s*"\$PSScriptRoot\\Functions\\([^\\]+)\\([^"]+)"',
                [System.Text.RegularExpressions.RegexOptions]::Multiline)

            foreach ($psm1 in $psm1Files) {
                $content = [System.IO.File]::ReadAllText($psm1.FullName)

                foreach ($m in $dotSourceRegex.Matches($content)) {
                    $subModuleName = $m.Groups[1].Value
                    $fileName = $m.Groups[2].Value

                    if (-not $map.ContainsKey($fileName)) {
                        $map[$fileName] = $subModuleName
                    }
                }

                # Also map the .psm1 filename itself (e.g., GenXdev.AI.psm1 →
                # GenXdev.AI). When loaded via .psm1, ScriptBlock.File points to
                # the .psm1 file, not the original .ps1 source.
                $map[$psm1.Name] = $psm1.BaseName
            }

            # -- Strategy 3: Scan Functions\*\ directly (no .psm1 sub-modules) ------
            if ($map.Count -eq 0) {
                $functionsRoot = [System.IO.Path]::Combine($moduleRoot, 'Functions')
                if ([System.IO.Directory]::Exists($functionsRoot)) {
                    $functionsDirs = [System.IO.Directory]::GetDirectories(
                        $functionsRoot)

                    foreach ($dir in $functionsDirs) {
                        $subModuleName = [System.IO.Path]::GetFileName($dir)
                        $files = [System.IO.Directory]::GetFiles($dir)

                        foreach ($file in $files) {
                            $fileName = [System.IO.Path]::GetFileName($file)
                            if (-not $map.ContainsKey($fileName)) {
                                $map[$fileName] = $subModuleName
                            }
                        }
                    }
                }
            }

            return $map
        }

        ###############################################################################
        # Internal helper: resolve the sub-module name for a single cmdlet.
        ###############################################################################
        function ResolveSubModuleName {
            param(
                [System.Management.Automation.CommandInfo] $Cmd,
                [System.Management.Automation.PSModuleInfo] $Module,
                [System.Collections.Hashtable] $SubModuleMap
            )

            $mainModuleName = if ($Module) { $Module.Name } else { '' }

            # -- Path A: C# compiled cmdlet → namespace -----------------------------
            if ($Cmd.CommandType -eq 'Cmdlet') {
                try {
                    $type = $Cmd.ImplementingType
                    if ($type -and $type.Namespace) {
                        Microsoft.PowerShell.Utility\Write-Verbose (
                            "ResolveSubModuleName: '${Name}' → namespace " +
                            "'$($type.Namespace)'")
                        return $type.Namespace
                    }
                }
                catch {
                    Microsoft.PowerShell.Utility\Write-Verbose (
                        "ResolveSubModuleName: Failed to get namespace for " +
                        "'${Name}': $_")
                }
            }

            # -- Path B: Script cmdlet → .psm1 dot-source map -----------------------
            if ($Cmd.ScriptBlock -and $Cmd.ScriptBlock.File) {
                $sourceFile = [System.IO.Path]::GetFileName($Cmd.ScriptBlock.File)

                if ($SubModuleMap -and $SubModuleMap.ContainsKey($sourceFile)) {
                    $result = $SubModuleMap[$sourceFile]
                    Microsoft.PowerShell.Utility\Write-Verbose (
                        "ResolveSubModuleName: '${Name}' → file '${sourceFile}' " +
                        "→ sub-module '${result}'")
                    return $result
                }

                # Fallback: extract sub-module from Functions\<Name>\ directory
                $sourcePath = $Cmd.ScriptBlock.File
                $parentDir = [System.IO.Path]::GetDirectoryName($sourcePath)
                $grandParentDir = [System.IO.Path]::GetDirectoryName($parentDir)

                if ($grandParentDir -and
                    [System.IO.Path]::GetFileName($grandParentDir) -eq 'Functions') {
                    $result = [System.IO.Path]::GetFileName($parentDir)
                    Microsoft.PowerShell.Utility\Write-Verbose (
                        "ResolveSubModuleName: '${Name}' → Functions folder " +
                        "→ sub-module '${result}'")
                    return $result
                }
            }

            # -- Path C: Fallback → main module name --------------------------------
            Microsoft.PowerShell.Utility\Write-Verbose (
                "ResolveSubModuleName: '${Name}' → no sub-module matched, " +
                "using '${mainModuleName}'")
            return $mainModuleName
        }
        ################################################################################

        # -- Resolve module -------------------------------------------------
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

        Microsoft.PowerShell.Utility\Write-Verbose `
            "Module root: $($module.ModuleBase)"

        # -- Build sub-module map -------------------------------------------
        $subModuleMap = GetSubModuleMap -Module $module

        # -- Discover all cmdlets in the module -----------------------------
        $allCmdlets = @($module.ExportedCommands.Values |
                Microsoft.PowerShell.Core\Where-Object {
                    $_.CommandType -in @('Cmdlet', 'Function')
                } |
                Microsoft.PowerShell.Utility\Sort-Object Name)

        if ($allCmdlets.Count -eq 0) {
            Microsoft.PowerShell.Utility\Write-Warning `
                "No cmdlets found in module '${ModuleName}'."
            return
        }

        Microsoft.PowerShell.Utility\Write-Verbose `
            "Found $($allCmdlets.Count) cmdlet(s) in '${ModuleName}'."
    }

    process {
        # -- Build pass-through parameters for Get-CmdletMetaData -----------
        $metaBaseParams = GenXdev\Copy-IdenticalParamValues `
            -BoundParameters $PSBoundParameters `
            -FunctionName "GenXdev\Get-CmdletMetaData" ;

        # -- Collect metadata for all cmdlets -------------------------------
        $result = [System.Collections.Generic.List[hashtable]]::new()

        foreach ($cmd in $allCmdlets) {
            $resolvedName = $cmd.Name

            # Determine SubModuleName.
            $subModuleName = ResolveSubModuleName -Cmd $cmd `
                -Module $module -SubModuleMap $subModuleMap

            # Get metadata from the base cmdlet.
            $metaParams = $metaBaseParams.Clone()
            $metaParams['Name'] = $resolvedName

            try {
                $meta = GenXdev\Get-CmdletMetaData @metaParams `
                    -ErrorAction Stop

                if ($meta) {
                    $meta['CmdletName'] = $resolvedName
                    $meta['SubModuleName'] = $subModuleName
                    $meta['CmdletType'] = if ($cmd.CommandType -eq 'Cmdlet') {
                        'Cmdlet'
                    }
                    else { 'Function' }

                    $null = $result.Add($meta)
                }
            }
            catch {
                Microsoft.PowerShell.Utility\Write-Warning `
                    "Failed to get metadata for '${resolvedName}': $_"
            }
        }

        Microsoft.PowerShell.Utility\Write-Verbose `
            "Retrieved metadata for $($result.Count) cmdlet(s)."

        return $result.ToArray()
    }

    end {
    }
}
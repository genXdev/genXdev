<##############################################################################
Part of PowerShell module : GenXdev.Coding.Templating
Original cmdlet filename  : Add-ArrayTemplate.ps1
Original author           : René Vaessen / GenXdev
Version                   : 3.26.2026
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

<#
.SYNOPSIS
Formats a collection of objects using a template string with property
placeholders, producing a single formatted string.

.DESCRIPTION
Iterates over a collection of objects and applies a template string with
{PropertyName} or {PropertyName:format} placeholders to each item. The
formatted results are joined with a configurable delimiter. Supports
indentation, trailing newlines, and trailing delimiters for flexible output
formatting.

.PARAMETER InputObject
The collection of objects to format. Each object's properties can be
referenced in the template string using {PropertyName} syntax.

.PARAMETER Template
The template string with {PropertyName} or {PropertyName:format}
placeholders that will be filled with values from each input object.

.PARAMETER Delimiter
The delimiter string to insert between formatted items. Default is a newline.

.PARAMETER Indentation
The number of indentation levels (4 spaces per level) to apply to each
formatted item.

.PARAMETER NewLine
When specified, appends a trailing newline after each formatted item.

.PARAMETER EndDelimiter
When specified, adds the delimiter at the end after the final item when the
array is not empty.

.EXAMPLE
@(
    @{ Name = "Alice"; Age = 30 }
    @{ Name = "Bob"; Age = 25 }
) | Add-ArrayTemplate -Template "{Name} is {Age} years old"

Name: Alice
Age: 30

Name: Bob
Age: 25

Formats an array of hashtables with property placeholders.

.EXAMPLE
$items | FormatArray -Template "  - {Name}" -Delimiter ", " -Indentation 1

Uses the FormatArray alias with indentation and a custom delimiter.
#>
function Add-ArrayTemplate {

    [CmdletBinding()]
    [Diagnostics.CodeAnalysis.SuppressMessageAttribute('PSUseSingularNouns', '')]
    [Diagnostics.CodeAnalysis.SuppressMessageAttribute('PSUseShouldProcessForStateChangingFunctions', '')]
    [Alias('FormatArray')]
    [OutputType([string])]

    param(
        [Parameter(
            Mandatory = $true,
            Position = 0,
            ValueFromPipeline = $true,
            HelpMessage = "The collection of objects to format"
        )]
        [System.Collections.IEnumerable] $InputObject,
        [Parameter(
            Mandatory = $true,
            Position = 1,
            HelpMessage = (
                "The template string with {PropertyName} or " +
                "{PropertyName:format} placeholders"
            )
        )]
        [string] $Template,
        [Parameter(
            Mandatory = $false,
            Position = 2,
            HelpMessage = (
                "The delimiter string to insert between formatted items"
            )
        )]
        [string] $Delimiter = "`n",
        [Parameter(
            Mandatory = $false,
            Position = 3,
            HelpMessage = (
                "The number of indentation levels (4 spaces per level) to apply"
            )
        )]
        [int] $Indentation = 0,
        [Parameter(
            Mandatory = $false,
            HelpMessage = "Appends a trailing delimiter after the final item"
        )]
        [switch] $NewLine = $false,
        [Parameter(
            Mandatory = $false,
            HelpMessage = "Add delimiter at end when array not empty"
        )]
        [switch] $EndDelimiter = $false
    )

    begin {

        # calculate the indentation string based on the specified level
        $indent = '    ' * $Indentation

        # create a string builder for efficient string concatenation
        $sb = [System.Text.StringBuilder]::new()

        # track whether this is the first item to avoid leading delimiter
        $first = $true
    }

    process {

        # iterate through each object in the input collection
        foreach ($item in $InputObject) {
            if ($null -eq $item) { continue }

            # add delimiter before all items except the first one
            if (-not $first) {
                $null = $sb.Append($Delimiter)
                if ($NewLine) {
                    $null = $sb.Append("`r`n$indent")
                }
            }

            # mark that we've processed the first item
            $first = $false

            # If the item is a scalar (not an object with properties), use an empty hashtable
            if ($item -is [PSObject]) {
                $item = $item.PSObject.BaseObject
            }
            if ($item -is [string] -or $item -is [int] -or $item -is [double] -or $item -is [bool] -or $item -is [char] -or $item -is [datetime]) {
            }
            elseif ($item -is [hashtable]) {
                $hash = $item
            }
            else {
                $hash = $item | GenXdev\ConvertTo-Hashtable
            }

            # Expand template inside an isolated scope
            $expanded = & {
                param($template, $hash, $item)

                if ($item -is [PSObject]) {
                    $item = $item.PSObject.BaseObject
                }
                if ($item -is [string] -or $item -is [int] -or $item -is [double] -or $item -is [bool] -or $item -is [char] -or $item -is [datetime]) {

                    $template = $template.Replace('$PSItem', '$item').Replace('$_', '$item')
                }
                else {

                    foreach ($entry in $hash.GetEnumerator()) {

                        Microsoft.PowerShell.Utility\Set-Variable -Name $entry.Key -Value $entry.Value -ErrorAction SilentlyContinue
                    }
                }

                $ExecutionContext.InvokeCommand.ExpandString($template)
            } $template $hash $item

            # Add delimiter between items (but not after last)
            $null = $sb.Append($expanded)
        }
    }

    end {

        # append trailing delimiter if requested and output is not empty
        if ((-not $first) -and ($endDelimiter)) {

            $null = $sb.Append($Delimiter)
            if ($NewLine) {
                $null = $sb.Append("`r`n$indent")
            }
        }

        # return the fully formatted string
        return $sb.ToString()
    }
}
<##############################################################################
Part of PowerShell module : GenXdev.Coding.Templating
Original cmdlet filename  : Remove-DoubleEmptyLines.ps1
Original author           : René Vaessen / GenXdev
Version                   : 3.26.2026
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

<#
.SYNOPSIS
Removes double (consecutive) empty lines from a code string, optionally
reformatting the output.

.DESCRIPTION
Cleans up source code or text by collapsing consecutive blank lines into a
single empty line. This improves readability and follows common code
formatting conventions. When the -Reformat switch is specified, additional
formatting rules are applied to normalize the code structure.

.PARAMETER code
The source code or text string to process. Multiple consecutive empty lines
within this text will be collapsed to a single empty line.

.PARAMETER Reformat
When specified, applies additional formatting rules beyond just removing
double empty lines, such as normalizing indentation and spacing patterns.

.EXAMPLE
$cleanCode = $sourceCode | Remove-DoubleEmptyLines

Pipes source code through the function to remove consecutive blank lines.

.EXAMPLE
Remove-DoubleEmptyLines -code $sourceCode -Reformat

Removes double empty lines and applies additional formatting.
#>
function Remove-DoubleEmptyLines {

    [CmdletBinding()]
    [Diagnostics.CodeAnalysis.SuppressMessageAttribute('PSUseSingularNouns', '')]
    [Diagnostics.CodeAnalysis.SuppressMessageAttribute('PSUseShouldProcessForStateChangingFunctions', '')]
    [OutputType([string])]

    param(
        [Parameter(
            Mandatory = $true,
            Position = 0,
            ValueFromPipeline = $false,
            HelpMessage = 'The source code or text string to process for ' +
                'double empty line removal'
        )]
        [string] $code,

        [Parameter(
            Mandatory = $false,
            ValueFromPipeline = $false,
            HelpMessage = 'Apply additional formatting rules beyond ' +
                'double empty line removal'
        )]
        [switch] $Reformat
    )

    begin {

        $sb = [System.Text.StringBuilder]::new()
    }

    process {

        $lines = $code.Replace("`r", "`n").Split("`n", [System.StringSplitOptions]::RemoveEmptyEntries);
        $lastNonEmptyLine = [string]::Empty
        $previousLastNonEmptyLine = [string]::Empty
        $lastLineWasEmpty = $false
        $hadSameLineStart = $false

        for ($i = 0; $i -lt $lines.Count; $i++) {

            $line = $lines[$i].TrimEnd()
            $isEmptyLine = [string]::IsNullOrWhiteSpace($line)
            $isOpeningBrace = $line.Trim().EndsWith("{")
            $isClosingBrace = $line.Trim().EndsWith("}")
            $isLastLine = ($i -eq $lines.Count - 1)

            # determine if next line is empty or closing brace
            $nextLineIsEmpty = $false
            $nextLineIsClosingBrace = $false

            if ($i + 1 -lt $lines.Count) {

                $nextLine = $lines[$i + 1].TrimEnd()
                $nextLineIsEmpty = [string]::IsNullOrWhiteSpace($nextLine)
                $nextLineIsClosingBrace = $nextLine.Trim().StartsWith("}")
            }

            $previousLastNonEmptyLine = $lastNonEmptyLine
            $lastNonEmptyLine = if (-not $isEmptyLine) { $line } else { $lastNonEmptyLine }

            # handle empty lines
            if ($isEmptyLine) {

                # skip empty lines at the end of the file
                if ($isLastLine) {

                    continue
                }

                # rule 2: never output empty line before closing brace
                if ($nextLineIsClosingBrace) {

                    # skip this empty line
                    continue
                }

                # rule 3: never output two empty lines in a row
                if ($lastLineWasEmpty) {

                    # skip this empty line
                    continue
                }

                # output single empty line
                $null = $sb.Append("`r`n")
                $lastLineWasEmpty = $true
            }
            else {

                if ($Reformat) {

                    $hadSameLineStart = $false

                    if ($previousLastNonEmptyLine.Trim().Length -gt 4 -and $lastNonEmptyLine.Trim().Length -gt 4) {

                        if ($previousLastNonEmptyLine.Trim().Substring(0, 4) -eq $lastNonEmptyLine.Trim().Substring(0, 4)) {

                            while ($sb.Length -ge 0 -and ("`r`n `t".IndexOf($sb[$sb.Length - 1]) -ge 0)) {

                                $null = $sb.Remove($sb.Length - 1, 1)
                            }

                            $null = $sb.Append("`r`n")
                            $hadSameLineStart = $true
                        }
                    }

                    if ((-not $lastLineWasEmpty) -and (-not $hadSameLineStart) -and (-not $isOpeningBrace) -and (-not $isLastLine) -and (-not $isClosingBrace)) {

                        $null = $sb.Append("`r`n")
                    }
                }


                if ($isOpeningBrace -and ((-not $nextLineIsEmpty) -or ($nextLine.Trim().EndsWith("{"))) -and (-not $isLastLine)) {

                    $null = $sb.Append("`r`n")
                }
                # output non-empty line
                if ($isLastLine) {

                    $null = $sb.Append($line)
                }
                else {

                    $null = $sb.Append($line).Append("`r`n")
                }
                $lastLineWasEmpty = $false


                if ($isOpeningBrace -and (-not $nextLineIsEmpty) -and -not $isLastLine) {

                    $null = $sb.Append("`r`n")
                    $lastLineWasEmpty = $true
                }

            }
        }
    }

    end {

        Microsoft.PowerShell.Utility\Write-Output ($sb.ToString())
    }
}


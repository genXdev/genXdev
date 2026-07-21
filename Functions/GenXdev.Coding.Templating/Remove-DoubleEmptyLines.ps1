<##############################################################################
Part of PowerShell module : GenXdev.Coding.Templating
Original cmdlet filename  : Remove-DoubleEmptyLines.ps1
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

################################################################################
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
        ###########################################################################
        [Parameter(
            Mandatory = $true,
            Position = 0,
            ValueFromPipeline = $false,
            HelpMessage = 'The source code or text string to process for ' +
                'double empty line removal'
        )]
        [string] $code,

        ###########################################################################
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
################################################################################
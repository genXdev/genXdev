<##############################################################################
Part of PowerShell module : GenXdev.Coding
Original cmdlet filename  : Add-FeatureLineToREADME.ps1
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
Adds a feature line to the README file with a timestamp.

.DESCRIPTION
Adds a feature line to the specified README file, prefixed with the current date
in yyyyMMdd format. The line can be formatted as code and optionally displayed.

.PARAMETER Line
The feature description text to add to the README file.

.PARAMETER Code
Switch to format the line as code in the README file.

.PARAMETER Show
Switch to display the README file after adding the line.

.PARAMETER UseHomeREADME
Switch to use the README file in the home directory.

.PARAMETER UseOneDriveREADME
Switch to use the README file in the OneDrive directory.

.PARAMETER Priority
Line priority for sorting within the section. Higher values appear first.

.PARAMETER SortByDate
Sort lines by date (yyyyMMdd prefix) instead of priority.

.PARAMETER Ascending
Reverse the sort order. By default, higher priority/newer dates appear first.

.PARAMETER First
Limit the -Show output to the first N lines. Does not affect file storage.

.EXAMPLE
Add-FeatureLineToREADME -Line "Added new Git feature"

.EXAMPLE
feature "Added new Git feature" -Code -Show
#>
function Add-FeatureLineToREADME {

    [CmdletBinding()]
    [Alias('feature')]

    param(
        [Parameter(
            Position = 0,
            ValueFromRemainingArguments = $false,
            Mandatory = $false,
            HelpMessage = 'The feature description text to add'
        )]
        [string] $Line = '',

        [Parameter(
            Mandatory = $false,
            HelpMessage = 'Format the line as code'
        )]
        [switch] $Code,

        [Parameter(
            Mandatory = $false,
            HelpMessage = 'Display the README after adding the line'
        )]
        [switch] $Show,

        [Parameter(
            Mandatory = $false,
            HelpMessage = 'Use README in home directory'
        )]
        [switch] $UseHomeREADME,

        [Parameter(
            Mandatory = $false,
            HelpMessage = 'Use README in OneDrive directory'
        )]
        [switch] $UseOneDriveREADME,

        [Parameter(
            Mandatory = $false,
            HelpMessage = 'Priority for sorting (higher = shown first, default 1)'
        )]
        [int] $Priority = 1,

        [Parameter(
            Mandatory = $false,
            HelpMessage = 'Sort lines by date (yyyyMMdd prefix) instead of priority'
        )]
        [switch] $SortByDate,

        [Parameter(
            Mandatory = $false,
            HelpMessage = 'Reverse the sort order (ascending instead of descending)'
        )]
        [switch] $Ascending,

        [Parameter(
            Mandatory = $false,
            HelpMessage = 'Limit -Show output to the first N lines'
        )]
        [int] $First = 0
    )

    begin {
        Microsoft.PowerShell.Utility\Write-Verbose "Starting Add-FeatureLineToREADME with line: $Line"
    }


    process {
        # format the line with timestamp if not empty
        if ([string]::IsNullOrWhiteSpace($Line) -eq $false) {
            $Line = "$([DateTime]::Now.ToString('yyyyMMdd')) --> $Line"
            Microsoft.PowerShell.Utility\Write-Verbose "Formatted line: $Line"
        }

        # add the line to the README file
        GenXdev\Add-LineToREADME `
            -Code:$Code `
            -Show:$Show `
            -Section '## Features' `
            -Line $Line `
            -UseHomeREADME:$UseHomeREADME `
            -UseOneDriveREADME:$UseOneDriveREADME `
            -Priority $Priority `
            -SortByDate:$SortByDate `
            -Ascending:$Ascending `
            -First $First
    }

    end {
    }
}
<##############################################################################
Part of PowerShell module : GenXdev.Coding
Original cmdlet filename  : Add-IdeaLineToREADME.ps1
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
Adds an idea item to the README.md file.

.DESCRIPTION
Adds a timestamped idea to the "## Ideas" section of a README.md file.
Can display the modified section and open in Visual Studio Code.

.PARAMETER Line
The idea text to add. Will be prefixed with current date if not empty.

.PARAMETER Code
Opens the README in Visual Studio Code after modification.

.PARAMETER Show
Displays the modified section after changes.

.PARAMETER UseHomeREADME
Uses README in PowerShell profile directory instead of current location.

.PARAMETER UseOneDriveREADME
Uses README in OneDrive directory instead of current location.

.PARAMETER Priority
Line priority for sorting within the section. Higher values appear first.

.PARAMETER SortByDate
Sort lines by date (yyyyMMdd prefix) instead of priority.

.PARAMETER Ascending
Reverse the sort order. By default, higher priority/newer dates appear first.

.PARAMETER First
Limit the -Show output to the first N lines. Does not affect file storage.

.EXAMPLE
Add-IdeaLineToREADME -Line "Create new PowerShell module" -Show

.EXAMPLE
idea "New feature idea" -UseOneDriveREADME
#>
function Add-IdeaLineToREADME {

    [CmdletBinding()]
    [Alias('idea')]
    param(
        [Parameter(
            Position = 0,
            Mandatory = $false,
            ValueFromRemainingArguments = $false,
            HelpMessage = 'The idea text to add'
        )]
        [AllowEmptyString()]
        [string] $Line = '',
        [Parameter(
            Mandatory = $false,
            HelpMessage = 'Open README in Visual Studio Code'
        )]
        [switch] $Code,
        [Parameter(
            Mandatory = $false,
            HelpMessage = 'Show the modified section'
        )]
        [switch] $Show,
        [Parameter(
            Mandatory = $false,
            HelpMessage = 'Use README in PowerShell profile directory'
        )]
        [switch] $UseHomeREADME,
        [Parameter(
            Mandatory = $false,
            HelpMessage = 'Use README in OneDrive directory'
        )]
        [switch] $UseOneDriveREADME,

        [Parameter(
            Mandatory = $false,
            HelpMessage = 'Priority for sorting (higher = shown first, default 1)'
        )]
        [int] $Priority = 1,

        [Parameter(
            Mandatory = $false,
            HelpMessage = 'Sort lines by date (yyyyMMdd prefix) instead of priority'
        )]
        [switch] $SortByDate,

        [Parameter(
            Mandatory = $false,
            HelpMessage = 'Reverse the sort order (ascending instead of descending)'
        )]
        [switch] $Ascending,

        [Parameter(
            Mandatory = $false,
            HelpMessage = 'Limit -Show output to the first N lines'
        )]
        [int] $First = 0
    )

    begin {

        Microsoft.PowerShell.Utility\Write-Verbose 'Starting Add-IdeaLineToREADME'
    }


    process {

        if (![string]::IsNullOrWhiteSpace($Line)) {
            # prefix line with current date
            $Line = "$([DateTime]::Now.ToString('yyyyMMdd')) --> $Line"
            Microsoft.PowerShell.Utility\Write-Verbose "Formatted idea line: $Line"
        }

        # add line to readme using base function
        GenXdev\Add-LineToREADME `
            -Code:$Code `
            -Show:$Show `
            -Section '## Ideas' `
            -Line $Line `
            -UseHomeREADME:$UseHomeREADME `
            -UseOneDriveREADME:$UseOneDriveREADME `
            -Priority $Priority `
            -SortByDate:$SortByDate `
            -Ascending:$Ascending `
            -First $First
    }

    end {
    }
}
<##############################################################################
Part of PowerShell module : GenXdev.Coding
Original cmdlet filename  : Add-IssueLineToREADME.ps1
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
Adds an issue item to the README.md file.

.DESCRIPTION
Adds a timestamped issue to the "## Issues" section of a README.md file.
Can display the modified section and open in Visual Studio Code.

.PARAMETER Line
The issue text to add. Will be prefixed with current date if not empty.

.PARAMETER Code
Opens the README in Visual Studio Code after modification.

.PARAMETER Show
Displays the modified section after changes.

.PARAMETER UseHomeREADME
Uses README in PowerShell profile directory instead of current location.

.PARAMETER UseOneDriveREADME
Uses README in OneDrive directory instead of current location.

.PARAMETER Priority
Line priority for sorting within the section. Higher values appear first.

.PARAMETER SortByDate
Sort lines by date (yyyyMMdd prefix) instead of priority.

.PARAMETER Ascending
Reverse the sort order. By default, higher priority/newer dates appear first.

.PARAMETER First
Limit the -Show output to the first N lines. Does not affect file storage.

.EXAMPLE
Add-IssueLineToREADME -Line "Found critical bug" -Show -UseHomeREADME

.EXAMPLE
issue "Server connection fails" -Show
#>
function Add-IssueLineToREADME {

    [CmdletBinding()]
    [Alias('issue')]
    param(
        [Parameter(
            Position = 0,
            Mandatory = $false,
            ValueFromRemainingArguments = $false,
            HelpMessage = 'The issue text to add'
        )]
        [AllowEmptyString()]
        [string] $Line = '',
        [Parameter(
            Mandatory = $false,
            HelpMessage = 'Open README in Visual Studio Code'
        )]
        [switch] $Code,
        [Parameter(
            Mandatory = $false,
            HelpMessage = 'Show the modified section'
        )]
        [switch] $Show,
        [Parameter(
            Mandatory = $false,
            HelpMessage = 'Use README in PowerShell profile directory'
        )]
        [switch] $UseHomeREADME,
        [Parameter(
            Mandatory = $false,
            HelpMessage = 'Use README in OneDrive directory'
        )]
        [switch] $UseOneDriveREADME,

        [Parameter(
            Mandatory = $false,
            HelpMessage = 'Priority for sorting (higher = shown first, default 1)'
        )]
        [int] $Priority = 1,

        [Parameter(
            Mandatory = $false,
            HelpMessage = 'Sort lines by date (yyyyMMdd prefix) instead of priority'
        )]
        [switch] $SortByDate,

        [Parameter(
            Mandatory = $false,
            HelpMessage = 'Reverse the sort order (ascending instead of descending)'
        )]
        [switch] $Ascending,

        [Parameter(
            Mandatory = $false,
            HelpMessage = 'Limit -Show output to the first N lines'
        )]
        [int] $First = 0
    )

    begin {

        Microsoft.PowerShell.Utility\Write-Verbose 'Starting Add-IssueLineToREADME'
    }


    process {

        if (![string]::IsNullOrWhiteSpace($Line)) {
            # prefix line with current date
            $Line = "$([DateTime]::Now.ToString('yyyyMMdd')) --> $Line"
            Microsoft.PowerShell.Utility\Write-Verbose "Formatted issue line: $Line"
        }

        # add line to readme using base function
        GenXdev\Add-LineToREADME `
            -Code:$Code `
            -Show:$Show `
            -Section '## Issues' `
            -Line $Line `
            -UseHomeREADME:$UseHomeREADME `
            -UseOneDriveREADME:$UseOneDriveREADME `
            -Priority $Priority `
            -SortByDate:$SortByDate `
            -Ascending:$Ascending `
            -First $First
    }

    end {
    }
}
<##############################################################################
Part of PowerShell module : GenXdev.Coding
Original cmdlet filename  : Add-LineToREADME.ps1
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

# Don't remove this line [dontrefactor]
<#
.SYNOPSIS
Adds a line to a README.md markdown file in a specified section.

.DESCRIPTION
Finds and modifies a README.md file by adding a new line to a specified section.
Can create the section if it doesn't exist. Supports formatting lines as code
blocks and showing the modified section.

Will look in current directory first, then walk up directories to find the README
location. If not found, will use the README in the PowerShell profile directory.

.PARAMETER Line
The line of text to add to the README file.

.PARAMETER Section
The section header where the line should be added.

.PARAMETER Code
Switch to open the README in Visual Studio Code after modification.

.PARAMETER Show
Switch to display the modified section after changes.

.PARAMETER Done
Switch to mark a todo item as completed.

.PARAMETER Priority
Line priority for sorting within the section. Higher values appear first.
Defaults to 1. Negative values allowed.

.PARAMETER SortByDate
Sort lines by date (yyyyMMdd prefix) instead of priority.

.PARAMETER Ascending
Reverse the sort order. By default, higher priority/newer dates appear first.

.PARAMETER First
Limit the -Show output to the first N lines. Does not affect file storage.

.PARAMETER UseHomeREADME
Switch to use README in PowerShell profile directory.

.PARAMETER UseOneDriveREADME
Switch to use README in OneDrive directory.

.EXAMPLE
Add-LineToREADME -Line "New feature" -Section "## Features"

.EXAMPLE
Add-LineToREADME "High prio item" "## Issues" -Priority 5
#>
function Add-LineToREADME {

    [CmdletBinding()]
    param(
        [Parameter(
            Mandatory = $false,
            ValueFromRemainingArguments = $false,
            HelpMessage = 'The line to add to the README'
        )]
        [string] $Line = '',

        [Parameter(
            Position = 0,
            Mandatory = $true,
            HelpMessage = 'The section to add the line to'
        )]
        [ValidateNotNullOrEmpty()]
        [string] $Section,

        [Parameter(
            Mandatory = $false,
            HelpMessage = 'Open in Visual Studio Code after modifying'
        )]
        [switch] $Code,

        [Parameter(
            Mandatory = $false,
            HelpMessage = 'Show the modified section'
        )]
        [switch] $Show,

        [Parameter(
            Mandatory = $false,
            HelpMessage = 'Mark the item as completed'
        )]
        [switch] $Done,

        [Parameter(
            Mandatory = $false,
            HelpMessage = 'Use README in PowerShell profile directory'
        )]
        [switch] $UseHomeREADME,

        [Parameter(
            Mandatory = $false,
            HelpMessage = 'Use README in OneDrive directory'
        )]
        [switch] $UseOneDriveREADME,

        [Parameter(
            Mandatory = $false,
            HelpMessage = 'Priority for sorting (higher = shown first, default 1)'
        )]
        [int] $Priority = 1,

        [Parameter(
            Mandatory = $false,
            HelpMessage = 'Sort lines by date (yyyyMMdd prefix) instead of priority'
        )]
        [switch] $SortByDate,

        [Parameter(
            Mandatory = $false,
            HelpMessage = 'Reverse the sort order (ascending instead of descending)'
        )]
        [switch] $Ascending,

        [Parameter(
            Mandatory = $false,
            HelpMessage = 'Limit -Show output to the first N lines'
        )]
        [int] $First = 0
    )

    begin {

        # helper function to find readme path by walking up directories
        function findReadMePath([string] $startDir) {

            $startDir = GenXdev\Expand-Path $startDir
            Microsoft.PowerShell.Management\Push-Location -LiteralPath $startDir

            try {
                # walk up directories looking for README.md
                $currentDir = (Microsoft.PowerShell.Management\Get-Location).Path
                while ($true) {
                    if ([System.IO.File]::Exists("$currentDir\README.md")) {
                        return "$currentDir\README.md"
                    }

                    # Get parent directory
                    $parent = GenXdev\Expand-Path "$currentDir\..\"

                    # Stop if we're at the root (parent equals current)
                    if ($parent -eq $currentDir) {
                        break
                    }

                    # Move up to parent
                    $currentDir = $parent
                }
            }
            finally {
                Microsoft.PowerShell.Management\Pop-Location
            }

            # fallback to onedrive readme
            return "$((GenXdev\Expand-Path -FilePath '~\Onedrive\README.md' -CreateDirectory))";
        }

        # determine which readme file to use
        if ($UseHomeREADME) {
            $readmePath = GenXdev\Expand-Path `
                -FilePath "$([IO.Path]::GetDirectoryName($Profile))\README.md"
        }
        elseif ($UseOneDriveREADME) {
            $readmePath = GenXdev\Expand-Path `
                -FilePath '~\Onedrive\README.md' `
                -CreateDirectory
        }
        else {
            $readmePath = findReadMePath $PWD
        }

        Microsoft.PowerShell.Utility\Write-Verbose "Using README at: $readmePath"

        # verify readme exists
        if (![IO.File]::Exists($readmePath)) {
            throw "README file not found at: $readmePath"
        }

        # load readme content and detect line endings
        $readme = [IO.File]::ReadAllText($readmePath)
        $lineEnding = if ($readme.IndexOf("`r`n") -ge 0) { "`r`n" } else { "`n" }

        # Migrate existing lines to unified emoji prefix format
        # Converts old prefixes (- [X], - [☒], - [ ], * ) to - ☐ / - ☒
        # and adds [P1] priority if missing
        function MigrateReadmeLines([ref] $readmeRef, [string] $lf) {
            $knownSections = @(
                '## Features', '## Ideas', '## Issues',
                '## Todoos', '## Release notes'
            )
            $content = $readmeRef.Value
            $migrated = $false

            foreach ($sec in $knownSections) {
                $secStart = $content.IndexOf(
                    $sec,
                    [System.StringComparison]::OrdinalIgnoreCase
                )
                if ($secStart -lt 0) { continue }

                $secContentStart = $secStart + $sec.Length + $lf.Length
                # Guard: if section header is the last content without a
                # trailing newline, skip — nothing to migrate
                if ($secContentStart -ge $content.Length) { continue }

                $secLevel = ($sec -replace '^([#]+).*$', '$1').Length
                $rest = $content.Substring($secContentStart)
                $nextHd = [regex]::Match($rest, "(?m)^#{1,$secLevel}\s")
                $secEnd = if ($nextHd.Success) {
                    $secContentStart + $nextHd.Index
                } else { $content.Length }

                $secLines = $content.Substring(
                    $secContentStart,
                    $secEnd - $secContentStart
                ) -split $lf

                $newLines = [System.Collections.Generic.List[string]]::new()
                foreach ($ln in $secLines) {
                    if ([string]::IsNullOrWhiteSpace($ln)) {
                        $null = $newLines.Add($ln)
                        continue
                    }
                    # Already in new format? Skip
                    if ($ln -match '^- (☐|☒) \[P') {
                        $null = $newLines.Add($ln)
                        continue
                    }
                    # Extract existing priority if present
                    $existingPrio = if ($ln -match '\[P(-?\d+)\]') {
                        "[P$($matches[1])]"
                    } else { '[P1]' }
                    # Strip any existing prefix
                    $restText = $ln
                    # Old completed patterns
                    if ($ln -match '^- \[X\] ') {
                        $restText = $ln -replace '^- \[X\] ', ''
                        $restText = $restText -replace '\[P-?\d+\] ', ''
                        $ln = "- ☒ $existingPrio $restText"
                        $migrated = $true
                    }
                    elseif ($ln -match '^- \[☒\] ') {
                        $restText = $ln -replace '^- \[☒\] ', ''
                        $restText = $restText -replace '\[P-?\d+\] ', ''
                        $ln = "- ☒ $existingPrio $restText"
                        $migrated = $true
                    }
                    # Old uncompleted patterns
                    elseif ($ln -match '^- \[ \] ') {
                        $restText = $ln -replace '^- \[ \] ', ''
                        $restText = $restText -replace '\[P-?\d+\] ', ''
                        $ln = "- ☐ $existingPrio $restText"
                        $migrated = $true
                    }
                    elseif ($ln -match '^- ☐ ') {
                        $restText = $ln -replace '^- ☐ ', ''
                        $restText = $restText -replace '\[P-?\d+\] ', ''
                        $ln = "- ☐ $existingPrio $restText"
                        $migrated = $true
                    }
                    elseif ($ln -match '^\* ') {
                        $restText = $ln -replace '^\* ', ''
                        $restText = $restText -replace '\[P-?\d+\] ', ''
                        $ln = "- ☐ $existingPrio $restText"
                        $migrated = $true
                    }
                    $null = $newLines.Add($ln)
                }

                if ($migrated) {
                    $newSecContent = $newLines -join $lf
                    $content = $content.Substring(0, $secContentStart) +
                        $newSecContent +
                        $content.Substring($secEnd)
                }
            }
            $readmeRef.Value = $content
        }
        MigrateReadmeLines ([ref] $readme) $lineEnding

        [int] $insertIndex = $readme.IndexOf(
            $Section,
            [System.StringComparison]::OrdinalIgnoreCase
        )

        # create section if it doesn't exist
        if ($insertIndex -lt 0) {
            $insertIndex = $readme.Length
            if ($readme.Length -gt 0 -and !$readme.EndsWith("$lineEnding$lineEnding")) {
                $readme += $lineEnding + $lineEnding
            }
            $readme += "$Section$lineEnding"
            $insertIndex = $readme.Length
        }
        else {
            $insertIndex += $Section.Length

            # If section has no trailing newline (e.g., at end of file),
            # append one so the insertion point stays within bounds
            if ($insertIndex -ge $readme.Length) {
                $readme += $lineEnding
                $insertIndex = $readme.Length
            }
            else {
                $insertIndex += $lineEnding.Length
            }
        }
    }

    process {

        if (![string]::IsNullOrWhiteSpace($Line)) {
            if ($Done) {
                # Find the section boundaries
                $sectionStart = $readme.IndexOf(
                    $Section,
                    [System.StringComparison]::OrdinalIgnoreCase
                )
                if ($sectionStart -ge 0) {
                    $sectionContentStart = $sectionStart +
                    $Section.Length + $lineEnding.Length
                    # Find next heading at same or higher level to
                    # determine section boundaries
                    $sectionLevel = ($Section -replace '^([#]+).*$', '$1').Length
                    $restOfFile = $readme.Substring($sectionContentStart)
                    $headingPattern = "(?m)^#{1,$sectionLevel}\s"
                    $nextHeading = [regex]::Match($restOfFile, $headingPattern)
                    $sectionEnd = if ($nextHeading.Success) {
                        $sectionContentStart + $nextHeading.Index
                    }
                    else {
                        $readme.Length
                    }
                    $sectionContent = $readme.Substring(
                        $sectionContentStart,
                        $sectionEnd - $sectionContentStart
                    )

                    # Find lines matching the wildcard pattern
                    $lines = $sectionContent -split $lineEnding
                    $found = $false
                    $matchCount = 0
                    # Build search pattern: - ☐ [P*]<user's Line wildcard>
                    # Use [[] and []] for literal brackets in -like
                    # (backtick is NOT an escape char in -like)
                    $searchPattern = ('- ☐ [[]P*[]] ' + $Line)
                    for ($i = 0; $i -lt $lines.Count; $i++) {
                        if ($lines[$i] -like $searchPattern) {
                            $matchCount++
                            $found = $true
                            # Replace ☐ with ☒ to mark as done
                            $lines[$i] = $lines[$i].Replace('☐', '☒')
                        }
                    }

                    if (-not $found) {
                        Microsoft.PowerShell.Utility\Write-Warning ("No line matching '" +
                            $searchPattern + "' found in section '$Section'")
                    }
                    elseif ($matchCount -gt 1) {
                        Microsoft.PowerShell.Utility\Write-Warning ("$matchCount lines matched '" +
                            $searchPattern + "' in section '$Section'")
                    }

                    if ($found) {
                        $newSectionContent = $lines -join $lineEnding
                        $readme = $readme.Substring(0, $sectionContentStart) +
                        $newSectionContent +
                        $readme.Substring($sectionEnd)
                    }
                }
                else {
                    Microsoft.PowerShell.Utility\Write-Warning `
                        "Section '$Section' not found for -Done operation"
                }
            }
            else {
                # Check for duplicate before inserting
                $sectionStart = $readme.IndexOf(
                    $Section,
                    [System.StringComparison]::OrdinalIgnoreCase
                )
                if ($sectionStart -ge 0) {
                    $sectionContentStart = $sectionStart +
                        $Section.Length + $lineEnding.Length
                    $sectionLevel = ($Section -replace '^([#]+).*$', '$1').Length
                    $rest = $readme.Substring($sectionContentStart)
                    $nextHeading = [regex]::Match(
                        $rest, "(?m)^#{1,$sectionLevel}\s")
                    $sectionEnd = if ($nextHeading.Success) {
                        $sectionContentStart + $nextHeading.Index
                    }
                    else { $readme.Length }
                    $sectionContent = $readme.Substring(
                        $sectionContentStart,
                        $sectionEnd - $sectionContentStart)
                    $dupLine = "- ☐ [P$Priority] $Line"
                    if ($sectionContent -split $lineEnding -ccontains $dupLine) {
                        Microsoft.PowerShell.Utility\Write-Warning ("Duplicate line '$Line' in " +
                            "section '$Section'")
                        return
                    }
                }

                # insert new line at section with priority prefix
                $insertedText = "- ☐ [P$Priority] $Line$lineEnding"
                $readme = $readme.Substring(0, $insertIndex) +
                $insertedText +
                $readme.Substring($insertIndex)
                # Track insert position for pipeline input ordering (F11 fix)
                $insertIndex += $insertedText.Length
            }
        }
    }

    end {
        # Sort lines within the section by [Px] priority (descending)
        # only do this for insert operations (not -Done), and only for
        # sections that currently exist
        if (!$Done -and $insertIndex -gt 0) {
            $sectionStart = $readme.IndexOf(
                $Section,
                [System.StringComparison]::OrdinalIgnoreCase
            )
            if ($sectionStart -ge 0) {
                $sectionContentStart = $sectionStart +
                    $Section.Length + $lineEnding.Length
                $sectionLevel = ($Section -replace '^([#]+).*$', '$1').Length
                $restOfFile = $readme.Substring($sectionContentStart)
                $headingPattern = "(?m)^#{1,$sectionLevel}\s"
                $nextHeading = [regex]::Match($restOfFile, $headingPattern)
                $sectionEnd = if ($nextHeading.Success) {
                        $sectionContentStart + $nextHeading.Index
                    } else {
                        $readme.Length
                    }
                $sectionContent = $readme.Substring(
                    $sectionContentStart,
                    $sectionEnd - $sectionContentStart
                )

                # Parse and sort lines
                $sectionLines = $sectionContent -split $lineEnding
                $sortedLines = if ($SortByDate) {
                    # Sort by date prefix (yyyyMMdd) — lines without
                    # a date go to the end (or beginning with -Ascending)
                    $sectionLines |
                        Microsoft.PowerShell.Utility\Sort-Object {
                            if ($_ -match '(\d{8})\s*-->') {
                                $matches[1]
                            } else {
                                if ($Ascending) { '00000000' } else { '99999999' }
                            }
                        } -Descending:(-not $Ascending) -Stable
                } else {
                    # Sort by [Px] priority
                    $sectionLines |
                        Microsoft.PowerShell.Utility\Sort-Object {
                            if ($_ -match '\[P(-?\d+)\]') {
                                [int]$matches[1]
                            } else { 0 }
                        } -Descending:(-not $Ascending) -Stable
                }

                $sortedContent = $sortedLines -join $lineEnding
                $readme = $readme.Substring(0, $sectionContentStart) +
                    $sortedContent +
                    $readme.Substring($sectionEnd)
            }
        }

        # save changes atomically to prevent corruption
        GenXdev\Write-TextFileAtomic -FilePath $readmePath -Data $readme

        # open in vscode if requested
        if ($Code) {
            GenXdev\VSCode $readmePath
        }

        # show modified section if requested
        if ($Show) {
            $sectionLines = [System.Collections.Generic.List[string]]::new()

            $inSection = $false
            foreach ($readmeLine in [IO.File]::ReadAllLines($readmePath)) {
                if ($readmeLine.StartsWith($Section)) {
                    $inSection = $true
                    continue
                }
                if ($inSection) {
                    $sectionLevel = ($Section -replace '^([#]+).*$', '$1').Length
                    if ($readmeLine.StartsWith('#')) {
                        $lineLevel = ($readmeLine -replace '^([#]+).*$', '$1').Length
                        if ($lineLevel -le $sectionLevel) {
                            break
                        }
                    }
                    $trimmed = $readmeLine.Trim("`r`n`t ")
                    if ($trimmed) {
                        $null = $sectionLines.Add($trimmed)
                    }
                }
            }

            # Sort the collected lines
            if ($SortByDate) {
                $sectionLines = [System.Collections.Generic.List[string]](
                    [System.Linq.Enumerable]::ToList(
                        [System.Linq.Enumerable]::OrderBy(
                            $sectionLines,
                            [System.Func[string,string]] {
                                param($ln)
                                if ($ln -match '(\d{8})\s*-->') {
                                    $matches[1]
                                } else {
                                    if ($Ascending) { '00000000' } else { '99999999' }
                                }
                            }
                        )
                    )
                )
                if (-not $Ascending) {
                    $sectionLines.Reverse()
                }
            } else {
                $sectionLines = [System.Collections.Generic.List[string]](
                    [System.Linq.Enumerable]::ToList(
                        [System.Linq.Enumerable]::OrderBy(
                            $sectionLines,
                            [System.Func[string,int]] {
                                param($ln)
                                if ($ln -match '\[P(-?\d+)\]') {
                                    [int]$matches[1]
                                } else { 0 }
                            }
                        )
                    )
                )
                if (-not $Ascending) {
                    $sectionLines.Reverse()
                }
            }

            # Apply -First limit (only to output, not file)
            if ($First -gt 0 -and $sectionLines.Count -gt $First) {
                $sectionLines = [System.Collections.Generic.List[string]](
                    $sectionLines.GetRange(0, $First)
                )
            }

            $ansiColorStart = [char]27 + '['
            $ansiColorYellow = "${ansiColorStart}33m"
            $ansiBackgroundColorBlue = "${ansiColorStart}44m"
            $ansiColorReset = "${ansiColorStart}0m"

            $sectionHeader = $Section.Trim("`r`n`t ")
            "$ansiBackgroundColorBlue${ansiColorYellow}${sectionHeader}${ansiColorReset}`r`n`r`n" +
                ($sectionLines -join "`r`n`r`n") + "`r`n`r`n"
        }
    }
}
<##############################################################################
Part of PowerShell module : GenXdev.Coding
Original cmdlet filename  : Add-ReleaseNoteLineToREADME.ps1
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
Adds a ReleaseNote line to the README file with a timestamp.

.DESCRIPTION
Adds a ReleaseNote line to the specified README file, prefixed with the current date
in yyyyMMdd format. The line can be formatted as code and optionally displayed.

.PARAMETER Line
The ReleaseNote description text to add to the README file.

.PARAMETER Code
Switch to format the line as code in the README file.

.PARAMETER Show
Switch to display the README file after adding the line.

.PARAMETER UseHomeREADME
Switch to use the README file in the home directory.

.PARAMETER UseOneDriveREADME
Switch to use the README file in the OneDrive directory.

.PARAMETER Priority
Line priority for sorting within the section. Higher values appear first.

.PARAMETER SortByDate
Sort lines by date (yyyyMMdd prefix) instead of priority.

.PARAMETER Ascending
Reverse the sort order. By default, higher priority/newer dates appear first.

.PARAMETER First
Limit the -Show output to the first N lines. Does not affect file storage.

.EXAMPLE
Add-ReleaseNoteLineToREADME -Line "Added new Git ReleaseNote"

.EXAMPLE
ReleaseNote "Added new Git ReleaseNote" -Code -Show
#>
function Add-ReleaseNoteLineToREADME {

    [CmdletBinding()]
    [Alias('releasenote')]

    param(
        [Parameter(
            Position = 0,
            ValueFromRemainingArguments = $false,
            Mandatory = $false,
            HelpMessage = 'The ReleaseNote description text to add'
        )]
        [string] $Line = '',

        [Parameter(
            Mandatory = $false,
            HelpMessage = 'Format the line as code'
        )]
        [switch] $Code,

        [Parameter(
            Mandatory = $false,
            HelpMessage = 'Display the README after adding the line'
        )]
        [switch] $Show,

        [Parameter(
            Mandatory = $false,
            HelpMessage = 'Use README in home directory'
        )]
        [switch] $UseHomeREADME,

        [Parameter(
            Mandatory = $false,
            HelpMessage = 'Use README in OneDrive directory'
        )]
        [switch] $UseOneDriveREADME,

        [Parameter(
            Mandatory = $false,
            HelpMessage = 'Priority for sorting (higher = shown first, default 1)'
        )]
        [int] $Priority = 1,

        [Parameter(
            Mandatory = $false,
            HelpMessage = 'Sort lines by date (yyyyMMdd prefix) instead of priority'
        )]
        [switch] $SortByDate,

        [Parameter(
            Mandatory = $false,
            HelpMessage = 'Reverse the sort order (ascending instead of descending)'
        )]
        [switch] $Ascending,

        [Parameter(
            Mandatory = $false,
            HelpMessage = 'Limit -Show output to the first N lines'
        )]
        [int] $First = 0
    )

    begin {
        Microsoft.PowerShell.Utility\Write-Verbose "Starting Add-ReleaseNoteLineToREADME with line: $Line"
    }


    process {
        # format the line with timestamp if not empty
        if ([string]::IsNullOrWhiteSpace($Line) -eq $false) {
            $Line = "$([DateTime]::Now.ToString('yyyyMMdd')) --> $Line"
            Microsoft.PowerShell.Utility\Write-Verbose "Formatted line: $Line"
        }

        # add the line to the README file
        GenXdev\Add-LineToREADME `
            -Code:$Code `
            -Show:$Show `
            -Section '## Release notes' `
            -Line $Line `
            -UseHomeREADME:$UseHomeREADME `
            -UseOneDriveREADME:$UseOneDriveREADME `
            -Priority $Priority `
            -SortByDate:$SortByDate `
            -Ascending:$Ascending `
            -First $First
    }

    end {
    }
}
<##############################################################################
Part of PowerShell module : GenXdev.Coding
Original cmdlet filename  : Add-TodoLineToREADME.ps1
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
Adds a todo item to the README.md file.

.DESCRIPTION
Adds a timestamped todo item to the "## Todoos" section of a README.md file.
The todo items can be marked as done and the modified section can be displayed.
Each new todo item is automatically timestamped unless marking as done.

.PARAMETER Line
The todo item text to add. Will be prefixed with current date if not empty.

.PARAMETER Code
Opens the README in Visual Studio Code after modification.

.PARAMETER Show
Displays the modified section after changes.

.PARAMETER Done
Marks the specified todo item as completed.

.PARAMETER SortByDate
Sort lines by date (yyyyMMdd prefix) instead of priority.

.PARAMETER Ascending
Reverse the sort order. By default, higher priority/newer dates appear first.

.PARAMETER First
Limit the -Show output to the first N lines. Does not affect file storage.

.PARAMETER UseHomeREADME
Uses README in PowerShell profile directory instead of current location.

.PARAMETER UseOneDriveREADME
Uses README in OneDrive directory instead of current location.

.EXAMPLE
Add-TodoLineToREADME -Line "Implement new feature" -Show -Code

.EXAMPLE
todo "Fix bug" -Done
#>
function Add-TodoLineToREADME {

    [CmdletBinding()]
    [Alias('todo')]
    param(
        [Parameter(
            Position = 0,
            Mandatory = $false,
            ValueFromRemainingArguments = $false,
            HelpMessage = 'The todo item text to add'
        )]
        [AllowEmptyString()]
        [string] $Line = '',

        [Parameter(
            Mandatory = $false,
            HelpMessage = 'Open README in Visual Studio Code'
        )]
        [switch] $Code,

        [Parameter(
            Mandatory = $false,
            HelpMessage = 'Show the modified section'
        )]
        [switch] $Show,

        [Parameter(
            Mandatory = $false,
            HelpMessage = 'Mark todo item as completed'
        )]
        [switch] $Done,

        [Parameter(
            Mandatory = $false,
            HelpMessage = 'Use README in PowerShell profile directory'
        )]
        [switch] $UseHomeREADME,

        [Parameter(
            Mandatory = $false,
            HelpMessage = 'Use README in OneDrive directory'
        )]
        [switch] $UseOneDriveREADME,

        [Parameter(
            Mandatory = $false,
            HelpMessage = 'Priority for sorting (higher = shown first, default 1)'
        )]
        [int] $Priority = 1,

        [Parameter(
            Mandatory = $false,
            HelpMessage = 'Sort lines by date (yyyyMMdd prefix) instead of priority'
        )]
        [switch] $SortByDate,

        [Parameter(
            Mandatory = $false,
            HelpMessage = 'Reverse the sort order (ascending instead of descending)'
        )]
        [switch] $Ascending,

        [Parameter(
            Mandatory = $false,
            HelpMessage = 'Limit -Show output to the first N lines'
        )]
        [int] $First = 0
    )

    begin {

        Microsoft.PowerShell.Utility\Write-Verbose "Starting Add-TodoLineToREADME with parameters: $($PSBoundParameters |
            Microsoft.PowerShell.Utility\ConvertTo-Json)"
    }


    process {

        # only add timestamp if line is not empty and not marking as done
        if (![string]::IsNullOrWhiteSpace($Line) -and !$Done) {

            # prefix line with current date in yyyyMMdd format
            $Line = "$([DateTime]::Now.ToString('yyyyMMdd')) --> $Line"
            Microsoft.PowerShell.Utility\Write-Verbose "Formatted todo line: $Line"
        }

        # add line to readme using base function with specified parameters
        GenXdev\Add-LineToREADME `
            -Code:$Code `
            -Show:$Show `
            -Section '## Todoos' `
            -Line $Line `
            -Done:$Done `
            -UseHomeREADME:$UseHomeREADME `
            -UseOneDriveREADME:$UseOneDriveREADME `
            -Priority $Priority `
            -SortByDate:$SortByDate `
            -Ascending:$Ascending `
            -First $First
    }

    end {
    }
}
<##############################################################################
Part of PowerShell module : GenXdev.Coding
Original cmdlet filename  : Get-Features.ps1
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
Displays features from a README.md file.

.DESCRIPTION
Shows all features from the "## Features" section of a README.md file. Can use
either the README in the current location, PowerShell profile directory, or
OneDrive directory.

.PARAMETER UseHomeREADME
Use README.md from PowerShell profile directory instead of current location.

.PARAMETER UseOneDriveREADME
Use README.md from OneDrive directory instead of current location.

.PARAMETER SortByDate
Sort lines by date (yyyyMMdd prefix) instead of priority.

.PARAMETER Ascending
Reverse the sort order. By default, higher priority/newer dates appear first.

.PARAMETER First
Limit the output to the first N lines.

.EXAMPLE
Features -UseHomeREADME
#>
function Get-Features {

    [CmdletBinding()]
    [System.Diagnostics.CodeAnalysis.SuppressMessageAttribute('PSUseSingularNouns', '')]
    [System.Diagnostics.CodeAnalysis.SuppressMessageAttribute('PSUseBOMForUnicodeEncodedFile', '')]
    [Alias('features')]
    param(
        [Parameter(
            Mandatory = $false,
            HelpMessage = 'Use README in PowerShell profile directory'
        )]
        [switch] $UseHomeREADME,
        [Parameter(
            Mandatory = $false,
            HelpMessage = 'Use README in OneDrive directory'
        )]
        [switch] $UseOneDriveREADME,

        [Parameter(
            Mandatory = $false,
            HelpMessage = 'Sort lines by date (yyyyMMdd prefix) instead of priority'
        )]
        [switch] $SortByDate,

        [Parameter(
            Mandatory = $false,
            HelpMessage = 'Reverse the sort order (ascending instead of descending)'
        )]
        [switch] $Ascending,

        [Parameter(
            Mandatory = $false,
            HelpMessage = 'Limit output to the first N lines'
        )]
        [int] $First = 0
    )

    begin {

        Microsoft.PowerShell.Utility\Write-Verbose 'Starting Features function'
    }


    process {

        # display features using base function
        GenXdev\Add-FeatureLineToREADME `
            -Show `
            -SortByDate:$SortByDate `
            -Ascending:$Ascending `
            -First $First `
            -UseHomeREADME:$UseHomeREADME `
            -UseOneDriveREADME:$UseOneDriveREADME
    }

    end {
    }
}
<##############################################################################
Part of PowerShell module : GenXdev.Coding
Original cmdlet filename  : Get-Ideas.ps1
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

# Don't remove this line [dontrefactor]

<#
.SYNOPSIS
Displays ideas from a README.md file.

.DESCRIPTION
Shows all ideas from the "## Ideas" section of a README.md file. Can use either
the README in the current location, PowerShell profile directory, or OneDrive
directory.

.PARAMETER UseHomeREADME
Use README.md from PowerShell profile directory instead of current location.

.PARAMETER UseOneDriveREADME
Use README.md from OneDrive directory instead of current location.

.PARAMETER SortByDate
Sort lines by date (yyyyMMdd prefix) instead of priority.

.PARAMETER Ascending
Reverse the sort order. By default, higher priority/newer dates appear first.

.PARAMETER First
Limit the output to the first N lines.

.EXAMPLE
Ideas -UseHomeREADME

.EXAMPLE
Ideas -UseOneDriveREADME
#>

function Get-Ideas {

    [CmdletBinding()]
    [System.Diagnostics.CodeAnalysis.SuppressMessageAttribute('PSUseSingularNouns', '')]
    [System.Diagnostics.CodeAnalysis.SuppressMessageAttribute('PSUseBOMForUnicodeEncodedFile', '')]
    [Alias('ideas')]
    param(
        [Parameter(
            Mandatory = $false,
            HelpMessage = 'Use README in PowerShell profile directory'
        )]
        [switch] $UseHomeREADME,
        [Parameter(
            Mandatory = $false,
            HelpMessage = 'Use README in OneDrive directory'
        )]
        [switch] $UseOneDriveREADME,

        [Parameter(
            Mandatory = $false,
            HelpMessage = 'Sort lines by date (yyyyMMdd prefix) instead of priority'
        )]
        [switch] $SortByDate,

        [Parameter(
            Mandatory = $false,
            HelpMessage = 'Reverse the sort order (ascending instead of descending)'
        )]
        [switch] $Ascending,

        [Parameter(
            Mandatory = $false,
            HelpMessage = 'Limit output to the first N lines'
        )]
        [int] $First = 0
    )

    begin {

        Microsoft.PowerShell.Utility\Write-Verbose 'Starting Ideas function'
    }


    process {

        # display ideas using base function
        GenXdev\Add-IdeaLineToREADME `
            -Show `
            -SortByDate:$SortByDate `
            -Ascending:$Ascending `
            -First $First `
            -UseHomeREADME:$UseHomeREADME `
            -UseOneDriveREADME:$UseOneDriveREADME
    }

    end {
    }
}
<##############################################################################
Part of PowerShell module : GenXdev.Coding
Original cmdlet filename  : Get-Issues.ps1
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
Displays issues from a README.md file.

.DESCRIPTION
Shows all issues from the "## Issues" section of a README.md file. Can use
either the README in the current location, PowerShell profile directory, or
OneDrive directory.

.PARAMETER UseHomeREADME
Use README.md from PowerShell profile directory instead of current location.

.PARAMETER UseOneDriveREADME
Use README.md from OneDrive directory instead of current location.

.PARAMETER SortByDate
Sort lines by date (yyyyMMdd prefix) instead of priority.

.PARAMETER Ascending
Reverse the sort order. By default, higher priority/newer dates appear first.

.PARAMETER First
Limit the output to the first N lines.

.EXAMPLE
Issues -UseHomeREADME

.EXAMPLE
Issues -UseOneDriveREADME
#>
function Get-Issues {

    [CmdletBinding()]
    [System.Diagnostics.CodeAnalysis.SuppressMessageAttribute('PSUseSingularNouns', '')]
    [System.Diagnostics.CodeAnalysis.SuppressMessageAttribute('PSUseBOMForUnicodeEncodedFile', '')]
    [Alias('issues')]
    param(
        [Parameter(
            Mandatory = $false,
            HelpMessage = 'Use README in PowerShell profile directory'
        )]
        [switch] $UseHomeREADME,
        [Parameter(
            Mandatory = $false,
            HelpMessage = 'Use README in OneDrive directory'
        )]
        [switch] $UseOneDriveREADME,

        [Parameter(
            Mandatory = $false,
            HelpMessage = 'Sort lines by date (yyyyMMdd prefix) instead of priority'
        )]
        [switch] $SortByDate,

        [Parameter(
            Mandatory = $false,
            HelpMessage = 'Reverse the sort order (ascending instead of descending)'
        )]
        [switch] $Ascending,

        [Parameter(
            Mandatory = $false,
            HelpMessage = 'Limit output to the first N lines'
        )]
        [int] $First = 0
    )

    begin {

        Microsoft.PowerShell.Utility\Write-Verbose 'Starting Issues function'
    }


    process {

        # display issues using base function
        GenXdev\Add-IssueLineToREADME `
            -Show `
            -SortByDate:$SortByDate `
            -Ascending:$Ascending `
            -First $First `
            -UseHomeREADME:$UseHomeREADME `
            -UseOneDriveREADME:$UseOneDriveREADME
    }

    end {
    }
}
<##############################################################################
Part of PowerShell module : GenXdev.Coding
Original cmdlet filename  : Get-Refactor.ps1
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

# don't remove this line [dontrefactor]

<#
.SYNOPSIS
Retrieves refactor definitions from GenXdev preferences based on name patterns.

.DESCRIPTION
Searches for and loads refactor definition sets stored in GenXdev preferences.
Each refactor set is stored as a JSON string in a preference with name starting
with 'refactor_set_'. The function deserializes matching sets into objects.

.PARAMETER Name
One or more name patterns to match against refactor set names. Patterns are
matched against the portion of the preference name after 'refactor_set_' prefix.
Supports wildcards. If omitted, returns all refactor sets.

.EXAMPLE
Get-Refactor -Name "CodeStyle*"
Returns refactor definitions matching pattern "CodeStyle*"

.EXAMPLE
refactor "UnitTest"
Uses alias to find refactor definitions containing "UnitTest"
#>
function Get-Refactor {

    [CmdletBinding()]
    [Alias('refactors')]
    [OutputType([GenXdev.Helpers.RefactorDefinition[]])]
    param (
        [Parameter(
            Mandatory = $false,
            Position = 0,
            HelpMessage = 'Pattern(s) to search for refactor definitions',
            ValueFromPipeline = $true,
            ValueFromPipelineByPropertyName = $true
        )]
        [ValidateNotNullOrEmpty()]
        [SupportsWildcards()]
        [Alias('PreferenceName')]
        [string[]] $Name = @('*'),
        [Parameter(
            Mandatory = $false,
            HelpMessage = 'Database path for preference data files'
        )]
        [Alias('DatabasePath')]
        [string] $PreferencesDatabasePath,
        [Parameter(
            Mandatory = $false,
            HelpMessage = 'The default value if preference is not found'
        )]
        [AllowNull()]
        [AllowEmptyString()]
        [Alias('DefaultPreference')]
        [string] $DefaultValue,
        [Parameter(
            Mandatory = $false,
            HelpMessage = ('Use alternative settings stored in session for Data ' +
                'preferences like Language, Database paths, etc')
        )]
        [switch] $SessionOnly,
        [Parameter(
            Mandatory = $false,
            HelpMessage = ('Clear the session setting (Global variable) before ' +
                'retrieving')
        )]
        [switch] $ClearSession,
        [Parameter(
            Mandatory = $false,
            HelpMessage = ('Dont use alternative settings stored in session for ' +
                'Data preferences like Language, Database paths, etc')
        )]
        [Alias('FromPreferences')]
        [switch] $SkipSession
    )

    begin {
        # no initialization needed
    }


    process {
        # get all preference names that could contain refactor definitions
        Microsoft.PowerShell.Utility\Write-Verbose 'Searching for refactor set preferences...'

        # Copy identical parameters for Get-GenXdevPreferenceNames
        $prefNamesParams = GenXdev\Copy-IdenticalParamValues `
            -BoundParameters $PSBoundParameters `
            -FunctionName 'GenXdev\Get-GenXdevPreferenceNames' `
            -DefaultValues (Microsoft.PowerShell.Utility\Get-Variable -Scope Local -ErrorAction SilentlyContinue)

        $prefNames = GenXdev\Get-GenXdevPreferenceNames @prefNamesParams |
            Microsoft.PowerShell.Core\Where-Object { $_ -like 'refactor_set_*' }
        & {
            foreach ($prefName in $prefNames) {

                Microsoft.PowerShell.Utility\Write-Verbose "Processing preference: $prefName"

                # check each provided name pattern against current preference
                foreach ($pattern in $Name) {

                    # extract name portion after refactor_set_ prefix
                    $actualName = $prefName.Substring('refactor_set_'.Length)

                    # skip if pattern doesn't match the actual name
                    if (-not ($actualName -like $pattern)) {

                        continue
                    }

                    # attempt to load and parse the JSON content
                    # Copy identical parameters for Get-GenXdevPreference
                    $prefParams = GenXdev\Copy-IdenticalParamValues `
                        -BoundParameters $PSBoundParameters `
                        -FunctionName 'GenXdev\Get-GenXdevPreference' `
                        -DefaultValues (Microsoft.PowerShell.Utility\Get-Variable -Scope Local -ErrorAction SilentlyContinue)

                        $prefParams.Name = $prefName
                        $existingJson = GenXdev\Get-GenXdevPreference @prefParams -ErrorAction SilentlyContinue
                        $existingJson = GenXdev\Get-GenXdevPreference @prefParams -ErrorAction SilentlyContinue

                    # process non-empty JSON content
                    if (-not [string]::IsNullOrWhiteSpace($existingJson)) {
                        try {
                            # deserialize JSON into refactor definition object
                            [GenXdev.Helpers.RefactorDefinition] $refactorSet = (Microsoft.PowerShell.Utility\ConvertFrom-Json $existingJson) -as [GenXdev.Helpers.RefactorDefinition]

                            # check containers
                            if (($null -eq $refactorSet.State.Unselected) -or

                                ($null -eq $refactorSet.State.Selected) -or
                                ($null -eq $refactorSet.State.Refactored) -or
                                ($null -eq $refactorSet.Log)) {

                                $newSet = [GenXdev.Helpers.RefactorDefinition]::new()
                                $newSet.Name = $refactorSet.Name
                                $newSet.Priority = $refactorSet.Priority
                                $newSet.SelectionSettings.Script = (!!$refactorSet.SelectionSettings ? $refactorSet.SelectionSettings.Script : '')

                                $refactorSet = $newSet
                            }

                            Microsoft.PowerShell.Utility\Write-Verbose ('Successfully parsed refactor set from ' +
                                "preference: $prefName")
                            Microsoft.PowerShell.Utility\Write-Output $refactorSet
                        }
                        catch {
                            $errorMsg = "Failed to parse refactor set from $prefName"
                            Microsoft.PowerShell.Utility\Write-Error $errorMsg
                            Microsoft.PowerShell.Utility\Write-Verbose "$errorMsg : $_"
                        }
                    }

                    break;
                }
            }
        }.GetNewClosure() | Microsoft.PowerShell.Utility\Sort-Object -Property Priority -Descending
    }

    end {
    }
}
<##############################################################################
Part of PowerShell module : GenXdev.Coding
Original cmdlet filename  : Get-ReleaseNotes.ps1
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
Displays ReleaseNotes from a README.md file.

.DESCRIPTION
Shows all ReleaseNotes from the "## Release notes" section of a README.md file. Can use
either the README in the current location, PowerShell profile directory, or
OneDrive directory.

.PARAMETER UseHomeREADME
Use README.md from PowerShell profile directory instead of current location.

.PARAMETER UseOneDriveREADME
Use README.md from OneDrive directory instead of current location.

.PARAMETER SortByDate
Sort lines by date (yyyyMMdd prefix) instead of priority.

.PARAMETER Ascending
Reverse the sort order. By default, higher priority/newer dates appear first.

.PARAMETER First
Limit the output to the first N lines.

.EXAMPLE
ReleaseNotes -UseHomeREADME
#>
function Get-ReleaseNotes {

    [CmdletBinding()]
    [System.Diagnostics.CodeAnalysis.SuppressMessageAttribute('PSUseSingularNouns', '')]
    [System.Diagnostics.CodeAnalysis.SuppressMessageAttribute('PSUseBOMForUnicodeEncodedFile', '')]
    [Alias('releasenotes')]
    param(
        [Parameter(
            Mandatory = $false,
            HelpMessage = 'Use README in PowerShell profile directory'
        )]
        [switch] $UseHomeREADME,
        [Parameter(
            Mandatory = $false,
            HelpMessage = 'Use README in OneDrive directory'
        )]
        [switch] $UseOneDriveREADME,

        [Parameter(
            Mandatory = $false,
            HelpMessage = 'Sort lines by date (yyyyMMdd prefix) instead of priority'
        )]
        [switch] $SortByDate,

        [Parameter(
            Mandatory = $false,
            HelpMessage = 'Reverse the sort order (ascending instead of descending)'
        )]
        [switch] $Ascending,

        [Parameter(
            Mandatory = $false,
            HelpMessage = 'Limit output to the first N lines'
        )]
        [int] $First = 0
    )

    begin {

        Microsoft.PowerShell.Utility\Write-Verbose 'Starting ReleaseNotes function'
    }


    process {

        # display ReleaseNotes using base function
        GenXdev\Add-ReleaseNoteLineToREADME `
            -Show `
            -SortByDate:$SortByDate `
            -Ascending:$Ascending `
            -First $First `
            -UseHomeREADME:$UseHomeREADME `
            -UseOneDriveREADME:$UseOneDriveREADME
    }

    end {
    }
}
<##############################################################################
Part of PowerShell module : GenXdev.Coding
Original cmdlet filename  : Get-Todoos.ps1
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
Displays todo items from a README.md file.

.DESCRIPTION
Shows all todo items from the "## Todoos" section of a README.md file. Can use
either the README in the current location, PowerShell profile directory, or
OneDrive directory.

.PARAMETER UseHomeREADME
Use README.md from PowerShell profile directory instead of current location.

.PARAMETER UseOneDriveREADME
Use README.md from OneDrive directory instead of current location.

.PARAMETER SortByDate
Sort lines by date (yyyyMMdd prefix) instead of priority.

.PARAMETER Ascending
Reverse the sort order. By default, higher priority/newer dates appear first.

.PARAMETER First
Limit the output to the first N lines.

.EXAMPLE
Todoos -UseHomeREADME

.EXAMPLE
Todoos -UseOneDriveREADME
#>
function Get-Todoos {

    [CmdletBinding()]
    [System.Diagnostics.CodeAnalysis.SuppressMessageAttribute('PSUseSingularNouns', '')]
    [System.Diagnostics.CodeAnalysis.SuppressMessageAttribute('PSUseBOMForUnicodeEncodedFile', '')]
    [Alias('todoos')]
    param(
        [Parameter(
            Mandatory = $false,
            HelpMessage = 'Use README in PowerShell profile directory'
        )]
        [switch] $UseHomeREADME,
        [Parameter(
            Mandatory = $false,
            HelpMessage = 'Use README in OneDrive directory'
        )]
        [switch] $UseOneDriveREADME,

        [Parameter(
            Mandatory = $false,
            HelpMessage = 'Sort lines by date (yyyyMMdd prefix) instead of priority'
        )]
        [switch] $SortByDate,

        [Parameter(
            Mandatory = $false,
            HelpMessage = 'Reverse the sort order (ascending instead of descending)'
        )]
        [switch] $Ascending,

        [Parameter(
            Mandatory = $false,
            HelpMessage = 'Limit output to the first N lines'
        )]
        [int] $First = 0
    )

    begin {

        Microsoft.PowerShell.Utility\Write-Verbose 'Starting Todoos function'
    }


    process {

        # display todos using base function
        GenXdev\Add-TodoLineToREADME `
            -Show `
            -SortByDate:$SortByDate `
            -Ascending:$Ascending `
            -First $First `
            -UseHomeREADME:$UseHomeREADME `
            -UseOneDriveREADME:$UseOneDriveREADME
    }

    end {
    }
}
<##############################################################################
Part of PowerShell module : GenXdev.Coding
Original cmdlet filename  : New-Refactor.ps1
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
Creates a new refactoring set for code transformation tasks.

.DESCRIPTION
Creates and configures a new refactoring definition with specified settings for
LLM-based code transformations. The function handles:
- Setting up refactoring configuration
- Configuring selection criteria and prompts
- Managing LLM model settings
- Integrating with development environments
- Persisting refactor definitions

.PARAMETER Name
Unique identifier for the refactoring set. Must be non-empty and unique.

.PARAMETER PromptKey
Key identifying which prompt template to use for refactoring operations.

.PARAMETER Prompt
Optional custom prompt text to override the template specified by PromptKey.

.PARAMETER SelectionScript
PowerShell script defining selection criteria for items to refactor.

.PARAMETER SelectionPrompt
Custom prompt text used by the LLM to guide selection of items for refactoring.

.PARAMETER LLMQueryType
The type of LLM query to perform (SimpleIntelligence, Knowledge, Pictures, etc.).

.PARAMETER Model
Name or identifier of the specific LLM model to use for processing.

.PARAMETER SelectByFreeRam
Select configuration by available system RAM.

.PARAMETER SelectByFreeGpuRam
Select configuration by available GPU RAM.

.PARAMETER Temperature
Controls randomness in LLM responses (0.0-1.0). Lower is more deterministic.

.PARAMETER ApiEndpoint
Custom API endpoint URL for accessing the LLM service.

.PARAMETER ApiKey
Authentication key required for API access.

.PARAMETER TimeoutSeconds
The timeout in seconds for AI operations.

.PARAMETER SessionOnly
Use alternative settings stored in session for AI preferences.

.PARAMETER ClearSession
Clear alternative settings stored in session for AI preferences.

.PARAMETER PreferencesDatabasePath
Database path for preference data files.

.PARAMETER SkipSession
Store settings only in persistent preferences without affecting session.

.PARAMETER Priority
Processing priority for this refactor set (higher numbers = higher priority).

.PARAMETER ExposedCmdLets
Array of PowerShell cmdlet definitions to expose as tools to the LLM.

.PARAMETER FilesToAdd
Array of files to initially include in the refactoring set.

.PARAMETER AutoAddModifiedFiles
When enabled, automatically adds any modified files to the refactoring queue.

.PARAMETER Code
Opens files in Visual Studio Code when enabled.

.PARAMETER VisualStudio
Opens files in Visual Studio when enabled.

.PARAMETER KeysToSend
Array of keystrokes to send after opening files.

.EXAMPLE
New-Refactor -Name "UpdateLogging" -PromptKey "LoggingRefactor" `
    -SelectionScript "Get-LoggingMethods" -Priority 1 `
    -Code

.EXAMPLE
newrefactor UpdateLogging LoggingRefactor -p "Get-LoggingMethods" -c
#>
function New-Refactor {

    [CmdletBinding(SupportsShouldProcess = $true)]
    [Alias('newrefactor')]

    param (
        [Parameter(
            Position = 0,
            Mandatory = $true,
            HelpMessage = 'The name of this new refactor set'
        )]
        [ValidateNotNullOrEmpty()]
        [string] $Name,
        [Parameter(
            Position = 1,
            Mandatory = $true,
            HelpMessage = 'The prompt key indicates which prompt script to use'
        )]
        [ValidateNotNullOrEmpty()]
        [string] $PromptKey,
        [Parameter(
            Position = 2,
            Mandatory = $false,
            HelpMessage = 'Custom prompt text to override the template'
        )]
        [ValidateNotNullOrEmpty()]
        [string] $Prompt = '',
        [Parameter(
            Position = 3,
            Mandatory = $false,
            HelpMessage = 'Powershell script for selecting items to refactor'
        )]
        [ValidateNotNullOrEmpty()]
        [string] $SelectionScript,
        [Parameter(
            Position = 4,
            Mandatory = $false,
            HelpMessage = 'LLM selection guidance prompt'
        )]
        [ValidateNotNullOrEmpty()]
        [string] $SelectionPrompt,
        [Parameter(
            Position = 5,
            Mandatory = $false,
            HelpMessage = 'The type of LLM query'
        )]
        [ValidateSet(
            'SimpleIntelligence',
            'Knowledge',
            'Pictures',
            'TextTranslation',
            'Coding',
            'ToolUse'
        )]
        [string] $LLMQueryType = 'Coding',
        [Parameter(
            Mandatory = $false,
            HelpMessage = 'The model identifier or pattern to use for AI operations'
        )]
        [string] $Model,
        [Parameter(
            Mandatory = $false,
            HelpMessage = 'Select configuration by available system RAM'
        )]
        [switch] $SelectByFreeRam,
        [Parameter(
            Mandatory = $false,
            HelpMessage = 'Select configuration by available GPU RAM'
        )]
        [switch] $SelectByFreeGpuRam,
        [Parameter(
            Mandatory = $false,
            HelpMessage = 'Temperature for response randomness (0.0-1.0)'
        )]
        [ValidateRange(-1, 1.0)]
        [double] $Temperature = -1,
        [Parameter(
            Mandatory = $false,
            HelpMessage = 'The API endpoint URL for AI operations'
        )]
        [string] $ApiEndpoint,
        [Parameter(
            Mandatory = $false,
            HelpMessage = 'The API key for authenticated AI operations'
        )]
        [string] $ApiKey,
        [Parameter(
            Mandatory = $false,
            HelpMessage = 'Indicates that LLM has no support for JSON schemas'
        )]
        [string] $NoSupportForJsonSchema,
        [Parameter(
            Mandatory = $false,
            HelpMessage = 'The timeout in seconds for AI operations'
        )]
        [int] $TimeoutSeconds,
        [Parameter(
            Mandatory = $false,
            HelpMessage = 'Priority for this refactor set'
        )]
        [ValidateNotNullOrEmpty()]
        [int] $Priority = 0,
        [Parameter(
            Mandatory = $false,
            HelpMessage = 'Array of PowerShell command definitions for LLM tools'
        )]
        [GenXdev.Helpers.ExposedCmdletDefinition[]]
        $ExposedCmdLets = @(),
        [Parameter(
            Mandatory = $false,
            HelpMessage = 'Array of files to process'
        )]
        [ValidateNotNull()]
        [System.IO.FileInfo[]] $FilesToAdd = @(),
        [Parameter(
            Mandatory = $false,
            HelpMessage = 'Database path for preference data files'
        )]
        [Alias('DatabasePath')]
        [string] $PreferencesDatabasePath,
        [Parameter(
            Mandatory = $false,
            HelpMessage = 'Will automatically add modified files to the queue'
        )]
        [switch] $AutoAddModifiedFiles,
        [Parameter(
            Mandatory = $false,
            HelpMessage = ('Use alternative settings stored in session for AI ' +
                'preferences')
        )]
        [switch] $SessionOnly,
        [Parameter(
            Mandatory = $false,
            HelpMessage = ('Clear alternative settings stored in session for AI ' +
                'preferences')
        )]
        [switch] $ClearSession,
        [Parameter(
            Mandatory = $false,
            HelpMessage = ('Store settings only in persistent preferences without ' +
                'affecting session')
        )]
        [Alias('FromPreferences')]
        [switch] $SkipSession,
        [Parameter(
            Mandatory = $false,
            HelpMessage = 'Open files in Visual Studio Code'
        )]
        [Alias('c')]
        [switch] $Code,
        [Parameter(
            Mandatory = $false,
            HelpMessage = 'Open in Visual Studio'
        )]
        [Alias('vs')]
        [switch] $VisualStudio,
        [Parameter(
            Mandatory = $false,
            HelpMessage = 'Keystrokes to send after opening files'
        )]
        [Alias('keys')]
        [string[]] $KeysToSend = @()
    )

    begin {

        # capture current UTC timestamp for logging
        $currentTime = GenXdev\UtcNow

        # output verbose information about the refactor set being created
        Microsoft.PowerShell.Utility\Write-Verbose (
            "Initializing new refactor set '$Name' with priority $Priority"
        )

        # initialize new refactor definition object
        $refactorDefinition = [GenXdev.Helpers.RefactorDefinition]::new()
        $refactorDefinition.Name = $Name
        $refactorDefinition.Priority = $Priority

        # configure base refactoring settings
        $refactorDefinition.RefactorSettings.PromptKey = $PromptKey
        $refactorDefinition.RefactorSettings.Prompt = $Prompt

        # setup selection criteria configuration
        $refactorDefinition.SelectionSettings.Script = $SelectionScript
        $refactorDefinition.SelectionSettings.AutoAddModifiedFiles = `
            $AutoAddModifiedFiles
        $refactorDefinition.SelectionSettings.LLM.Prompt = $SelectionPrompt

        # configure LLM processing settings
        $llmConfigParams = GenXdev\Copy-IdenticalParamValues `
            -BoundParameters $PSBoundParameters `
            -FunctionName 'GenXdev\Get-AILLMSettings' `
            -DefaultValues  (Microsoft.PowerShell.Utility\Get-Variable -Scope Local -ErrorAction SilentlyContinue)

        $llmConfig = GenXdev\Get-AILLMSettings @llmConfigParams

        foreach ($param in $llmConfig.Keys) {

            if ($null -ne $llmConfig[$param]) {

                $refactorDefinition.SelectionSettings.LLM."$param" = $llmConfig."$param"
            }
        }

        $refactorDefinition.SelectionSettings.LLM.ExposedCmdLets = `
            $ExposedCmdLets

        # set IDE integration preferences
        $refactorDefinition.RefactorSettings.KeysToSend = $KeysToSend
        $refactorDefinition.RefactorSettings.Code = `
            $PSBoundParameters.ContainsKey('Code') ? ($Code ? 1 : 0) : -1
        $refactorDefinition.RefactorSettings.VisualStudio = `
            $PSBoundParameters.ContainsKey('VisualStudio') ? `
        ($VisualStudio ? 1 : 0) : -1

        # record creation event in log
        $null = $refactorDefinition.Log.Add(
            @{
                Timestamp = $currentTime
                Message   = 'Refactor set created'
            }
        )

        # initialize state tracking
        $refactorDefinition.State.Status = 'Created'
        $refactorDefinition.State.LastUpdated = $currentTime
    }

    process {

        # create unique storage key for this refactor set
        $preferenceName = "refactor_set_$Name"

        # output verbose information about refactor set existence check
        Microsoft.PowerShell.Utility\Write-Verbose (
            "Validating refactor set '$Name' does not exist"
        )

        # verify no existing refactor with same name exists
            $existingDefinition = GenXdev\Get-GenXdevPreference `
            -Name $preferenceName -PreferencesDatabasePath $PreferencesDatabasePath `
            -ErrorAction SilentlyContinue

        # check for existing refactor set with same name
        if ($existingDefinition) {
            Microsoft.PowerShell.Utility\Write-Error (
                "Refactor set '$Name' already exists"
            )
            return
        }

        # confirm with user before creating new refactor set
        if ($PSCmdlet.ShouldProcess($Name, 'Create new refactor set')) {

            # output verbose information about saving the refactor set
            Microsoft.PowerShell.Utility\Write-Verbose "Saving refactor set '$Name'"

            # initialize with provided files
            GenXdev\Update-Refactor `
                -Refactor $refactorDefinition `
                -FilesToAdd:$FilesToAdd `
                -PerformAutoSelections
        }
    }

    end {
    }
}
<##############################################################################
Part of PowerShell module : GenXdev.Coding
Original cmdlet filename  : Open-SourceFileInIde.ps1
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
Opens a source file in the preferred IDE (Visual Studio Code or Visual Studio).

.DESCRIPTION
This function opens a specified source file in either Visual Studio Code or
Visual Studio. It can navigate directly to a specific line number and optionally
send keyboard inputs to the IDE after opening the file. The function will
attempt to determine which IDE to use based on the current host process, running
applications, or user selection.

.PARAMETER Path
The path to the source file that should be opened in the IDE. Accepts both
relative and absolute paths, as well as paths with environment variables.

.PARAMETER LineNo
The line number to navigate to when opening the file. Default is 0, which opens
the file without positioning to a specific line.

.PARAMETER KeysToSend
Array of keyboard inputs to send to the application after opening. The function
will wait 2 seconds before sending the keys to ensure the IDE has loaded.

.PARAMETER Code
Switch parameter to force opening the file in Visual Studio Code regardless
of the current host process or other running IDEs.

.PARAMETER VisualStudio
Switch parameter to force opening the file in Visual Studio regardless of the
current host process or other running IDEs.

.PARAMETER SendKeyEscape
When specified, escapes special characters so they are sent as literal text
instead of being interpreted as control sequences.

.PARAMETER SendKeyHoldKeyboardFocus
Prevents returning keyboard focus to PowerShell after sending keys.

.PARAMETER SendKeyUseShiftEnter
Sends Shift+Enter instead of regular Enter for line breaks.

.PARAMETER SendKeyDelayMilliSeconds
Adds delay between sending different key sequences. Useful for slower apps.

.EXAMPLE
Open-SourceFileInIde -Path "C:\Projects\MyScript.ps1" -LineNo 25 -Code

.EXAMPLE
editcode "C:\Projects\MyScript.ps1" 25
#>
function Open-SourceFileInIde {

    [CmdletBinding()]
    [System.Diagnostics.CodeAnalysis.SuppressMessageAttribute('PSAvoidGlobalVars', '')]
    [System.Diagnostics.CodeAnalysis.SuppressMessageAttribute('PSUseUsingScopeModifierInNewRunspaces', '')]
    [Alias('editcode')]
    param(
        [Parameter(
            Mandatory = $true,
            Position = 0,
            ValueFromPipeline = $true,
            ValueFromPipelineByPropertyName = $true,
            HelpMessage = 'The path to the sourcefile to open'
        )]
        [ValidateNotNullOrEmpty()]
        [Alias('FullName')]
        [string] $Path,
        [Parameter(
            Mandatory = $false,
            Position = 1,
            HelpMessage = 'The line number to navigate to'
        )]
        [int] $LineNo = 0,
        [Parameter(
            Mandatory = $false,
            Position = 2,
            HelpMessage = 'Array of keyboard inputs to send to the application'
        )]
        [Alias('keys')]
        [string[]] $KeysToSend = @(),
        [Parameter(
            Mandatory = $false,
            HelpMessage = 'The ide to open the file in'
        )]
        [Alias('c')]
        [switch] $Code,
        [Parameter(
            Mandatory = $false,
            HelpMessage = 'Open in Visual Studio'
        )]
        [Alias('vs')]
        [switch] $VisualStudio,
        [Parameter(
            Mandatory = $false,
            HelpMessage = 'Escape control characters and modifiers'
        )]
        [Alias('Escape')]
        [switch] $SendKeyEscape,
        [Parameter(
            Mandatory = $false,
            HelpMessage = 'Hold keyboard focus on target window'
        )]
        [Alias('HoldKeyboardFocus')]
        [switch] $SendKeyHoldKeyboardFocus,
        [Parameter(
            Mandatory = $false,
            HelpMessage = 'Use Shift+Enter instead of Enter'
        )]
        [Alias('UseShiftEnter')]
        [switch] $SendKeyUseShiftEnter,
        [Parameter(
            Mandatory = $false,
            HelpMessage = 'Delay between different input strings in milliseconds'
        )]
        [Alias('DelayMilliSeconds')]
        [int] $SendKeyDelayMilliSeconds
    )

    begin {

        # expand any environment variables or relative paths in the file path
        $Path = GenXdev\Expand-Path $Path
        $PSRoot = GenXdev\Get-PowerShellRoot

        # get the process that's hosting the current PowerShell session
        [System.Diagnostics.Process] $hostProcess = (
            GenXdev\Get-PowershellMainWindowProcess |
                Microsoft.PowerShell.Core\Where-Object {
                    "$($_.Name)".ToLowerInvariant() -in @(
                        'code',
                        'code - insiders',
                        'vscodium',
                        'vscodium - insiders',
                        'devenv',
                        'sublime_text',
                        'atom',
                        'idea64',
                        'pycharm64',
                        'cursor'
                    )
                }
        )

        # determine default IDE path based on host process availability
        $normalPath = Microsoft.PowerShell.Management\Join-Path `
            $env:LOCALAPPDATA 'Programs\Microsoft VS Code\Code.exe'
        $normalPath2 = Microsoft.PowerShell.Management\Join-Path `
            $env:ProgramFiles 'Microsoft VS Code\Code.exe'
        $previewPath = Microsoft.PowerShell.Management\Join-Path `
            $env:LOCALAPPDATA `
            'Programs\Microsoft VS Code Insiders\Code - Insiders.exe'
        $previewPath2 = Microsoft.PowerShell.Management\Join-Path `
            $env:ProgramFiles `
            '\Microsoft VS Code Insiders\Code - Insiders.exe'

        $idePath = ((($null -eq $hostProcess) -or `
                ($hostProcess -like '*Terminal*')) ? (
                ([IO.File]::Exists($previewPath) ? $previewPath : (
                    ([IO.File]::Exists($previewPath2) ? $previewPath2 : (
                        ([IO.File]::Exists($normalPath) ? $normalPath : (
                            ([IO.File]::Exists($normalPath2) ? $normalPath2 : 'code')))))))) : `
                $hostProcess.Path)

        # output verbose message about initial host process path
        Microsoft.PowerShell.Utility\Write-Verbose (
            "Initial host process path: $idePath"
        )

        # check if current host is VS Code or Visual Studio
        $filename = ([IO.Path]::GetFileNameWithoutExtension($idePath)).ToLowerInvariant()
        $isCode = ($filename -eq 'code') -or ($filename -eq 'code - insiders')
        $isVisualStudio = $filename -eq 'devenv'

        # output verbose message about initial IDE detection
        Microsoft.PowerShell.Utility\Write-Verbose (
            "Initial IDE detection: VSCode=$isCode, VS=$isVisualStudio"
        )

        # if neither Code nor VS is hosting, try to find them running elsewhere
        if (-not ($isCode -or $isVisualStudio)) {

            # try to find a running VS Code process
            [System.Diagnostics.Process] $hostProcess = (
                Microsoft.PowerShell.Management\Get-Process 'Code' `
                    -ErrorAction SilentlyContinue |
                    Microsoft.PowerShell.Utility\Select-Object -First 1
            )

            # update path if VS Code process was found
            $idePath = ((($null -eq $hostProcess) -or `
                    ($hostProcess -like '*Terminal*')) ?
                $idePath : $hostProcess.Path)

            $isCode = $null -ne $hostProcess

            # output verbose message about VS Code detection
            Microsoft.PowerShell.Utility\Write-Verbose (
                "Found running VS Code: $isCode"
            )

            # try to find a running Visual Studio process
            [System.Diagnostics.Process] $hostProcess = (
                Microsoft.PowerShell.Management\Get-Process 'devenv' `
                    -ErrorAction SilentlyContinue |
                    Microsoft.PowerShell.Utility\Select-Object -First 1
            )

            # update path if Visual Studio process was found
            $idePath = ((($null -eq $hostProcess) -or `
                    ($hostProcess -like '*Terminal*')) ?
                $idePath : $hostProcess.Path)

            $isVisualStudio = $null -ne $hostProcess

            # output verbose message about Visual Studio detection
            Microsoft.PowerShell.Utility\Write-Verbose (
                "Found running Visual Studio: $isVisualStudio"
            )
        }

        # if still can't determine which IDE to use, prompt the user
        if (-not ($isCode -bxor $isVisualStudio)) {

            # use previously chosen IDE or prompt user to select one
            $userAnswer = (($null -ne $Global:_CodeOrVisualStudioRefactor ?
                    $Global:_CodeOrVisualStudioRefactor :
                    ($host.ui.PromptForChoice(
                        'Make a choice',
                        'What ide to use for refactoring?',
                        @('Visual Studio &Code', '&Visual Studio'),
                        0))))

            # save user's choice for future use in this session
            $Global:_CodeOrVisualStudioRefactor = $userAnswer

            # configure IDE settings based on user's choice
            switch ($Global:_CodeOrVisualStudioRefactor) {
                0 {
                    # user chose VS Code
                    $isCode = $true
                    $isVisualStudio = $false

                    # determine default IDE path based on host process availability
                    [System.Diagnostics.Process] $hostProcess = `
                        GenXdev\Get-PowershellMainWindowProcess
                    $normalPath = Microsoft.PowerShell.Management\Join-Path `
                        $env:LOCALAPPDATA 'Programs\Microsoft VS Code\Code.exe'
                    $normalPath2 = Microsoft.PowerShell.Management\Join-Path `
                        $env:ProgramFiles 'Microsoft VS Code\Code.exe'
                    $previewPath = Microsoft.PowerShell.Management\Join-Path `
                        $env:LOCALAPPDATA `
                        'Programs\Microsoft VS Code Insiders\Code - Insiders.exe'
                    $previewPath2 = Microsoft.PowerShell.Management\Join-Path `
                        $env:ProgramFiles `
                        '\Microsoft VS Code Insiders\Code - Insiders.exe'

                    $idePath = ((($null -eq $hostProcess) -or `
                            ($hostProcess -like '*Terminal*')) ? (
                            ([IO.File]::Exists($previewPath) ? $previewPath : (
                                ([IO.File]::Exists($previewPath2) ? $previewPath2 : (
                                    ([IO.File]::Exists($normalPath) ? $normalPath : (
                                        ([IO.File]::Exists($normalPath2) ? $normalPath2 : 'code')))))))) : `
                            $hostProcess.Path)

                    # output verbose message about selected VS Code path
                    Microsoft.PowerShell.Utility\Write-Verbose (
                        "Selected VS Code at: $idePath"
                    )
                    break
                }
                1 {
                    # user chose Visual Studio
                    $isCode = $false

                    $isVisualStudio = $true

                    # common Visual Studio installation locations
                    $locations = (
                        "${Env:ProgramFiles}\Microsoft Visual Studio\devenv.exe",
                        "${env:ProgramFiles(x86)}\Microsoft Visual Studio\devenv.exe"
                    )

                    # find the newest Visual Studio executable
                    $idePath = Microsoft.PowerShell.Management\Get-ChildItem `
                        -LiteralPath $locations `
                        -File `
                        -Recurse `
                        -ErrorAction SilentlyContinue |
                        Microsoft.PowerShell.Utility\Sort-Object {
                            $_.Replace(
                                "${env:ProgramFiles(x86)}\Microsoft Visual Studio\",
                                ''
                            ).Replace(
                                "${Env:ProgramFiles}\Microsoft Visual Studio\",
                                ''
                            )
                        } -Descending |
                        Microsoft.PowerShell.Core\ForEach-Object { "$($_.FullName)" } |
                        Microsoft.PowerShell.Utility\Select-Object -First 1

                    # output verbose message about selected Visual Studio path
                    Microsoft.PowerShell.Utility\Write-Verbose (
                        "Selected Visual Studio at: $idePath"
                    )
                    break
                }
            }
        }

        # ensure vs code installation if chosen
        if ($isCode) {

            $null = GenXdev\EnsureVSCodeInstallation
        }
    }

    process {

        # validate that an IDE was found
        if ($null -eq $idePath) {

            # throw an error if no IDE was found
            throw 'No ide found'
            return
        }

        if ($Code) {
            if ($Path.StartsWith($PSRoot) -and (-not (Microsoft.PowerShell.Management\Get-Process code -ErrorAction SilentlyContinue))) {

                $null = Microsoft.PowerShell.Core\Start-Job {
                    param($idePath, $arguments)
                    Microsoft.PowerShell.Management\Start-Process `
                        -FilePath $idePath `
                        -ArgumentList $arguments
                } -ArgumentList @($idePath, $PSRoot) |
                    Microsoft.PowerShell.Core\Wait-Job
            }
        }

        # prepare arguments for opening the file
        # if VS Code and line number specified, use -g argument
        if ($Code -and $LineNo -gt 0) {

            if ($Path.StartsWith("$PSRoot\") -and ((Microsoft.PowerShell.Management\Get-Process code -ErrorAction SilentlyContinue))) {

                $null = Microsoft.PowerShell.Core\Start-Job {
                    param($idePath, $arguments)
                    Microsoft.PowerShell.Management\Start-Process `
                        -FilePath $idePath `
                        -ArgumentList $arguments
                } -ArgumentList @($idePath, "$PSRoot\.") |
                    Microsoft.PowerShell.Core\Wait-Job
            }

            # output verbose message about opening file in VS Code with line number
            Microsoft.PowerShell.Utility\Write-Verbose (
                "Opening in VS Code at line $($LineNo): $Path"
            )

            # start file in VS Code at specific line number using background job
            $null = Microsoft.PowerShell.Core\Start-Job {
                param($idePath, $arguments)
                Microsoft.PowerShell.Management\Start-Process `
                    -FilePath $idePath `
                    -ArgumentList $arguments
            } -ArgumentList @($idePath, @('-g', "$($Path):$LineNo")) |
                Microsoft.PowerShell.Core\Wait-Job
        }
        else {


            # output verbose message about opening file in IDE
            Microsoft.PowerShell.Utility\Write-Verbose (
                "Opening file in IDE: $Path"
            )

            # start file in IDE without line number using background job
            $null = Microsoft.PowerShell.Core\Start-Job {
                param($idePath, $arguments)
                Microsoft.PowerShell.Management\Start-Process `
                    -FilePath $idePath `
                    -ArgumentList $arguments
            } -ArgumentList @($idePath, @($Path)) |
                Microsoft.PowerShell.Core\Wait-Job
        }

        # send keyboard inputs if requested
        if (($null -ne $KeysToSend) -and ($KeysToSend.Length -gt 0)) {

            # wait for the application to start before sending keys
            Microsoft.PowerShell.Utility\Write-Verbose (
                'Waiting 2 seconds before sending keyboard inputs'
            )

            Microsoft.PowerShell.Utility\Start-Sleep 2

            # output verbose message about sending keyboard inputs
            Microsoft.PowerShell.Utility\Write-Verbose (
                'Sending keyboard inputs to IDE'
            )

            $SendKeyDelayMilliSeconds = ($PSBoundParameters.ContainsKey('SendKeyDelayMilliSeconds') ?
                $SendKeyDelayMilliSeconds : 500)
            # send keyboard inputs with parameters
            $params = GenXdev\Copy-IdenticalParamValues `
                -FunctionName 'GenXdev\Send-Key' `
                -BoundParameters $PSBoundParameters `
                -DefaultValues (Microsoft.PowerShell.Utility\Get-Variable -Scope Local -ErrorAction SilentlyContinue)

            GenXdev\Send-Key @params
        }
    }
}
<##############################################################################
Part of PowerShell module : GenXdev.Coding
Original cmdlet filename  : Publish-ReleaseNotesToManifest.ps1
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
Publishes uncompleted release notes from README.md to the module manifest.

.DESCRIPTION
Reads the "## Release notes" section from a README.md file, collects all
uncompleted release notes (lines starting with - ☐), writes them into the
ReleaseNotes field of GenXdev.psd1, and marks them as completed (☐ → ☒)
in the README. Both files are updated atomically in one operation.

.PARAMETER UseHomeREADME
Use README.md from PowerShell profile directory instead of current location.

.PARAMETER UseOneDriveREADME
Use README.md from OneDrive directory instead of current location.

.PARAMETER ManifestPath
Path to the .psd1 module manifest to update. If not specified, auto-detects
the GenXdev.psd1 in the module directory.

.EXAMPLE
Publish-ReleaseNotesToManifest

.EXAMPLE
Publish-ReleaseNotesToManifest -ManifestPath ".\MyModule.psd1"
#>
function Publish-ReleaseNotesToManifest {

    [CmdletBinding(SupportsShouldProcess = $true)]
    [Alias('pubrelnotes')]
    param(
        [Parameter(
            Mandatory = $false,
            HelpMessage = 'Use README in PowerShell profile directory'
        )]
        [switch] $UseHomeREADME,

        [Parameter(
            Mandatory = $false,
            HelpMessage = 'Use README in OneDrive directory'
        )]
        [switch] $UseOneDriveREADME,

        [Parameter(
            Mandatory = $false,
            HelpMessage = 'Path to the .psd1 module manifest'
        )]
        [string] $ManifestPath
    )

    begin {
        Microsoft.PowerShell.Utility\Write-Verbose `
            'Starting Publish-ReleaseNotesToManifest'

        # Resolve README path (same logic as Add-LineToREADME begin block)
        if ($UseHomeREADME) {
            $readmePath = GenXdev\Expand-Path `
                -FilePath "$([IO.Path]::GetDirectoryName($Profile))\README.md"
        }
        elseif ($UseOneDriveREADME) {
            $readmePath = GenXdev\Expand-Path `
                -FilePath '~\Onedrive\README.md' `
                -CreateDirectory
        }
        else {
            # Walk up from current directory to find README
            $startDir = GenXdev\Expand-Path $PWD
            $readmePath = $null
            $currentDir = $startDir
            while ($true) {
                $candidate = "$currentDir\README.md"
                if ([System.IO.File]::Exists($candidate)) {
                    $readmePath = $candidate
                    break
                }
                $parent = GenXdev\Expand-Path "$currentDir\..\"
                if ($parent -eq $currentDir) { break }
                $currentDir = $parent
            }
            if (-not $readmePath) {
                $readmePath = GenXdev\Expand-Path `
                    -FilePath '~\Onedrive\README.md' `
                    -CreateDirectory
            }
        }

        Microsoft.PowerShell.Utility\Write-Verbose `
            "Using README at: ${readmePath}"

        if (![IO.File]::Exists($readmePath)) {
            throw "README file not found at: ${readmePath}"
        }

        # Resolve manifest path
        if (-not $ManifestPath) {
            # Auto-detect: walk up from this script's directory
            $scriptDir = GenXdev\Expand-Path $PSScriptRoot
            $currentDir = $scriptDir
            while ($true) {
                $candidate = "$currentDir\GenXdev.psd1"
                if ([System.IO.File]::Exists($candidate)) {
                    $ManifestPath = $candidate
                    break
                }
                $parent = GenXdev\Expand-Path "$currentDir\..\"
                if ($parent -eq $currentDir) { break }
                $currentDir = $parent
            }
        }

        if (-not $ManifestPath -or ![IO.File]::Exists($ManifestPath)) {
            throw "Module manifest not found. Specify -ManifestPath."
        }

        Microsoft.PowerShell.Utility\Write-Verbose `
            "Using manifest at: ${ManifestPath}"
    }

    process {
        # Read README content
        $readmeContent = [IO.File]::ReadAllText($readmePath)
        $lineEnding = if ($readmeContent.IndexOf("`r`n") -ge 0) { "`r`n" } `
            else { "`n" }

        $section = '## Release notes'

        # Find the section
        $sectionStart = $readmeContent.IndexOf(
            $section,
            [System.StringComparison]::OrdinalIgnoreCase
        )
        if ($sectionStart -lt 0) {
            Microsoft.PowerShell.Utility\Write-Warning `
                "Section '${section}' not found in ${readmePath}"
            return
        }

        $sectionContentStart = $sectionStart + $section.Length +
            $lineEnding.Length
        $sectionLevel = ($section -replace '^([#]+).*$', '$1').Length
        $rest = $readmeContent.Substring($sectionContentStart)
        $nextHeading = [regex]::Match($rest, "(?m)^#{1,$sectionLevel}\s")
        $sectionEnd = if ($nextHeading.Success) {
            $sectionContentStart + $nextHeading.Index
        }
        else { $readmeContent.Length }

        $sectionContent = $readmeContent.Substring(
            $sectionContentStart,
            $sectionEnd - $sectionContentStart
        )
        $sectionLines = $sectionContent -split $lineEnding

        # Collect uncompleted release notes (lines with ☐)
        $uncompletedLines = [System.Collections.Generic.List[string]]::new()
        $uncompletedRaw = [System.Collections.Generic.List[string]]::new()
        $lineIndices = [System.Collections.Generic.List[int]]::new()

        for ($i = 0; $i -lt $sectionLines.Count; $i++) {
            $ln = $sectionLines[$i]
            if ($ln -match '^- ☐ \[P') {
                # Strip prefix and date: "- ☐ [P{N}] yyyyMMdd --> " → raw text
                $rawText = $ln -replace '^- ☐ \[P-?\d+\] \d{8}\s*-->\s*', ''
                $null = $uncompletedLines.Add($ln)
                $null = $uncompletedRaw.Add($rawText)
                $null = $lineIndices.Add($i)
            }
        }

        if ($uncompletedRaw.Count -eq 0) {
            Microsoft.PowerShell.Utility\Write-Host `
                'No uncompleted release notes found.'
            return
        }

        # Build release notes text for the manifest
        $releaseNotesText = ($uncompletedRaw -join "`n")

        # Read manifest content
        $manifestContent = [IO.File]::ReadAllText($ManifestPath)

        # Find and update the ReleaseNotes line
        $releaseNotesPattern = '(#\s*ReleaseNotes\s*=\s*)''(.*)'''
        if ($manifestContent -match $releaseNotesPattern) {
            # Already uncommented — replace value
            $manifestContent = $manifestContent -replace (
                $releaseNotesPattern,
                "ReleaseNotes = '${releaseNotesText}'"
            )
        }
        else {
            # Commented out — uncomment and set
            $commentedPattern = '#\s*ReleaseNotes\s*=\s*''(.*)'''
            if ($manifestContent -match $commentedPattern) {
                $manifestContent = $manifestContent -replace (
                    $commentedPattern,
                    "ReleaseNotes = '${releaseNotesText}'"
                )
            }
            else {
                # ReleaseNotes not found — insert before Prerelease
                $prereleasePattern = "(# Prerelease string of this module)"
                $insertBlock = "ReleaseNotes = '${releaseNotesText}'`r`n`r`n        $1"
                $manifestContent = $manifestContent -replace (
                    $prereleasePattern, $insertBlock
                )
            }
        }

        # Mark lines as done in README
        foreach ($idx in $lineIndices) {
            $sectionLines[$idx] = $sectionLines[$idx].Replace('☐', '☒')
        }
        $newSectionContent = $sectionLines -join $lineEnding
        $newReadmeContent = $readmeContent.Substring(0, $sectionContentStart) +
            $newSectionContent +
            $readmeContent.Substring($sectionEnd)

        # Write both files atomically
        if ($PSCmdlet.ShouldProcess(
                "README and ${ManifestPath}",
                'Publish release notes to manifest'
            )) {
            # Save backup copies first
            $readmeBackup = $readmeContent
            $manifestBackup = [IO.File]::ReadAllText($ManifestPath)

            try {
                GenXdev\Write-TextFileAtomic `
                    -FilePath $readmePath `
                    -Data $newReadmeContent

                [System.IO.File]::WriteAllText(
                    $ManifestPath,
                    $manifestContent,
                    [System.Text.Encoding]::UTF8
                )

                Microsoft.PowerShell.Utility\Write-Host `
                    "Published $($uncompletedRaw.Count) release note(s) to ${ManifestPath}"
            }
            catch {
                # Rollback on failure
                Microsoft.PowerShell.Utility\Write-Warning `
                    "Write failed, rolling back: $_"
                try {
                    GenXdev\Write-TextFileAtomic `
                        -FilePath $readmePath `
                        -Data $readmeBackup
                    [System.IO.File]::WriteAllText(
                        $ManifestPath,
                        $manifestBackup,
                        [System.Text.Encoding]::UTF8
                    )
                }
                catch {
                    Microsoft.PowerShell.Utility\Write-Warning `
                        "Rollback also failed: $_"
                }
                throw
            }
        }
    }

    end {
    }
}
<##############################################################################
Part of PowerShell module : GenXdev.Coding
Original cmdlet filename  : Remove-Refactor.ps1
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
Removes refactor sets from GenXdev preferences system.

.DESCRIPTION
Manages refactor sets in the GenXdev preferences system by removing specified
entries. Works with both custom and default refactor sets. Default sets are
protected unless explicitly allowed for removal. All refactor sets are
identified by the prefix "refactor_set_" in the preferences system.

.PARAMETER Name
One or more name patterns used to match refactor sets for removal. Supports
wildcard patterns like "*" and "?" for flexible matching. Multiple patterns can
be provided to target specific sets.

.PARAMETER RemoveDefault
Switch parameter that, when enabled, allows the removal of protected default or
standard refactor sets. By default, these sets are protected from deletion.

.EXAMPLE
Remove-Refactor -Name "CustomRefactor" -RemoveDefault
Removes a specific refactor set named "CustomRefactor" and allows removal
of default sets if matched

#>
function Remove-Refactor {

    [CmdletBinding(SupportsShouldProcess)]
    param (
        [Parameter(
            Mandatory = $true,
            Position = 0,
            HelpMessage = 'The name of the refactor, accepts wildcards',
            ValueFromPipeline = $true,
            ValueFromPipelineByPropertyName = $true
        )]
        [ValidateNotNullOrEmpty()]
        [SupportsWildcards()]
        [Alias('PreferenceName')]
        [string[]] $Name,
        [Parameter(
            Mandatory = $false,
            ParameterSetName = 'All',
            HelpMessage = 'Switch to also remove the standard refactor set'
        )]
        [switch] $RemoveDefault,
        [Parameter(
            Mandatory = $false,
            HelpMessage = 'Database path for preference data files'
        )]
        [Alias('DatabasePath')]
        [string] $PreferencesDatabasePath,
        [Parameter(
            Mandatory = $false,
            ValueFromPipelineByPropertyName = $true,
            HelpMessage = 'The default value if preference is not found'
        )]
        [AllowNull()]
        [AllowEmptyString()]
        [Alias('DefaultPreference')]
        [string] $DefaultValue,
        [Parameter(
            Mandatory = $false,
            HelpMessage = ('Use alternative settings stored in session for Data ' +
                'preferences like Language, Database paths, etc')
        )]
        [switch] $SessionOnly,
        [Parameter(
            Mandatory = $false,
            HelpMessage = ('Clear the session setting (Global variable) before ' +
                'retrieving')
        )]
        [switch] $ClearSession,
        [Parameter(
            Mandatory = $false,
            HelpMessage = ('Dont use alternative settings stored in session for ' +
                'Data preferences like Language, Database paths, etc')
        )]
        [Alias('FromPreferences')]
        [switch] $SkipSession
    )

    begin {

        # log operation start and search patterns for troubleshooting
        Microsoft.PowerShell.Utility\Write-Verbose ('Starting refactor removal process')
        Microsoft.PowerShell.Utility\Write-Verbose ("Search patterns to process: $($Name -join ', ')")
    }


    process {

        # copy identical parameters for GenXdev\Get-GenXdevPreferenceNames
        $params = GenXdev\Copy-IdenticalParamValues `
            -BoundParameters $PSBoundParameters `
            -FunctionName 'GenXdev\Get-GenXdevPreferenceNames' `
            -DefaultValues (Microsoft.PowerShell.Utility\Get-Variable `
                -Scope Local `
                -ErrorAction SilentlyContinue)

        # retrieve all preference names matching the refactor_set pattern
        GenXdev\Get-GenXdevPreferenceNames @params |
            Microsoft.PowerShell.Core\Where-Object { $_ -like 'refactor_set_*' } |
            Microsoft.PowerShell.Core\ForEach-Object {

                # store current preference name for processing
                $preferenceName = $_
                Microsoft.PowerShell.Utility\Write-Verbose "Processing preference: $preferenceName"

                # extract refactor name by removing the standard prefix
                $refactorName = $preferenceName.Substring('refactor_set_'.Length)

                # process each provided name pattern against current refactor
                $Name | Microsoft.PowerShell.Core\ForEach-Object {

                    # skip if pattern doesn't match current refactor name
                    if (-not ($refactorName -like $_)) {
                        return
                    }

                    # copy identical parameters for Get-GenXdevPreference
                    $getParams = GenXdev\Copy-IdenticalParamValues `
                        -BoundParameters $PSBoundParameters `
                        -FunctionName 'GenXdev\Get-GenXdevPreference' `
                        -DefaultValues (Microsoft.PowerShell.Utility\Get-Variable `
                            -Scope Local `
                            -ErrorAction SilentlyContinue)

                    # retrieve current preference value
                    $preferenceValue = GenXdev\Get-GenXdevPreference `
                        @getParams `
                        -Name $preferenceName `
                        -ErrorAction SilentlyContinue

                    # only process if preference exists and has a value
                    if (-not [string]::IsNullOrWhiteSpace($preferenceValue)) {

                        # confirm removal with user before proceeding
                        if ($PSCmdlet.ShouldProcess(
                                "Refactor set: $refactorName",
                                'Remove')) {

                            Microsoft.PowerShell.Utility\Write-Verbose ('Removing refactor set: ' +
                                "$refactorName")

                            # copy identical parameters for Remove-GenXdevPreference
                            $removeParams = GenXdev\Copy-IdenticalParamValues `
                                -BoundParameters $PSBoundParameters `
                                -FunctionName 'GenXdev\Remove-GenXdevPreference' `
                                -DefaultValues (Microsoft.PowerShell.Utility\Get-Variable `
                                    -Scope Local `
                                    -ErrorAction SilentlyContinue)

                            # remove preference from system
                            $null = GenXdev\Remove-GenXdevPreference `
                                @removeParams `
                                -Name $preferenceName `
                                -RemoveDefault:$RemoveDefault
                        }
                    }
                }
            }
    }

    end {

        Microsoft.PowerShell.Utility\Write-Verbose 'Refactor removal process completed'
    }
}
<##############################################################################
Part of PowerShell module : GenXdev.Coding
Original cmdlet filename  : Start-NextRefactor.ps1
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
Continues or restarts a code refactoring session.

.DESCRIPTION
Manages code refactoring operations by processing refactor definitions in
priority order. Handles file selection, progress tracking, error handling, and
provides interactive user control over the refactoring process.

.PARAMETER Name
Name pattern(s) of refactors to process. Accepts wildcards. Default is "*".

.PARAMETER FilesToAdd
Files to include in the refactoring process.

.PARAMETER FilesToRemove
Files to exclude from the refactoring process.

.PARAMETER CleanUpDeletedFiles
Remove files that no longer exist from the refactor set.

.PARAMETER Reset
Restart processing from the beginning of the refactor set.

.PARAMETER ResetLMSelections
Restart all LLM selections in the refactoring process.

.PARAMETER MarkAllCompleted
Marks all files in the refactor set as completed.

.PARAMETER RedoLast
Repeat the last refactoring operation.

.PARAMETER Speak
Enables text-to-speech for refactoring progress and notifications.

.EXAMPLE
Start-NextRefactor -Name "RefactorProject" -Reset -CleanUpDeletedFiles
Restarts refactoring for "RefactorProject" and removes deleted files.

.EXAMPLE
nextrefactor -Name "*Test*" -Speak
Processes all refactor sets matching "*Test*" pattern with speech enabled.
#>
function Start-NextRefactor {

    [CmdletBinding(SupportsShouldProcess)]
    [Alias('nextrefactor')]

    param (
        [Parameter(
            Mandatory = $false,
            Position = 0,
            HelpMessage = 'The name of the refactor, accepts wildcards',
            ValueFromPipeline = $true,
            ValueFromPipelineByPropertyName = $true
        )]
        [ValidateNotNullOrEmpty()]
        [SupportsWildcards()]
        [string[]] $Name = @('*'),
        [Parameter(
            Mandatory = $false,
            Position = 1,
            HelpMessage = 'Filenames to add'
        )]
        [ValidateNotNull()]
        [System.IO.FileInfo[]] $FilesToAdd = @(),
        [Parameter(
            Mandatory = $false,
            Position = 2,
            HelpMessage = 'Filenames to remove'
        )]
        [ValidateNotNull()]
        [System.IO.FileInfo[]] $FilesToRemove = @(),
        [Parameter(
            Mandatory = $false,
            HelpMessage = 'Clean up deleted files'
        )]
        [switch] $CleanUpDeletedFiles,
        [Parameter(
            Mandatory = $false,
            HelpMessage = 'Start from the beginning of the refactor set'
        )]
        [switch] $Reset,
        [Parameter(
            Mandatory = $false,
            HelpMessage = 'Restart all LLM selections'
        )]
        [switch] $ResetLMSelections,
        [Parameter(
            Mandatory = $false,
            HelpMessage = 'Mark all files as refactored'
        )]
        [switch] $MarkAllCompleted,
        [Parameter(
            Mandatory = $false,
            HelpMessage = 'Redo the last refactor'
        )]
        [switch] $RedoLast,
        [Parameter(
            Mandatory = $false,
            HelpMessage = 'Speak out the details of next refactor'
        )]
        [switch] $Speak
    )

    begin {

        # output detailed module filter pattern for troubleshooting
        Microsoft.PowerShell.Utility\Write-Verbose (
            "Starting refactoring operation for patterns: $($Name -join ', ')"
        )

        # load and sort refactor definitions by priority first
        [GenXdev.Helpers.RefactorDefinition[]] $refactorSet = GenXdev\Get-Refactor `
            -Name $Name |
            Microsoft.PowerShell.Utility\Sort-Object -Property Priority -Descending

        # exit if no matching refactors found
        if ($null -eq $refactorSet) {

            Microsoft.PowerShell.Utility\Write-Warning (
                "No refactor set found matching patterns: $($Name -join ', ')"
            )
            return
        }

        # pass the loaded refactor objects directly and only perform auto selections
        $null = GenXdev\Update-Refactor `
            -Refactor $refactorSet `
            -PerformAutoSelections `
            -RedoLast:$RedoLast `
            -Reset:$Reset `
            -MarkAllCompleted:$MarkAllCompleted `
            -CleanUpDeletedFiles:$CleanUpDeletedFiles `
            -FilesToRemove $FilesToRemove `
            -ResetLMSelections:$ResetLMSelections `
            -Verbose:$Verbose
    }


    process {

        # process each refactor definition in priority order
        foreach ($refactorDefinition in $refactorSet) {

            if ($PSCmdlet.ShouldProcess(
                    "Refactor set '$($refactorDefinition.Name)'",
                    'Process refactoring')) {

                Microsoft.PowerShell.Utility\Write-Verbose (
                    "Processing refactor: $($refactorDefinition.Name)"
                )

                try {
                    # update configuration with new files and process settings
                    $null = GenXdev\Update-Refactor `
                        -Refactor @($refactorDefinition) `
                        -Verbose:$Verbose
                }
                catch {
                    Microsoft.PowerShell.Utility\Write-Warning (
                        "Failed to update refactor set: $_"
                    )
                }

                # main refactoring loop - process files one at a time
                while ($refactorDefinition.State.Selected.Count -gt 0) {

                    # reset status to indicate active refactoring when items are available
                    if ($refactorDefinition.State.Status -eq 'Refactored') {
                        $refactorDefinition.State.Status = 'Refactoring'
                    }

                    # determine next file to process
                    if ($refactorDefinition.State.Selected.Count -gt 0) {
                        # get next file from selection queue
                        $next = $refactorDefinition.State.Selected[0]
                        $null = $refactorDefinition.State.Selected.RemoveAt(0)

                        # skip files that no longer exist on disk
                        if (-not (Microsoft.PowerShell.Management\Test-Path -LiteralPath $next -PathType Leaf)) {
                            Microsoft.PowerShell.Utility\Write-Verbose (
                                "Skipping non-existent file: $next"
                            )
                            continue
                        }

                        # update selection tracking index after removing item
                        $refactorDefinition.State.SelectedIndex = [Math]::Max(
                            -1,
                            $refactorDefinition.State.SelectedIndex - 1
                        )

                        # add to refactored list immediately to track progress
                        $null = $refactorDefinition.State.Refactored.Add($next)
                        $refactorDefinition.State.RefactoredIndex =
                        $refactorDefinition.State.Refactored.Count - 1
                    }
                    else {
                        # process unprocessed file from refactored list
                        $nextIndex = $refactorDefinition.State.RefactoredIndex + 1
                        $next = $refactorDefinition.State.Refactored[$nextIndex]

                        Microsoft.PowerShell.Utility\Write-Verbose (
                            "Processing unprocessed file at index $nextIndex`: $next"
                        )

                        # check if file still exists
                        if (-not (Microsoft.PowerShell.Management\Test-Path -LiteralPath $next -PathType Leaf)) {
                            Microsoft.PowerShell.Utility\Write-Verbose (
                                "File no longer exists, advancing RefactoredIndex: $next"
                            )
                            $refactorDefinition.State.RefactoredIndex = $nextIndex
                            continue
                        }

                        # advance the index for this file
                        $refactorDefinition.State.RefactoredIndex = $nextIndex
                    }

                    # process current file
                    $refactorDefinition.State.Status = 'Refactoring'
                    $fileName = GenXdev\Find-Item $next -NoRecurse -PassThru -ErrorAction SilentlyContinue |
                        Microsoft.PowerShell.Utility\Select-Object -ExpandProperty Name
                    $infoText = (
                        "Refactoring file '$fileName' of set " +
                        "'$($refactorDefinition.Name)' using prompt " +
                        "'$($refactorDefinition.RefactorSettings.PromptKey)'"
                    )

                    Microsoft.PowerShell.Utility\Write-Host `
                        -ForegroundColor Blue $infoText

                    if ($Speak) {

                        GenXdev\Start-TextToSpeech $infoText
                    }

                    $continueProcessing = $true
                    while ($continueProcessing) {

                        try {
                            # perform refactoring on current file
                            GenXdev\Assert-RefactorFile `
                                -RefactorSettings $refactorDefinition.RefactorSettings `
                                -Path $next

                            # refactoring succeeded, show progress
                            $infoText = (
                                "Refactoring set named $($refactorDefinition.Name) " +
                                "now $($refactorDefinition.State.PercentageComplete)% " +
                                "completed"
                            )

                            GenXdev\Get-Refactor -Name:$Name

                            Microsoft.PowerShell.Utility\Write-Host `
                                -ForegroundColor Green $infoText

                            if ($Speak) {

                                GenXdev\Start-TextToSpeech $infoText
                            }

                            if ($Speak) {

                                GenXdev\Start-TextToSpeech 'What to do next?'
                            }

                            # get user input for next action after successful refactor
                            $userAnswer = $host.ui.PromptForChoice(
                                'Make a choice',
                                'What to do next?',
                                @('&Continue', '&Redo', '&Stop'),
                                0
                            )

                            switch ($userAnswer) {
                                0 {
                                    # continue to next file
                                    $continueProcessing = $false
                                    break
                                }
                                1 {
                                    # redo current file - keep in while loop
                                    if ($Speak) {

                                        GenXdev\Start-TextToSpeech `
                                            'Redoing current file'
                                    }
                                    break
                                }
                                2 {
                                    $refactorDefinition.State.Status = 'Stopped'
                                    return
                                }
                            }
                        }
                        catch {
                            if ($Speak) {

                                GenXdev\Start-TextToSpeech (
                                    'An error occurred with message: ' +
                                    $_.Exception.Message
                                )
                            }
                            # log error details and timestamp
                            $now = Microsoft.PowerShell.Utility\Get-Date
                            $expandedPath = GenXdev\Expand-Path $next
                            $null = $refactorDefinition.Log.Add(@{
                                    Timestamp = $now
                                    Message   = (
                                        "Error refactoring file $expandedPath`: " +
                                        "$($_.Exception.Message)"
                                    )
                                })

                            Microsoft.PowerShell.Utility\Write-Error `
                                $_.Exception.Message
                            $refactorDefinition.State.Status = 'Error'

                            if ($Speak) {

                                GenXdev\Start-TextToSpeech `
                                    'What to do next?'
                            }

                            # handle error with user input
                            $userAnswer = $host.ui.PromptForChoice(
                                'Make a choice',
                                'What to do next?',
                                @('&Continue', '&Redo', '&Stop'),
                                0
                            )

                            switch ($userAnswer) {
                                0 {
                                    # continue to next file despite error
                                    $refactorDefinition.State.Status = 'Refactoring'
                                    $continueProcessing = $false
                                    break
                                }
                                1 {
                                    # redo current file - keep in while loop
                                    $refactorDefinition.State.Status = 'Refactoring'
                                    break
                                }
                                2 {
                                    $refactorDefinition.State.Status = 'Stopped'
                                    throw 'Refactor stopped'
                                    return
                                }
                            }
                        }
                    }

                    try {
                        # save current progress after processing file
                        $null = GenXdev\Update-Refactor `
                            -Refactor @($refactorDefinition) `
                            -Verbose:$Verbose
                    }
                    catch {
                        Microsoft.PowerShell.Utility\Write-Warning (
                            "Failed to update refactor state: $_"
                        )
                    }
                }

                # all files processed successfully
                if ($Speak) {

                    GenXdev\Start-TextToSpeech (
                        "Completed refactoring set: " +
                        "'$($refactorDefinition.Name)'"
                    )
                }

                Microsoft.PowerShell.Utility\Write-Verbose (
                    "Completed refactoring $($refactorDefinition.Name)"
                )
                $refactorDefinition.State.Status = 'Refactored'

                try {
                    # save final state
                    $null = GenXdev\Update-Refactor `
                        -Refactor @($refactorDefinition) `
                        -Verbose:$Verbose
                }
                catch {
                    Microsoft.PowerShell.Utility\Write-Warning (
                        "Failed to update refactor state: $_"
                    )
                }
            }
        }

        Microsoft.PowerShell.Utility\Write-Host -ForegroundColor Green 'All done.'

        if ($Speak) {

            GenXdev\Start-TextToSpeech 'All refactorings completed'
        }
    }

    end {

    }
}
<##############################################################################
Part of PowerShell module : GenXdev.Coding
Original cmdlet filename  : Update-Refactor.ps1
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
Updates and manages refactoring sets including file selection and processing.

.DESCRIPTION
Provides comprehensive management of refactoring sets by:
- Adding or removing files from processing queues
- Cleaning up deleted files from the set
- Managing state information and progress tracking
- Handling LLM-based file selection and processing
- Supporting both automatic and manual file management
- Maintaining detailed logs of all operations
- Gracefully handling deleted files (skipped unless CleanUpDeletedFiles is used)

.PARAMETER Name
Names of refactor sets to update, accepts wildcards. Default is "*".

.PARAMETER Refactor
Direct input of refactor set objects instead of loading by name.

.PARAMETER FilesToAdd
Files to add to the processing queue.

.PARAMETER FilesToRemove
Files to remove from the processing queue.

.PARAMETER CleanUpDeletedFiles
Remove entries for files that no longer exist on disk. Without this parameter,
deleted files are preserved in collections but gracefully skipped during
processing.

.PARAMETER AskBeforeLLMSelection
Prompt before launching LLM invocations for file selections.

.PARAMETER PerformAutoSelections
Enable LLM-based file selection processing.

.PARAMETER PerformAISelections
Process all files in the refactor set with LLM. Can also be used as
-PerformAISelections.

.PARAMETER RetryFailedLLMSelections
Retry previously failed LLM selections.

.PARAMETER Clear
Remove all files from the refactor set.

.PARAMETER ClearLog
Clear the refactor set's operation log.

.PARAMETER Reset
Start processing from beginning of refactor set.

.PARAMETER ResetLMSelections
Restart all LLM selections from beginning.

.PARAMETER MarkAllCompleted
Mark all files as successfully refactored.

.PARAMETER SelectByModifiedDateFrom
Select files modified on or after this date.

.PARAMETER SelectByModifiedDateTo
Select files modified on or before this date.

.PARAMETER SelectByCreationDateFrom
Select files created on or after this date.

.PARAMETER SelectByCreationDateTo
Select files created on or before this date.

.PARAMETER RedoLast
Reprocess the last refactoring operation.

.PARAMETER PromptKey
Key identifying which prompt script to use.

.PARAMETER Prompt
Direct prompt text to use for processing.

.PARAMETER SelectionScript
PowerShell script for file selection logic.

.PARAMETER ReprocessModifiedFiles
Automatically reprocess files that have been modified since the last refactor
update.

.PARAMETER SelectionPrompt
Content for LLM-based selection prompts.

.PARAMETER Temperature
Temperature setting for response randomness (0.0-1.0).

.PARAMETER Priority
Processing priority level for this refactor set.

.PARAMETER ExposedCmdLets
PowerShell commands available during LLM selection.

.PARAMETER Code
Open file in Visual Studio Code.

.PARAMETER VisualStudio
Open file in Visual Studio.

.PARAMETER KeysToSend
Keystrokes to send after opening file.

.PARAMETER Speak
Enable text-to-speech for operation details.

.PARAMETER LLMQueryType
Type of LLM query to perform.

.PARAMETER Model
LLM model to use

.PARAMETER SelectByFreeRam
Select configuration by available system RAM.

.PARAMETER SelectByFreeGpuRam
Select configuration by available GPU RAM.

.PARAMETER ApiEndpoint
API endpoint URL for LLM service.

.PARAMETER ApiKey
Authentication key for API access.

.PARAMETER TimeoutSeconds
The timeout in seconds for AI operations.

.PARAMETER SessionOnly
Use alternative settings stored in session for AI preferences.

.PARAMETER ClearSession
Clear alternative settings stored in session for AI preferences.

.PARAMETER PreferencesDatabasePath
Database path for preference data files.

.PARAMETER SkipSession
Store settings only in persistent preferences without affecting session.

.EXAMPLE
Update-Refactor -Name "CodeCleanup" -FilesToAdd ".\src\*.cs" `
    -CleanUpDeletedFiles -PerformAutoSelections -ReprocessModifiedFiles

.EXAMPLE
Get-Refactor "MyRefactor" | Update-Refactor -Reset -Clear

.EXAMPLE
updaterefactor * -Clear -Reset
#>
function Update-Refactor {

    [CmdletBinding(DefaultParameterSetName = 'Name', SupportsShouldProcess)]
    [Alias('updaterefactor')]
    [Diagnostics.CodeAnalysis.SuppressMessageAttribute(
        'PSAvoidUsingInvokeExpression',
        '',
        Justification = 'Required for dynamic script execution in refactoring context')]

    param (
        [Parameter(
            ParameterSetName = 'Name',
            Mandatory = $false,
            Position = 0,
            HelpMessage = 'The name of the refactor, accepts wildcards',
            ValueFromPipeline = $true,
            ValueFromPipelineByPropertyName = $true
        )]
        [ValidateNotNullOrEmpty()]
        [SupportsWildcards()]
        [string[]] $Name = @('*'),
        [Parameter(
            ParameterSetName = 'Refactor',
            Mandatory = $false,
            Position = 1,
            HelpMessage = 'The refactor set to update'
        )]
        [ValidateNotNull()]
        [GenXdev.Helpers.RefactorDefinition[]] $Refactor,
        [Parameter(
            Mandatory = $false,
            Position = 2,
            HelpMessage = 'Filenames to add'
        )]
        [ValidateNotNull()]
        [System.IO.FileInfo[]] $FilesToAdd = @(),
        [Parameter(
            Mandatory = $false,
            Position = 3,
            HelpMessage = 'Filenames to remove'
        )]
        [ValidateNotNull()]
        [System.IO.FileInfo[]] $FilesToRemove = @(),
        [Parameter(
            Mandatory = $false,
            HelpMessage = 'Select files by modified date from'
        )]
        [ValidateNotNullOrEmpty()]
        [datetime] $SelectByModifiedDateFrom,
        [Parameter(
            Mandatory = $false,
            HelpMessage = 'Select files by modified date to'
        )]
        [ValidateNotNullOrEmpty()]
        [datetime] $SelectByModifiedDateTo,
        [Parameter(
            Mandatory = $false,
            HelpMessage = 'Select files by creation date from'
        )]
        [ValidateNotNullOrEmpty()]
        [datetime] $SelectByCreationDateFrom,
        [Parameter(
            Mandatory = $false,
            HelpMessage = 'Select files by creation date to'
        )]
        [ValidateNotNullOrEmpty()]
        [datetime] $SelectByCreationDateTo,
        [Parameter(
            Mandatory = $false,
            HelpMessage = 'The prompt key indicates which prompt script to use'
        )]
        [ValidateNotNullOrEmpty()]
        [string] $PromptKey,
        [Parameter(
            Mandatory = $false,
            HelpMessage = 'The prompt key indicates which prompt script to use'
        )]
        [ValidateNotNullOrEmpty()]
        [string] $Prompt = '',
        [Parameter(
            Mandatory = $false,
            HelpMessage = ('Powershell script for function to select items to ' +
                'refactor')
        )]
        [ValidateNotNullOrEmpty()]
        [string] $SelectionScript,
        [Parameter(
            Mandatory = $false,
            HelpMessage = ('If provided, will invoke LLM to do the selection ' +
                'based on the content of the script')
        )]
        [ValidateNotNullOrEmpty()]
        [string] $SelectionPrompt,
        [Parameter(
            Mandatory = $false,
            HelpMessage = 'The type of LLM query'
        )]
        [ValidateSet(
            'SimpleIntelligence',
            'Knowledge',
            'Pictures',
            'TextTranslation',
            'Coding',
            'ToolUse'
        )]
        [string] $LLMQueryType = 'Coding',
        [Parameter(
            Mandatory = $false,
            HelpMessage = 'The model identifier or pattern to use for AI operations'
        )]
        [string] $Model,
        [Parameter(
            Mandatory = $false,
            HelpMessage = 'Temperature for response randomness (0.0-1.0)'
        )]
        [ValidateRange(-1, 1.0)]
        [double] $Temperature = -1,
        [Parameter(
            Mandatory = $false,
            HelpMessage = 'The API endpoint URL for AI operations'
        )]
        [string] $ApiEndpoint,
        [Parameter(
            Mandatory = $false,
            HelpMessage = 'The API key for authenticated AI operations'
        )]
        [string] $ApiKey,
        [Parameter(
            Mandatory = $false,
            HelpMessage = 'Indicates that LLM has no support for JSON schemas'
        )]
        [string] $NoSupportForJsonSchema,
        [Parameter(
            Mandatory = $false,
            HelpMessage = 'The timeout in seconds for AI operations'
        )]
        [int] $TimeoutSeconds,
        [Parameter(
            Mandatory = $false,
            HelpMessage = 'Priority for this refactor set'
        )]
        [ValidateNotNullOrEmpty()]
        [int] $Priority,
        [Parameter(
            Mandatory = $false,
            HelpMessage = ('Array of PowerShell command definitions to use as ' +
                'tools during LLM selection')
        )]
        [GenXdev.Helpers.ExposedCmdletDefinition[]] $ExposedCmdLets = @(),
        [Parameter(
            Mandatory = $false,
            HelpMessage = 'The keys to invoke as key strokes after opening the file'
        )]
        [Alias('keys')]
        [string[]] $KeysToSend = @(),
        [Parameter(
            Mandatory = $false,
            HelpMessage = 'Database path for preference data files'
        )]
        [Alias('DatabasePath')]
        [string] $PreferencesDatabasePath,
        [Parameter(
            Mandatory = $false,
            HelpMessage = 'Clean up deleted files'
        )]
        [switch] $CleanUpDeletedFiles,
        [Parameter(
            Mandatory = $false,
            HelpMessage = 'Switch to suppress user interaction'
        )]
        [switch] $AskBeforeLLMSelection,
        [Parameter(
            Mandatory = $false,
            HelpMessage = 'Switch to enable LLM-based file selection processing'
        )]
        [switch] $PerformAutoSelections,
        [Parameter(
            Mandatory = $false,
            HelpMessage = 'Switch to process all files in the refactor set'
        )]
        [Alias('PerformAllLLMSelections')]
        [switch] $PerformAISelections,
        [Parameter(
            Mandatory = $false,
            HelpMessage = 'Switch to retry failed LLM selections'
        )]
        [switch] $RetryFailedLLMSelections,
        [Parameter(
            Mandatory = $false,
            HelpMessage = 'Clear all files from the refactor set'
        )]
        [switch] $Clear,
        [Parameter(
            Mandatory = $false,
            HelpMessage = 'Clear the log of the refactor set'
        )]
        [switch] $ClearLog,
        [Parameter(
            Mandatory = $false,
            HelpMessage = 'Start from the beginning of the refactor set'
        )]
        [switch] $Reset,
        [Parameter(
            Mandatory = $false,
            HelpMessage = 'Restart all LLMSelections'
        )]
        [switch] $ResetLMSelections,
        [Parameter(
            Mandatory = $false,
            HelpMessage = 'Mark all files as refactored'
        )]
        [switch] $MarkAllCompleted,
        [Parameter(
            Mandatory = $false,
            HelpMessage = 'Redo the last refactor'
        )]
        [switch] $RedoLast,
        [Parameter(
            Mandatory = $false,
            HelpMessage = 'Automatically reprocess files modified since last update'
        )]
        [Alias('AutoAddModifiedFiles')]
        [switch] $ReprocessModifiedFiles,
        [Parameter(
            Mandatory = $false,
            HelpMessage = 'The ide to open the file in'
        )]
        [Alias('c')]
        [switch] $Code,
        [Parameter(
            Mandatory = $false,
            HelpMessage = 'Open in Visual Studio'
        )]
        [Alias('vs')]
        [switch] $VisualStudio,
        [Parameter(
            Mandatory = $false,
            HelpMessage = 'Speak out the details of next refactor'
        )]
        [switch] $Speak,
        [Parameter(
            Mandatory = $false,
            HelpMessage = 'Select configuration by available system RAM'
        )]
        [switch] $SelectByFreeRam,
        [Parameter(
            Mandatory = $false,
            HelpMessage = 'Select configuration by available GPU RAM'
        )]
        [switch] $SelectByFreeGpuRam,
        [Parameter(
            Mandatory = $false,
            HelpMessage = ('Use alternative settings stored in session for AI ' +
                'preferences')
        )]
        [switch] $SessionOnly,
        [Parameter(
            Mandatory = $false,
            HelpMessage = ('Clear alternative settings stored in session for AI ' +
                'preferences')
        )]
        [switch] $ClearSession,
        [Parameter(
            Mandatory = $false,
            HelpMessage = ('Store settings only in persistent preferences ' +
                'without affecting session')
        )]
        [Alias('FromPreferences')]
        [switch] $SkipSession
    )

    begin {

        $psRootPath = GenXdev\Expand-Path "$($MyInvocation.MyCommand.Module.ModuleBase)\..\..\..\"

        # establish the modules path for GenXdev operations
        $modulesPath = GenXdev\Expand-Path "$($MyInvocation.MyCommand.Module.ModuleBase)\..\..\"

        # log start of operation for debugging and tracking
        Microsoft.PowerShell.Utility\Write-Verbose 'Starting Update-Refactor operation'

        # load refactor set by name if not provided directly via pipeline
        if ($PSCmdlet.ParameterSetName -eq 'Name') {

            # retrieve and sort refactor definitions by priority
            $Refactor = @(
                GenXdev\Get-Refactor -Name $Name |
                    Microsoft.PowerShell.Utility\Sort-Object -Property Priority -Descending
            )
        }

        # exit early if no refactor set found to prevent further processing
        if ($null -eq $Refactor -or $Refactor.Count -eq 0) {

            Microsoft.PowerShell.Utility\Write-Warning 'No refactorset found'
            return
        }

        # initialize tracking variables for file operations and progress
        $now = GenXdev\UtcNow
        $script:filesAdded = 0
        $script:filesRemoved = 0
        $script:onlyFirst = -not $PerformAISelections
        $script:last = $null
        $expandedFilesToAdd = @($FilesToAdd | Microsoft.PowerShell.Core\ForEach-Object {
                GenXdev\Expand-Path $_
            })
    }


    process {

        # process each refactor definition in the collection
        foreach ($refactorDefinition in $Refactor) {

            # initialize or clear state containers when requested
            if ($Clear -or ($null -eq $refactorDefinition.State.Unselected)) {

                $refactorDefinition.State.Unselected = @()
            }

            # initialize or clear selected files collection
            if ($Clear -or ($null -eq $refactorDefinition.State.Selected)) {

                $refactorDefinition.State.Selected = @()
            }

            # initialize or clear refactored files collection
            if ($Clear -or ($null -eq $refactorDefinition.State.Refactored)) {

                $refactorDefinition.State.Refactored = @()
            }

            # initialize log collection if missing
            if ($null -eq $refactorDefinition.Log) {

                $refactorDefinition.Log = @()
            }

            # clear operation log if requested
            if ($ClearLog) {

                $null = $refactorDefinition.Log.Clear()

                # record log clearing action in new log entry
                $null = $refactorDefinition.Log.Add(
                    [GenXdev.Helpers.RefactorLogItem]@{
                        Timestamp = $now
                        Message   = 'Log cleared'
                    }
                )
            }

            # reset all state indices and progress when clearing
            if ($Clear) {

                $refactorDefinition.State.RefactoredIndex = -1
                $refactorDefinition.State.SelectedIndex = -1
                $refactorDefinition.State.UnselectedIndex = -1
                $refactorDefinition.State.PercentageComplete = 0

                # log the clear operation for audit trail
                $null = $refactorDefinition.Log.Add(
                    [GenXdev.Helpers.RefactorLogItem]@{
                        Timestamp = $now
                        Message   = 'Refactor set cleared'
                    }
                )
            }

            # migrate folder names
            for ($refactoredIndex = $refactorDefinition.State.Refactored.Count - 1;
                $refactoredIndex -ge 0; $refactoredIndex--) {

                if ($null -eq $refactorDefinition.State.Refactored[$refactoredIndex]) {

                    $null = $refactorDefinition.State.Refactored.RemoveAt($refactoredIndex)

                    if ($refactoredIndex -le $refactorDefinition.State.RefactoredIndex) {

                        $refactorDefinition.State.RefactoredIndex = [Math]::Max(-1,
                            $refactorDefinition.State.RefactoredIndex - 1)
                    }
                }
                else {
                    $path = (GenXdev\Expand-Path ($refactorDefinition.State.Refactored[$refactoredIndex]))

                    if ($path.StartsWith("$modulesPath\GenXdev")) {

                        $parts = $path.Substring($modulesPath.Length).Split('\', [System.StringSplitOptions]::RemoveEmptyEntries);

                        if ($parts.Length -gt 1) {
                            [Version] $version = $null
                            if ([Version]::tryParse($parts[1], [ref]$version)) {

                                $newPath = "$($modulesPath.TrimEnd('\'))\$($parts[0])\3.26.2026\$($path.Substring($modulesPath.Length + $parts[0].Length+ $parts[1].Length + 3))"

                                if ($refactorDefinition.State.Refactored.IndexOf($newPath) -lt 0) {

                                    $refactorDefinition.State.Refactored[$refactoredIndex] = $newPath
                                }
                            }
                        }
                    }
                }
            }

            # migrate folder names
            for ($selectedIndex = $refactorDefinition.State.Selected.Count - 1;
                $selectedIndex -ge 0; $selectedIndex--) {
                if ($null -eq $refactorDefinition.State.Selected[$selectedIndex]) {

                    $null = $refactorDefinition.State.Selected.RemoveAt($selectedIndex)
                    if ($selectedIndex -le $refactorDefinition.State.SelectedIndex) {

                        $refactorDefinition.State.SelectedIndex = [Math]::Max(-1,
                            $refactorDefinition.State.SelectedIndex - 1)
                    }
                }
                else {
                    $path = (GenXdev\Expand-Path $refactorDefinition.State.Selected[$selectedIndex])

                    if ($path.StartsWith("$modulesPath\GenXdev")) {

                        $parts = $path.Substring($modulesPath.Length).Split('\', [System.StringSplitOptions]::RemoveEmptyEntries);

                        if ($parts.Length -gt 1) {
                            [Version] $version = $null

                            if ([Version]::tryParse($parts[1], [ref]$version)) {

                                $newPath = "$($modulesPath.TrimEnd('\'))\$($parts[0])\3.26.2026\$($path.Substring($modulesPath.Length + $parts[0].Length + $parts[1].Length + 3))"

                                if ($refactorDefinition.State.Selected.IndexOf($newPath) -lt 0) {

                                    $refactorDefinition.State.Selected[$selectedIndex] = $newPath
                                }
                            }
                        }
                    }
                }
            }

            # migrate folder names
            for ($unselectedIndex = $refactorDefinition.State.Unselected.Count - 1;
                $unselectedIndex -ge 0; $unselectedIndex--) {

                if ($null -eq $refactorDefinition.State.Unselected[$unselectedIndex]) {

                    $null = $refactorDefinition.State.Unselected.RemoveAt($unselectedIndex)

                    if ($unselectedIndex -le $refactorDefinition.State.UnselectedIndex) {

                        $refactorDefinition.State.UnselectedIndex = [Math]::Max(-1,
                            $refactorDefinition.State.UnselectedIndex - 1)
                    }
                }
                else {
                    $path = (GenXdev\Expand-Path $refactorDefinition.State.Unselected[$unselectedIndex])

                    if ($path.StartsWith("$modulesPath\GenXdev")) {

                        $parts = $path.Substring($modulesPath.Length).Split('\', [System.StringSplitOptions]::RemoveEmptyEntries);

                        if ($parts.Length -gt 1) {
                            [Version] $version = $null
                            if ([Version]::tryParse($parts[1], [ref]$version)) {

                                $newPath = "$($modulesPath.TrimEnd('\'))\$($parts[0])\3.26.2026\$($path.Substring($modulesPath.Length + $parts[0].Length+ $parts[1].Length + 3))"

                                if ($refactorDefinition.State.Unselected.IndexOf($newPath) -lt 0) {

                                    $refactorDefinition.State.Unselected[$unselectedIndex] = $newPath
                                }
                            }
                        }
                    }
                }
            }

            # update prompt key if specified and different from current value
            if ($PSBoundParameters.ContainsKey('PromptKey')) {

                if ($refactorDefinition.RefactorSettings.PromptKey -ne $PromptKey) {

                    # log the change for audit trail
                    $null = $refactorDefinition.Log.Add(
                        [GenXdev.Helpers.RefactorLogItem]@{
                            Timestamp = $now
                            Message   = ('Prompt key changed from ' +
                                "'$($refactorDefinition.RefactorSettings.PromptKey)' " +
                                "to '$PromptKey'")
                        }
                    )

                    # apply the new prompt key value
                    $refactorDefinition.RefactorSettings.PromptKey = $PromptKey
                }
            }

            # update prompt text if provided and different
            if ($PSBoundParameters.ContainsKey('Prompt')) {

                if ($refactorDefinition.RefactorSettings.Prompt -ne $Prompt) {

                    # log the prompt text change
                    $null = $refactorDefinition.Log.Add(
                        [GenXdev.Helpers.RefactorLogItem]@{
                            Timestamp = $now
                            Message   = ('Prompt changed from ' +
                                "'$($refactorDefinition.RefactorSettings.Prompt)' " +
                                "to '$Prompt'")
                        }
                    )

                    # apply the new prompt text
                    $refactorDefinition.RefactorSettings.Prompt = $Prompt
                }
            }

            # update selection script if provided and different
            if ($PSBoundParameters.ContainsKey('SelectionScript')) {

                if ($refactorDefinition.SelectionSettings.Script -ne $SelectionScript) {

                    # log the selection script change
                    $null = $refactorDefinition.Log.Add(
                        [GenXdev.Helpers.RefactorLogItem]@{
                            Timestamp = $now
                            Message   = ('Selection script changed from ' +
                                "'$($refactorDefinition.SelectionSettings.Script)' " +
                                "to '$SelectionScript'")
                        }
                    )

                    # apply the new selection script
                    $refactorDefinition.SelectionSettings.Script = $SelectionScript
                }
            }

            # update reprocess modified files setting if changed
            if ($PSBoundParameters.ContainsKey('ReprocessModifiedFiles')) {

                if ($refactorDefinition.SelectionSettings.AutoAddModifiedFiles -ne $ReprocessModifiedFiles) {

                    # log the reprocess setting change
                    $null = $refactorDefinition.Log.Add(
                        [GenXdev.Helpers.RefactorLogItem]@{
                            Timestamp = $now
                            Message   = ('ReprocessModifiedFiles changed from ' +
                                "'$($refactorDefinition.SelectionSettings.AutoAddModifiedFiles)' " +
                                "to '$ReprocessModifiedFiles'")
                        }
                    )

                    # apply the new reprocess setting
                    $refactorDefinition.SelectionSettings.AutoAddModifiedFiles = $ReprocessModifiedFiles
                }
            }

            if ($PSBoundParameters.ContainsKey('SelectionPrompt')) {

                if ($refactorDefinition.SelectionSettings.LLM.Prompt -ne $SelectionPrompt) {

                    $null = $refactorDefinition.Log.Add(
                        [GenXdev.Helpers.RefactorLogItem]@{
                            Timestamp = $now
                            Message   = "Selection prompt changed from '$($refactorDefinition.SelectionSettings.LLM.Prompt))' to '$SelectionPrompt'"
                        }
                    )
                    $refactorDefinition.SelectionSettings.LLM.Prompt = $SelectionPrompt
                }
            }

            if ($PSBoundParameters.ContainsKey('Model')) {

                if ($refactorDefinition.SelectionSettings.LLM.Model -ne $Model) {

                    $null = $refactorDefinition.Log.Add(
                        [GenXdev.Helpers.RefactorLogItem]@{
                            Timestamp = $now
                            Message   = "Model changed from '$($refactorDefinition.SelectionSettings.LLM.Model))' to '$Model'"
                        }
                    )
                    $refactorDefinition.SelectionSettings.LLM.Model = $Model
                }
            }

            if ($PSBoundParameters.ContainsKey('Temperature')) {

                if ($refactorDefinition.SelectionSettings.LLM.Temperature -ne $Temperature) {

                    $null = $refactorDefinition.Log.Add(
                        [GenXdev.Helpers.RefactorLogItem]@{
                            Timestamp = $now
                            Message   = "Temperature changed from '$($refactorDefinition.SelectionSettings.LLM.Temperature))' to '$Temperature'"
                        }
                    )
                    $refactorDefinition.SelectionSettings.LLM.Temperature = $Temperature
                }
            }

            if ($PSBoundParameters.ContainsKey('LLMQueryType')) {

                if ($refactorDefinition.SelectionSettings.LLM.LLMQueryType -ne $LLMQueryType) {

                    $null = $refactorDefinition.Log.Add(
                        [GenXdev.Helpers.RefactorLogItem]@{
                            Timestamp = $now
                            Message   = "LLMQueryType changed from '$($refactorDefinition.SelectionSettings.LLM.LLMQueryType))' to '$LLMQueryType'"
                        }
                    )
                    $refactorDefinition.SelectionSettings.LLM.LLMQueryType = $LLMQueryType
                }
            }

            if ($PSBoundParameters.ContainsKey('TimeoutSeconds')) {

                if ($refactorDefinition.SelectionSettings.LLM.TimeoutSeconds -ne $TimeoutSeconds) {

                    $null = $refactorDefinition.Log.Add(
                        [GenXdev.Helpers.RefactorLogItem]@{
                            Timestamp = $now
                            Message   = "TimeoutSeconds changed from '$($refactorDefinition.SelectionSettings.LLM.TimeoutSeconds))' to '$TimeoutSeconds'"
                        }
                    )
                    $refactorDefinition.SelectionSettings.LLM.TimeoutSeconds = $TimeoutSeconds
                }
            }

            if ($PSBoundParameters.ContainsKey('ApiEndpoint')) {

                if ($refactorDefinition.SelectionSettings.LLM.ApiEndpoint -ne $ApiEndpoint) {

                    $null = $refactorDefinition.Log.Add(
                        [GenXdev.Helpers.RefactorLogItem]@{
                            Timestamp = $now
                            Message   = "ApiEndpoint changed from '$($refactorDefinition.SelectionSettings.LLM.ApiEndpoint))' to '$ApiEndpoint'"
                        }
                    )
                    $refactorDefinition.SelectionSettings.LLM.ApiEndpoint = $ApiEndpoint
                }
            }

            if ($PSBoundParameters.ContainsKey('ApiKey')) {

                if ($refactorDefinition.SelectionSettings.LLM.ApiKey -ne $ApiKey) {

                    $null = $refactorDefinition.Log.Add(
                        [GenXdev.Helpers.RefactorLogItem]@{
                            Timestamp = $now
                            Message   = "ApiKey changed from '$($refactorDefinition.SelectionSettings.LLM.ApiKey))' to '$ApiKey'"
                        }
                    )
                    $refactorDefinition.SelectionSettings.LLM.ApiKey = $ApiKey
                }
            }

            if ($PSBoundParameters.ContainsKey('NoSupportForJsonSchema')) {

                if ($refactorDefinition.SelectionSettings.LLM.NoSupportForJsonSchema -ne $($NoSupportForJsonSchema -eq $true)) {

                    $null = $refactorDefinition.Log.Add(
                        [GenXdev.Helpers.RefactorLogItem]@{
                            Timestamp = $now
                            Message   = "NoSupportForJsonSchema changed from '$($refactorDefinition.SelectionSettings.LLM.NoSupportForJsonSchema))' to '$ApiKey'"
                        }
                    )
                    $refactorDefinition.SelectionSettings.LLM.NoSupportForJsonSchema = $($NoSupportForJsonSchema -eq $true)
                }
            }

            if ($PSBoundParameters.ContainsKey('ApiKey')) {

                if ($refactorDefinition.SelectionSettings.LLM.ApiKey -ne $ApiKey) {

                    $null = $refactorDefinition.Log.Add(
                        [GenXdev.Helpers.RefactorLogItem]@{
                            Timestamp = $now
                            Message   = "ApiKey changed from '$($refactorDefinition.SelectionSettings.LLM.ApiKey))' to '$ApiKey'"
                        }
                    )
                    $refactorDefinition.SelectionSettings.LLM.ApiKey = $ApiKey
                }
            }

            if ($PSBoundParameters.ContainsKey('ExposedCmdLets')) {

                if ($refactorDefinition.SelectionSettings.LLM.ExposedCmdLets -ne $ExposedCmdLets) {

                    $null = $refactorDefinition.Log.Add(
                        [GenXdev.Helpers.RefactorLogItem]@{
                            Timestamp = $now
                            Message   = "ExposedCmdLets changed from '$($refactorDefinition.SelectionSettings.LLM.ExposedCmdLets))' to '$ExposedCmdLets'"
                        }
                    )
                    $refactorDefinition.SelectionSettings.LLM.ExposedCmdLets = $ExposedCmdLets
                }
            }

            if ($PSBoundParameters.ContainsKey('Priority')) {

                if ($refactorDefinition.Priority -ne $Priority) {

                    $null = $refactorDefinition.Log.Add(
                        [GenXdev.Helpers.RefactorLogItem]@{
                            Timestamp = $now
                            Message   = "Priority changed from '$($refactorDefinition.Priority))' to '$Priority'"
                        }
                    )
                    $refactorDefinition.Priority = $Priority
                }
            }

            if ($PSBoundParameters.ContainsKey('KeysToSend')) {

                if ($refactorDefinition.RefactorSettings.KeysToSend -ne $KeysToSend) {

                    $null = $refactorDefinition.Log.Add(
                        [GenXdev.Helpers.RefactorLogItem]@{
                            Timestamp = $now
                            Message   = "KeysToSend changed from '$($refactorDefinition.RefactorSettings.KeysToSend))' to '$KeysToSend'"
                        }
                    )
                    $refactorDefinition.RefactorSettings.KeysToSend = $KeysToSend
                }
            }

            $newCode = $PSBoundParameters.ContainsKey('Code') ? ($Code ? 1 : 0) : -1;
            if ($refactorDefinition.RefactorSettings.Code -ne $newCode) {

                $null = $refactorDefinition.Log.Add(
                    [GenXdev.Helpers.RefactorLogItem]@{
                        Timestamp = $now
                        Message   = "Code changed from '$($refactorDefinition.RefactorSettings.Code))' to '$newCode'"
                    }
                )
                $refactorDefinition.RefactorSettings.Code = $newCode
            }

            $newVisualStudio = $PSBoundParameters.ContainsKey('VisualStudio') ? ($VisualStudio ? 1 : 0) : -1;
            if ($refactorDefinition.RefactorSettings.VisualStudio -ne $newVisualStudio) {

                $null = $refactorDefinition.Log.Add(
                    [GenXdev.Helpers.RefactorLogItem]@{
                        Timestamp = $now
                        Message   = "VisualStudio changed from '$($refactorDefinition.RefactorSettings.VisualStudio))' to '$newVisualStudio'"
                    }
                )

                $refactorDefinition.RefactorSettings.VisualStudio = $newVisualStudio
            }

            if ($null -ne $SelectByModifiedDateFrom) {

                # copy all refactored files to FilesToAdd
                $FilesToAdd += @(
                    $refactorDefinition.State.Refactored | Microsoft.PowerShell.Core\ForEach-Object {

                        if ([string]::IsNullOrWhiteSpace($_)) { return }
                        $fi = [System.IO.FileInfo]::new($_);

                        if ($fi.Exists -and $fi.LastWriteTime -ge $SelectByModifiedDateFrom) {

                            $fi
                        }
                    }
                );

                $null = $refactorDefinition.Log.Add(
                    [GenXdev.Helpers.RefactorLogItem]@{
                        Timestamp = $now
                        Message   = "New file selection made: Redo all files modifief from date '$SelectByModifiedDateFrom'"
                    }
                )
            }

            if ($null -ne $SelectByModifiedDateTo) {

                # copy all refactored files to FilesToAdd
                $FilesToAdd += @(
                    $refactorDefinition.State.Refactored | Microsoft.PowerShell.Core\ForEach-Object {

                        if ([string]::IsNullOrWhiteSpace($_)) { return }

                        $fi = [System.IO.FileInfo]::new($_);

                        if ($fi.Exists -and $fi.LastWriteTime -lt $SelectByModifiedDateFrom) {

                            $fi
                        }
                    }
                );

                $null = $refactorDefinition.Log.Add(
                    [GenXdev.Helpers.RefactorLogItem]@{
                        Timestamp = $now
                        Message   = "New file selection made: Redo all files modifief to date '$SelectByModifiedDateTo'"
                    }
                )
            }

            if ($null -ne $SelectByCreationDateFrom) {

                # copy all refactored files to FilesToAdd
                $FilesToAdd += @(
                    $refactorDefinition.State.Refactored | Microsoft.PowerShell.Core\ForEach-Object {

                        if ([string]::IsNullOrWhiteSpace($_)) { return }

                        $fi = [System.IO.FileInfo]::new($_);

                        if ($fi.Exists -and $fi.CreationTime -ge $SelectByModifiedDateFrom) {

                            $fi
                        }
                    }
                );

                $null = $refactorDefinition.Log.Add(
                    [GenXdev.Helpers.RefactorLogItem]@{
                        Timestamp = $now
                        Message   = "New file selection made: Redo all files created from date '$SelectByCreationDateFrom'"
                    }
                )
            }

            if ($null -ne $SelectByCreationDateTo) {

                # copy all refactored files to FilesToAdd
                $FilesToAdd += @(
                    $refactorDefinition.State.Refactored | Microsoft.PowerShell.Core\ForEach-Object {

                        if ([string]::IsNullOrWhiteSpace($_)) { return }

                        $fi = [System.IO.FileInfo]::new($_);

                        if ($fi.Exists -and $fi.CreationTime -lt $SelectByModifiedDateFrom) {

                            $fi
                        }
                    }
                );

                $null = $refactorDefinition.Log.Add(
                    [GenXdev.Helpers.RefactorLogItem]@{
                        Timestamp = $now
                        Message   = "New file selection made: Redo all files created to date '$SelectByCreationDateTo'"
                    }
                )
            }

            if ($RedoLast -and $refactorDefinition.State.Refactored.Count -gt 0) {

                $null = $refactorDefinition.Log.Add(
                    [GenXdev.Helpers.RefactorLogItem]@{
                        Timestamp = $now
                        Message   = 'Redoing last refactor'
                    }
                )

                $refactorDefinition.State.RefactoredIndex = [Math]::Max(-1,
                    $refactorDefinition.State.RefactoredIndex - 1)
            }
            elseif ($Reset) {

                $null = $refactorDefinition.Log.Add(
                    [GenXdev.Helpers.RefactorLogItem]@{
                        Timestamp = $now
                        Message   = 'Resetting refactor set'
                    }
                )
                $refactorDefinition.State.RefactoredIndex = -1
                $refactorDefinition.State.Selected = @(@(
                        $refactorDefinition.State.Selected +
                        $refactorDefinition.State.Refactored
                    ) | Microsoft.PowerShell.Utility\Select-Object -Unique)
                $null = $refactorDefinition.State.Refactored.Clear();
            }

            if ($MarkAllCompleted) {

                $null = $refactorDefinition.Log.Add(
                    [GenXdev.Helpers.RefactorLogItem]@{
                        Timestamp = $now
                        Message   = 'Marking all files as refactored'
                    }
                )

                $refactorDefinition.State.Refactored = @(@(
                        $refactorDefinition.State.Refactored +
                        $refactorDefinition.State.Selected
                    ) | Microsoft.PowerShell.Utility\Select-Object -Unique)
                $null = $refactorDefinition.State.Selected.Clear();
                $refactorDefinition.State.SelectedIndex = $refactorDefinition.State.Selected.Count - 1;
                $refactorDefinition.State.RefactoredIndex = $refactorDefinition.State.Refactored.Count - 1;
                $refactorDefinition.State.PercentageComplete = 100;
            }

            if ($ResetLMSelections) {

                $null = $refactorDefinition.Log.Add(
                    [GenXdev.Helpers.RefactorLogItem]@{
                        Timestamp = $now
                        Message   = 'Resetting LLM selections'
                    }
                )

                $refactorDefinition.State.SelectedIndex = -1;
                $refactorDefinition.State.Unselected = @(@(
                        $refactorDefinition.State.Unselected +
                        $refactorDefinition.State.Selected
                    ) | Microsoft.PowerShell.Utility\Select-Object -Unique)
                $null = $refactorDefinition.State.Selected.Clear();
            }

            # detect and fix unprocessed files in Refactored collection
            if ($refactorDefinition.State.Refactored.Count -gt 0 -and
                $refactorDefinition.State.RefactoredIndex -lt ($refactorDefinition.State.Refactored.Count - 1)) {

                # move unprocessed files back to Selected for processing
                $unprocessedFiles = @()
                for ($i = $refactorDefinition.State.RefactoredIndex + 1; $i -lt $refactorDefinition.State.Refactored.Count; $i++) {
                    $file = $refactorDefinition.State.Refactored[$i]
                    if (-not [string]::IsNullOrWhiteSpace($file)) {
                        $unprocessedFiles += $file

                        # add to Selected if not already there
                        if ($refactorDefinition.State.Selected.IndexOf($file) -lt 0) {
                            $null = $refactorDefinition.State.Selected.Add($file)
                        }
                    }
                }

                # remove unprocessed files from Refactored collection
                if ($unprocessedFiles.Count -gt 0) {
                    for ($i = $refactorDefinition.State.Refactored.Count - 1; $i -gt $refactorDefinition.State.RefactoredIndex; $i--) {
                        $null = $refactorDefinition.State.Refactored.RemoveAt($i)
                    }

                    # log the correction operation
                    $null = $refactorDefinition.Log.Add(
                        [GenXdev.Helpers.RefactorLogItem]@{
                            Timestamp = $now
                            Message   = "Moved $($unprocessedFiles.Count) unprocessed files from Refactored back to Selected: $($unprocessedFiles -join ', ')"
                        }
                    )

                    Microsoft.PowerShell.Utility\Write-Verbose (
                        "Corrected incomplete state: moved $($unprocessedFiles.Count) unprocessed files " +
                        "from RefactoredIndex $($refactorDefinition.State.RefactoredIndex) back to Selected"
                    )
                }
            }

            Microsoft.PowerShell.Utility\Write-Verbose "Processing refactor definition: $($refactorDefinition.Name)"

            # execute selection script to get automatically selected files
            # only when PerformAutoSelections or PerformAISelections is specified
            [System.IO.FileInfo[]] $automaticFiles = @(
                if (-not [string]::IsNullOrWhiteSpace(
                        $refactorDefinition.SelectionSettings.Script) -and
                    ($PerformAutoSelections -or $PerformAISelections)) {

                    Microsoft.PowerShell.Utility\Write-Verbose 'Executing selection script'
                    if (-not $Clear) {
                        try {
                            Microsoft.PowerShell.Management\Push-Location $psRootPath
                            try {
                                Microsoft.PowerShell.Utility\Invoke-Expression -Command $refactorDefinition.SelectionSettings.Script
                            }
                            finally {
                                Microsoft.PowerShell.Management\Pop-Location
                            }
                        }
                        catch {
                            Microsoft.PowerShell.Utility\Write-Warning "$($_.Exception.Message)"
                        }
                    }
                }
            ) + @($FilesToAdd | Microsoft.PowerShell.Core\ForEach-Object {

                    if ($null -ne $_) {

                        $item = Microsoft.PowerShell.Management\Get-ChildItem -LiteralPath (GenXdev\Expand-Path $_) -ErrorAction SilentlyContinue
                        if ($null -ne $item) {

                            $item
                        }
                    }
                }) |
                Microsoft.PowerShell.Core\Where-Object { $null -ne $_ -and $_.Exists }

            if ($null -ne $automaticFiles -and $automaticFiles.Count -gt 0) {

                # process new files to be added
                @($automaticFiles) | Microsoft.PowerShell.Core\ForEach-Object {

                    if ($null -eq $_ ) { return }

                    # verify file still exists before processing
                    if (-not $_.Exists) {
                        Microsoft.PowerShell.Utility\Write-Verbose "Skipping deleted file: $($_.FullName)"
                        return
                    }

                    # get the full path as string for collection operations
                    $filePath = $_.FullName

                    # check if file exists in any collection
                    $indexRefactored = $refactorDefinition.State.Refactored.IndexOf($filePath)
                    $indexSelected = $refactorDefinition.State.Selected.IndexOf($filePath)
                    $fileInUnselected = $refactorDefinition.State.Unselected.IndexOf($filePath)

                    # add file if not already present
                    if ($indexRefactored -lt 0 -and $indexSelected -lt 0 -and
                        $fileInUnselected -lt 0) {

                        # add to selected if no LLM prompt, otherwise to unselected
                        if ([string]::IsNullOrWhiteSpace(
                                $refactorDefinition.SelectionSettings.LLM.Prompt)) {

                            $null = $refactorDefinition.State.Selected.Add($filePath)
                        }
                        else {

                            $null = $refactorDefinition.State.Unselected.Add($filePath)
                        }

                        $script:filesAdded++
                        return;
                    }

                    # check if file should be reprocessed due to explicit addition or modification
                    $shouldReprocess = $false

                    # explicit addition via FilesToAdd parameter
                    if ($null -ne $FilesToAdd -and $FilesToAdd.Count -gt 0) {

                        if ($expandedFilesToAdd -contains $filePath) {
                            $shouldReprocess = $true
                        }
                    }

                    # automatic reprocessing of modified files
                    if ($refactorDefinition.SelectionSettings.AutoAddModifiedFiles) {
                        try {
                            if ($_.Exists -and
                                ($refactorDefinition.State.LastUpdated -lt ($_.LastWriteTimeUtc))) {
                                $shouldReprocess = $true
                            }
                        }
                        catch {
                            Microsoft.PowerShell.Utility\Write-Verbose "Could not check modification time for file: $filePath - $($_.Exception.Message)"
                        }
                    }

                    if ($shouldReprocess) {

                        # locate file in collections
                        $indexRefactored = $refactorDefinition.State.Refactored.IndexOf($_)
                        $indexSelected = $refactorDefinition.State.Selected.IndexOf($_)
                        # $indexUnselected = $refactorDefinition.State.Unselected.IndexOf($_)

                        if ($indexRefactored -ge 0) {

                            $null = $refactorDefinition.State.Refactored.RemoveAt($indexRefactored)
                            if ($indexRefactored -le $refactorDefinition.State.RefactoredIndex) {

                                $refactorDefinition.State.RefactoredIndex = [Math]::Max(-1,
                                    $refactorDefinition.State.RefactoredIndex - 1)
                            }
                            $indexRefactored = -1;
                            if ($indexSelected -lt 0) {

                                $null = $refactorDefinition.State.Selected.Add($filePath)
                            }
                        }
                    }
                }
            }


            # process files marked for removal
            $FilesToRemove | Microsoft.PowerShell.Core\ForEach-Object {

                # locate file in collections
                $indexRefactored = $refactorDefinition.State.Refactored.IndexOf($_)
                $indexSelected = $refactorDefinition.State.Selected.IndexOf($_)
                $indexUnselected = $refactorDefinition.State.Unselected.IndexOf($_)

                # remove from refactored collection and update index
                if ($indexRefactored -ge 0) {

                    $target = "File: $($_)"
                    $action = 'Remove from refactored set'

                    if ($PSCmdlet.ShouldProcess($target, $action)) {
                        $null = $refactorDefinition.State.Refactored.RemoveAt($indexRefactored)
                        if ($indexRefactored -le $refactorDefinition.State.RefactoredIndex) {

                            $refactorDefinition.State.RefactoredIndex = [Math]::Max(-1,
                                $refactorDefinition.State.RefactoredIndex - 1)
                        }
                        $indexRefactored = -1
                        $script:filesRemoved++
                    }
                }

                # remove from selected collection and update index
                if ($indexSelected -ge 0) {

                    $null = $refactorDefinition.State.Selected.RemoveAt($indexSelected)
                    if ($indexSelected -le $refactorDefinition.State.SelectedIndex) {

                        $refactorDefinition.State.SelectedIndex = [Math]::Max(-1,
                            $refactorDefinition.State.SelectedIndex - 1)
                    }
                    $indexSelected = -1
                }

                # remove from unselected collection and update index
                if ($indexUnselected -ge 0) {

                    $null = $refactorDefinition.State.Unselected.RemoveAt($indexUnselected)
                    if ($indexUnselected -le $refactorDefinition.State.UnselectedIndex) {

                        $refactorDefinition.State.UnselectedIndex = [Math]::Max(-1,
                            $refactorDefinition.State.UnselectedIndex - 1)
                    }
                    $indexUnselected = -1
                }
            }

            # clean up deleted files if requested
            if ($CleanUpDeletedFiles) {

                # clean refactored collection
                for ($refactoredIndex = $refactorDefinition.State.Refactored.Count - 1;
                    $refactoredIndex -ge 0; $refactoredIndex--) {

                    if ($null -eq $refactorDefinition.State.Refactored[$refactoredIndex]) {

                        $null = $refactorDefinition.State.Refactored.RemoveAt($refactoredIndex)

                    }
                    else {
                        try {
                            $path = (GenXdev\Expand-Path ($refactorDefinition.State.Refactored[$refactoredIndex]))

                            if (-not (Microsoft.PowerShell.Management\Test-Path -LiteralPath $path -PathType Leaf)) {

                                $null = $refactorDefinition.State.Refactored.RemoveAt($refactoredIndex)
                            }
                        }
                        catch {
                            Microsoft.PowerShell.Utility\Write-Verbose "Could not process refactored file path: $($refactorDefinition.State.Refactored[$refactoredIndex]) - $($_.Exception.Message)"
                            # Remove invalid path entry
                            $null = $refactorDefinition.State.Refactored.RemoveAt($refactoredIndex)
                        }
                    }

                    if ($refactorDefinition.State.RefactoredIndex -ge $refactoredIndex) {

                        $refactorDefinition.State.RefactoredIndex = [Math]::Max(-1,
                            $refactorDefinition.State.RefactoredIndex - 1)
                    }
                }

                # clean selected collection
                for ($selectedIndex = $refactorDefinition.State.Selected.Count - 1;
                    $selectedIndex -ge 0; $selectedIndex--) {

                    try {
                        $path = (GenXdev\Expand-Path $refactorDefinition.State.Selected[$selectedIndex])

                        if (-not (Microsoft.PowerShell.Management\Test-Path -LiteralPath $path -PathType Leaf)) {

                            $null = $refactorDefinition.State.Selected.RemoveAt($selectedIndex)
                        }
                    }
                    catch {
                        Microsoft.PowerShell.Utility\Write-Verbose "Could not process selected file path: $($refactorDefinition.State.Selected[$selectedIndex]) - $($_.Exception.Message)"
                        # Remove invalid path entry
                        $null = $refactorDefinition.State.Selected.RemoveAt($selectedIndex)
                    }

                    if ($refactorDefinition.State.SelectedIndex -ge $selectedIndex) {

                        $refactorDefinition.State.SelectedIndex = [Math]::Max(-1,
                            $refactorDefinition.State.SelectedIndex - 1)
                    }
                }

                # clean unselected collection
                for ($unselectedIndex = $refactorDefinition.State.Unselected.Count - 1;
                    $unselectedIndex -ge 0; $unselectedIndex--) {

                    try {
                        $path = (GenXdev\Expand-Path $refactorDefinition.State.Unselected[$unselectedIndex])

                        if (-not (Microsoft.PowerShell.Management\Test-Path -LiteralPath $path -PathType Leaf)) {

                            $null = $refactorDefinition.State.Unselected.RemoveAt($unselectedIndex)
                        }
                    }
                    catch {
                        Microsoft.PowerShell.Utility\Write-Verbose "Could not process unselected file path: $($refactorDefinition.State.Unselected[$unselectedIndex]) - $($_.Exception.Message)"
                        # Remove invalid path entry
                        $null = $refactorDefinition.State.Unselected.RemoveAt($unselectedIndex)
                    }

                    if ($refactorDefinition.State.UnselectedIndex -ge $unselectedIndex) {

                        $refactorDefinition.State.UnselectedIndex = [Math]::Max(-1,
                            $refactorDefinition.State.UnselectedIndex - 1)
                    }
                }
            }


            if ($ReprocessModifiedFiles) {
                (@($refactorDefinition.State.Refactored) + @($refactorDefinition.State.Selected) + @($refactorDefinition.State.Unselected)) | Microsoft.PowerShell.Core\ForEach-Object {

                    $fileInfo = Microsoft.PowerShell.Management\Get-ChildItem -LiteralPath $_ -ErrorAction SilentlyContinue
                    if (-not $FileInfo) { return }
                    if ($refactorDefinition.State.LastUpdated -lt ($FileInfo.LastWriteTimeUtc)) {

                        # locate file in collections
                        $indexRefactored = $refactorDefinition.State.Refactored.IndexOf($_)
                        $indexSelected = $refactorDefinition.State.Selected.IndexOf($_)
                        # $indexUnselected = $refactorDefinition.State.Unselected.IndexOf($_)

                        if ($indexRefactored -ge 0) {

                            $null = $refactorDefinition.State.Refactored.RemoveAt($indexRefactored)
                            if ($indexRefactored -le $refactorDefinition.State.RefactoredIndex) {

                                $refactorDefinition.State.RefactoredIndex = [Math]::Max(-1,
                                    $refactorDefinition.State.RefactoredIndex - 1)
                            }
                            if ($indexSelected -lt 0) {

                                $null = $refactorDefinition.State.Selected.Add($filePath)
                            }
                        }
                    }
                }
            }

            # handle llm selections if enabled
            if ((-not [string]::IsNullOrWhiteSpace($refactorDefinition.SelectionSettings.LLM.Prompt)) -and
                (!!$PerformAutoSelections -or !!$PerformAISelections)) {

                if (((-not $AskBeforeLLMSelection) -or ($refactorDefinition.State.Selected.Count -eq 0)) -and
                    $refactorDefinition.State.Unselected.Count -ge 0) {

                    $userAnswer = 1;

                    if ($AskBeforeLLMSelection -and (-not $Script:_AlwaysRunLLMDuringRefactors)) {

                        if ($Speak) {

                            GenXdev\Start-TextToSpeech 'What to do next?'
                        }

                        $userAnswer = $host.ui.PromptForChoice(
                            'There are only files left that need an LLM invocation',
                            'What to do next?',
                            @('&Allways run invocations', '&Run all invocation now', '&Run invocation', "&Don't invoke now"),
                            0
                        )
                    }

                    if ($userAnswer -eq 0) {

                        $Script:_AlwaysRunLLMDuringRefactors = $true
                    }
                    if ($userAnswer -eq 1) {

                        $script:onlyFirst = $false
                    }
                    elseif ($userAnswer -eq 3) {

                        continue
                    }

                    if ($RetryFailedLLMSelections) {

                        $refactorDefinition.State.UnselectedIndex = -1;
                    }
                }

                $refactorDefinition.State.UnselectedIndex++;

                $script:nextFile = $refactorDefinition.State.Unselected[$refactorDefinition.State.UnselectedIndex];
                function goNext {

                    $script:nextFile = $null;

                    while ($refactorDefinition.State.UnselectedIndex -lt $refactorDefinition.State.Unselected.Count -and
                        ($null -eq $script:nextFile -or ((-not [IO.File]::Exists($script:nextFile))))) {

                        $refactorDefinition.State.UnselectedIndex = [Math]::Min(
                            $refactorDefinition.State.UnselectedIndex + 1,
                            $refactorDefinition.State.Unselected.Count - 1
                        )

                        if ($refactorDefinition.State.UnselectedIndex -lt $refactorDefinition.State.Unselected.Count) {

                            $script:nextFile = $refactorDefinition.State.Unselected[$refactorDefinition.State.UnselectedIndex];
                        }
                        else {

                            $script:nextFile = $null;
                        }
                    }
                }

                goNext

                while (($null -ne $script:nextFile) -and ($script:last -ne $script:nextFile)) {

                    try {
                        # Create a string builder for verbose output
                        $verboseOutput = [System.Text.StringBuilder]::new()

                        # Create a scriptblock to capture verbose output
                        $verboseScriptBlock = {
                            param($Message)
                            $null = $verboseOutput.AppendLine($Message)
                        }

                        # Register temporary verbose handler
                        $null = Microsoft.PowerShell.Utility\Register-EngineEvent -SourceIdentifier 'Verbose' -Action $verboseScriptBlock

                        # Run the test and get the result
                        $result = GenXdev\Test-RefactorLLMSelection `
                            -RefactorDefinition $refactorDefinition `
                            -Path ($script:nextFile)

                    }
                    catch {
                        $result = $false
                        $now = GenXdev\UtcNow
                        $refactorDefinition.Log.Add(
                            [GenXdev.Helpers.RefactorLogItem]@{
                                Timestamp = $now
                                Message   = "Error during LLM selection of file '$($script:nextFile)' : $($_.Exception.Message)"
                            }
                        )
                    }
                    finally {
                        # Clean up verbose handling
                        $null = Microsoft.PowerShell.Utility\Unregister-Event -SourceIdentifier 'Verbose' -ErrorAction SilentlyContinue
                    }

                    if ($result -eq $true) {

                        $now = GenXdev\UtcNow
                        $refactorDefinition.Log.Add(
                            [GenXdev.Helpers.RefactorLogItem]@{
                                Timestamp = $now
                                Message   = "File '$($script:nextFile)' was selected by LLM for refactoring`n$($verboseOutput.ToString())"
                            }
                        )

                        $indexRefactored = $refactorDefinition.State.Refactored.IndexOf(($script:nextFile))
                        $indexSelected = $refactorDefinition.State.Selected.IndexOf(($script:nextFile))
                        $indexUnselected = $refactorDefinition.State.Unselected.IndexOf(($script:nextFile))

                        if ($indexSelected -lt 0) {

                            $null = $refactorDefinition.State.Selected.Add(($script:nextFile))
                        }

                        if ($indexUnselected -ge 0) {

                            $null = $refactorDefinition.State.Unselected.RemoveAt($indexUnselected)

                            if ($indexUnselected -le $refactorDefinition.State.UnselectedIndex) {

                                $refactorDefinition.State.UnselectedIndex = [Math]::Max(-1,
                                    $refactorDefinition.State.UnselectedIndex - 1)
                            }
                        }

                        if ($indexRefactored -ge 0) {

                            $refactorDefinition.State.Refactored.RemoveAt($indexRefactored)
                            if ($indexRefactored -le $refactorDefinition.State.RefactoredIndex) {

                                $refactorDefinition.State.RefactoredIndex = [Math]::Max(-1,
                                    $refactorDefinition.State.RefactoredIndex - 1)
                            }
                        }

                        # persist changes to preferences
                        if ($PSCmdlet.ShouldProcess(
                                "Refactor set: $($refactorDefinition.Name)",
                                'Save changes')) {

                            $json = $refactorDefinition | Microsoft.PowerShell.Utility\ConvertTo-Json -Depth 10 -Compress
                            $latestJson = (GenXdev\Get-GenXdevPreference `
                                    -Name "refactor_set_$($refactorDefinition.Name)" `
                                    -PreferencesDatabasePath $PreferencesDatabasePath `
                                    -ErrorAction SilentlyContinue
                            )
                            if ($null -ne $latestJson) {

                                $latest = $latestJson | Microsoft.PowerShell.Utility\ConvertFrom-Json -ErrorAction SilentlyContinue
                                if ($null -ne $latest -and ($latest.State.LastUpdated -gt $refactorDefinition.State.LastUpdated)) {

                                    $latest.State = $refactorDefinition.State;
                                    $latest.Log = $refactorDefinition.Log;

                                    $refactorDefinition = $latest;
                                }
                            }

                            $now = GenXdev\UtcNow
                            $refactorDefinition.State.LastUpdated = $now
                            $json = $refactorDefinition | Microsoft.PowerShell.Utility\ConvertTo-Json -Depth 10 -Compress
                            GenXdev\Set-GenXdevPreference `
                                -Name "refactor_set_$($refactorDefinition.Name)" `
                                -Value $json `
                                -PreferencesDatabasePath $PreferencesDatabasePath `
                                -ErrorAction SilentlyContinue
                        }

                        if ($script:onlyFirst) {

                            break
                        }
                    }
                    else {
                        $now = GenXdev\UtcNow
                        $refactorDefinition.Log.Add(
                            [GenXdev.Helpers.RefactorLogItem]@{
                                Timestamp = $now
                                Message   = "File '$($script:nextFile)' was NOT selected by LLM for refactoring`n$($verboseOutput.ToString())"
                            }
                        )
                    }

                    $script:last = $script:nextFile
                    goNext
                }
            }

            # update state and persist changes if modifications were made
            if (($null -ne $refactorDefinition) -and
                ($refactorDefinition -is [GenXdev.Helpers.RefactorDefinition])) {

                Microsoft.PowerShell.Utility\Write-Verbose ("Updating refactor set state with $script:filesAdded added " +
                    "and $script:filesRemoved removed")

                $totalFilesDone = [Math]::Min($refactorDefinition.State.Refactored.Count, $refactorDefinition.State.RefactoredIndex + 1);

                $totalFiles = (
                    $refactorDefinition.State.Unselected.Count
                ) + (
                    $refactorDefinition.State.Selected.Count
                ) + (
                    $refactorDefinition.State.Refactored.Count
                )

                # calculate and update completion percentage
                $refactorDefinition.State.PercentageComplete = [System.Math]::Min(100, [Math]::Round(
                        (100 * $totalFilesDone) / [Math]::Max(1, $totalFiles),
                        0
                    ))

                $now = GenXdev\UtcNow

                if ($script:filesAdded -gt 0 -or $script:filesRemoved -gt 0) {

                    # log status update
                    $refactorDefinition.Log.Add(
                        [GenXdev.Helpers.RefactorLogItem]@{
                            Timestamp = $now
                            Message   = "Refactor set updated, $script:filesAdded files added, " +
                            "$script:filesRemoved files removed, " +
                            "($($refactorDefinition.State.PercentageComplete)% " +
                            'complete)'
                        }
                    )
                }

                # persist changes to preferences
                if ($PSCmdlet.ShouldProcess(
                        "Refactor set: $($refactorDefinition.Name)",
                        'Save changes')) {

                    $latestJson = (GenXdev\Get-GenXdevPreference `
                            -Name "refactor_set_$($refactorDefinition.Name)" `
                            -PreferencesDatabasePath $PreferencesDatabasePath `
                            -ErrorAction SilentlyContinue
                    )

                    $now = GenXdev\UtcNow
                    $refactorDefinition.State.LastUpdated = $now
                    $json = $refactorDefinition | Microsoft.PowerShell.Utility\ConvertTo-Json -Depth 15 -Compress
                    GenXdev\Set-GenXdevPreference `
                        -Name "refactor_set_$($refactorDefinition.Name)" `
                        -Value $json `
                        -PreferencesDatabasePath $PreferencesDatabasePath `
                        -ErrorAction SilentlyContinue
                }

                Microsoft.PowerShell.Utility\Write-Verbose 'Refactor set updated successfully'
            }
        }
    }

    end {
    }
}
<##############################################################################
Part of PowerShell module : GenXdev.Coding
Original cmdlet filename  : VSCode.ps1
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
Opens one or more files in Visual Studio Code.

.DESCRIPTION
This function takes file paths and opens them in Visual Studio Code. It expands
paths and validates file existence before attempting to open them. The function
supports both direct file paths and pipeline input, making it ideal for quickly
opening multiple files from terminal searches.

.PARAMETER FilePath
One or more file paths to open in Visual Studio Code. Accepts pipeline input
and wildcard patterns.

.PARAMETER Copilot
When specified, opens the file and triggers the Copilot keyboard shortcut to
start an edit session.

.EXAMPLE
VSCode -FilePath "C:\path\to\file.txt" -Copilot

.EXAMPLE
Get-ChildItem *.js -Recurse | VSCode
#>
function VSCode {

    [CmdletBinding()]
    param(
        [Parameter(
            Position = 0,
            Mandatory = $true,
            ValueFromPipeline = $true,
            HelpMessage = 'The path to the file to open in VSCode'
        )]
        [string[]]$FilePath,
        [Parameter(
            Mandatory = $false,
            HelpMessage = 'Add sourcefile to Copilot edit-session'
        )]
        [switch]$Copilot
    )

    begin {

        $PSRootPath = GenXdev\Expand-Path "$($MyInvocation.MyCommand.Module.ModuleBase)\..\..\..\"

        # inform user that function execution has started
        Microsoft.PowerShell.Utility\Write-Verbose 'Starting VSCode function to open files'

        # ensure copilot keyboard shortcut is configured if needed
        if ($Copilot) {

            $null = GenXdev\EnsureCopilotKeyboardShortCut
        }
    }


    process {

        $VSCodeInvoked = $false

        # process each file path provided through pipeline or parameter
        $FilePath | Microsoft.PowerShell.Core\ForEach-Object {

            try {
                # expand relative or partial paths to full filesystem paths
                $path = GenXdev\Expand-Path $_

                if (-not $VSCodeInvoked -and ($path.StartsWith("$PSRootPath\"))) {

                    $VSCodeInvoked = $true
                    GenXdev\Open-SourceFileInIde `
                        -Path $PSRootPath `
                        -Code
                }

                # open file in vscode with or without copilot activation
                Microsoft.PowerShell.Utility\Write-Verbose "Opening file in VSCode: $path"
                if ($Copilot) {

                    $null = GenXdev\Open-SourceFileInIde `
                        -Path $path `
                        -Code `
                        -KeysToSend @('^+%{F12}')
                }
                else {
                    $null = GenXdev\Open-SourceFileInIde -Path $path -Code
                }
            }
            catch {
                Microsoft.PowerShell.Utility\Write-Warning "Error processing file '$path': $_"
            }
        }
    }

    end {
    }
}


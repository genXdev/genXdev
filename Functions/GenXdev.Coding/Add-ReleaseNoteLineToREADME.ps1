<##############################################################################
Part of PowerShell module : GenXdev.Coding
Original cmdlet filename  : Add-ReleaseNoteLineToREADME.ps1
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
        #######################################################################
        [Parameter(
            Position = 0,
            ValueFromRemainingArguments = $false,
            Mandatory = $false,
            HelpMessage = 'The ReleaseNote description text to add'
        )]
        [string] $Line = '',

        #######################################################################
        [Parameter(
            Mandatory = $false,
            HelpMessage = 'Format the line as code'
        )]
        [switch] $Code,

        #######################################################################
        [Parameter(
            Mandatory = $false,
            HelpMessage = 'Display the README after adding the line'
        )]
        [switch] $Show,

        #######################################################################
        [Parameter(
            Mandatory = $false,
            HelpMessage = 'Use README in home directory'
        )]
        [switch] $UseHomeREADME,

        #######################################################################
        [Parameter(
            Mandatory = $false,
            HelpMessage = 'Use README in OneDrive directory'
        )]
        [switch] $UseOneDriveREADME,

        #######################################################################
        [Parameter(
            Mandatory = $false,
            HelpMessage = 'Priority for sorting (higher = shown first, default 1)'
        )]
        [int] $Priority = 1,

        #######################################################################
        [Parameter(
            Mandatory = $false,
            HelpMessage = 'Sort lines by date (yyyyMMdd prefix) instead of priority'
        )]
        [switch] $SortByDate,

        #######################################################################
        [Parameter(
            Mandatory = $false,
            HelpMessage = 'Reverse the sort order (ascending instead of descending)'
        )]
        [switch] $Ascending,

        #######################################################################
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
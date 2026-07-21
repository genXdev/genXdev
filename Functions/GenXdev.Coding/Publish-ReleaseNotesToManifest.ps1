<##############################################################################
Part of PowerShell module : GenXdev.Coding
Original cmdlet filename  : Publish-ReleaseNotesToManifest.ps1
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
        #######################################################################
        [Parameter(
            Mandatory = $false,
            HelpMessage = 'Use README in PowerShell profile directory'
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
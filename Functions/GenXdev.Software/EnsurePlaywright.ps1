<##############################################################################
Part of PowerShell module : GenXdev.Software
Original cmdlet filename  : ensurePlaywright.ps1
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
Ensures the Playwright .NET assembly and browser binaries are available.

.DESCRIPTION
Internal helper that downloads and loads the Microsoft.Playwright NuGet
assembly and then installs the actual browser binaries (Chromium, Firefox,
WebKit) via Playwright's built-in CLI. Idempotent — skips steps that are
already completed.

Called by Connect-PlaywrightViaDebuggingPort, Open-PlayWrightBrowser,
and explicitly from EnsureGenXdev during environment setup.
#>
function ensurePlaywright {

    [System.Diagnostics.CodeAnalysis.SuppressMessageAttribute('PSAvoidGlobalVars', '')]

    param(
        ########################################################################
        [Parameter(
            Mandatory = $false,
            HelpMessage = 'Automatically consent to Playwright browser installation and set persistent flag.'
        )]
        [switch] $ForceConsent,

        ########################################################################
        [Parameter(
            Mandatory = $false,
            HelpMessage = 'Automatically consent to third-party software installation and set persistent flag for all packages.'
        )]
        [switch] $ConsentToThirdPartySoftwareInstallation
        ########################################################################
    )

    begin {
        Microsoft.PowerShell.Utility\Write-Verbose 'Ensuring Playwright environment is ready...'

        # track whether browser binaries need to be installed
        $script:needBrowserInstall = $false
    }

    process {

        ########################################################################
        # Step 0: Confirm installation consent
        ########################################################################

        try {
            $pwConsent = GenXdev\Confirm-InstallationConsent `
                -ApplicationName 'Playwright Browsers' `
                -Source 'NuGet (Microsoft.Playwright)' `
                -Description 'Chromium, Firefox, and WebKit browser binaries for web automation' `
                -Publisher 'Microsoft' `
                -ForceConsent:$ForceConsent `
                -ConsentToThirdPartySoftwareInstallation:$ConsentToThirdPartySoftwareInstallation

            if (-not $pwConsent) {
                Microsoft.PowerShell.Utility\Write-Warning (
                    'Playwright browser installation consent denied. Web automation features may not be available.'
                )
                return
            }
        }
        catch {
            Microsoft.PowerShell.Utility\Write-Warning (
                "Failed to obtain Playwright installation consent: $($_.Exception.Message)"
            )
            return
        }

        ########################################################################
        # Step 1: Ensure Microsoft.Playwright .NET assembly is loaded
        ########################################################################

        $assemblyAlreadyLoaded = $null -ne (
            [System.AppDomain]::CurrentDomain.GetAssemblies() |
                Microsoft.PowerShell.Core\Where-Object {
                    $PSItem.GetName().Name -eq 'Microsoft.Playwright'
                }
        )

        if (-not $assemblyAlreadyLoaded) {

            Microsoft.PowerShell.Utility\Write-Verbose (
                'Microsoft.Playwright assembly not loaded. Downloading via EnsureNuGetAssembly...'
            )

            $null = GenXdev\EnsureNuGetAssembly -PackageKey 'Microsoft.Playwright'

            Microsoft.PowerShell.Utility\Write-Verbose (
                'Microsoft.Playwright assembly loaded successfully.'
            )
            $script:needBrowserInstall = $true
        }
        else {

            Microsoft.PowerShell.Utility\Write-Verbose (
                'Microsoft.Playwright assembly already loaded.'
            )
        }

        ########################################################################
        # Step 2: Ensure browser binaries are installed
        ########################################################################

        # determine the Playwright cache directory for browser binaries
        $playwrightCacheDir = Microsoft.PowerShell.Management\Join-Path `
            -Path $env:LOCALAPPDATA `
            -ChildPath 'ms-playwright'

        # check if Chromium binary exists as a proxy for all browsers
        $browsersAlreadyInstalled = $false

        if (Microsoft.PowerShell.Management\Test-Path -LiteralPath $playwrightCacheDir) {

            $existingChromium = Microsoft.PowerShell.Management\Get-ChildItem `
                -LiteralPath $playwrightCacheDir `
                -Directory `
                -Filter 'chromium-*' `
                -ErrorAction SilentlyContinue

            if ($existingChromium -and $existingChromium.Count -gt 0) {

                $browsersAlreadyInstalled = $true
                Microsoft.PowerShell.Utility\Write-Verbose (
                    "Playwright browser binaries found at: ${playwrightCacheDir}"
                )
            }
        }

        if ((-not $browsersAlreadyInstalled) -or $script:needBrowserInstall) {

            Microsoft.PowerShell.Utility\Write-Verbose (
                'Installing Playwright browser binaries (Chromium, Firefox, WebKit)...'
            )

            Microsoft.PowerShell.Utility\Write-Verbose (
                'This may take several minutes on first run. Subsequent runs will skip this step.'
            )

            try {

                # invoke Playwright's built-in CLI to download browser binaries
                $exitCode = [Microsoft.Playwright.Program]::Main(@('install'))

                if ($exitCode -ne 0) {

                    Microsoft.PowerShell.Utility\Write-Warning (
                        "Playwright browser installation exited with code ${exitCode}. " +
                        'Some browsers may not be available.'
                    )
                }
                else {

                    Microsoft.PowerShell.Utility\Write-Verbose (
                        'Playwright browser binaries installed successfully.'
                    )
                }
            }
            catch {

                Microsoft.PowerShell.Utility\Write-Warning (
                    "Failed to install Playwright browser binaries: $($_.Exception.Message)"
                )

                # don't throw — let callers handle missing browsers gracefully
            }
        }
        else {

            Microsoft.PowerShell.Utility\Write-Verbose (
                'Playwright browser binaries already installed. Skipping download.'
            )
        }
    }

    end {

        Microsoft.PowerShell.Utility\Write-Verbose (
            'Playwright environment check complete.'
        )
    }
}
<##############################################################################
Part of PowerShell module : GenXdev.Webbrowser
Original cmdlet filename  : Close-WebbrowserTab.ps1
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
Closes the currently selected webbrowser tab.

.DESCRIPTION
Closes the currently selected webbrowser tab using ChromeDriver's CloseAsync()
method. If no tab is currently selected, the function will automatically attempt
to select the last used tab before closing it.

.EXAMPLE
Close-WebbrowserTab
Closes the currently active browser tab

.EXAMPLE
ct
Uses the alias to close the currently active browser tab
#>
function Close-WebbrowserTab {

    [CmdletBinding()]
    [System.Diagnostics.CodeAnalysis.SuppressMessageAttribute('PSUseSingularNouns', '')]
    [System.Diagnostics.CodeAnalysis.SuppressMessageAttribute('PSAvoidGlobalVars', '')]
    [System.Diagnostics.CodeAnalysis.SuppressMessageAttribute('PSUseDeclaredVarsMoreThanAssignments', '')]
    [Alias('ct', 'CloseTab')]
    param(
        ########################################################################
        [Parameter(
            Mandatory = $false,
            HelpMessage = 'Navigate using Microsoft Edge browser'
        )]
        [Alias('e')]
        [switch] $Edge,
        ########################################################################
        [Parameter(
            Mandatory = $false,
            HelpMessage = 'Navigate using Google Chrome browser'
        )]
        [Alias('ch')]
        [switch] $Chrome,
        ########################################################################
        [Parameter(
            Mandatory = $false,
            HelpMessage = ('Opens in Microsoft Edge or Google Chrome, ' +
                'depending on what the default browser is')
        )]
        [Alias('c')]
        [switch] $Chromium,
        ########################################################################
        [Parameter(
            Mandatory = $false,
            HelpMessage = 'Opens in Firefox'
        )]
        [Alias('ff')]
        [switch] $Firefox,
        ########################################################################
        [Parameter(
            Mandatory = $false,
            HelpMessage = 'Uses the Playwright-managed WebKit browser'
        )]
        [Alias('wk')]
        [switch] $Webkit
        ########################################################################
    )

    begin {
        # resolve the active Playwright browser page
        $activeBrowser = if ($Global:GenXdevPlaywright.ContainsKey('ChromiumNormal')) {
            $Global:GenXdevPlaywright['ChromiumNormal']
        }
        elseif ($Global:GenXdevPlaywright.ContainsKey('ChromeNormal')) {
            $Global:GenXdevPlaywright['ChromeNormal']
        }
        elseif ($Global:GenXdevPlaywright.ContainsKey('EdgeNormal')) {
            $Global:GenXdevPlaywright['EdgeNormal']
        }
        elseif ($Global:GenXdevPlaywright.ContainsKey('ChromiumPlaywright')) {
            $Global:GenXdevPlaywright['ChromiumPlaywright']
        }
        elseif ($Global:GenXdevPlaywright.ContainsKey('FirefoxPlaywright')) {
            $Global:GenXdevPlaywright['FirefoxPlaywright']
        }
        elseif ($Global:GenXdevPlaywright.ContainsKey('WebKitPlaywright')) {
            $Global:GenXdevPlaywright['WebKitPlaywright']
        }
        else {
            $null
        }

        if (-not $activeBrowser) {
            Microsoft.PowerShell.Utility\Write-Warning (
                'No Playwright browser is running. Use Open-PlayWrightBrowser to launch one first.'
            )
            return
        }

        $page = $activeBrowser.Page
    }


    process {

        if (-not $page) {
            return
        }

        Microsoft.PowerShell.Utility\Write-Verbose (
            "Closing browser tab: $($page.Url)"
        )

        # close the current Playwright page
        $null = $page.CloseAsync().GetAwaiter().GetResult()
    }

    end {
    }
}
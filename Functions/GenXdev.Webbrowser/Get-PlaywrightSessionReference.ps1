<##############################################################################
Part of PowerShell module : GenXdev.Webbrowser
Original cmdlet filename  : Get-PlaywrightSessionReference.ps1
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
Gets a reference to the current Playwright browser session.

.DESCRIPTION
Returns a hashtable containing the Playwright Page, BrowserContext, and session
data for the current browser page. This reference can be used with
Invoke-WebbrowserEvaluation -ByReference to target a specific page.

The browser type can be specified using the -Edge, -Chrome, -Chromium,
-Firefox, or -Webkit switches. If no switch is specified, Chromium is preferred.

.PARAMETER Edge
Prefer Microsoft Edge browser session.

.PARAMETER Chrome
Prefer Google Chrome browser session.

.PARAMETER Chromium
Prefer the default Chromium-based browser session.

.PARAMETER Firefox
Prefer Firefox browser session.

.PARAMETER Webkit
Prefer WebKit browser session.

.EXAMPLE
Get a reference to the current browser session
$sessionRef = Get-PlaywrightSessionReference

.EXAMPLE
Store the reference and use it later to execute JavaScript
$ref = Get-PlaywrightSessionReference
Invoke-WebbrowserEvaluation "document.title" -ByReference $ref
#>
function Get-PlaywrightSessionReference {

    [CmdletBinding()]
    [System.Diagnostics.CodeAnalysis.SuppressMessageAttribute('PSAvoidGlobalVars', '')]
    [OutputType([hashtable])]
    param(
        ###############################################################################
        [Alias('e')]
        [Parameter(
            Mandatory = $false,
            HelpMessage = 'Prefer Microsoft Edge browser session'
        )]
        [switch] $Edge,
        ###############################################################################
        [Alias('ch')]
        [Parameter(
            Mandatory = $false,
            HelpMessage = 'Prefer Google Chrome browser session'
        )]
        [switch] $Chrome,
        ###############################################################################
        [Alias('c')]
        [Parameter(
            Mandatory = $false,
            HelpMessage = ('Prefer Microsoft Edge or Google Chrome, ' +
                'depending on what the default browser is')
        )]
        [switch] $Chromium,
        ###############################################################################
        [Alias('ff')]
        [Parameter(
            Mandatory = $false,
            HelpMessage = 'Prefer Firefox browser session'
        )]
        [switch] $Firefox,
        ###############################################################################
        [Alias('wk')]
        [Parameter(
            Mandatory = $false,
            HelpMessage = 'Prefer WebKit browser session'
        )]
        [switch] $Webkit
    )

    begin {
        Microsoft.PowerShell.Utility\Write-Verbose 'Checking for active Playwright browser session'

        # create global data storage if it doesn't exist
        if ($Global:Data -isnot [Hashtable]) {
            $globalData = @{}
            $null = Microsoft.PowerShell.Utility\Set-Variable -Name 'Data' -Value $globalData `
                -Scope Global -Force
        }
        else {
            $globalData = $Global:Data
        }

        # determine preferred browser type from switches
        $preferredType = if ($Webkit) {
            'WebKitPlaywright'
        }
        elseif ($Firefox) {
            'FirefoxPlaywright'
        }
        else {
            # Edge, Chrome, Chromium, or default all map to ChromiumNormal
            'ChromiumNormal'
        }
    }


    process {

        # resolve the active Playwright browser page
        $activeBrowser = if (
            $Global:GenXdevPlaywright.ContainsKey($preferredType)) {
            $Global:GenXdevPlaywright[$preferredType]
        }
        elseif ($Global:GenXdevPlaywright.ContainsKey('ChromiumNormal')) {
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
            throw 'No Playwright browser is running. Use Open-PlayWrightBrowser to launch one first.'
        }

        Microsoft.PowerShell.Utility\Write-Verbose 'Found active Playwright session'

        if ($activeBrowser.Page.IsClosed) {
            throw 'Browser page has been closed. Use Open-PlayWrightBrowser to launch a new session.'
        }

        # build session reference object for backward compatibility
        $sessionObj = [PSCustomObject]@{
            Url         = $activeBrowser.Page.Url
            Page        = $activeBrowser.Page
            Context     = $activeBrowser.Context
            BrowserType = $activeBrowser.BrowserType
            data        = $globalData
        }

        # set global variables for backward compatibility
        $Global:chromeController = $activeBrowser.Page
        $Global:chromeSession = $sessionObj

        return $sessionObj
    }

    end {
    }
}
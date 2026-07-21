<##############################################################################
Part of PowerShell module : GenXdev.Webbrowser.Playwright
Original cmdlet filename  : Connect-PlaywrightViaDebuggingPort.ps1
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

using namespace System.Management.Automation
using namespace System.Collections.Concurrent

<#
.SYNOPSIS
Connects to an existing browser instance via debugging port.

.DESCRIPTION
Establishes a connection to a running Chromium-based browser instance using the
WebSocket debugger URL. Creates a Playwright instance and connects over CDP
(Chrome DevTools Protocol). The connected browser instance is stored in a global
dictionary for later reference.

.PARAMETER WsEndpoint
The WebSocket URL for connecting to the browser's debugging port. This URL
typically follows the format 'ws://hostname:port/devtools/browser/<id>'.

.EXAMPLE
Connect-PlaywrightViaDebuggingPort `
    -WsEndpoint "ws://localhost:9222/devtools/browser/abc123"
###############################################################################>
function Connect-PlaywrightViaDebuggingPort {

    [CmdletBinding()]
    [System.Diagnostics.CodeAnalysis.SuppressMessageAttribute('PSAvoidGlobalVars', '')]
    param(
        [Parameter(
            Mandatory = $true,
            Position = 0,
            HelpMessage = 'WebSocket URL for browser debugging connection'
        )]
        [ValidateNotNullOrEmpty()]
        [string]$WsEndpoint
    )

    begin {
        # log connection attempt for debugging purposes
        Microsoft.PowerShell.Utility\Write-Verbose "Attempting to connect to browser at: $WsEndpoint"

        GenXdev\ensurePlaywright

       $Global:GenXdevPlaywrightBrowserDictionary = $Global:GenXdevPlaywrightBrowserDictionary ?
       $Global:GenXdevPlaywrightBrowserDictionary :
       [System.Collections.Concurrent.ConcurrentDictionary[string, Microsoft.Playwright.IBrowser]]::new()
    }


    process {
        try {
            # create new playwright instance
            Microsoft.PowerShell.Utility\Write-Verbose 'Creating Playwright instance'
            $playwright = [Microsoft.Playwright.Playwright]::CreateAsync().Result

            # connect to browser using CDP protocol
            Microsoft.PowerShell.Utility\Write-Verbose 'Connecting to browser via CDP'
            $browser = $playwright.Chromium.ConnectOverCDPAsync($WsEndpoint).Result

            # store browser instance for module-wide access
            Microsoft.PowerShell.Utility\Write-Verbose 'Storing browser instance in global dictionary'
            $Global:GenXdevPlaywrightBrowserDictionary[$WsEndpoint] = $browser

            return $browser
        }
        catch {
            Microsoft.PowerShell.Utility\Write-Error "Failed to connect via debugging port: $_"
            throw
        }
    }

    end {
    }
}
<##############################################################################
Part of PowerShell module : GenXdev.Webbrowser.Playwright
Original cmdlet filename  : Open-PlayWrightBrowser.ps1
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
Starts a Playwright-managed browser with a persistent user profile.

.DESCRIPTION
Launches a browser instance powered by Playwright. The BrowserType
parameter determines which browser engine and launch mode to use:

- ChromeNormal / EdgeNormal: Launches your OS-installed Chrome or Edge
  via Playwright's Channel API, avoiding the "controlled by automation"
  infobar and anti-bot detection problems.
- ChromiumNormal: Auto-detects Chrome or Edge (whichever is installed
  and set as the system default) and uses the Channel API. Falls back
  to the bundled Playwright Chromium if neither is installed.
- ChromiumPlaywright: Always uses Playwright's bundled Chromium binary
  (never the OS-installed browser).
- FirefoxPlaywright: Uses Playwright's bundled Firefox binary. Channel
  API is not available for Firefox in the Playwright .NET bindings.
- WebKitPlaywright: Uses Playwright's bundled WebKit binary.

Anti-detection measures applied for Chromium-based browsers:
- Disables blink automation flags (removes infobar)
- Sets viewport to null and starts maximized for native window sizing
- Uses 'no-preference' color scheme to avoid white background
- Sets standard browser args (no-first-run, no-default-browser-check)

Persistent profiles per BrowserType are stored under GenXdev AppData.
The launched browser and its context/page are stored in
$Global:GenXdevPlaywright for use by other cmdlets.

.PARAMETER BrowserType
The browser to launch: ChromeNormal, EdgeNormal, ChromiumNormal
(auto-detects Chrome or Edge), ChromiumPlaywright, FirefoxPlaywright,
or WebKitPlaywright.

.PARAMETER Headless
Run the browser in headless mode (no visible window).

.PARAMETER Proxy
Proxy server URL (e.g. "http://proxy:8080").

.PARAMETER AcceptLang
Set the browser's Accept-Language HTTP header.

.PARAMETER Width
Initial viewport width in pixels. Also passed to Set-WindowPosition for
OS window sizing.

.PARAMETER Height
Initial viewport height in pixels. Also passed to Set-WindowPosition for
OS window sizing.

.PARAMETER Force
Close any existing Playwright browser and start a new one.

.PARAMETER ForceConsent
Force re-prompting of the installation consent dialog.

.PARAMETER ConsentToThirdPartySoftwareInstallation
Automatically consent to third-party software installation (Playwright
browsers).

.PARAMETER Monitor
Monitor selection: 0=primary, 1+=specific monitor, -1=current,
-2=secondary.

.PARAMETER X
Window horizontal position in pixels.

.PARAMETER Y
Window vertical position in pixels.

.PARAMETER Left
Places window on left half of screen.

.PARAMETER Right
Places window on right half of screen.

.PARAMETER Top
Places window on top half of screen.

.PARAMETER Bottom
Places window on bottom half of screen.

.PARAMETER Centered
Centers window on screen.

.PARAMETER Fullscreen
Maximizes window to fill entire screen.

.PARAMETER NoBorders
Removes window borders and title bar for a cleaner appearance.

.PARAMETER RestoreFocus
Returns focus to PowerShell window after positioning.

.PARAMETER SideBySide
Positions browser either fullscreen on a different monitor than
PowerShell, or side by side with PowerShell on the same monitor.

.PARAMETER FocusWindow
Focus the window after positioning.

.PARAMETER SetForeground
Set the window to foreground after positioning.

.PARAMETER Minimize
Minimizes the window after positioning.

.PARAMETER Maximize
Maximize the window after positioning.

.PARAMETER SetRestored
Restore the window to normal state after positioning.

.PARAMETER KeysToSend
Keystrokes to send to the window after positioning, see documentation
for cmdlet GenXdev\Send-Key.

.PARAMETER SendKeyEscape
Escape control characters and modifiers when sending keys.

.PARAMETER SendKeyHoldKeyboardFocus
Hold keyboard focus on target window when sending keys.

.PARAMETER SendKeyUseShiftEnter
Use Shift+Enter instead of Enter when sending keys.

.PARAMETER SendKeyDelayMilliSeconds
Delay between different input strings in milliseconds when sending
keys.

.PARAMETER PassThru
Returns window helper object for further manipulation.

.PARAMETER SessionOnly
Use alternative settings stored in session for AI preferences.

.PARAMETER ClearSession
Clear alternative settings stored in session for AI preferences.

.PARAMETER SkipSession
Store settings only in persistent preferences without affecting
session.

.PARAMETER OnlyOutputCoords
Only output the calculated coordinates and size without actually
positioning the window. Returns a hashtable with Left, Top, Width,
and Height properties representing global (multi-monitor)
coordinates.

.EXAMPLE
Open-PlayWrightBrowser
Launches your OS-installed Chrome or Edge (auto-detected) with a
persistent profile and anti-detection measures.

.EXAMPLE
Open-PlayWrightBrowser -BrowserType EdgeNormal
Launches Microsoft Edge via Playwright's Channel API.

.EXAMPLE
Open-PlayWrightBrowser -BrowserType ChromiumPlaywright
Uses the bundled Playwright Chromium binary.

.EXAMPLE
Open-PlayWrightBrowser -BrowserType FirefoxPlaywright -Headless
Launches the bundled Firefox in headless mode.

.EXAMPLE
Open-PlayWrightBrowser -Width 1280 -Height 720 -Force
Restarts the browser with a 1280x720 viewport.
#>
function Open-PlayWrightBrowser {

    [CmdletBinding(SupportsShouldProcess = $true)]
    [OutputType([Hashtable])]
    [System.Diagnostics.CodeAnalysis.SuppressMessageAttribute('PSUseDeclaredVarsMoreThanAssignments', '')]
    [System.Diagnostics.CodeAnalysis.SuppressMessageAttribute('PSAvoidGlobalVars', '')]
    [System.Diagnostics.CodeAnalysis.SuppressMessageAttribute('PSAvoidUsingPlainTextForPassword', '')]
    [Alias('spb')]

    param(
        [Parameter(
            Mandatory = $false,
            Position = 0,
            HelpMessage = ('The browser to launch: Chrome, Edge, Chromium ' +
                '(auto-detects Chrome or Edge), Firefox, or WebKit')
        )]
        [ValidateSet('ChromeNormal', 'EdgeNormal', 'ChromiumNormal',
            'ChromiumPlaywright', 'FirefoxPlaywright', 'WebKitPlaywright')]
        [string] $BrowserType = 'ChromiumNormal',

        [Parameter(
            Mandatory = $false,
            HelpMessage = 'Run the browser without a visible window'
        )]
        [Alias('hl')]
        [switch] $Headless,
        [Parameter(
            Mandatory = $false,
            HelpMessage = 'Proxy server URL (e.g. http://proxy:8080)'
        )]
        [string] $Proxy,

        [Parameter(
            Mandatory = $false,
            HelpMessage = 'Set the browser Accept-Language HTTP header'
        )]
        [Alias('lang', 'locale')]
        [string] $AcceptLang,

        [Parameter(
            Mandatory = $false,
            HelpMessage = 'Initial viewport width in pixels'
        )]
        [Alias('w')]
        [ValidateRange(320, 7680)]
        [int] $Width = -1,

        [Parameter(
            Mandatory = $false,
            HelpMessage = 'Initial viewport height in pixels'
        )]
        [Alias('h')]
        [ValidateRange(240, 4320)]
        [int] $Height = -1,

        [Parameter(
            Mandatory = $false,
            HelpMessage = 'Close existing browser and start fresh'
        )]
        [Alias('f')]
        [switch] $Force,

        [Parameter(
            Mandatory = $false,
            HelpMessage = 'Force re-prompting of the installation consent dialog'
        )]
        [switch] $ForceConsent,

        [Parameter(
            Mandatory = $false,
            HelpMessage = 'Automatically consent to third-party software ' +
            'installation (Playwright browsers)'
        )]
        [Alias('Consent')]
        [switch] $ConsentToThirdPartySoftwareInstallation,

        [Parameter(
            Mandatory = $false,
            HelpMessage = ('The monitor to use, 0 = default, -1 is discard, ' +
                '-2 = Configured secondary monitor, defaults to ' +
                "`$Global:DefaultSecondaryMonitor or 2 if not found")
        )]
        [Alias('m', 'mon')]
        [int] $Monitor = -1,

        [Parameter(
            Mandatory = $false,
            HelpMessage = 'The initial X position of the webbrowser window'
        )]
        [int] $X = -999999,

        [Parameter(
            Mandatory = $false,
            HelpMessage = 'The initial Y position of the webbrowser window'
        )]
        [int] $Y = -999999,

        [Parameter(
            Mandatory = $false,
            HelpMessage = 'Place browser window on the left side of the screen'
        )]
        [switch] $Left,

        [Parameter(
            Mandatory = $false,
            HelpMessage = 'Place browser window on the right side of the screen'
        )]
        [switch] $Right,

        [Parameter(
            Mandatory = $false,
            HelpMessage = 'Place browser window on the top side of the screen'
        )]
        [switch] $Top,

        [Parameter(
            Mandatory = $false,
            HelpMessage = 'Place browser window on the bottom side of the screen'
        )]
        [switch] $Bottom,

        [Parameter(
            Mandatory = $false,
            HelpMessage = 'Place browser window in the center of the screen'
        )]
        [switch] $Centered,

        [Parameter(
            Mandatory = $false,
            HelpMessage = 'Maximizes window to fill entire screen'
        )]
        [Alias('fs')]
        [switch] $Fullscreen,

        [Parameter(
            Mandatory = $false,
            HelpMessage = 'Removes the borders of the window'
        )]
        [Alias('nb')]
        [switch] $NoBorders,

        [Parameter(
            Mandatory = $false,
            HelpMessage = 'Restore PowerShell window focus'
        )]
        [Alias('rf', 'bg')]
        [switch] $RestoreFocus,

        [Parameter(
            Mandatory = $false,
            HelpMessage = ('Position browser window either fullscreen on ' +
                'different monitor than PowerShell, or side by side with ' +
                'PowerShell on the same monitor')
        )]
        [Alias('sbs')]
        [switch] $SideBySide,

        [Parameter(
            Mandatory = $false,
            HelpMessage = 'Focus the browser window after opening'
        )]
        [Alias('fw', 'focus')]
        [switch] $FocusWindow,

        [Parameter(
            Mandatory = $false,
            HelpMessage = 'Set the browser window to foreground after opening'
        )]
        [Alias('fg')]
        [switch] $SetForeground,

        [Parameter(
            Mandatory = $false,
            HelpMessage = 'Minimizes the window after positioning'
        )]
        [switch] $Minimize,

        [Parameter(
            Mandatory = $false,
            HelpMessage = 'Maximize the window after positioning'
        )]
        [switch] $Maximize,

        [Parameter(
            Mandatory = $false,
            HelpMessage = 'Restore the window to normal state after positioning'
        )]
        [switch] $SetRestored,

        [Parameter(
            Mandatory = $false,
            HelpMessage = ('Keystrokes to send to the Window, ' +
                'see documentation for cmdlet GenXdev\Send-Key')
        )]
        [string[]] $KeysToSend,

        [Parameter(
            Mandatory = $false,
            HelpMessage = 'Escape control characters and modifiers when sending keys'
        )]
        [Alias('Escape')]
        [switch] $SendKeyEscape,

        [Parameter(
            Mandatory = $false,
            HelpMessage = 'Hold keyboard focus on target window when sending keys'
        )]
        [Alias('HoldKeyboardFocus')]
        [switch] $SendKeyHoldKeyboardFocus,

        [Parameter(
            Mandatory = $false,
            HelpMessage = 'Use Shift+Enter instead of Enter when sending keys'
        )]
        [Alias('UseShiftEnter')]
        [switch] $SendKeyUseShiftEnter,

        [Parameter(
            Mandatory = $false,
            HelpMessage = ('Delay between different input strings in ' +
                'milliseconds when sending keys')
        )]
        [Alias('DelayMilliSeconds')]
        [int] $SendKeyDelayMilliSeconds,
        [Parameter(
            Mandatory = $false,
            HelpMessage = 'Returns window helper object for further manipulation'
        )]
        [Alias('pt')]
        [switch] $PassThru,
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
        [switch] $SkipSession,
        [Parameter(
            Mandatory = $false,
            HelpMessage = ('Only output the calculated coordinates and size ' +
                'without actually positioning the window')
        )]
        [switch] $OnlyOutputCoords
    )

    begin {
        Microsoft.PowerShell.Utility\Write-Verbose (
            "Starting Playwright ${BrowserType} browser..."
        )

        # ensure Playwright assembly and browser binaries are available
        $pwParams = @{}
        if ($PSBoundParameters.ContainsKey('ForceConsent')) {
            $pwParams.ForceConsent = $ForceConsent
        }
        if ($PSBoundParameters.ContainsKey('ConsentToThirdPartySoftwareInstallation')) {
            $pwParams.ConsentToThirdPartySoftwareInstallation = $ConsentToThirdPartySoftwareInstallation
        }
        GenXdev\ensurePlaywright @pwParams

        # Detect installed browsers for channel support

        # Check which real browsers are available on this system
        $script:hasChrome = $false
        $script:hasEdge = $false
        $script:hasFirefox = $false

        try {
            $allBrowsers = @(GenXdev\Get-Webbrowser)
            foreach ($browser in $allBrowsers) {
                if ($browser.Name -match 'Chrome') {
                    $script:hasChrome = $true
                }
                if ($browser.Name -match 'Edge') {
                    $script:hasEdge = $true
                }
                if ($browser.Name -match 'Firefox') {
                    $script:hasFirefox = $true
                }
            }
        }
        catch {
            Microsoft.PowerShell.Utility\Write-Verbose (
                "Could not detect installed browsers: $($_.Exception.Message)"
            )
        }

        Microsoft.PowerShell.Utility\Write-Verbose (
            "Installed browsers — Chrome: ${script:hasChrome}, " +
            "Edge: ${script:hasEdge}, Firefox: ${script:hasFirefox}"
        )

        # initialize global state container if needed
        if ($Global:GenXdevPlaywright -isnot [Hashtable]) {
            $Global:GenXdevPlaywright = @{}
        }

        # copy window positioning parameters for delegation to Set-WindowPosition
        $wpparams = GenXdev\Copy-IdenticalParamValues `
            -BoundParameters $PSBoundParameters `
            -FunctionName 'GenXdev\Set-WindowPosition' `
            -DefaultValues (
            Microsoft.PowerShell.Utility\Get-Variable -Scope Local `
                -ErrorAction SilentlyContinue
        )

        Microsoft.PowerShell.Utility\Write-Verbose (
            'Window positioning parameters copied: ' +
            "$($wpparams.Keys -join ', ')"
        )
    }

    process {

        # Step 1: Handle Force — close existing browser

        if ($Force -and $Global:GenXdevPlaywright.ContainsKey($BrowserType)) {

            if ($PSCmdlet.ShouldProcess(
                    "${BrowserType} browser",
                    'Close existing instance and start new'
                )) {

                Microsoft.PowerShell.Utility\Write-Verbose (
                    "Force flag set — closing existing ${BrowserType} browser..."
                )

                try {

                    $existing = $Global:GenXdevPlaywright[$BrowserType]

                    if ($existing.Context) {
                        $existing.Context.CloseAsync().GetAwaiter().GetResult()
                    }

                    if ($existing.Browser) {
                        $existing.Browser.CloseAsync().GetAwaiter().GetResult()
                    }
                }
                catch {

                    Microsoft.PowerShell.Utility\Write-Warning (
                        "Error closing existing browser: $($_.Exception.Message)"
                    )
                }

                $Global:GenXdevPlaywright.Remove($BrowserType)
            }
        }

        # Step 2: Check if browser is already running

        if ($Global:GenXdevPlaywright.ContainsKey($BrowserType)) {

            $existing = $Global:GenXdevPlaywright[$BrowserType]

            if ($existing.Browser -and $existing.Browser.IsConnected) {

                Microsoft.PowerShell.Utility\Write-Verbose (
                    "${BrowserType} browser already running. Use -Force to restart."
                )

                return $existing
            }
            else {

                # stale entry — clean it up
                Microsoft.PowerShell.Utility\Write-Verbose (
                    "Removing stale ${BrowserType} entry from global state."
                )

                $Global:GenXdevPlaywright.Remove($BrowserType)
            }
        }

        # Step 3: Get profile directory

        $profileDir = GenXdev\Get-PlaywrightProfileDirectory `
            -BrowserType $BrowserType

        Microsoft.PowerShell.Utility\Write-Verbose (
            "Using profile directory: ${profileDir}"
        )

        # Step 4: Build browser launch options

        if ($PSCmdlet.ShouldProcess(
                "${BrowserType} browser",
                'Launch persistent context'
            )) {

            $launchOptions = [Microsoft.Playwright.BrowserTypeLaunchPersistentContextOptions]::new()

            # headless mode — use ToBool() so -Headless:$false works correctly
            $launchOptions.Headless = $Headless.ToBool()

            # channel and anti-detection logic
            # BrowserType encodes the launch mode in its name:
            # - *Normal: use OS-installed browser via Channel API
            # - *Playwright: use bundled Playwright binary
            $script:useRealBrowser = $false
            $script:channelName = $null

            switch ($BrowserType) {
                'ChromeNormal' {
                    if ($script:hasChrome) {
                        $launchOptions.Channel = 'chrome'
                        $script:useRealBrowser = $true
                        $script:channelName = 'chrome'
                    }
                    else {
                        Microsoft.PowerShell.Utility\Write-Warning (
                            'Chrome is not installed on this system. ' +
                            'Falling back to bundled Playwright Chromium.'
                        )
                    }
                }
                'EdgeNormal' {
                    if ($script:hasEdge) {
                        $launchOptions.Channel = 'msedge'
                        $script:useRealBrowser = $true
                        $script:channelName = 'msedge'
                    }
                    else {
                        Microsoft.PowerShell.Utility\Write-Warning (
                            'Edge is not installed on this system. ' +
                            'Falling back to bundled Playwright Chromium.'
                        )
                    }
                }
                'ChromiumNormal' {
                    # Auto-detect: prefer Chrome, then Edge, then bundled
                    if ($script:hasChrome) {
                        $launchOptions.Channel = 'chrome'
                        $script:useRealBrowser = $true
                        $script:channelName = 'chrome'
                    }
                    elseif ($script:hasEdge) {
                        $launchOptions.Channel = 'msedge'
                        $script:useRealBrowser = $true
                        $script:channelName = 'msedge'
                    }
                    else {
                        Microsoft.PowerShell.Utility\Write-Warning (
                            'Neither Chrome nor Edge is installed. ' +
                            'Falling back to bundled Playwright Chromium.'
                        )
                    }
                }
                'ChromiumPlaywright' {
                    # Always use bundled Playwright Chromium binary
                    Microsoft.PowerShell.Utility\Write-Verbose (
                        'Using bundled Playwright Chromium binary.'
                    )
                }
                'FirefoxPlaywright' {
                    # Playwright .NET does not support channel for Firefox.
                    # Always use bundled binary.
                    Microsoft.PowerShell.Utility\Write-Verbose (
                        'Firefox channel not supported in Playwright ' +
                        '.NET API. Using bundled Playwright Firefox.'
                    )
                }
                'WebKitPlaywright' {
                    # WebKit has no OS-installed equivalent on Windows.
                    # Always use bundled binary.
                }
            }

            if ($script:useRealBrowser) {
                Microsoft.PowerShell.Utility\Write-Verbose (
                    "Using real browser via channel: ${script:channelName}"
                )
            }
            else {
                Microsoft.PowerShell.Utility\Write-Verbose (
                    'Using bundled Playwright browser binary.'
                )
            }

            # viewport size — when using a real browser in headed mode,
            # set viewport to null and maximize to let the native window
            # manager handle sizing (avoids zoom/scale issues)
            if ($script:useRealBrowser -and (-not $Headless.ToBool())) {
                if ($Width -le 0 -and $Height -le 0) {
                    # No custom size requested — let the browser window
                    # size naturally
                    $launchOptions.ViewportSize = $null
                }
                elseif ($Width -gt 0 -and $Height -gt 0) {
                    $launchOptions.ViewportSize = [Microsoft.Playwright.ViewportSize]::new()
                    $launchOptions.ViewportSize.Width = $Width
                    $launchOptions.ViewportSize.Height = $Height
                }
                elseif ($Width -gt 0) {
                    $launchOptions.ViewportSize = [Microsoft.Playwright.ViewportSize]::new()
                    $launchOptions.ViewportSize.Width = $Width
                    $launchOptions.ViewportSize.Height = 720
                }
                elseif ($Height -gt 0) {
                    $launchOptions.ViewportSize = [Microsoft.Playwright.ViewportSize]::new()
                    $launchOptions.ViewportSize.Width = 1280
                    $launchOptions.ViewportSize.Height = $Height
                }
            }
            else {
                # Bundled Playwright browser — use explicit viewport
                if ($Width -gt 0 -and $Height -gt 0) {
                    $launchOptions.ViewportSize = [Microsoft.Playwright.ViewportSize]::new()
                    $launchOptions.ViewportSize.Width = $Width
                    $launchOptions.ViewportSize.Height = $Height
                }
                elseif ($Width -gt 0) {
                    $launchOptions.ViewportSize = [Microsoft.Playwright.ViewportSize]::new()
                    $launchOptions.ViewportSize.Width = $Width
                    $launchOptions.ViewportSize.Height = 720
                }
                elseif ($Height -gt 0) {
                    $launchOptions.ViewportSize = [Microsoft.Playwright.ViewportSize]::new()
                    $launchOptions.ViewportSize.Width = 1280
                    $launchOptions.ViewportSize.Height = $Height
                }
            }

            # color scheme — use NoPreference to avoid the stark white
            # background that Playwright defaults to in automation mode
            $launchOptions.ColorScheme = 'NoPreference'

            # user agent — Playwright's default UA can differ from a real
            # browser's and may include automation markers. Override with
            # a normal Chrome/Edge UA string to avoid detection.
            if ($script:useRealBrowser) {
                # Real browser via channel — the browser uses its own UA,
                # but the context-level override ensures consistency and
                # masks any Playwright-specific headers.
                if ($script:channelName -eq 'msedge') {
                    $launchOptions.UserAgent =
                    'Mozilla/5.0 (Windows NT 10.0; Win64; x64) ' +
                    'AppleWebKit/537.36 (KHTML, like Gecko) ' +
                    'Chrome/131.0.0.0 Safari/537.36 Edg/131.0.0.0'
                }
                else {
                    $launchOptions.UserAgent =
                    'Mozilla/5.0 (Windows NT 10.0; Win64; x64) ' +
                    'AppleWebKit/537.36 (KHTML, like Gecko) ' +
                    'Chrome/131.0.0.0 Safari/537.36'
                }
            }
            elseif ($BrowserType -eq 'ChromiumPlaywright') {
                # Bundled Playwright Chromium — override UA to match a
                # real Chrome install, hiding the Playwright marker.
                $launchOptions.UserAgent =
                'Mozilla/5.0 (Windows NT 10.0; Win64; x64) ' +
                'AppleWebKit/537.36 (KHTML, like Gecko) ' +
                'Chrome/131.0.0.0 Safari/537.36'
            }

            # proxy settings
            if ($Proxy) {
                $launchOptions.Proxy = [Microsoft.Playwright.Proxy]::new()
                $launchOptions.Proxy.Server = $Proxy
            }

            # accept-language header
            if ($AcceptLang) {
                $launchOptions.Locale = $AcceptLang
            }


            # args for a normal-looking browser
            $launchOptions.Args = [System.Collections.Generic.List[string]]::new()

            # Clean up basic flags (Removed the flag causing the new warning)
            $launchOptions.Args.Add('--disable-features=Translate')
            $launchOptions.Args.Add('--no-first-run')
            $launchOptions.Args.Add('--no-default-browser-check')

            # FIX THE GRAY BOX: Instead of a null viewport with forced scaling,
            # we explicitly specify a massive default viewport boundary.
            # This forces Chrome to render the document canvas all the way to the edges.
            $launchOptions.ViewportSize = [Microsoft.Playwright.ViewportSize]::new()
            if ($useRealBrowser) {

                $launchOptions.ViewportSize.Width = -1
                $launchOptions.ViewportSize.Height = -1
            }

            # When using a real browser in headed mode, start maximized
            # so the window manager handles native sizing correctly
            if ($script:useRealBrowser -and (-not $Headless.ToBool()) -and
                $Width -le 0 -and $Height -le 0) {
                $launchOptions.Args.Add('--start-maximized')
            }

            Microsoft.PowerShell.Utility\Write-Verbose (
                'Launch options prepared. Launching persistent context...'
            )

            # Step 5: Launch the persistent context

            try {

                $playwright = [Microsoft.Playwright.Playwright]::CreateAsync().
                GetAwaiter().GetResult()

                # Map BrowserType to Playwright's engine name.
                # Playwright engines: chromium, firefox, webkit.
                $engineMap = @{
                    'ChromeNormal'       = 'chromium'
                    'EdgeNormal'         = 'chromium'
                    'ChromiumNormal'     = 'chromium'
                    'ChromiumPlaywright' = 'chromium'
                    'FirefoxPlaywright'  = 'firefox'
                    'WebKitPlaywright'   = 'webkit'
                }
                $engineName = $engineMap[$BrowserType]
                $browserTypeObj = $playwright[$engineName]

                $context = $browserTypeObj.LaunchPersistentContextAsync(
                    $profileDir,
                    $launchOptions
                ).GetAwaiter().GetResult()

                # get the browser from the context (it's the parent)
                $browser = $context.Browser

                # get or wait for the first page
                $pages = $context.Pages

                if ($pages.Count -gt 0) {
                    $page = $pages[0]
                }
                else {
                    $page = $context.NewPageAsync().GetAwaiter().GetResult()
                }

                Microsoft.PowerShell.Utility\Write-Verbose (
                    "${BrowserType} browser launched successfully."
                )

                # store in global state
                $state = @{
                    Browser    = $browser
                    Context    = $context
                    Page       = $page
                    Playwright = $playwright
                    Port       = $null  # no debugging port — direct Playwright API
                }

                $Global:GenXdevPlaywright[$BrowserType] = $state

                # also set legacy aliases for backward compatibility
                $Global:chromeSession = $null
                $Global:chromeController = $page
                $Global:chrome = $state

                Microsoft.PowerShell.Utility\Write-Verbose (
                    'Browser state stored in $Global:GenXdevPlaywright'
                )

                # Step 6: Position the browser window via Set-WindowPosition

                # Skip window positioning in headless mode — no window to position
                if ($Headless.ToBool()) {
                    Microsoft.PowerShell.Utility\Write-Verbose (
                        'Headless mode — skipping window positioning.'
                    )

                    return $state
                }

                Microsoft.PowerShell.Utility\Write-Verbose (
                    'Looking for browser window...'
                )

                # find the browser window — retry up to 10 seconds
                # search for ms-playwright (bundled) or chrome.exe/msedge.exe
                # (real browser) depending on the launch mode
                $window = $null
                $retries = 0

                do {
                    Microsoft.PowerShell.Utility\Start-Sleep -Milliseconds 200

                    if ($script:useRealBrowser) {
                        # Real browser via channel — look for chrome.exe
                        # or msedge.exe, not ms-playwright
                        $exeName = if ($script:channelName -eq 'msedge') {
                            'msedge'
                        }
                        else {
                            'chrome'
                        }
                        $pwProcesses = @(Microsoft.PowerShell.Management\Get-Process `
                                -Name $exeName -ErrorAction SilentlyContinue |
                                Microsoft.PowerShell.Core\Where-Object {
                                    $PSItem.MainWindowHandle -ne 0
                                } |
                                Microsoft.PowerShell.Utility\Sort-Object {
                                    $PSItem.StartTime
                                } -Descending)
                    }
                    else {
                        # Bundled browser — look for ms-playwright in path
                        $pwProcesses = @(Microsoft.PowerShell.Management\Get-Process `
                                -ErrorAction SilentlyContinue |
                                Microsoft.PowerShell.Core\Where-Object {
                                    $PSItem.Path -and (
                                        $PSItem.Path -like '*\ms-playwright\*'
                                    ) -and $PSItem.MainWindowHandle -ne 0
                                } |
                                Microsoft.PowerShell.Utility\Sort-Object {
                                    $PSItem.StartTime
                                } -Descending)
                    }

                    foreach ($pwProcess in $pwProcesses) {
                        $window = [GenXdev.Helpers.WindowObj]::GetMainWindow(
                            $pwProcess, 1, 80
                        )

                        if ($window -and $window.Length -gt 0) {
                            break
                        }
                    }

                    if ($window -and $window.Length -gt 0) {
                        break
                    }

                    $retries++
                    Microsoft.PowerShell.Utility\Start-Sleep 1
                } while ($retries -lt 50)

                if ($window -and $window.Length -gt 0) {

                    Microsoft.PowerShell.Utility\Write-Verbose (
                        'Browser window found. Delegating positioning to Set-WindowPosition...'
                    )

                    # remove KeysToSend from wpparams — Set-WindowPosition
                    # handles keys separately via its own params
                    if ($wpparams.ContainsKey('KeysToSend')) {
                        $null = $wpparams.Remove('KeysToSend')
                    }

                    $null = GenXdev\Set-WindowPosition @wpparams `
                        -WindowHelper:$window[0] -ErrorAction SilentlyContinue
                }
                else {
                    Microsoft.PowerShell.Utility\Write-Verbose (
                        'Browser window not found within timeout. ' +
                        'Skipping window positioning.'
                    )
                }

                return $state
            }
            catch {

                Microsoft.PowerShell.Utility\Write-Error (
                    "Failed to launch ${BrowserType} browser: $($_.Exception.Message)"
                )

                throw
            }
        }
    }

    end {

        Microsoft.PowerShell.Utility\Write-Verbose (
            'Open-PlayWrightBrowser completed.'
        )
    }
}
<##############################################################################
Part of PowerShell module : GenXdev.Webbrowser.Playwright
Original cmdlet filename  : Resume-WebbrowserTabVideo.ps1
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
Resumes video playback in a YouTube browser tab.

.DESCRIPTION
Finds the active YouTube browser tab and resumes video playback by executing the
play() method on any video elements found in the page. If no YouTube tab is
found, the function throws an error. This function is particularly useful for
automating video playback control in browser sessions.

.EXAMPLE
Resume-WebbrowserTabVideo

.EXAMPLE
wbvideoplay

.NOTES
Requires an active Chrome browser session with at least one YouTube tab open.
The function will throw an error if no YouTube tab is found.
###############################################################################>
function Resume-WebbrowserTabVideo {

    [CmdletBinding()]
    [Alias('wbvideoplay')]
    [System.Diagnostics.CodeAnalysis.SuppressMessageAttribute('PSAvoidGlobalVars', '')]
    param (
    )

    begin {

        # search for a youtube tab in the current browser session
        Microsoft.PowerShell.Utility\Write-Verbose 'Attempting to locate an active YouTube tab...'
        $null = GenXdev\Select-WebbrowserTab -Name '*youtube*'
    }


    process {

        # verify that a youtube tab was successfully found and selected
        if ($null -eq $Global:chromeSession) {

            throw 'No YouTube tab found in current browser session'
        }

        Microsoft.PowerShell.Utility\Write-Verbose 'YouTube tab found - initiating video playback...'

        # execute the play() method on all video elements in the current page
        $null = GenXdev\Get-WebbrowserTabDomNodes 'video' 'e.play()'

        Microsoft.PowerShell.Utility\Write-Verbose 'Video playback successfully resumed'
    }

    end {
    }
}
<##############################################################################
Part of PowerShell module : GenXdev.Webbrowser.Playwright
Original cmdlet filename  : Stop-WebbrowserVideos.ps1
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
Pauses video playback in all active browser sessions.

.DESCRIPTION
Iterates through all active browser sessions and pauses any playing videos by
executing JavaScript commands. The function maintains the original session state
and handles errors gracefully.

.EXAMPLE
Stop-WebbrowserVideos

.EXAMPLE
wbsst
###############################################################################>
function Stop-WebbrowserVideos {

    [CmdletBinding(SupportsShouldProcess)]
    [System.Diagnostics.CodeAnalysis.SuppressMessageAttribute('PSAvoidGlobalVars', '')]
    [System.Diagnostics.CodeAnalysis.SuppressMessageAttribute('PSUseSingularNouns', '')]
    [Alias('wbsst')]
    [Alias('ssst')]
    [Alias('wbvideostop')]
    param(
        [Alias('e')]
        [Parameter(
            Mandatory = $false,
            HelpMessage = 'Opens in Microsoft Edge'
        )]
        [switch] $Edge,
        [Alias('ch')]
        [Parameter(
            Mandatory = $false,
            HelpMessage = 'Opens in Google Chrome'
        )]
        [switch] $Chrome,
        [Alias('c')]
        [Parameter(
            Mandatory = $false,
            HelpMessage = ('Opens in Microsoft Edge or Google Chrome, ' +
                'depending on what the default browser is')
        )]
        [switch] $Chromium,
        [Alias('ff')]
        [Parameter(
            Mandatory = $false,
            HelpMessage = 'Opens in Firefox'
        )]
        [switch] $Firefox,
        [Alias('wk')]
        [Parameter(
            Mandatory = $false,
            HelpMessage = 'Uses the Playwright-managed WebKit browser'
        )]
        [switch] $Webkit
    )

    begin {
        Microsoft.PowerShell.Utility\Write-Verbose 'Starting video pause operation across browser sessions'

        # store the current session reference to restore it later
        $originalSession = $Global:chromeSession
        $originalController = $Global:chromeController

        # ensure we have an active browser session
        if (($null -eq $Global:chromeSessions) -or
            ($Global:chromeSessions.Count -eq 0)) {

            # select a browser tab if none are active
            $null = GenXdev\Select-WebbrowserTab -Chrome:$chrome -Edge:$edge
        }
    }


    process {
        # iterate through each browser session and pause videos
        $Global:chromeSessions | Microsoft.PowerShell.Core\ForEach-Object {

            $currentSession = $_
            if ($null -eq $_) { return }
            if ($PSCmdlet.ShouldProcess('Browser session', 'Pause videos')) {

                try {
                    Microsoft.PowerShell.Utility\Write-Verbose "Attempting to pause videos in session: $currentSession"

                    # select the current tab for processing
                    $null = GenXdev\Select-WebbrowserTab -ByReference $currentSession

                    # execute pause() command on all video elements
                    GenXdev\Get-WebbrowserTabDomNodes 'video' 'e.pause()' -NoAutoSelectTab
                }
                catch {
                    Microsoft.PowerShell.Utility\Write-Warning "Failed to pause videos in session: $currentSession  `r`n$($_.Exception.Message)"
                }
            }
        }
    }

    end {
        Microsoft.PowerShell.Utility\Write-Verbose 'Restoring original browser session reference'
        $Global:chromeSession = $originalSession
        $Global:chromeController = $originalController
    }
}
<##############################################################################
Part of PowerShell module : GenXdev.Webbrowser.Playwright
Original cmdlet filename  : Unprotect-WebbrowserTab.ps1
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
Takes control of a selected web browser tab for interactive manipulation.

.DESCRIPTION
This function enables interactive control of a browser tab that was previously
selected using Select-WebbrowserTab. It provides direct access to the Microsoft
Playwright Page object's properties and methods, allowing for automated browser
interaction.

.PARAMETER UseCurrent
When specified, uses the currently assigned browser tab instead of prompting to
select a new one. This is useful for continuing work with the same tab.

.PARAMETER Force
Forces a browser restart by closing all tabs if no debugging server is detected.
Use this when the browser connection is in an inconsistent state.

.EXAMPLE
Unprotect-WebbrowserTab -UseCurrent

.EXAMPLE
wbctrl -Force
#>
function Unprotect-WebbrowserTab {

    [CmdletBinding(DefaultParameterSetName = 'Default')]
    [System.Diagnostics.CodeAnalysis.SuppressMessageAttribute('PSAvoidGlobalVars', '')]
    [Alias('wbctrl')]
    param(
        [Parameter(
            Mandatory = $false,
            ParameterSetName = 'Default',
            HelpMessage = 'Use current tab instead of selecting a new one'
        )]
        [Alias('current')]
        [switch] $UseCurrent,
        [Parameter(
            Mandatory = $false,
            ParameterSetName = 'Default',
            HelpMessage = 'Restart browser if no debugging server detected'
        )]
        [switch] $Force
    )

    begin {

        Microsoft.PowerShell.Utility\Write-Verbose 'Initializing browser tab control sequence...'

        # get reference to powershell window for manipulation
        $pwshW = GenXdev\Get-PowershellMainWindow
    }


    process {

        if (-not $UseCurrent) {

            Clear-Host

            Microsoft.PowerShell.Utility\Write-Verbose 'Prompting user to select a browser tab...'
            Microsoft.PowerShell.Utility\Write-Host 'Select to which browser tab you want to send commands to'

            # attempt to get list of available browser tabs
            GenXdev\Select-WebbrowserTab -Force:$Force

            if ($Global:ChromeSessions.Length -eq 0) {

                Microsoft.PowerShell.Utility\Write-Host 'No browser tabs are open'
                return
            }

            # get valid tab selection from user
            $tabNumber = 0
            do {
                $tabNumber = Microsoft.PowerShell.Utility\Read-Host 'Enter the number of the tab you want to control'
                $tabNumber = $tabNumber -as [int]
                $tabCount = $Global:ChromeSessions.Length

                if ($tabNumber -lt 0 -or $tabNumber -gt $tabCount - 1) {
                    Microsoft.PowerShell.Utility\Write-Host ('Invalid tab number. Please enter a number ' +
                        "between 0 and $($tabCount-1)")
                    continue
                }
                break
            } while ($true)

            # activate the selected browser tab
            GenXdev\Select-WebbrowserTab $tabNumber
        }

        if (-not $Global:chromeController) {

            Microsoft.PowerShell.Utility\Write-Host 'No ChromeController object found'
            return
        }

        try {
            # maximize the powershell window
            $null = $pwshW.Maximize()
        }
        catch {
            Microsoft.PowerShell.Utility\Write-Verbose "Failed to maximize PowerShell window: $_"
        }

        # create background job for keyboard input
        $null = Microsoft.PowerShell.Core\Start-Job {

            # send keyboard sequence to expose chrome controller object
            $null = GenXdev\Send-Key `
                '{ESCAPE}', 'Clear-Host', '{ENTER}', "`$ChromeController", '.',
            '^( )', 'y' `
                -SendKeyDelayMilliSeconds 500 `
                -WindowHandle ((GenXdev\Get-PowershellMainWindow).Handle)

            # allow time for commands to complete
            $null = Microsoft.PowerShell.Utility\Start-Sleep 3
        }

        try {
            # attempt to bring powershell window to front
            $null = GenXdev\Get-PowershellMainWindow | Microsoft.PowerShell.Core\ForEach-Object {

                $null = $_.Focus()
                $null = GenXdev\Set-ForegroundWindow $_.handle
            }
        }
        catch {
            Microsoft.PowerShell.Utility\Write-Verbose "Failed to set PowerShell window focus: $_"
        }
    }

    end {
    }
}


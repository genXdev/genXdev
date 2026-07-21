<##############################################################################
Part of PowerShell module : GenXdev.Queries.Websites
Original cmdlet filename  : Open-GameOfLife.ps1
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
Opens Conway's Game of Life simulation in a web browser.

.DESCRIPTION
Opens an interactive Conway's Game of Life simulation in a web browser window
with extensive positioning and configuration options. Conway's Game of Life is
a cellular automaton devised by mathematician John Conway in 1970, consisting
of a grid of cells that can be in one of two states: alive or dead.

This function provides comprehensive browser control including window
positioning, browser selection, private browsing, and automated interaction
capabilities. The simulation runs at https://conway.genxdev.net/ and supports
various interaction modes.

.PARAMETER Language
The language preference for the browser interface and content localization.
Sets the Accept-Language HTTP header and determines the language code used
for international support.

.PARAMETER Private
Opens the browser in private/incognito browsing mode for enhanced privacy.
Uses InPrivate mode for Edge and incognito mode for Chrome.

.PARAMETER Force
Forces enabling of the debugging port by stopping existing browser instances
if needed. Useful when browser debugging features are required.

.PARAMETER Edge
Specifically opens the Game of Life in Microsoft Edge browser.

.PARAMETER Chrome
Specifically opens the Game of Life in Google Chrome browser.

.PARAMETER Chromium
Opens the Game of Life in either Microsoft Edge or Google Chrome, depending
on which is set as the default browser. Prefers Chromium-based browsers.

.PARAMETER Firefox
Specifically opens the Game of Life in Mozilla Firefox browser.

.PARAMETER All
Opens the Game of Life in all installed modern browsers simultaneously.

.PARAMETER Monitor
The monitor to use for window placement:
- 0 = Primary monitor
- -1 = Discard positioning
- -2 = Configured secondary monitor (uses $Global:DefaultSecondaryMonitor)
- 1+ = Specific monitor number

.PARAMETER FullScreen
Opens the browser in fullscreen mode using F11 key simulation for an
immersive Game of Life experience.

.PARAMETER Width
The initial width of the browser window in pixels. When not specified, uses
the monitor's working area width or half-width for side positioning.

.PARAMETER Height
The initial height of the browser window in pixels. When not specified, uses
the monitor's working area height or half-height for top/bottom positioning.

.PARAMETER X
The initial X coordinate for window placement. When not specified, uses the
monitor's left edge. Can be specified relative to the selected monitor.

.PARAMETER Y
The initial Y coordinate for window placement. When not specified, uses the
monitor's top edge. Can be specified relative to the selected monitor.

.PARAMETER Left
Positions the browser window on the left half of the screen.

.PARAMETER Right
Positions the browser window on the right half of the screen.

.PARAMETER Top
Positions the browser window on the top half of the screen.

.PARAMETER Bottom
Positions the browser window on the bottom half of the screen.

.PARAMETER Centered
Centers the browser window on the screen using 80% of the screen dimensions.

.PARAMETER ApplicationMode
Hides browser controls for a distraction-free Game of Life experience.
Creates an app-like interface for focused simulation viewing.

.PARAMETER NoBrowserExtensions
Prevents loading of browser extensions. Uses safe mode for Firefox and
--disable-extensions for Chromium browsers.

.PARAMETER DisablePopupBlocker
Disables the browser's popup blocking functionality to allow any simulation
popups or help windows.

.PARAMETER AcceptLang
Sets the browser's Accept-Language HTTP header for internationalization.
Overrides the Language parameter when both are specified.

.PARAMETER KeysToSend
Keystrokes to send to the browser window after opening the simulation. Uses
the same format as the GenXdev\Send-Key cmdlet for automation.

.PARAMETER SendKeyEscape
Escapes control characters when sending keystrokes to the browser window.

.PARAMETER SendKeyHoldKeyboardFocus
Prevents returning keyboard focus to PowerShell after sending keystrokes
to the browser window.

.PARAMETER SendKeyUseShiftEnter
Uses Shift+Enter instead of regular Enter for line breaks when sending
keystrokes to the browser.

.PARAMETER SendKeyDelayMilliSeconds
Delay between sending different key sequences in milliseconds. Useful for
slower systems or complex automation scenarios.

.PARAMETER FocusWindow
Gives focus to the browser window after opening the simulation.

.PARAMETER SetForeground
Brings the browser window to the foreground after opening the simulation.

.PARAMETER Maximize
Maximize the window after positioning

.PARAMETER SetRestored
Restore the window to normal state after positioning
experience.

.PARAMETER RestoreFocus
Returns focus to the PowerShell window after opening the browser. Useful
for automated workflows where you want to continue working in PowerShell.

.PARAMETER NewWindow
Forces creation of a new browser window instead of reusing existing windows
for each simulation instance.

.PARAMETER PassThru
Returns a PowerShell process object representing the browser process for
further automation or monitoring.

.PARAMETER ReturnURL
Don't open the web browser, just return the Game of Life simulation URL
without launching any browser.

.PARAMETER ReturnOnlyURL
After opening the web browser with the simulation, return the URL. Useful
for logging or further processing.

.PARAMETER NoFullScreen
Prevents the browser from opening in fullscreen mode. Overrides the default
fullscreen behavior.

.PARAMETER NoApplicationMode
Shows the browser controls instead of hiding them. Overrides the default
application mode behavior.

.EXAMPLE
Open-GameOfLife -Monitor 1 -FullScreen

Opens Conway's Game of Life in fullscreen mode on monitor 1.

.EXAMPLE
Open-GameOfLife -Language "French" -Chrome -Private

Opens the Game of Life in French language using Chrome in private mode.

.EXAMPLE
gameoflife -m 0 -app

Opens the Game of Life on the primary monitor in application mode using the
alias.

.EXAMPLE
conway -Edge -Left -Width 800 -Height 600

Opens Conway's Game of Life in Microsoft Edge, positioned on the left side
with specific dimensions.

.NOTES
Requires Windows 10+ Operating System.

This cmdlet is designed for interactive use and performs window manipulation
operations. Avoid touching keyboard/mouse during positioning operations.

Conway's Game of Life is a zero-player game, meaning its evolution is
determined by its initial state, requiring no further input from the user.
#>
function Open-GameOfLife {

    [CmdletBinding()]
    [Alias('gameoflife', 'conway')]

    param(
        [ValidateSet(
            'Afrikaans',
            'Akan',
            'Albanian',
            'Amharic',
            'Arabic',
            'Armenian',
            'Azerbaijani',
            'Basque',
            'Belarusian',
            'Bemba',
            'Bengali',
            'Bihari',
            'Bork, bork, bork!',
            'Bosnian',
            'Breton',
            'Bulgarian',
            'Cambodian',
            'Catalan',
            'Cherokee',
            'Chichewa',
            'Chinese (Simplified)',
            'Chinese (Traditional)',
            'Corsican',
            'Croatian',
            'Czech',
            'Danish',
            'Dutch',
            'Elmer Fudd',
            'English',
            'Esperanto',
            'Estonian',
            'Ewe',
            'Faroese',
            'Filipino',
            'Finnish',
            'French',
            'Frisian',
            'Ga',
            'Galician',
            'Georgian',
            'German',
            'Greek',
            'Guarani',
            'Gujarati',
            'Hacker',
            'Haitian Creole',
            'Hausa',
            'Hawaiian',
            'Hebrew',
            'Hindi',
            'Hungarian',
            'Icelandic',
            'Igbo',
            'Indonesian',
            'Interlingua',
            'Irish',
            'Italian',
            'Japanese',
            'Javanese',
            'Kannada',
            'Kazakh',
            'Kinyarwanda',
            'Kirundi',
            'Klingon',
            'Kongo',
            'Korean',
            'Krio (Sierra Leone)',
            'Kurdish',
            'Kurdish (Soranî)',
            'Kyrgyz',
            'Laothian',
            'Latin',
            'Latvian',
            'Lingala',
            'Lithuanian',
            'Lozi',
            'Luganda',
            'Luo',
            'Macedonian',
            'Malagasy',
            'Malay',
            'Malayalam',
            'Maltese',
            'Maori',
            'Marathi',
            'Mauritian Creole',
            'Moldavian',
            'Mongolian',
            'Montenegrin',
            'Nepali',
            'Nigerian Pidgin',
            'Northern Sotho',
            'Norwegian',
            'Norwegian (Nynorsk)',
            'Occitan',
            'Oriya',
            'Oromo',
            'Pashto',
            'Persian',
            'Pirate',
            'Polish',
            'Portuguese (Brazil)',
            'Portuguese (Portugal)',
            'Punjabi',
            'Quechua',
            'Romanian',
            'Romansh',
            'Runyakitara',
            'Russian',
            'Scots Gaelic',
            'Serbian',
            'Serbo-Croatian',
            'Sesotho',
            'Setswana',
            'Seychellois Creole',
            'Shona',
            'Sindhi',
            'Sinhalese',
            'Slovak',
            'Slovenian',
            'Somali',
            'Spanish',
            'Spanish (Latin American)',
            'Sundanese',
            'Swahili',
            'Swedish',
            'Tajik',
            'Tamil',
            'Tatar',
            'Telugu',
            'Thai',
            'Tigrinya',
            'Tonga',
            'Tshiluba',
            'Tumbuka',
            'Turkish',
            'Turkmen',
            'Twi',
            'Uighur',
            'Ukrainian',
            'Urdu',
            'Uzbek',
            'Vietnamese',
            'Welsh',
            'Wolof',
            'Xhosa',
            'Yiddish',
            'Yoruba',
            'Zulu')]
        [Parameter(
            Mandatory = $false,
            Position = 0,
            HelpMessage = ('The language preference for the browser interface ' +
                'and content localization')
        )]
        [string] $Language,
        [Parameter(
            Mandatory = $false,
            HelpMessage = 'Opens in incognito/private browsing mode'
        )]
        [Alias('incognito', 'inprivate')]
        [switch] $Private,
        [Parameter(
            Mandatory = $false,
            HelpMessage = ('Force enable debugging port, stopping existing ' +
                'browsers if needed')
        )]
        [switch] $Force,
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
        [Alias('pw')]
        [Parameter(
            Mandatory = $false,
            HelpMessage = ('Use Playwright-managed browser instead of the ' +
                'OS-installed browser')
        )]
        [switch] $PlayWright,
        [Alias('wk')]
        [Parameter(
            Mandatory = $false,
            HelpMessage = ('Opens the Playwright-managed WebKit browser. ' +
                'Implies -PlayWright')
        )]
        [switch] $Webkit,
        [Parameter(
            Mandatory = $false,
            HelpMessage = 'Run the browser without a visible window'
        )]
        [Alias('hl')]
        [switch] $Headless,
        [Parameter(
            Mandatory = $false,
            HelpMessage = 'Opens in all registered modern browsers'
        )]
        [switch] $All,
        [Alias('m', 'mon')]
        [Parameter(
            Mandatory = $false,
            HelpMessage = ('The monitor to use, 0 = default, -1 is discard, ' +
                '-2 = Configured secondary monitor, defaults to -1, no positioning')
        )]
        [int] $Monitor = -2,
        [Alias('fs', 'f')]
        [Parameter(
            Mandatory = $false,
            HelpMessage = 'Opens in fullscreen mode'
        )]
        [switch] $FullScreen,
        [Parameter(
            Mandatory = $false,
            HelpMessage = 'The initial width of the webbrowser window'
        )]
        [int] $Width = -1,
        [Parameter(
            Mandatory = $false,
            HelpMessage = 'The initial height of the webbrowser window'
        )]
        [int] $Height = -1,
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
        [Alias('a', 'app', 'appmode')]
        [Parameter(
            Mandatory = $false,
            HelpMessage = 'Hide the browser controls'
        )]
        [switch] $ApplicationMode,
        [Alias('de', 'ne', 'NoExtensions')]
        [Parameter(
            Mandatory = $false,
            HelpMessage = 'Prevent loading of browser extensions'
        )]
        [switch] $NoBrowserExtensions,
        [Parameter(
            Mandatory = $false,
            HelpMessage = 'Disable the popup blocker'
        )]
        [Alias('allowpopups')]
        [switch] $DisablePopupBlocker,
        [Alias('lang', 'locale')]
        [Parameter(
            Mandatory = $false,
            HelpMessage = 'Set the browser accept-lang http header'
        )]
        [string] $AcceptLang = $null,
        [Parameter(
            Mandatory = $false,
            HelpMessage = ('Keystrokes to send to the Browser window, ' +
                'see documentation for cmdlet GenXdev\Send-Key')
        )]
        [string[]] $KeysToSend,
        [Alias('Escape')]
        [Parameter(
            Mandatory = $false,
            HelpMessage = 'Escape control characters when sending keystrokes to the browser window.'
        )]
        [switch] $SendKeyEscape,
        [Alias('HoldKeyboardFocus')]
        [Parameter(
            Mandatory = $false,
            HelpMessage = 'Prevent returning keyboard focus to PowerShell after sending keystrokes to the browser window.'
        )]
        [switch] $SendKeyHoldKeyboardFocus,
        [Alias('UseShiftEnter')]
        [Parameter(
            Mandatory = $false,
            HelpMessage = 'Use Shift+Enter instead of regular Enter for line breaks when sending keystrokes to the browser.'
        )]
        [switch] $SendKeyUseShiftEnter,
        [Alias('DelayMilliSeconds')]
        [Parameter(
            Mandatory = $false,
            HelpMessage = 'Delay between sending different key sequences in milliseconds.'
        )]
        [int] $SendKeyDelayMilliSeconds,
        [Parameter(
            Mandatory = $false,
            HelpMessage = 'Focus the browser window after opening'
        )]
        [Alias('fw','focus')]
        [switch] $FocusWindow,
        [Parameter(
            Mandatory = $false,
            HelpMessage = 'Set the browser window to foreground after opening'
        )]
        [Alias('fg')]
        [switch] $SetForeground,
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
            HelpMessage = 'Restore PowerShell window focus after opening the browser.'
        )]
        [Alias('rf', 'bg')]
        [switch] $RestoreFocus,
        [Alias('nw', 'new')]
        [Parameter(
            Mandatory = $false,
            HelpMessage = ("Don't re-use existing browser window, instead, " +
                'create a new one')
        )]
        [switch] $NewWindow,
        [Parameter(
            Mandatory = $false,
            HelpMessage = ('Returns a [System.Diagnostics.Process] object ' +
                'of the browserprocess')
        )]
        [Alias('pt')]
        [switch]$PassThru,

        [Parameter(
            Mandatory = $false,
            HelpMessage = "Don't open webbrowser, just return the url"
        )]
        [switch] $ReturnURL,
        [Parameter(
            Mandatory = $false,
            HelpMessage = 'After opening webbrowser, return the url'
        )]
        [switch] $ReturnOnlyURL,
        [Alias('nfs', 'nf')]
        [Parameter(
            Mandatory = $false,
            HelpMessage = "Don't open in fullscreen mode"
        )]
        [switch] $NoFullScreen,
        [Alias('na', 'napp', 'noappmode')]
        [Parameter(
            Mandatory = $false,
            HelpMessage = 'Do show the browser controls'
        )]
        [switch] $NoApplicationMode,
        [Alias('nb')]
        [Parameter(
            HelpMessage = 'Removes the borders of the browser window.'
        )]
        [switch] $NoBorders,
        [Alias('sbs')]
        [Parameter(
            HelpMessage = 'Position browser window either fullscreen on different monitor than PowerShell, or side by side with PowerShell on the same monitor.'
        )]
        [switch] $SideBySide,
        [Alias('so')]
        [Parameter(
            HelpMessage = 'Use session-only mode for browser profile (cookies and data cleared on close).'
        )]
        [switch] $SessionOnly,
        [Parameter(
            HelpMessage = 'Clear browser session/profile data before opening.'
        )]
        [switch] $ClearSession,
        [Alias('ss', 'FromPreferences')]
        [Parameter(
            HelpMessage = 'Skip restoring previous browser session.'
        )]
        [switch] $SkipSession
    )

    begin {

        # determine language code based on language parameter
        $code = 'www'
        if (-not [string]::IsNullOrWhiteSpace($Language)) {

            # retrieve language code from the language dictionary
            $code = (GenXdev\Get-WebLanguageDictionary)[$Language]

            # set accept-lang header if not already specified
            if (-not $PSBoundParameters.ContainsKey('AcceptLang')) {

                $null = $PSBoundParameters.Add('AcceptLang', $code)
            }
        }

        # copy identical parameters from this function to open-webbrowser
        $invocationArguments = GenXdev\Copy-IdenticalParamValues `
            -BoundParameters $PSBoundParameters `
            -FunctionName 'GenXdev\Open-Webbrowser' `
            -DefaultValues (Microsoft.PowerShell.Utility\Get-Variable `
                -Scope Local `
                -ErrorAction SilentlyContinue)

        # set the game of life simulation url
        $invocationArguments.'Url' = 'https://conway.genxdev.net/'

        # handle return url only scenario
        if ($ReturnOnlyURL) {

            Microsoft.PowerShell.Utility\Write-Output ($invocationArguments.Url)
            return
        }

        # configure application mode if not explicitly specified
        if (-not $PSBoundParameters.ContainsKey('ApplicationMode')) {

            $invocationArguments.'ApplicationMode' = -not $NoApplicationMode
        }

        # configure new window behavior if not explicitly specified
        if (-not $PSBoundParameters.ContainsKey('NewWindow')) {

            $invocationArguments.'NewWindow' = $true
        }

        # configure fullscreen behavior if not explicitly specified
        if (-not $PSBoundParameters.ContainsKey('FullScreen')) {

            $invocationArguments.'FullScreen' = -not $NoFullScreen
        }

        # remove nofullscreen parameter to prevent conflicts
        if ($PSBoundParameters.ContainsKey('NoFullScreen')) {

            $null = $PSBoundParameters.Remove('NoFullScreen') |
                Microsoft.PowerShell.Core\Out-Null
        }

        # remove noapplicationmode parameter to prevent conflicts
        if ($PSBoundParameters.ContainsKey('NoApplicationMode')) {

            $null = $PSBoundParameters.Remove('NoApplicationMode') |
                Microsoft.PowerShell.Core\Out-Null
        }
    }

    process {

        # handle return url only scenario in process block
        if ($ReturnOnlyURL) {

            Microsoft.PowerShell.Utility\Write-Output ($invocationArguments.Url)
            return
        }

        # output verbose information about launching the game of life
        Microsoft.PowerShell.Utility\Write-Verbose (
            "Launching Conway's Game of Life simulation at " +
            $invocationArguments.Url
        )

        # launch browser with the game of life simulation
        GenXdev\Open-Webbrowser @invocationArguments

        # return url if requested
        if ($ReturnURL) {

            Microsoft.PowerShell.Utility\Write-Output ($invocationArguments.Url)
        }
    }

    end {

    }
}
<##############################################################################
Part of PowerShell module : GenXdev.Queries.Websites
Original cmdlet filename  : Open-GenXdevAppCatalog.ps1
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
Opens the GenXdev progressive webapps catalog in a web browser.

.DESCRIPTION
Opens the catalog with published GenXdev progressive webapps in a web browser.
Opens in application mode with fullscreen enabled by default to provide an
optimal viewing experience for the catalog. Supports all standard web browser
configuration options including monitor placement, window sizing, and language
preferences.

The function automatically configures the browser for the best catalog viewing
experience and can open multiple browser instances simultaneously. It provides
comprehensive language support and respects user preferences for browser
selection and positioning.

.PARAMETER Language
The language of the returned search results. Supports a comprehensive list of
international languages including regional variants and special language options.

.PARAMETER Private
Opens in incognito/private browsing mode.

.PARAMETER Force
Force enable debugging port, stopping existing browsers if needed.

.PARAMETER Edge
Opens in Microsoft Edge.

.PARAMETER Chrome
Opens in Google Chrome.

.PARAMETER Chromium
Opens in Microsoft Edge or Google Chrome, depending on what the default browser is.

.PARAMETER Firefox
Opens in Firefox.

.PARAMETER All
Opens in all registered modern browsers.

.PARAMETER Monitor
The monitor to use, 0 = default, -1 is discard, -2 = Configured secondary monitor,
defaults to -1, no positioning.

.PARAMETER FullScreen
Opens in fullscreen mode.

.PARAMETER Width
The initial width of the webbrowser window.

.PARAMETER Height
The initial height of the webbrowser window.

.PARAMETER X
The initial X position of the webbrowser window.

.PARAMETER Y
The initial Y position of the webbrowser window.

.PARAMETER Left
Place browser window on the left side of the screen.

.PARAMETER Right
Place browser window on the right side of the screen.

.PARAMETER Top
Place browser window on the top side of the screen.

.PARAMETER Bottom
Place browser window on the bottom side of the screen.

.PARAMETER Centered
Place browser window in the center of the screen.

.PARAMETER ApplicationMode
Hide the browser controls.

.PARAMETER NoBrowserExtensions
Prevent loading of browser extensions.

.PARAMETER DisablePopupBlocker
Disable the popup blocker.

.PARAMETER AcceptLang
Set the browser accept-lang http header.

.PARAMETER KeysToSend
Keystrokes to send to the Browser window, see documentation for cmdlet
GenXdev\Send-Key.

.PARAMETER SendKeyEscape
Escape control characters when sending keys.

.PARAMETER SendKeyHoldKeyboardFocus
Prevent returning keyboard focus to PowerShell after sending keys.

.PARAMETER SendKeyUseShiftEnter
Send Shift+Enter instead of regular Enter for line breaks.

.PARAMETER SendKeyDelayMilliSeconds
Delay between sending different key sequences in milliseconds.

.PARAMETER FocusWindow
Focus the browser window after opening.

.PARAMETER SetForeground
Set the browser window to foreground after opening.

.PARAMETER Maximize
Maximize the window after positioning

.PARAMETER SetRestored
Restore the window to normal state after positioning

.PARAMETER RestoreFocus
Restore PowerShell window focus.

.PARAMETER NewWindow
Don't re-use existing browser window, instead, create a new one.

.PARAMETER PassThru
Returns a [System.Diagnostics.Process] object of the browserprocess.

.PARAMETER ReturnURL
Don't open webbrowser, just return the url.

.PARAMETER ReturnOnlyURL
After opening webbrowser, return the url.

.PARAMETER NoFullScreen
Don't open in fullscreen mode.

.PARAMETER NoApplicationMode
Do show the browser controls.

.PARAMETER NoBorders
Removes the borders of the browser window.

.PARAMETER SideBySide
Position browser window either fullscreen on different monitor than PowerShell, or side by side with PowerShell on the same monitor.

.PARAMETER SessionOnly
Use alternative settings stored in session for AI preferences.

.PARAMETER ClearSession
Clear alternative settings stored in session for AI preferences.

.PARAMETER SkipSession
Store settings only in persistent preferences without affecting session.

.EXAMPLE
Open-GenXdevAppCatalog -Monitor 1 -ApplicationMode -FullScreen

Opens the GenXdev app catalog on monitor 1 in application mode with fullscreen
enabled.

.EXAMPLE
appcatalog -mon 1

Opens the GenXdev app catalog on monitor 1 using the alias command.
#>
function Open-GenXdevAppCatalog {

    [CmdletBinding()]
    [Alias('appcatalog')]

    param(
        [ValidateSet(
            'Afrikaans',
            'Akan',
            'Albanian',
            'Amharic',
            'Arabic',
            'Armenian',
            'Azerbaijani',
            'Basque',
            'Belarusian',
            'Bemba',
            'Bengali',
            'Bihari',
            'Bork, bork, bork!',
            'Bosnian',
            'Breton',
            'Bulgarian',
            'Cambodian',
            'Catalan',
            'Cherokee',
            'Chichewa',
            'Chinese (Simplified)',
            'Chinese (Traditional)',
            'Corsican',
            'Croatian',
            'Czech',
            'Danish',
            'Dutch',
            'Elmer Fudd',
            'English',
            'Esperanto',
            'Estonian',
            'Ewe',
            'Faroese',
            'Filipino',
            'Finnish',
            'French',
            'Frisian',
            'Ga',
            'Galician',
            'Georgian',
            'German',
            'Greek',
            'Guarani',
            'Gujarati',
            'Hacker',
            'Haitian Creole',
            'Hausa',
            'Hawaiian',
            'Hebrew',
            'Hindi',
            'Hungarian',
            'Icelandic',
            'Igbo',
            'Indonesian',
            'Interlingua',
            'Irish',
            'Italian',
            'Japanese',
            'Javanese',
            'Kannada',
            'Kazakh',
            'Kinyarwanda',
            'Kirundi',
            'Klingon',
            'Kongo',
            'Korean',
            'Krio (Sierra Leone)',
            'Kurdish',
            'Kurdish (Soranî)',
            'Kyrgyz',
            'Laothian',
            'Latin',
            'Latvian',
            'Lingala',
            'Lithuanian',
            'Lozi',
            'Luganda',
            'Luo',
            'Macedonian',
            'Malagasy',
            'Malay',
            'Malayalam',
            'Maltese',
            'Maori',
            'Marathi',
            'Mauritian Creole',
            'Moldavian',
            'Mongolian',
            'Montenegrin',
            'Nepali',
            'Nigerian Pidgin',
            'Northern Sotho',
            'Norwegian',
            'Norwegian (Nynorsk)',
            'Occitan',
            'Oriya',
            'Oromo',
            'Pashto',
            'Persian',
            'Pirate',
            'Polish',
            'Portuguese (Brazil)',
            'Portuguese (Portugal)',
            'Punjabi',
            'Quechua',
            'Romanian',
            'Romansh',
            'Runyakitara',
            'Russian',
            'Scots Gaelic',
            'Serbian',
            'Serbo-Croatian',
            'Sesotho',
            'Setswana',
            'Seychellois Creole',
            'Shona',
            'Sindhi',
            'Sinhalese',
            'Slovak',
            'Slovenian',
            'Somali',
            'Spanish',
            'Spanish (Latin American)',
            'Sundanese',
            'Swahili',
            'Swedish',
            'Tajik',
            'Tamil',
            'Tatar',
            'Telugu',
            'Thai',
            'Tigrinya',
            'Tonga',
            'Tshiluba',
            'Tumbuka',
            'Turkish',
            'Turkmen',
            'Twi',
            'Uighur',
            'Ukrainian',
            'Urdu',
            'Uzbek',
            'Vietnamese',
            'Welsh',
            'Wolof',
            'Xhosa',
            'Yiddish',
            'Yoruba',
            'Zulu')]
        [parameter(
            Mandatory = $false,
            Position = 0,
            HelpMessage = 'The language of the returned search results'
        )]
        [string] $Language,
        [Parameter(
            Mandatory = $false,
            HelpMessage = 'Opens in incognito/private browsing mode'
        )]
        [Alias('incognito', 'inprivate')]
        [switch] $Private,
        [Parameter(
            Mandatory = $false,
            HelpMessage = ('Force enable debugging port, stopping existing ' +
                'browsers if needed')
        )]
        [switch] $Force,
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
        [Alias('pw')]
        [Parameter(
            Mandatory = $false,
            HelpMessage = ('Use Playwright-managed browser instead of the ' +
                'OS-installed browser')
        )]
        [switch] $PlayWright,
        [Alias('wk')]
        [Parameter(
            Mandatory = $false,
            HelpMessage = ('Opens the Playwright-managed WebKit browser. ' +
                'Implies -PlayWright')
        )]
        [switch] $Webkit,
        [Parameter(
            Mandatory = $false,
            HelpMessage = 'Run the browser without a visible window'
        )]
        [Alias('hl')]
        [switch] $Headless,
        [Parameter(
            Mandatory = $false,
            HelpMessage = 'Opens in all registered modern browsers'
        )]
        [switch] $All,
        [Alias('m', 'mon')]
        [Parameter(
            Mandatory = $false,
            HelpMessage = ('The monitor to use, 0 = default, -1 is discard, ' +
                '-2 = Configured secondary monitor, defaults to -1, no positioning')
        )]
        [int] $Monitor = -2,
        [Alias('fs', 'f')]
        [Parameter(
            Mandatory = $false,
            HelpMessage = 'Opens in fullscreen mode'
        )]
        [switch] $FullScreen,
        [Alias('sw')]
        [Parameter(
            Mandatory = $false,
            HelpMessage = 'Show the browser window (not minimized or hidden)'
        )]
        [switch] $ShowWindow,
        [Parameter(
            Mandatory = $false,
            HelpMessage = 'The initial width of the webbrowser window'
        )]
        [int] $Width = -1,
        [Parameter(
            Mandatory = $false,
            HelpMessage = 'The initial height of the webbrowser window'
        )]
        [int] $Height = -1,
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
        [Alias('a', 'app', 'appmode')]
        [Parameter(
            Mandatory = $false,
            HelpMessage = 'Hide the browser controls'
        )]
        [switch] $ApplicationMode,
        [Alias('de', 'ne', 'NoExtensions')]
        [Parameter(
            Mandatory = $false,
            HelpMessage = 'Prevent loading of browser extensions'
        )]
        [switch] $NoBrowserExtensions,
        [Parameter(
            Mandatory = $false,
            HelpMessage = 'Disable the popup blocker'
        )]
        [Alias('allowpopups')]
        [switch] $DisablePopupBlocker,
        [Alias('lang', 'locale')]
        [Parameter(
            Mandatory = $false,
            HelpMessage = 'Set the browser accept-lang http header'
        )]
        [string] $AcceptLang = $null,
        [Parameter(
            Mandatory = $false,
            HelpMessage = ('Keystrokes to send to the Browser window, ' +
                'see documentation for cmdlet GenXdev\Send-Key')
        )]
        [string[]] $KeysToSend,
        [Alias('Escape')]
        [Parameter(
            Mandatory = $false,
            HelpMessage = 'Escape control characters when sending keys'
        )]
        [switch] $SendKeyEscape,
        [Alias('HoldKeyboardFocus')]
        [Parameter(
            Mandatory = $false,
            HelpMessage = ('Prevent returning keyboard focus to PowerShell ' +
                'after sending keys')
        )]
        [switch] $SendKeyHoldKeyboardFocus,
        [Alias('UseShiftEnter')]
        [Parameter(
            Mandatory = $false,
            HelpMessage = ('Send Shift+Enter instead of regular Enter for ' +
                'line breaks')
        )]
        [switch] $SendKeyUseShiftEnter,
        [Alias('DelayMilliSeconds')]
        [Parameter(
            Mandatory = $false,
            HelpMessage = ('Delay between sending different key sequences in milliseconds')
        )]
        [int] $SendKeyDelayMilliSeconds,
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
            HelpMessage = 'Restore PowerShell window focus'
        )]
        [Alias('rf', 'bg')]
        [switch] $RestoreFocus,
        [Alias('nw', 'new')]
        [Parameter(
            Mandatory = $false,
            HelpMessage = ("Don't re-use existing browser window, instead, " +
                'create a new one')
        )]
        [switch] $NewWindow,
        [Parameter(
            Mandatory = $false,
            HelpMessage = ('Returns a [System.Diagnostics.Process] object ' +
                'of the browserprocess')
        )]
        [Alias('pt')]
        [switch]$PassThru,
        [parameter(
            Mandatory = $false,
            HelpMessage = "Don't open webbrowser, just return the url"
        )]
        [switch] $ReturnURL,
        [parameter(
            Mandatory = $false,
            HelpMessage = 'After opening webbrowser, return the url'
        )]
        [switch] $ReturnOnlyURL,
        [Alias('nfs', 'nf')]
        [Parameter(
            Mandatory = $false,
            HelpMessage = "Don't open in fullscreen mode"
        )]
        [switch] $NoFullScreen,
        [Alias('na', 'napp', 'noappmode')]
        [Parameter(
            Mandatory = $false,
            HelpMessage = 'Do show the browser controls'
        )]
        [switch] $NoApplicationMode,
        [Parameter(
            HelpMessage = 'Removes the borders of the browser window.'
        )]
        [Alias('nb')]
        [switch] $NoBorders,
        [Parameter(
            HelpMessage = 'Position browser window either fullscreen on different monitor than PowerShell, or side by side with PowerShell on the same monitor.'
        )]
        [Alias('sbs')]
        [switch] $SideBySide,
        [Parameter(
            HelpMessage = 'Use alternative settings stored in session for AI preferences.'
        )]
        [switch] $SessionOnly,
        [Parameter(
            HelpMessage = 'Clear alternative settings stored in session for AI preferences.'
        )]
        [switch] $ClearSession,
        [Parameter(
            HelpMessage = 'Store settings only in persistent preferences without affecting session.'
        )]
        [Alias('FromPreferences')]
        [switch] $SkipSession
    )

    begin {

        # determine google domain based on language
        $code = 'www'
        if (-not [string]::IsNullOrWhiteSpace($Language)) {

            # retrieve language code from web language dictionary
            $code = (GenXdev\Get-WebLanguageDictionary)[$Language]

            # add accept-lang header if not already specified by user
            if (-not $PSBoundParameters.ContainsKey('AcceptLang')) {

                $null = $PSBoundParameters.Add('AcceptLang', $code)
            }
        }

        # construct and encode the google search url
        $invocationArguments = GenXdev\Copy-IdenticalParamValues `
            -BoundParameters $PSBoundParameters `
            -FunctionName 'GenXdev\Open-Webbrowser' `
            -DefaultValues (Microsoft.PowerShell.Utility\Get-Variable `
                -Scope Local `
                -ErrorAction SilentlyContinue)

        # set the target url to genxdev progressive webapps catalog
        $invocationArguments.'Url' = 'https://genxdev.net/'

        # handle return url only scenario
        if ($ReturnOnlyURL) {

            # output the url and exit early
            Microsoft.PowerShell.Utility\Write-Output ($invocationArguments.Url)
            return
        }

        # configure application mode if not explicitly set by user
        if (-not $PSBoundParameters.ContainsKey('ApplicationMode')) {

            # enable application mode unless explicitly disabled
            $invocationArguments.'ApplicationMode' = -not $NoApplicationMode
        }

        # configure new window behavior if not explicitly set by user
        if (-not $PSBoundParameters.ContainsKey('NewWindow')) {

            # force new window creation for catalog viewing
            $invocationArguments.'NewWindow' = $true
        }

        # configure fullscreen behavior if not explicitly set by user
        if (-not $PSBoundParameters.ContainsKey('FullScreen')) {

            # enable fullscreen unless explicitly disabled
            $invocationArguments.'FullScreen' = -not $NoFullScreen
        }

        # clean up parameters that were handled locally
        if ($PSBoundParameters.ContainsKey('NoFullScreen')) {

            # remove nofullscreen parameter from bound parameters
            $null = $PSBoundParameters.Remove('NoFullScreen') |
                Microsoft.PowerShell.Core\Out-Null
        }

        # clean up duplicate nofullscreen parameter check
        if ($PSBoundParameters.ContainsKey('NoFullScreen')) {

            # remove second occurrence of nofullscreen parameter
            $null = $PSBoundParameters.Remove('NoFullScreen') |
                Microsoft.PowerShell.Core\Out-Null
        }
    }

    process {

        # handle return url only scenario in process block
        if ($ReturnOnlyURL) {

            # output the url and exit early
            Microsoft.PowerShell.Utility\Write-Output ($invocationArguments.Url)
            return
        }

        # output verbose information about opening the catalog
        Microsoft.PowerShell.Utility\Write-Verbose (
            'Opening GenXdev progressive webapps catalog'
        )

        # launch browser with configured parameters
        GenXdev\Open-Webbrowser @invocationArguments

        # return url if requested by user
        if ($ReturnURL) {

            # output the final url that was opened
            Microsoft.PowerShell.Utility\Write-Output ($invocationArguments.Url)
        }
    }

    end {

    }
}
<##############################################################################
Part of PowerShell module : GenXdev.Queries.Websites
Original cmdlet filename  : Open-Timeline.ps1
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
Opens an interactive timeline showing current time, date, century, and
millennium.

.DESCRIPTION
Opens a web-based interactive timeline.
Supports multiple languages and visual customization options.

.PARAMETER Private
Opens in incognito/private browsing mode

.PARAMETER Force
Force enable debugging port, stopping existing browsers if needed

.PARAMETER Edge
Opens in Microsoft Edge

.PARAMETER Chrome
Opens in Google Chrome

.PARAMETER Chromium
Opens in Microsoft Edge or Google Chrome, depending on what the default
browser is

.PARAMETER Firefox
Opens in Firefox

.PARAMETER All
Opens in all registered modern browsers

.PARAMETER Monitor
The monitor to use, 0 = default, -1 is discard, -2 = Configured secondary
monitor, defaults to Global:DefaultSecondaryMonitor or 2 if not found

.PARAMETER NoFullScreen
Don't open in fullscreen mode

.PARAMETER Width
The initial width of the webbrowser window

.PARAMETER Height
The initial height of the webbrowser window

.PARAMETER X
The initial X position of the webbrowser window

.PARAMETER Y
The initial Y position of the webbrowser window

.PARAMETER Left
Place browser window on the left side of the screen

.PARAMETER Right
Place browser window on the right side of the screen

.PARAMETER Top
Place browser window on the top side of the screen

.PARAMETER Bottom
Place browser window on the bottom side of the screen

.PARAMETER Centered
Place browser window in the center of the screen

.PARAMETER NoApplicationMode
Do show the browser controls

.PARAMETER BrowserExtensions
Don't prevent loading of browser extensions

.PARAMETER AcceptLang
Set the browser accept-lang http header

.PARAMETER KeysToSend
Keystrokes to send to the Browser window, see documentation for cmdlet
GenXdev\Send-Key

.PARAMETER FocusWindow
Focus the browser window after opening

.PARAMETER SetForeground
Set the browser window to foreground after opening

.PARAMETER Maximize
Maximize the window after positioning

.PARAMETER SetRestored
Restore the window to normal state after positioning

.PARAMETER RestoreFocus
Restore PowerShell window focus

.PARAMETER NewWindow
Don't re-use existing browser window, instead, create a new one

.PARAMETER PassThru
Returns a [System.Diagnostics.Process] object of the browserprocess

.PARAMETER SpectateOnly
Don't start a new game, just watch the AI play

.PARAMETER ReturnURL
Don't open webbrowser, just return the url

.PARAMETER ReturnOnlyURL
After opening webbrowser, return the url

.PARAMETER Language
Override default browser language, or select [All] for rotation of all
languages every minute

.PARAMETER DragedNodeBackground
Overwrite the css-color-style for painting the currently dragged node's
background

.PARAMETER FocusedNodeBackground
Overwrite the css-color-style for painting the focused node's (In center)
background

.PARAMETER FocusedNodeForeground
Overwrite the css-color-style for painting the focused node's (in center)
foreground text

.PARAMETER UnFocusedNodeBackground
Overwrite the css-color-style for painting the focused node's (In center)
background

.PARAMETER UnFocusedNodeForeground
Overwrite the css-color-style for painting the unfocused node's (in center)
foreground text

.PARAMETER BorderLightColor
Overwrite the default css border-light-color colorstyle

.PARAMETER BorderDarkColor
Overwrite the default css border-dark-color colorstyle

.PARAMETER BorderWidth
Overwrite the default width for painting the node borders

.PARAMETER RotationDelaySeconds
Overwrite the default width for the background rotation delay

.PARAMETER FullScreen
Opens in fullscreen mode

.PARAMETER ApplicationMode
Hide the browser controls

.PARAMETER NoBrowserExtensions
Prevent loading of browser extensions

.PARAMETER DisablePopupBlocker
Disable the popup blocker

.PARAMETER SendKeyEscape
Escape control characters when sending keys

.PARAMETER SendKeyHoldKeyboardFocus
Prevent returning keyboard focus to PowerShell after sending keys

.PARAMETER SendKeyUseShiftEnter
Send Shift+Enter instead of regular Enter for line breaks

.PARAMETER SendKeyDelayMilliSeconds
Delay between sending different key sequences in milliseconds

.PARAMETER NoBorders
Removes the borders of the browser window

.PARAMETER SideBySide
Position browser window either fullscreen on different monitor than
PowerShell, or side by side with PowerShell on the same monitor

.PARAMETER SessionOnly
Use alternative settings stored in session for AI preferences

.PARAMETER ClearSession
Clear alternative settings stored in session for AI preferences

.PARAMETER SkipSession
Store settings only in persistent preferences without affecting session

.EXAMPLE
Open-Timeline -Language "English"

Opens an interactive timeline with Van Gogh-inspired visuals in English.

.EXAMPLE
timeline -mon 2

Opens timeline on monitor 2 using aliases.

.EXAMPLE
Open-Timeline -Private -Chrome -FullScreen

Opens timeline in Chrome incognito mode in fullscreen.
#>
function Open-Timeline {

    [CmdletBinding()]
    [Alias('timeline')]

    param(
        [Parameter(
            Mandatory = $false,
            HelpMessage = 'Opens in incognito/private browsing mode'
        )]
        [Alias('incognito', 'inprivate')]
        [switch] $Private,
        [Parameter(
            Mandatory = $false,
            HelpMessage = 'Force enable debugging port, stopping existing browsers if needed'
        )]
        [switch] $Force,
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
            HelpMessage = 'Opens in Microsoft Edge or Google Chrome, depending on what the default browser is'
        )]
        [switch] $Chromium,
        [Alias('ff')]
        [Parameter(
            Mandatory = $false,
            HelpMessage = 'Opens in Firefox'
        )]
        [switch] $Firefox,
        [Alias('pw')]
        [Parameter(
            Mandatory = $false,
            HelpMessage = ('Use Playwright-managed browser instead of the ' +
                'OS-installed browser')
        )]
        [switch] $PlayWright,
        [Alias('wk')]
        [Parameter(
            Mandatory = $false,
            HelpMessage = ('Opens the Playwright-managed WebKit browser. ' +
                'Implies -PlayWright')
        )]
        [switch] $Webkit,
        [Parameter(
            Mandatory = $false,
            HelpMessage = 'Run the browser without a visible window'
        )]
        [Alias('hl')]
        [switch] $Headless,
        [Parameter(
            Mandatory = $false,
            HelpMessage = 'Opens in all registered modern browsers'
        )]
        [switch] $All,
        [Alias('m', 'mon')]
        [Parameter(
            Mandatory = $false,
            HelpMessage = "The monitor to use, 0 = default, -1 is discard, -2 = Configured secondary monitor, defaults to `Global:DefaultSecondaryMonitor or 2 if not found"
        )]
        [int] $Monitor = -2,
        [Alias('nfs', 'nf')]
        [Parameter(
            Mandatory = $false,
            HelpMessage = "Don't open in fullscreen mode"
        )]
        [switch] $NoFullScreen,
        [Parameter(
            Mandatory = $false,
            HelpMessage = 'The initial width of the webbrowser window'
        )]
        [int] $Width = -1,
        [Parameter(
            Mandatory = $false,
            HelpMessage = 'The initial height of the webbrowser window'
        )]
        [int] $Height = -1,
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
        [Alias('na', 'napp', 'noappmode')]
        [Parameter(
            Mandatory = $false,
            HelpMessage = 'Do show the browser controls'
        )]
        [switch] $NoApplicationMode,
        [Alias('ext', 'Extensions')]
        [Parameter(
            Mandatory = $false,
            HelpMessage = "Don't prevent loading of browser extensions"
        )]
        [switch] $BrowserExtensions,
        [Alias('lang', 'locale')]
        [Parameter(
            Mandatory = $false,
            HelpMessage = 'Set the browser accept-lang http header'
        )]
        [string] $AcceptLang = $null,
        [Parameter(
            Mandatory = $false,
            HelpMessage = ('Keystrokes to send to the Browser window, ' +
                'see documentation for cmdlet GenXdev\Send-Key')
        )]
        [string[]] $KeysToSend,
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
            HelpMessage = 'Restore PowerShell window focus'
        )]
        [Alias('rf', 'bg')]
        [switch] $RestoreFocus,
        [Alias('nw', 'new')]
        [Parameter(
            Mandatory = $false,
            HelpMessage = "Don't re-use existing browser window, instead, create a new one"
        )]
        [switch] $NewWindow,
        [Parameter(
            Mandatory = $false,
            HelpMessage = 'Returns a [System.Diagnostics.Process] object of the browserprocess'
        )]
        [Alias('pt')]
        [switch]$PassThru,
        [parameter(
            Mandatory = $false,
            HelpMessage = "Don't start a new game, just watch the AI play"
        )]
        [switch] $SpectateOnly,
        [parameter(
            Mandatory = $false,
            HelpMessage = "Don't open webbrowser, just return the url"
        )]
        [switch] $ReturnURL,
        [parameter(
            Mandatory = $false,
            HelpMessage = 'After opening webbrowser, return the url'
        )]
        [switch] $ReturnOnlyURL,
        [parameter(
            Mandatory = $false,
            Position = 1,
            HelpMessage = 'Override default browser language, or select [All] for rotation of all languages every minute'
        )]
        [ValidateSet(
            'English',
            'Kotava',
            'Arabic',
            'German',
            'Spanish',
            'French',
            'Italian',
            'Japanese',
            'Korean',
            'Dutch',
            'Polish',
            'Portuguese',
            'Russian',
            'Thai',
            'Turkish',
            'Ukrainian',
            'Vietnamese',
            'Yiddish',
            'Chinese',
            '[All]')]
        [string] $Language,
        [parameter(
            Mandatory = $false,
            HelpMessage = "Overwrite the css-color-style for painting the currently dragged node's background"
        )]
        [string]$DragedNodeBackground = $null,
        [parameter(
            Mandatory = $false,
            HelpMessage = "Overwrite the css-color-style for painting the focused node's (In center) background"
        )]
        [string]$FocusedNodeBackground = $null,
        [parameter(
            Mandatory = $false,
            HelpMessage = "Overwrite the css-color-style for painting the focused node's (in center) foreground text"
        )]
        [string]$FocusedNodeForeground = $null,
        [parameter(
            Mandatory = $false,
            HelpMessage = "Overwrite the css-color-style for painting the focused node's (In center) background"
        )]
        [string]$UnFocusedNodeBackground = $null,
        [parameter(
            Mandatory = $false,
            HelpMessage = "Overwrite the css-color-style for painting the unfocused node's (in center) foreground text"
        )]
        [string]$UnFocusedNodeForeground = $null,
        [parameter(
            Mandatory = $false,
            HelpMessage = 'Overwrite the default css border-light-color colorstyle'
        )]
        [string]$BorderLightColor = $null,
        [parameter(
            Mandatory = $false,
            HelpMessage = 'Overwrite the default css border-dark-color colorstyle'
        )]
        [string]$BorderDarkColor = $null,
        [parameter(
            Mandatory = $false,
            HelpMessage = 'Overwrite the default width for painting the node borders'
        )]
        [int] $BorderWidth = 1,
        [parameter(
            Mandatory = $false,
            HelpMessage = 'Overwrite the default width for the background rotation delay'
        )]
        [int] $RotationDelaySeconds = 15,
        [Parameter(
            Mandatory = $false,
            HelpMessage = 'Opens in fullscreen mode'
        )]
        [Alias('fs', 'f')]
        [switch] $FullScreen,
        [Parameter(
            Mandatory = $false,
            HelpMessage = 'Hide the browser controls'
        )]
        [Alias('a', 'app', 'appmode')]
        [switch] $ApplicationMode,
        [Parameter(
            Mandatory = $false,
            HelpMessage = 'Prevent loading of browser extensions'
        )]
        [Alias('de', 'ne', 'NoExtensions')]
        [switch] $NoBrowserExtensions,
        [Parameter(
            Mandatory = $false,
            HelpMessage = 'Disable the popup blocker'
        )]
        [Alias('allowpopups')]
        [switch] $DisablePopupBlocker,
        [Alias('Escape')]
        [Parameter(
            Mandatory = $false,
            HelpMessage = 'Escape control characters when sending keys'
        )]
        [switch] $SendKeyEscape,
        [Alias('HoldKeyboardFocus')]
        [Parameter(
            Mandatory = $false,
            HelpMessage = 'Prevent returning keyboard focus to PowerShell after sending keys'
        )]
        [switch] $SendKeyHoldKeyboardFocus,
        [Alias('UseShiftEnter')]
        [Parameter(
            Mandatory = $false,
            HelpMessage = 'Send Shift+Enter instead of regular Enter for line breaks'
        )]
        [switch] $SendKeyUseShiftEnter,
        [Alias('DelayMilliSeconds')]
        [Parameter(
            Mandatory = $false,
            HelpMessage = 'Delay between sending different key sequences in milliseconds'
        )]
        [int] $SendKeyDelayMilliSeconds,
        [Parameter(
            HelpMessage = 'Removes the borders of the browser window.'
        )]
        [Alias('nb')]
        [switch] $NoBorders,
        [Parameter(
            HelpMessage = 'Position browser window either fullscreen on different monitor than PowerShell, or side by side with PowerShell on the same monitor.'
        )]
        [Alias('sbs')]
        [switch] $SideBySide,
        [Parameter(
            HelpMessage = 'Use alternative settings stored in session for AI preferences'
        )]
        [switch] $SessionOnly,
        [Parameter(
            HelpMessage = 'Clear alternative settings stored in session for AI preferences'
        )]
        [switch] $ClearSession,
        [Parameter(
            HelpMessage = 'Store settings only in persistent preferences without affecting session'
        )]
        [Alias('FromPreferences')]
        [switch] $SkipSession
    )

    begin {

        # define supported languages for the timeline interface
        $supportedLanguages = @(
            @{ code = 'en'; name = 'English' }
            @{ code = 'avk'; name = 'Kotava' }
            @{ code = 'ar'; name = 'Arabic' }
            @{ code = 'de'; name = 'German' }
            @{ code = 'es'; name = 'Spanish' }
            @{ code = 'fr'; name = 'French' }
            @{ code = 'it'; name = 'Italian' }
            @{ code = 'ja'; name = 'Japanese' }
            @{ code = 'ko'; name = 'Korean' }
            @{ code = 'nl'; name = 'Dutch' }
            @{ code = 'pl'; name = 'Polish' }
            @{ code = 'pt'; name = 'Portuguese' }
            @{ code = 'ru'; name = 'Russian' }
            @{ code = 'th'; name = 'Thai' }
            @{ code = 'tr'; name = 'Turkish' }
            @{ code = 'uk'; name = 'Ukrainian' }
            @{ code = 'vi'; name = 'Vietnamese' }
            @{ code = 'yi'; name = 'Yiddish' }
            @{ code = 'zh'; name = 'Chinese' }
        )

        # remove parameters specific to this function before passing to
        # open-webbrowser
        if ($PSBoundParameters.ContainsKey('Language')) {
            $null = $PSBoundParameters.Remove('Language')
        }

        if ($PSBoundParameters.ContainsKey('DragedNodeBackground')) {
            $null = $PSBoundParameters.Remove('DragedNodeBackground')
        }

        if ($PSBoundParameters.ContainsKey('FocusedNodeBackground')) {
            $null = $PSBoundParameters.Remove('FocusedNodeBackground')
        }

        if ($PSBoundParameters.ContainsKey('FocusedNodeForeground')) {
            $null = $PSBoundParameters.Remove('FocusedNodeForeground')
        }

        if ($PSBoundParameters.ContainsKey('UnFocusedNodeBackground')) {
            $null = $PSBoundParameters.Remove('UnFocusedNodeBackground')
        }

        if ($PSBoundParameters.ContainsKey('UnFocusedNodeForeground')) {
            $null = $PSBoundParameters.Remove('UnFocusedNodeForeground')
        }

        if ($PSBoundParameters.ContainsKey('BorderLightColor')) {
            $null = $PSBoundParameters.Remove('BorderLightColor')
        }

        if ($PSBoundParameters.ContainsKey('BorderDarkColor')) {
            $null = $PSBoundParameters.Remove('BorderDarkColor')
        }

        if ($PSBoundParameters.ContainsKey('BorderWidth')) {
            $null = $PSBoundParameters.Remove('BorderWidth')
        }

        if ($PSBoundParameters.ContainsKey('RotationDelaySeconds')) {
            $null = $PSBoundParameters.Remove('RotationDelaySeconds')
        }

        if ($PSBoundParameters.ContainsKey('ReturnUrl')) {
            $null = $PSBoundParameters.Remove('ReturnUrl')
        }
    }

    process {

        # construct query parameters for the timeline url
        [string] $queryParams = ("?BorderWidth=$BorderWidth" +
            "&RotationDelaySeconds=$RotationDelaySeconds")

        # output verbose information about parameter construction
        Microsoft.PowerShell.Utility\Write-Verbose ('Building URL with ' +
            "parameters: $queryParams")

        # handle language selection if specified by user
        if (-not [String]::IsNullOrWhiteSpace($Language)) {

            # lookup language code from supported languages array
            $langCode = $supportedLanguages |
                Microsoft.PowerShell.Core\Where-Object { $_.name -eq $Language } |
                Microsoft.PowerShell.Utility\Select-Object -ExpandProperty code

            # append language parameter to query string
            $queryParams += "&lang=$langCode"
        }

        # add optional appearance parameters if specified by user
        if (-not [String]::IsNullOrWhiteSpace($FocusedNodeBackground)) {
            $queryParams += "&FocusedNodeBackground=$FocusedNodeBackground"
        }

        if (-not [String]::IsNullOrWhiteSpace($FocusedNodeForeground)) {
            $queryParams += "&FocusedNodeForeground=$FocusedNodeForeground"
        }

        if (-not [String]::IsNullOrWhiteSpace($UnFocusedNodeBackground)) {
            $queryParams += "&UnFocusedNodeBackground=$UnFocusedNodeBackground"
        }

        if (-not [String]::IsNullOrWhiteSpace($UnFocusedNodeForeground)) {
            $queryParams += "&UnFocusedNodeForeground=$UnFocusedNodeForeground"
        }

        if (-not [String]::IsNullOrWhiteSpace($BorderLightColor)) {
            $queryParams += "&BorderLightColor=$BorderLightColor"
        }

        if (-not [String]::IsNullOrWhiteSpace($BorderDarkColor)) {
            $queryParams += "&BorderDarkColor=$BorderDarkColor"
        }

        if (-not [String]::IsNullOrWhiteSpace($DragedNodeBackground)) {
            $queryParams += "&DragedNodeBackground=$DragedNodeBackground"
        }

        # construct the complete timeline url
        $url = "https://timeline.genxdev.net/$queryParams"

        # handle return url only scenario without opening browser
        if ($ReturnOnlyURL) {
            Microsoft.PowerShell.Utility\Write-Output $url
            return
        }

        # configure default browser behavior settings for timeline display
        if (-not $PSBoundParameters.ContainsKey('NoApplicationMode')) {

            $null = $PSBoundParameters.Add('ApplicationMode', $true)

            if (-not $PSBoundParameters.ContainsKey('NewWindow')) {

                $null = $PSBoundParameters.Add('NewWindow', $true)
            }

            if (-not $PSBoundParameters.ContainsKey('FullScreen')) {

                $null = $PSBoundParameters.Add('FullScreen', $true)
            }
        }

        # remove the nofullscreen parameter as it's not used by open-webbrowser
        if ($PSBoundParameters.ContainsKey('NoFullScreen')) {

            $null = $PSBoundParameters.Remove('NoFullScreen')
        }

        # remove the noapplicationmode parameter as it's not used by
        # open-webbrowser
        if ($PSBoundParameters.ContainsKey('NoApplicationMode')) {

            $null = $PSBoundParameters.Remove('NoApplicationMode')
        }

        # configure browser extension settings based on user preference
        if (-not $PSBoundParameters.ContainsKey('BrowserExtensions')) {

            $null = $PSBoundParameters.Add('NoBrowserExtensions', $true)
        }
        else {

            $null = $PSBoundParameters.Remove('BrowserExtensions')
        }

        # add the constructed url to the parameters for open-webbrowser
        if (-not $PSBoundParameters.ContainsKey('Url')) {

            $null = $PSBoundParameters.Add('Url', $url)
        }

        # copy matching parameters between this function and open-webbrowser
        $invocationArguments = GenXdev\Copy-IdenticalParamValues `
            -BoundParameters $PSBoundParameters `
            -FunctionName 'GenXdev\Open-Webbrowser' `
            -DefaultValues (Microsoft.PowerShell.Utility\Get-Variable `
                -Scope Local -ErrorAction SilentlyContinue)

        # open the timeline in the web browser with configured parameters
        GenXdev\Open-Webbrowser @invocationArguments

        # return url if requested by user
        if ($ReturnURL) {

            Microsoft.PowerShell.Utility\Write-Output $url
        }
    }

    end {
    }
}
<##############################################################################
Part of PowerShell module : GenXdev.Queries.Websites
Original cmdlet filename  : Open-ViralSimulation.ps1
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
Opens a viral simulation game in a web browser with extensive configuration
options.

.DESCRIPTION
Opens the viral simulation game at https://viral.genxdev.net/ in a specified
web browser with configurable window settings, positioning, and behavior
options. Supports multiple browsers, private browsing, application mode, and
comprehensive window management features.

The function provides an interactive viral simulation experience with features
like:
- Multiple browser support (Edge, Chrome, Firefox)
- Window positioning and sizing controls
- Full-screen and application mode options
- Private browsing capabilities
- Keyboard automation support
- Multi-monitor support

.PARAMETER Language
The language for the web content display and browser language settings.

.PARAMETER Private
Opens in incognito/private browsing mode.

.PARAMETER Force
Force enable debugging port, stopping existing browsers if needed.

.PARAMETER Edge
Opens in Microsoft Edge.

.PARAMETER Chrome
Opens in Google Chrome.

.PARAMETER Chromium
Opens in Microsoft Edge or Google Chrome, depending on default browser.

.PARAMETER Firefox
Opens in Firefox.

.PARAMETER All
Opens in all registered modern browsers.

.PARAMETER Monitor
The monitor to use, 0 = default, -1 is discard, -2 = Configured secondary
monitor.

.PARAMETER FullScreen
Opens in fullscreen mode.

.PARAMETER Width
The initial width of the webbrowser window.

.PARAMETER Height
The initial height of the webbrowser window.

.PARAMETER X
The initial X position of the webbrowser window.

.PARAMETER Y
The initial Y position of the webbrowser window.

.PARAMETER Left
Place browser window on the left side of the screen.

.PARAMETER Right
Place browser window on the right side of the screen.

.PARAMETER Top
Place browser window on the top side of the screen.

.PARAMETER Bottom
Place browser window on the bottom side of the screen.

.PARAMETER Centered
Place browser window in the center of the screen.

.PARAMETER ApplicationMode
Hide the browser controls.

.PARAMETER NoBrowserExtensions
Prevent loading of browser extensions.

.PARAMETER DisablePopupBlocker
Disable the popup blocker.

.PARAMETER AcceptLang
Set the browser accept-lang http header.

.PARAMETER KeysToSend
Keystrokes to send to the Browser window, see documentation for cmdlet
GenXdev\Send-Key.

.PARAMETER SendKeyEscape
Escape control characters when sending keys.

.PARAMETER SendKeyHoldKeyboardFocus
Prevent returning keyboard focus to PowerShell after sending keys.

.PARAMETER SendKeyUseShiftEnter
Send Shift+Enter instead of regular Enter for line breaks.

.PARAMETER SendKeyDelayMilliSeconds
Delay between sending different key sequences in milliseconds.

.PARAMETER FocusWindow
Focus the browser window after opening.

.PARAMETER SetForeground
Set the browser window to foreground after opening.

.PARAMETER Maximize
Maximize the window after positioning

.PARAMETER SetRestored
Restore the window to normal state after positioning

.PARAMETER RestoreFocus
Restore PowerShell window focus.

.PARAMETER NewWindow
Don't re-use existing browser window, create a new one.

.PARAMETER PassThru
Returns a [System.Diagnostics.Process] object of the browserprocess.

.PARAMETER ReturnURL
Don't open webbrowser, just return the url.

.PARAMETER ReturnOnlyURL
After opening webbrowser, return the url.

.PARAMETER NoFullScreen
Don't open in fullscreen mode.

.PARAMETER NoApplicationMode
Do show the browser controls.

.PARAMETER NoBorders
Removes the borders of the browser window.

.PARAMETER SideBySide
Position browser window either fullscreen on different monitor than
PowerShell, or side by side with PowerShell on the same monitor.

.PARAMETER SessionOnly
Use alternative settings stored in session for AI preferences.

.PARAMETER ClearSession
Clear alternative settings stored in session for AI preferences.

.PARAMETER SkipSession
Store settings only in persistent preferences without affecting session.

.EXAMPLE
Open-ViralSimulation -Chrome -Private -NoFullScreen

Opens viral simulation in Google Chrome with private browsing mode and no
fullscreen.

.EXAMPLE
viral -ch -incognito -nfs

Opens viral simulation using aliases with Chrome, incognito mode, and no
fullscreen.
#>
function Open-ViralSimulation {

    [CmdletBinding()]
    [Alias('viral')]

    param(
        [ValidateSet(
            'Afrikaans',
            'Akan',
            'Albanian',
            'Amharic',
            'Arabic',
            'Armenian',
            'Azerbaijani',
            'Basque',
            'Belarusian',
            'Bemba',
            'Bengali',
            'Bihari',
            'Bork, bork, bork!',
            'Bosnian',
            'Breton',
            'Bulgarian',
            'Cambodian',
            'Catalan',
            'Cherokee',
            'Chichewa',
            'Chinese (Simplified)',
            'Chinese (Traditional)',
            'Corsican',
            'Croatian',
            'Czech',
            'Danish',
            'Dutch',
            'Elmer Fudd',
            'English',
            'Esperanto',
            'Estonian',
            'Ewe',
            'Faroese',
            'Filipino',
            'Finnish',
            'French',
            'Frisian',
            'Ga',
            'Galician',
            'Georgian',
            'German',
            'Greek',
            'Guarani',
            'Gujarati',
            'Hacker',
            'Haitian Creole',
            'Hausa',
            'Hawaiian',
            'Hebrew',
            'Hindi',
            'Hungarian',
            'Icelandic',
            'Igbo',
            'Indonesian',
            'Interlingua',
            'Irish',
            'Italian',
            'Japanese',
            'Javanese',
            'Kannada',
            'Kazakh',
            'Kinyarwanda',
            'Kirundi',
            'Klingon',
            'Kongo',
            'Korean',
            'Krio (Sierra Leone)',
            'Kurdish',
            'Kurdish (Soranî)',
            'Kyrgyz',
            'Laothian',
            'Latin',
            'Latvian',
            'Lingala',
            'Lithuanian',
            'Lozi',
            'Luganda',
            'Luo',
            'Macedonian',
            'Malagasy',
            'Malay',
            'Malayalam',
            'Maltese',
            'Maori',
            'Marathi',
            'Mauritian Creole',
            'Moldavian',
            'Mongolian',
            'Montenegrin',
            'Nepali',
            'Nigerian Pidgin',
            'Northern Sotho',
            'Norwegian',
            'Norwegian (Nynorsk)',
            'Occitan',
            'Oriya',
            'Oromo',
            'Pashto',
            'Persian',
            'Pirate',
            'Polish',
            'Portuguese (Brazil)',
            'Portuguese (Portugal)',
            'Punjabi',
            'Quechua',
            'Romanian',
            'Romansh',
            'Runyakitara',
            'Russian',
            'Scots Gaelic',
            'Serbian',
            'Serbo-Croatian',
            'Sesotho',
            'Setswana',
            'Seychellois Creole',
            'Shona',
            'Sindhi',
            'Sinhalese',
            'Slovak',
            'Slovenian',
            'Somali',
            'Spanish',
            'Spanish (Latin American)',
            'Sundanese',
            'Swahili',
            'Swedish',
            'Tajik',
            'Tamil',
            'Tatar',
            'Telugu',
            'Thai',
            'Tigrinya',
            'Tonga',
            'Tshiluba',
            'Tumbuka',
            'Turkish',
            'Turkmen',
            'Twi',
            'Uighur',
            'Ukrainian',
            'Urdu',
            'Uzbek',
            'Vietnamese',
            'Welsh',
            'Wolof',
            'Xhosa',
            'Yiddish',
            'Yoruba',
            'Zulu')]
        [Parameter(
            Mandatory = $false,
            Position = 0,
            HelpMessage = 'The language for the web content display and browser language settings'
        )]
        [string] $Language,
        [Parameter(
            Mandatory = $false,
            HelpMessage = 'Opens in incognito/private browsing mode'
        )]
        [Alias('incognito', 'inprivate')]
        [switch] $Private,
        [Parameter(
            Mandatory = $false,
            HelpMessage = ('Force enable debugging port, stopping existing ' +
                'browsers if needed')
        )]
        [switch] $Force,
        [Parameter(
            Mandatory = $false,
            HelpMessage = 'Opens in Microsoft Edge'
        )]
        [Alias('e')]
        [switch] $Edge,
        [Parameter(
            Mandatory = $false,
            HelpMessage = 'Opens in Google Chrome'
        )]
        [Alias('ch')]
        [switch] $Chrome,
        [Parameter(
            Mandatory = $false,
            HelpMessage = ('Opens in Microsoft Edge or Google Chrome, ' +
                'depending on what the default browser is')
        )]
        [Alias('c')]
        [switch] $Chromium,
        [Parameter(
            Mandatory = $false,
            HelpMessage = 'Opens in Firefox'
        )]
        [Alias('ff')]
        [switch] $Firefox,
        [Alias('pw')]
        [Parameter(
            Mandatory = $false,
            HelpMessage = ('Use Playwright-managed browser instead of the ' +
                'OS-installed browser')
        )]
        [switch] $PlayWright,
        [Alias('wk')]
        [Parameter(
            Mandatory = $false,
            HelpMessage = ('Opens the Playwright-managed WebKit browser. ' +
                'Implies -PlayWright')
        )]
        [switch] $Webkit,
        [Parameter(
            Mandatory = $false,
            HelpMessage = 'Run the browser without a visible window'
        )]
        [Alias('hl')]
        [switch] $Headless,
        [Parameter(
            Mandatory = $false,
            HelpMessage = 'Opens in all registered modern browsers'
        )]
        [switch] $All,
        [Parameter(
            Mandatory = $false,
            HelpMessage = ('The monitor to use, 0 = default, -1 is discard, ' +
                '-2 = Configured secondary monitor, defaults to ' +
                "`$Global:DefaultSecondaryMonitor or 2 if not found")
        )]
        [Alias('m', 'mon')]
        [int] $Monitor = -2,
        [Parameter(
            Mandatory = $false,
            HelpMessage = 'Opens in fullscreen mode'
        )]
        [Alias('fs', 'f')]
        [switch] $FullScreen,
        [Parameter(
            Mandatory = $false,
            HelpMessage = 'The initial width of the webbrowser window'
        )]
        [int] $Width = -1,
        [Parameter(
            Mandatory = $false,
            HelpMessage = 'The initial height of the webbrowser window'
        )]
        [int] $Height = -1,
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
            HelpMessage = 'Hide the browser controls'
        )]
        [Alias('a', 'app', 'appmode')]
        [switch] $ApplicationMode,
        [Parameter(
            Mandatory = $false,
            HelpMessage = 'Prevent loading of browser extensions'
        )]
        [Alias('de', 'ne', 'NoExtensions')]
        [switch] $NoBrowserExtensions,
        [Parameter(
            Mandatory = $false,
            HelpMessage = 'Disable the popup blocker'
        )]
        [Alias('allowpopups')]
        [switch] $DisablePopupBlocker,
        [Parameter(
            Mandatory = $false,
            HelpMessage = 'Set the browser accept-lang http header'
        )]
        [Alias('lang', 'locale')]
        [string] $AcceptLang = $null,
        [Parameter(
            Mandatory = $false,
            HelpMessage = ('Keystrokes to send to the Browser window, ' +
                'see documentation for cmdlet GenXdev\Send-Key')
        )]
        [string[]] $KeysToSend,
        [Alias('Escape')]
        [Parameter(
            Mandatory = $false,
            HelpMessage = 'Escape control characters when sending keys'
        )]
        [switch] $SendKeyEscape,
        [Alias('HoldKeyboardFocus')]
        [Parameter(
            Mandatory = $false,
            HelpMessage = ('Prevent returning keyboard focus to PowerShell ' +
                'after sending keys')
        )]
        [switch] $SendKeyHoldKeyboardFocus,
        [Alias('UseShiftEnter')]
        [Parameter(
            Mandatory = $false,
            HelpMessage = ('Send Shift+Enter instead of regular Enter for ' +
                'line breaks')
        )]
        [switch] $SendKeyUseShiftEnter,
        [Alias('DelayMilliSeconds')]
        [Parameter(
            Mandatory = $false,
            HelpMessage = ('Delay between sending different key sequences ' +
                'in milliseconds')
        )]
        [int] $SendKeyDelayMilliSeconds,
        [Parameter(
            Mandatory = $false,
            HelpMessage = 'Focus the browser window after opening'
        )]
        [Alias('fw','focus')]
        [switch] $FocusWindow,
        [Parameter(
            Mandatory = $false,
            HelpMessage = 'Set the browser window to foreground after opening'
        )]
        [Alias('fg')]
        [switch] $SetForeground,
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
            HelpMessage = 'Restore PowerShell window focus'
        )]
        [Alias('rf', 'bg')]
        [switch] $RestoreFocus,
        [Parameter(
            Mandatory = $false,
            HelpMessage = ("Don't re-use existing browser window, instead, " +
                'create a new one')
        )]
        [Alias('nw', 'new')]
        [switch] $NewWindow,
        [Parameter(
            Mandatory = $false,
            HelpMessage = ('Returns a PowerShell object of ' +
                'the browserprocess')
        )]
        [Alias('pt')]
        [switch] $PassThru,
        [Parameter(
            Mandatory = $false,
            HelpMessage = "Don't open webbrowser, just return the url"
        )]
        [switch] $ReturnURL,
        [Parameter(
            Mandatory = $false,
            HelpMessage = 'After opening webbrowser, return the url'
        )]
        [switch] $ReturnOnlyURL,
        [Parameter(
            Mandatory = $false,
            HelpMessage = "Don't open in fullscreen mode"
        )]
        [Alias('nfs', 'nf')]
        [switch] $NoFullScreen,
        [Parameter(
            Mandatory = $false,
            HelpMessage = 'Do show the browser controls'
        )]
        [Alias('na', 'napp', 'noappmode')]
        [switch] $NoApplicationMode,
        [Parameter(
            Mandatory = $false,
            HelpMessage = 'Removes the borders of the browser window'
        )]
        [Alias('nb')]
        [switch] $NoBorders,
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
            HelpMessage = ('Use alternative settings stored in session for ' +
                'AI preferences')
        )]
        [switch] $SessionOnly,
        [Parameter(
            Mandatory = $false,
            HelpMessage = ('Clear alternative settings stored in session for ' +
                'AI preferences')
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

        # initialize default language code for website access
        $code = 'www'

        # check if user specified a language parameter
        if (-not [string]::IsNullOrWhiteSpace($Language)) {

            # retrieve corresponding language code from the dictionary
            $code = (GenXdev\Get-WebLanguageDictionary)[$Language]

            # automatically set browser accept-lang header if not specified
            if (-not $PSBoundParameters.ContainsKey('AcceptLang')) {

                # add the language code to bound parameters
                $null = $PSBoundParameters.Add('AcceptLang', $code)
            }
        }

        # copy compatible parameters to pass to open-webbrowser function
        $invocationArguments = GenXdev\Copy-IdenticalParamValues `
            -BoundParameters $PSBoundParameters `
            -FunctionName 'GenXdev\Open-Webbrowser' `
            -DefaultValues (Microsoft.PowerShell.Utility\Get-Variable `
                -Scope Local `
                -ErrorAction SilentlyContinue)

        # configure the viral simulation website url
        $invocationArguments.'Url' = 'https://viral.genxdev.net/'

        # exit early if user only wants the url without opening browser
        if ($ReturnOnlyURL) {

            Microsoft.PowerShell.Utility\Write-Output ($invocationArguments.Url)
            return
        }

        # determine application mode setting based on user preference
        if (-not $PSBoundParameters.ContainsKey('ApplicationMode')) {

            # enable application mode unless explicitly disabled
            $invocationArguments.'ApplicationMode' = -not $NoApplicationMode
        }

        # force new window creation for viral simulation unless specified
        if (-not $PSBoundParameters.ContainsKey('NewWindow')) {

            # always create new window for viral simulation
            $invocationArguments.'NewWindow' = $true
        }

        # configure fullscreen behavior based on user preference
        if (-not $PSBoundParameters.ContainsKey('FullScreen')) {

            # enable fullscreen unless explicitly disabled
            $invocationArguments.'FullScreen' = -not $NoFullScreen
        }

        # clean up internal parameters before passing to open-webbrowser
        if ($PSBoundParameters.ContainsKey('NoFullScreen')) {

            # remove internal parameter to prevent conflicts
            $null = $PSBoundParameters.Remove('NoFullScreen')
        }

        # remove any duplicate parameter cleanup attempts
        if ($PSBoundParameters.ContainsKey('NoFullScreen')) {

            # ensure parameter is completely removed
            $null = $PSBoundParameters.Remove('NoFullScreen')
        }
    }

    process {

        # handle early exit for url-only requests without browser launch
        if ($ReturnOnlyURL) {

            Microsoft.PowerShell.Utility\Write-Output ($invocationArguments.Url)
            return
        }

        # provide verbose feedback about the viral simulation launch
        Microsoft.PowerShell.Utility\Write-Verbose (
            "Opening viral simulation at: $($invocationArguments.Url)"
        )

        # launch the viral simulation using the configured browser settings
        GenXdev\Open-Webbrowser @invocationArguments

        # output the url if requested after browser launch
        if ($ReturnURL) {

            Microsoft.PowerShell.Utility\Write-Output ($invocationArguments.Url)
        }
    }

    end {

    }
}
<##############################################################################
Part of PowerShell module : GenXdev.Queries.Websites
Original cmdlet filename  : Open-Yab.ps1
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
Opens the YAB game in a web browser with configurable settings.

.DESCRIPTION
Opens the YAB game website in a specified browser with various display and
behavior options. Supports different game modes including spectator mode.
The YAB game is an online puzzle game that can be played interactively or
watched in spectator mode where AI plays automatically.

.PARAMETER Language
The language of the game interface. Supports multiple languages including
English, Spanish, French, German, and many others.

.PARAMETER SpectateOnly
Don't start a new game, just watch the AI play automatically.

.PARAMETER Private
Opens in incognito/private browsing mode.

.PARAMETER Force
Force enable debugging port, stopping existing browsers if needed.

.PARAMETER Edge
Opens in Microsoft Edge.

.PARAMETER Chrome
Opens in Google Chrome.

.PARAMETER Chromium
Opens in Microsoft Edge or Google Chrome, depending on default browser.

.PARAMETER Firefox
Opens in Firefox.

.PARAMETER All
Opens in all registered modern browsers.

.PARAMETER Monitor
The monitor to use, 0 = default, -1 is discard, -2 = Configured secondary
monitor.

.PARAMETER FullScreen
Opens in fullscreen mode.

.PARAMETER Width
The initial width of the webbrowser window.

.PARAMETER Height
The initial height of the webbrowser window.

.PARAMETER X
The initial X position of the webbrowser window.

.PARAMETER Y
The initial Y position of the webbrowser window.

.PARAMETER Left
Place browser window on the left side of the screen.

.PARAMETER Right
Place browser window on the right side of the screen.

.PARAMETER Top
Place browser window on the top side of the screen.

.PARAMETER Bottom
Place browser window on the bottom side of the screen.

.PARAMETER Centered
Place browser window in the center of the screen.

.PARAMETER ApplicationMode
Hide the browser controls.

.PARAMETER NoBrowserExtensions
Prevent loading of browser extensions.

.PARAMETER DisablePopupBlocker
Disable the popup blocker.

.PARAMETER AcceptLang
Set the browser accept-lang http header.

.PARAMETER KeysToSend
Keystrokes to send to the browser window, see documentation for cmdlet
GenXdev\Send-Key.

.PARAMETER FocusWindow
Focus the browser window after opening.

.PARAMETER SetForeground
Set the browser window to foreground after opening.

.PARAMETER Maximize
Maximize the window after positioning

.PARAMETER SetRestored
Restore the window to normal state after positioning

.PARAMETER RestoreFocus
Restore PowerShell window focus.

.PARAMETER NewWindow
Don't re-use existing browser window, create a new one.

.PARAMETER PassThru
Returns a [System.Diagnostics.Process] object of the browser process.

.PARAMETER ReturnURL
Don't open webbrowser, just return the url.

.PARAMETER ReturnOnlyURL
After opening webbrowser, return the url.

.PARAMETER NoFullScreen
Don't open in fullscreen mode.

.PARAMETER NoApplicationMode
Do show the browser controls.

.PARAMETER SendKeyEscape
Escape control characters when sending keys.

.PARAMETER SendKeyHoldKeyboardFocus
Prevent returning keyboard focus to PowerShell after sending keys.

.PARAMETER SendKeyUseShiftEnter
Send Shift+Enter instead of regular Enter for line breaks.

.PARAMETER SendKeyDelayMilliSeconds
Delay between sending different key sequences in milliseconds.

.EXAMPLE
Open-Yab -SpectateOnly -Chrome -NoFullScreen -Language "English"

Opens YAB game in spectator mode using Chrome browser without fullscreen,
with English language interface.

.EXAMPLE
yab -e -Private -Monitor 2

Opens YAB game in Edge browser with private browsing on monitor 2 using
aliases for quick access.
#>
function Open-Yab {

    [CmdletBinding()]
    [Alias('yab')]
    param(
        [ValidateSet(
            'Afrikaans',
            'Akan',
            'Albanian',
            'Amharic',
            'Arabic',
            'Armenian',
            'Azerbaijani',
            'Basque',
            'Belarusian',
            'Bemba',
            'Bengali',
            'Bihari',
            'Bork, bork, bork!',
            'Bosnian',
            'Breton',
            'Bulgarian',
            'Cambodian',
            'Catalan',
            'Cherokee',
            'Chichewa',
            'Chinese (Simplified)',
            'Chinese (Traditional)',
            'Corsican',
            'Croatian',
            'Czech',
            'Danish',
            'Dutch',
            'Elmer Fudd',
            'English',
            'Esperanto',
            'Estonian',
            'Ewe',
            'Faroese',
            'Filipino',
            'Finnish',
            'French',
            'Frisian',
            'Ga',
            'Galician',
            'Georgian',
            'German',
            'Greek',
            'Guarani',
            'Gujarati',
            'Hacker',
            'Haitian Creole',
            'Hausa',
            'Hawaiian',
            'Hebrew',
            'Hindi',
            'Hungarian',
            'Icelandic',
            'Igbo',
            'Indonesian',
            'Interlingua',
            'Irish',
            'Italian',
            'Japanese',
            'Javanese',
            'Kannada',
            'Kazakh',
            'Kinyarwanda',
            'Kirundi',
            'Klingon',
            'Kongo',
            'Korean',
            'Krio (Sierra Leone)',
            'Kurdish',
            'Kurdish (Soranî)',
            'Kyrgyz',
            'Laothian',
            'Latin',
            'Latvian',
            'Lingala',
            'Lithuanian',
            'Lozi',
            'Luganda',
            'Luo',
            'Macedonian',
            'Malagasy',
            'Malay',
            'Malayalam',
            'Maltese',
            'Maori',
            'Marathi',
            'Mauritian Creole',
            'Moldavian',
            'Mongolian',
            'Montenegrin',
            'Nepali',
            'Nigerian Pidgin',
            'Northern Sotho',
            'Norwegian',
            'Norwegian (Nynorsk)',
            'Occitan',
            'Oriya',
            'Oromo',
            'Pashto',
            'Persian',
            'Pirate',
            'Polish',
            'Portuguese (Brazil)',
            'Portuguese (Portugal)',
            'Punjabi',
            'Quechua',
            'Romanian',
            'Romansh',
            'Runyakitara',
            'Russian',
            'Scots Gaelic',
            'Serbian',
            'Serbo-Croatian',
            'Sesotho',
            'Setswana',
            'Seychellois Creole',
            'Shona',
            'Sindhi',
            'Sinhalese',
            'Slovak',
            'Slovenian',
            'Somali',
            'Spanish',
            'Spanish (Latin American)',
            'Sundanese',
            'Swahili',
            'Swedish',
            'Tajik',
            'Tamil',
            'Tatar',
            'Telugu',
            'Thai',
            'Tigrinya',
            'Tonga',
            'Tshiluba',
            'Tumbuka',
            'Turkish',
            'Turkmen',
            'Twi',
            'Uighur',
            'Ukrainian',
            'Urdu',
            'Uzbek',
            'Vietnamese',
            'Welsh',
            'Wolof',
            'Xhosa',
            'Yiddish',
            'Yoruba',
            'Zulu')]
        [parameter(
            Mandatory = $false,
            Position = 0,
            HelpMessage = 'The language of the game interface'
        )]
        [string] $Language,
        [Parameter(
            Mandatory = $false,
            HelpMessage = 'Opens in incognito/private browsing mode'
        )]
        [Alias('incognito', 'inprivate')]
        [switch] $Private,
        [Parameter(
            Mandatory = $false,
            HelpMessage = ('Force enable debugging port, stopping existing ' +
                'browsers if needed')
        )]
        [switch] $Force,
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
        [Alias('pw')]
        [Parameter(
            Mandatory = $false,
            HelpMessage = ('Use Playwright-managed browser instead of the ' +
                'OS-installed browser')
        )]
        [switch] $PlayWright,
        [Alias('wk')]
        [Parameter(
            Mandatory = $false,
            HelpMessage = ('Opens the Playwright-managed WebKit browser. ' +
                'Implies -PlayWright')
        )]
        [switch] $Webkit,
        [Parameter(
            Mandatory = $false,
            HelpMessage = 'Run the browser without a visible window'
        )]
        [Alias('hl')]
        [switch] $Headless,
        [Parameter(
            Mandatory = $false,
            HelpMessage = 'Opens in all registered modern browsers'
        )]
        [switch] $All,
        [Alias('m', 'mon')]
        [Parameter(
            Mandatory = $false,
            HelpMessage = ('The monitor to use, 0 = default, -1 is discard, ' +
                '-2 = Configured secondary monitor, defaults to -1, no ' +
                'positioning')
        )]
        [int] $Monitor = -2,
        [Alias('fs', 'f')]
        [Parameter(
            Mandatory = $false,
            HelpMessage = 'Opens in fullscreen mode'
        )]
        [switch] $FullScreen,
        [Alias('sw')]
        [Parameter(
            Mandatory = $false,
            HelpMessage = 'Show the browser window (not minimized or hidden)'
        )]
        [switch] $ShowWindow,
        [Parameter(
            Mandatory = $false,
            HelpMessage = 'The initial width of the webbrowser window'
        )]
        [int] $Width = -1,
        [Parameter(
            Mandatory = $false,
            HelpMessage = 'The initial height of the webbrowser window'
        )]
        [int] $Height = -1,
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
        [Alias('a', 'app', 'appmode')]
        [Parameter(
            Mandatory = $false,
            HelpMessage = 'Hide the browser controls'
        )]
        [switch] $ApplicationMode,
        [Alias('de', 'ne', 'NoExtensions')]
        [Parameter(
            Mandatory = $false,
            HelpMessage = 'Prevent loading of browser extensions'
        )]
        [switch] $NoBrowserExtensions,
        [Parameter(
            Mandatory = $false,
            HelpMessage = 'Disable the popup blocker'
        )]
        [Alias('allowpopups')]
        [switch] $DisablePopupBlocker,
        [Alias('lang', 'locale')]
        [Parameter(
            Mandatory = $false,
            HelpMessage = 'Set the browser accept-lang http header'
        )]
        [string] $AcceptLang = $null,
        [Parameter(
            Mandatory = $false,
            HelpMessage = ('Keystrokes to send to the Browser window, ' +
                'see documentation for cmdlet GenXdev\Send-Key')
        )]
        [string[]] $KeysToSend,
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
            HelpMessage = 'Restore PowerShell window focus'
        )]
        [Alias('r', 'bg', 'rf')]
        [switch]$RestoreFocus,
        [Alias('nw', 'new')]
        [Parameter(
            Mandatory = $false,
            HelpMessage = ("Don't re-use existing browser window, instead, " +
                'create a new one')
        )]
        [switch] $NewWindow,
        [Parameter(
            Mandatory = $false,
            HelpMessage = ('Returns a [System.Diagnostics.Process] object of ' +
                'the browserprocess')
        )]
        [Alias('pt')]
        [switch]$PassThru,
        [parameter(
            Mandatory = $false,
            HelpMessage = "Don't open webbrowser, just return the url"
        )]
        [switch] $ReturnURL,
        [parameter(
            Mandatory = $false,
            HelpMessage = 'After opening webbrowser, return the url'
        )]
        [switch] $ReturnOnlyURL,
        [parameter(
            Mandatory = $false,
            HelpMessage = "Don't start a new game, just watch the AI play"
        )]
        [switch] $SpectateOnly,
        [Alias('nfs', 'nf')]
        [Parameter(
            Mandatory = $false,
            HelpMessage = "Don't open in fullscreen mode"
        )]
        [switch] $NoFullScreen,
        [Alias('na', 'napp', 'noappmode')]
        [Parameter(
            Mandatory = $false,
            HelpMessage = 'Do show the browser controls'
        )]
        [switch] $NoApplicationMode,
        [Parameter(
            Mandatory = $false,
            HelpMessage = 'Escape control characters when sending keys'
        )]
        [Alias('Escape')]
        [switch] $SendKeyEscape,
        [Parameter(
            Mandatory = $false,
            HelpMessage = ('Prevent returning keyboard focus to PowerShell ' +
                'after sending keys')
        )]
        [Alias('HoldKeyboardFocus')]
        [switch] $SendKeyHoldKeyboardFocus,
        [Parameter(
            Mandatory = $false,
            HelpMessage = ('Send Shift+Enter instead of regular Enter for ' +
                'line breaks')
        )]
        [Alias('UseShiftEnter')]
        [switch] $SendKeyUseShiftEnter,
        [Parameter(
            Mandatory = $false,
            HelpMessage = ('Delay between sending different key sequences ' +
                'in milliseconds')
        )]
        [Alias('DelayMilliSeconds')]
        [int] $SendKeyDelayMilliSeconds,
        [Parameter(
            HelpMessage = 'Removes the borders of the browser window.'
        )]
        [Alias('nb')]
        [switch] $NoBorders,
        [Parameter(
            HelpMessage = 'Position browser window either fullscreen on different monitor than PowerShell, or side by side with PowerShell on the same monitor.'
        )]
        [Alias('sbs')]
        [switch] $SideBySide,
        [Parameter(
            HelpMessage = 'Use alternative settings stored in session for AI preferences.'
        )]
        [switch] $SessionOnly,
        [Parameter(
            HelpMessage = 'Clear alternative settings stored in session for AI preferences.'
        )]
        [switch] $ClearSession,
        [Parameter(
            HelpMessage = 'Store settings only in persistent preferences without affecting session.'
        )]
        [Alias('FromPreferences')]
        [switch] $SkipSession
    )

    begin {

        # determine google domain based on language
        $code = 'www'
        if (-not [string]::IsNullOrWhiteSpace($Language)) {

            # get the language code from the language dictionary
            $code = (GenXdev\Get-WebLanguageDictionary)[$Language]

            # set accept-lang header if not already specified
            if (-not $PSBoundParameters.ContainsKey('AcceptLang')) {

                $null = $PSBoundParameters.Add('AcceptLang', $code)
            }
        }

        # configure default application mode behavior
        if (-not $PSBoundParameters.ContainsKey('NoApplicationMode')) {

            # enable application mode for clean interface
            $null = $PSBoundParameters.Add('ApplicationMode', $true);

            # create new window for application mode
            if (-not $PSBoundParameters.ContainsKey('NewWindow')) {

                $null = $PSBoundParameters.Add('-NewWindow', $true);
            }

            # enable fullscreen mode for immersive experience
            if (-not $PSBoundParameters.ContainsKey('FullScreen')) {

                $null = $PSBoundParameters.Add('FullScreen', $true);
            }
        }

        # remove nofullscreen parameters from bound parameters
        if ($PSBoundParameters.ContainsKey('NoFullScreen')) {

            $null = $PSBoundParameters.Remove('NoFullScreen')
        }

        # remove duplicate nofullscreen check
        if ($PSBoundParameters.ContainsKey('NoFullScreen')) {

            $null = $PSBoundParameters.Remove('NoFullScreen')
        }

        # remove noapplicationmode parameter from bound parameters
        if ($PSBoundParameters.ContainsKey('NoApplicationMode')) {

            $null = $PSBoundParameters.Remove('NoApplicationMode')
        }

        # configure browser extensions behavior
        if (-not $PSBoundParameters.ContainsKey('BrowserExtensions')) {

            # disable browser extensions by default for clean gaming experience
            $null = $PSBoundParameters.Add('NoBrowserExtensions', $true);
        }
        else {

            # remove browserextensions parameter if present
            $null = $PSBoundParameters.Remove('BrowserExtensions')
        }

        # remove spectateonly parameter from bound parameters
        if ($PSBoundParameters.ContainsKey('SpectateOnly')) {

            $null = $PSBoundParameters.Remove('SpectateOnly')
        }

        # construct the yab game url based on spectate mode
        $url = ("https://yab.genxdev.net/#/single/$($SpectateOnly ? ' +
            "spectate': 'marathon')/")

        # add url to bound parameters if not already present
        if (-not $PSBoundParameters.ContainsKey('Url')) {

            $null = $PSBoundParameters.Add('Url', $url)
        }

        # Copy identical parameters between functions
        $params = GenXdev\Copy-IdenticalParamValues `
            -FunctionName 'GenXdev\Open-Webbrowser' `
            -BoundParameters $PSBoundParameters `
            -DefaultValues (Microsoft.PowerShell.Utility\Get-Variable -Scope Local -ErrorAction SilentlyContinue)

        # set the constructed url in invocation arguments
        $params.'Url' = $url

        # output verbose information about the game url
        Microsoft.PowerShell.Utility\Write-Verbose "Game URL: $url"

        # handle return url only scenario
        if ($ReturnOnlyURL) {

            # return the url without opening browser
            Microsoft.PowerShell.Utility\Write-Output $url
            return
        }
    }

    process {

        # launch browser with the yab game
        GenXdev\Open-Webbrowser @params

        # return url if requested
        if ($ReturnURL) {

            # output the game url
            Microsoft.PowerShell.Utility\Write-Output $url
        }
    }

    end {
    }
}
<##############################################################################
Part of PowerShell module : GenXdev.Queries.Websites
Original cmdlet filename  : Open-YabAIBattle.ps1
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
Opens the YabAI Battle game in a web browser.

.DESCRIPTION
This function launches the YabAI Battle game in a web browser with extensive
customization options for window placement, browser selection, and display
mode. It provides a wrapper around the GenXdev\Open-Webbrowser
function with game-specific URL construction and parameter handling.

The function supports two game modes:
- Battle mode: Start a new AI vs AI battle
- Spectate mode: Watch existing AI battles

Browser positioning options include left, right, top, bottom, centered, and
fullscreen modes with multi-monitor support. The function automatically
handles application mode settings and browser extension management for
optimal gaming experience.

.PARAMETER Language
The language of the game interface. Supports multiple languages including
English, Spanish, French, German, and many others. This parameter affects
the browser's Accept-Language header.

.PARAMETER SpectateOnly
Don't start a new game, just watch the AI play. This mode allows you to
observe ongoing AI battles without starting a new game session.

.PARAMETER Private
Opens in incognito/private browsing mode. Uses InPrivate for Edge and
incognito for Chrome.

.PARAMETER Force
Force enable debugging port, stopping existing browsers if needed. Useful
when browser debugging features are required.

.PARAMETER Edge
Opens in Microsoft Edge browser.

.PARAMETER Chrome
Opens in Google Chrome browser.

.PARAMETER Chromium
Opens in Microsoft Edge or Google Chrome, depending on what the default
browser is.

.PARAMETER Firefox
Opens in Firefox browser.

.PARAMETER All
Opens in all registered modern browsers.

.PARAMETER Monitor
The monitor to use, 0 = default, -1 is discard, -2 = Configured secondary
monitor, defaults to -1, no positioning.

.PARAMETER FullScreen
Opens in fullscreen mode.

.PARAMETER Width
The initial width of the webbrowser window.

.PARAMETER Height
The initial height of the webbrowser window.

.PARAMETER X
The initial X position of the webbrowser window.

.PARAMETER Y
The initial Y position of the webbrowser window.

.PARAMETER Left
Place browser window on the left side of the screen.

.PARAMETER Right
Place browser window on the right side of the screen.

.PARAMETER Top
Place browser window on the top side of the screen.

.PARAMETER Bottom
Place browser window on the bottom side of the screen.

.PARAMETER Centered
Place browser window in the center of the screen.

.PARAMETER ApplicationMode
Hide the browser controls.

.PARAMETER NoBrowserExtensions
Prevent loading of browser extensions.

.PARAMETER DisablePopupBlocker
Disable the popup blocker.

.PARAMETER AcceptLang
Set the browser accept-lang http header.

.PARAMETER KeysToSend
Keystrokes to send to the Browser window, see documentation for cmdlet
GenXdev\Send-Key.

.PARAMETER SendKeyEscape
Escape control characters when sending keys.

.PARAMETER SendKeyHoldKeyboardFocus
Prevent returning keyboard focus to PowerShell after sending keys.

.PARAMETER SendKeyUseShiftEnter
Send Shift+Enter instead of regular Enter for line breaks.

.PARAMETER SendKeyDelayMilliSeconds
Delay between sending different key sequences in milliseconds.

.PARAMETER FocusWindow
Focus the browser window after opening.

.PARAMETER SetForeground
Set the browser window to foreground after opening.

.PARAMETER Maximize
Maximize the window after positioning

.PARAMETER SetRestored
Restore the window to normal state after positioning

.PARAMETER RestoreFocus
Restore PowerShell window focus.

.PARAMETER NewWindow
Don't re-use existing browser window, instead, create a new one.

.PARAMETER PassThru
Returns a [System.Diagnostics.Process] object of the browserprocess.

.PARAMETER ReturnURL
Don't open webbrowser, just return the url.

.PARAMETER ReturnOnlyURL
After opening webbrowser, return the url.

.PARAMETER NoFullScreen
Don't open in fullscreen mode.

.PARAMETER NoApplicationMode
Do show the browser controls.

.PARAMETER NoBorders
Removes the borders of the browser window.

.PARAMETER SideBySide
Position browser window either fullscreen on different monitor than PowerShell, or side by side with PowerShell on the same monitor.

.PARAMETER SessionOnly
Use alternative settings stored in session for AI preferences.

.PARAMETER ClearSession
Clear alternative settings stored in session for AI preferences.

.PARAMETER SkipSession
Store settings only in persistent preferences without affecting session.

.EXAMPLE
Open-YabAIBattle -Edge -Private -NoFullScreen

Opens the YabAI Battle game in Microsoft Edge using private browsing mode
without fullscreen.

.EXAMPLE
yabbattle -e -incognito -nfs

Opens the game using aliases for Edge, incognito mode, and no fullscreen.

.EXAMPLE
Open-YabAIBattle -SpectateOnly -Chrome

Opens the game in spectate mode using Google Chrome to watch AI battles.

.EXAMPLE
Open-YabAIBattle -Language "Spanish" -Monitor 1 -Left

Opens the game with Spanish language interface positioned on the left side
of monitor 1.
#>
function Open-YabAIBattle {

    [CmdletBinding()]
    [Alias('yabbattle')]

    param(
        [ValidateSet(
            'Afrikaans',
            'Akan',
            'Albanian',
            'Amharic',
            'Arabic',
            'Armenian',
            'Azerbaijani',
            'Basque',
            'Belarusian',
            'Bemba',
            'Bengali',
            'Bihari',
            'Bork, bork, bork!',
            'Bosnian',
            'Breton',
            'Bulgarian',
            'Cambodian',
            'Catalan',
            'Cherokee',
            'Chichewa',
            'Chinese (Simplified)',
            'Chinese (Traditional)',
            'Corsican',
            'Croatian',
            'Czech',
            'Danish',
            'Dutch',
            'Elmer Fudd',
            'English',
            'Esperanto',
            'Estonian',
            'Ewe',
            'Faroese',
            'Filipino',
            'Finnish',
            'French',
            'Frisian',
            'Ga',
            'Galician',
            'Georgian',
            'German',
            'Greek',
            'Guarani',
            'Gujarati',
            'Hacker',
            'Haitian Creole',
            'Hausa',
            'Hawaiian',
            'Hebrew',
            'Hindi',
            'Hungarian',
            'Icelandic',
            'Igbo',
            'Indonesian',
            'Interlingua',
            'Irish',
            'Italian',
            'Japanese',
            'Javanese',
            'Kannada',
            'Kazakh',
            'Kinyarwanda',
            'Kirundi',
            'Klingon',
            'Kongo',
            'Korean',
            'Krio (Sierra Leone)',
            'Kurdish',
            'Kurdish (Soranî)',
            'Kyrgyz',
            'Laothian',
            'Latin',
            'Latvian',
            'Lingala',
            'Lithuanian',
            'Lozi',
            'Luganda',
            'Luo',
            'Macedonian',
            'Malagasy',
            'Malay',
            'Malayalam',
            'Maltese',
            'Maori',
            'Marathi',
            'Mauritian Creole',
            'Moldavian',
            'Mongolian',
            'Montenegrin',
            'Nepali',
            'Nigerian Pidgin',
            'Northern Sotho',
            'Norwegian',
            'Norwegian (Nynorsk)',
            'Occitan',
            'Oriya',
            'Oromo',
            'Pashto',
            'Persian',
            'Pirate',
            'Polish',
            'Portuguese (Brazil)',
            'Portuguese (Portugal)',
            'Punjabi',
            'Quechua',
            'Romanian',
            'Romansh',
            'Runyakitara',
            'Russian',
            'Scots Gaelic',
            'Serbian',
            'Serbo-Croatian',
            'Sesotho',
            'Setswana',
            'Seychellois Creole',
            'Shona',
            'Sindhi',
            'Sinhalese',
            'Slovak',
            'Slovenian',
            'Somali',
            'Spanish',
            'Spanish (Latin American)',
            'Sundanese',
            'Swahili',
            'Swedish',
            'Tajik',
            'Tamil',
            'Tatar',
            'Telugu',
            'Thai',
            'Tigrinya',
            'Tonga',
            'Tshiluba',
            'Tumbuka',
            'Turkish',
            'Turkmen',
            'Twi',
            'Uighur',
            'Ukrainian',
            'Urdu',
            'Uzbek',
            'Vietnamese',
            'Welsh',
            'Wolof',
            'Xhosa',
            'Yiddish',
            'Yoruba',
            'Zulu')]
        [parameter(
            Mandatory = $false,
            Position = 0,
            HelpMessage = 'The language of the game interface'
        )]
        [string] $Language,
        [parameter(
            Mandatory = $false,
            HelpMessage = "Don't start a new game, just watch the AI play"
        )]
        [switch] $SpectateOnly,
        [Parameter(
            Mandatory = $false,
            HelpMessage = 'Opens in incognito/private browsing mode'
        )]
        [Alias('incognito', 'inprivate')]
        [switch] $Private,
        [Parameter(
            Mandatory = $false,
            HelpMessage = ('Force enable debugging port, stopping existing ' +
                'browsers if needed')
        )]
        [switch] $Force,
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
        [Alias('pw')]
        [Parameter(
            Mandatory = $false,
            HelpMessage = ('Use Playwright-managed browser instead of the ' +
                'OS-installed browser')
        )]
        [switch] $PlayWright,
        [Alias('wk')]
        [Parameter(
            Mandatory = $false,
            HelpMessage = ('Opens the Playwright-managed WebKit browser. ' +
                'Implies -PlayWright')
        )]
        [switch] $Webkit,
        [Parameter(
            Mandatory = $false,
            HelpMessage = 'Run the browser without a visible window'
        )]
        [Alias('hl')]
        [switch] $Headless,
        [Parameter(
            Mandatory = $false,
            HelpMessage = 'Opens in all registered modern browsers'
        )]
        [switch] $All,
        [Alias('m', 'mon')]
        [Parameter(
            Mandatory = $false,
            HelpMessage = ('The monitor to use, 0 = default, -1 is discard, ' +
                '-2 = Configured secondary monitor, defaults to ' +
                "`$Global:DefaultSecondaryMonitor or 2 if not found")
        )]
        [int] $Monitor = -2,
        [Alias('sw')]
        [Parameter(
            Mandatory = $false,
            HelpMessage = 'Opens in fullscreen mode'
        )]
        [switch] $ShowWindow,
        [Parameter(
            Mandatory = $false,
            HelpMessage = 'The initial width of the webbrowser window'
        )]
        [int] $Width = -1,
        [Parameter(
            Mandatory = $false,
            HelpMessage = 'The initial height of the webbrowser window'
        )]
        [int] $Height = -1,
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
        [Alias('a', 'app', 'appmode')]
        [Parameter(
            Mandatory = $false,
            HelpMessage = 'Hide the browser controls'
        )]
        [switch] $ApplicationMode,
        [Alias('de', 'ne', 'NoExtensions')]
        [Parameter(
            Mandatory = $false,
            HelpMessage = 'Prevent loading of browser extensions'
        )]
        [switch] $NoBrowserExtensions,
        [Alias('allowpopups')]
        [Parameter(
            Mandatory = $false,
            HelpMessage = 'Disable the popup blocker'
        )]
        [switch] $DisablePopupBlocker,
        [Alias('lang', 'locale')]
        [Parameter(
            Mandatory = $false,
            HelpMessage = 'Set the browser accept-lang http header'
        )]
        [string] $AcceptLang,
        [Parameter(
            Mandatory = $false,
            HelpMessage = ('Keystrokes to send to the Browser window, ' +
                'see documentation for cmdlet GenXdev\Send-Key')
        )]
        [string[]] $KeysToSend,
        [Alias('Escape')]
        [Parameter(
            Mandatory = $false,
            HelpMessage = 'Escape control characters when sending keys.'
        )]
        [switch] $SendKeyEscape,
        [Alias('HoldKeyboardFocus')]
        [Parameter(
            Mandatory = $false,
            HelpMessage = 'Prevent returning keyboard focus to PowerShell after sending keys.'
        )]
        [switch] $SendKeyHoldKeyboardFocus,
        [Alias('UseShiftEnter')]
        [Parameter(
            Mandatory = $false,
            HelpMessage = 'Send Shift+Enter instead of regular Enter for line breaks when sending keys.'
        )]
        [switch] $SendKeyUseShiftEnter,
        [Alias('DelayMilliSeconds')]
        [Parameter(
            Mandatory = $false,
            HelpMessage = 'Delay in milliseconds between sending each key.'
        )]
        [int] $SendKeyDelayMilliSeconds,
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
            HelpMessage = 'Restore focus to the previous window after opening the browser.'
        )]
        [Alias('rf', 'bg')]
        [switch] $RestoreFocus,
        [Alias('nw', 'new')]
        [Parameter(
            Mandatory = $false,
            HelpMessage = ("Don't re-use existing browser window, instead, " +
                'create a new one')
        )]
        [switch] $NewWindow,
        [Parameter(
            Mandatory = $false,
            HelpMessage = ('Returns a [System.Diagnostics.Process] object of ' +
                'the browserprocess')
        )]
        [Alias('pt')]
        [switch]$PassThru,
        [parameter(
            Mandatory = $false,
            HelpMessage = "Don't open webbrowser, just return the url"
        )]
        [switch] $ReturnURL,
        [parameter(
            Mandatory = $false,
            HelpMessage = 'After opening webbrowser, return the url'
        )]
        [switch] $ReturnOnlyURL,
        [Alias('nfs', 'nf')]
        [Parameter(
            Mandatory = $false,
            HelpMessage = "Don't open in fullscreen mode"
        )]
        [switch] $NoFullScreen,
        [Alias('na', 'napp', 'noappmode')]
        [Parameter(
            Mandatory = $false,
            HelpMessage = 'Do show the browser controls'
        )]
        [switch] $NoApplicationMode,
        [Parameter(
            HelpMessage = 'Removes the borders of the browser window.'
        )]
        [Alias('nb')]
        [switch] $NoBorders,
        [Parameter(
            HelpMessage = 'Position browser window either fullscreen on different monitor than PowerShell, or side by side with PowerShell on the same monitor.'
        )]
        [Alias('sbs')]
        [switch] $SideBySide,
        [Parameter(
            HelpMessage = 'Use alternative settings stored in session for AI preferences.'
        )]
        [switch] $SessionOnly,
        [Parameter(
            HelpMessage = 'Clear alternative settings stored in session for AI preferences.'
        )]
        [switch] $ClearSession,
        [Parameter(
            HelpMessage = 'Store settings only in persistent preferences without affecting session.'
        )]
        [Alias('FromPreferences')]
        [switch] $SkipSession
    )

    begin {

        # determine google domain based on language
        $code = 'www'
        if (-not [string]::IsNullOrWhiteSpace($Language)) {

            # retrieve language code from helper function
            $code = (GenXdev\Get-WebLanguageDictionary)[$Language]

            # add accept-lang parameter if not already specified
            if (-not $PSBoundParameters.ContainsKey('AcceptLang')) {

                $null = $PSBoundParameters.Add('AcceptLang', $code)
            }
        }

        # configure application mode behavior if not explicitly disabled
        if (-not $PSBoundParameters.ContainsKey('NoApplicationMode')) {

            # enable application mode for clean gaming interface
            $null = $PSBoundParameters.Add('ApplicationMode', $true)

            # ensure new window is created for clean startup
            if (-not $PSBoundParameters.ContainsKey('NewWindow')) {

                $null = $PSBoundParameters.Add('NewWindow', $true)
            }

            # enable fullscreen mode for immersive gaming experience
            if (-not $PSBoundParameters.ContainsKey('FullScreen')) {

                $null = $PSBoundParameters.Add('FullScreen', $true)
            }
        }

        # remove nofullscreen parameter if present to avoid conflicts
        if ($PSBoundParameters.ContainsKey('NoFullScreen')) {

            $null = $PSBoundParameters.Remove('NoFullScreen')
        }

        # remove duplicate nofullscreen parameter if present
        if ($PSBoundParameters.ContainsKey('NoFullScreen')) {

            $null = $PSBoundParameters.Remove('NoFullScreen')
        }

        # remove noapplicationmode parameter if present to avoid conflicts
        if ($PSBoundParameters.ContainsKey('NoApplicationMode')) {

            $null = $PSBoundParameters.Remove('NoApplicationMode')
        }

        # configure browser extensions behavior
        if (-not $PSBoundParameters.ContainsKey('BrowserExtensions')) {

            # disable browser extensions for better gaming performance
            $null = $PSBoundParameters.Add('NoBrowserExtensions', $true)
        }
        else {

            # remove browserextensions parameter to avoid conflicts
            $null = $PSBoundParameters.Remove('BrowserExtensions')
        }

        # remove spectateonly parameter as it's handled locally
        if ($PSBoundParameters.ContainsKey('SpectateOnly')) {

            $null = $PSBoundParameters.Remove('SpectateOnly')
        }

        # construct the game url based on spectate mode
        $url = ('https://yab.genxdev.net/#/ai/' +
            "$($SpectateOnly ? 'spectate': 'battle')/")

        # add url parameter if not already specified
        if (-not $PSBoundParameters.ContainsKey('Url')) {

            $null = $PSBoundParameters.Add('Url', $url)
        }

        # Copy identical parameters between functions
        $params = GenXdev\Copy-IdenticalParamValues `
            -FunctionName 'GenXdev\Open-Webbrowser' `
            -BoundParameters $PSBoundParameters `
            -DefaultValues (Microsoft.PowerShell.Utility\Get-Variable `
                -Scope Local -ErrorAction SilentlyContinue)

        GenXdev\Open-Webbrowser @params

        # output verbose information about the game url
        Microsoft.PowerShell.Utility\Write-Verbose "Game URL: $url"

        # handle return url only scenario
        if ($ReturnOnlyURL) {

            Microsoft.PowerShell.Utility\Write-Output $url
            return
        }

        # launch browser with configured parameters
        GenXdev\Open-Webbrowser @invocationArguments

        # return url if requested
        if ($ReturnURL) {

            Microsoft.PowerShell.Utility\Write-Output $url
        }
    }

    process {

    }

    end {

    }
}


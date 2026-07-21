<##############################################################################
Part of PowerShell module : GenXdev.Queries.Webbrowser
Original cmdlet filename  : Copy-PDFsFromGoogleQuery.ps1
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
Downloads PDF files found through Google search results.

.DESCRIPTION
Performs a Google query in the previously selected webbrowser tab and downloads
all found PDF files into the current directory. Supports multiple queries and
language filtering.

.PARAMETER Queries
The search terms to query Google for PDF files.

.PARAMETER Max
Maximum number of results to retrieve (default: 200).

.PARAMETER Language
Optional language filter for search results.

.EXAMPLE
Open-Webbrowser
Select-WebbrowserTab
$null = New-Item -ItemType Directory -Name pdfs
Set-Location pdfs
Copy-PDFsFromGoogleQuery "scientific paper co2" -Max 50 -Language "English"
#>
function Copy-PDFsFromGoogleQuery {

    [CmdletBinding()]
    param(
        [parameter(
            Mandatory = $true,
            Position = 0,
            ValueFromRemainingArguments = $false,
            ValueFromPipeline = $true,
            ValueFromPipelineByPropertyName = $true,
            HelpMessage = 'The search terms to query Google for PDF files'
        )]
        [Alias('q', 'Name', 'Text', 'Query')]
        [string[]] $Queries,
        [parameter(
            Mandatory = $false,
            Position = 1,
            HelpMessage = 'Maximum number of results to retrieve (default: 200)'
        )]
        [int] $Max = 200,
        [parameter(
            Mandatory = $false,
            Position = 2,
            HelpMessage = 'Optional language filter for search results'
        )]
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
            'Zulu'
        )]
        [string] $Language
    )

    process {
        foreach ($query in $Queries) {
            Microsoft.PowerShell.Utility\Write-Verbose "Processing query: $query with language: $($Language ?? 'default')"

            # construct search query with pdf filter
            $searchQuery = "filetype:pdf $query"
            Microsoft.PowerShell.Utility\Write-Verbose "Using search query: $searchQuery"

             # get search results using the fully qualified GenXdev\Get-GoogleSearchResultUrls
            $urls = GenXdev\Get-GoogleSearchResultUrls -Queries $searchQuery -Max $Max -Language $Language

            Microsoft.PowerShell.Utility\Write-Verbose "Found $($urls.Count) PDF URLs to process"
            Microsoft.PowerShell.Utility\Write-Verbose 'Starting parallel download with throttle limit: 64'

            # process urls in parallel
            $urls | Microsoft.PowerShell.Core\ForEach-Object -ThrottleLimit 64 -Parallel {
                try {
                    Microsoft.PowerShell.Utility\Write-Verbose "Processing URL: $PSItem"

                    # construct safe filename
                    $safeName = [Uri]::UnescapeDataString(
                        [IO.Path]::GetFileName($PSItem)
                    ).Split('#')[0].Split('?')[0]

                    $safeName = $safeName -replace '[\\/:*?"<>|\s]', '_'
                    Microsoft.PowerShell.Utility\Write-Verbose "Sanitized filename: $safeName"

                    # create unique filename
                    $destination = Microsoft.PowerShell.Management\Join-Path $using:PWD (
                        '{0}_{1}_{2}.pdf' -f $safeName,
                        [DateTime]::UtcNow.Ticks,
                        [Threading.Thread]::CurrentThread.ManagedThreadId
                    )

                    Microsoft.PowerShell.Utility\Write-Verbose "Downloading to: $destination"

                    # download pdf
                    $response = Microsoft.PowerShell.Utility\Invoke-WebRequest -Uri $PSItem -OutFile $destination
                    Microsoft.PowerShell.Utility\Write-Verbose "Download completed: $($response.StatusCode) - $($response.StatusDescription)"

                    $fileInfo = Microsoft.PowerShell.Management\Get-Item -LiteralPath $destination
                    Microsoft.PowerShell.Utility\Write-Verbose "Saved file: $($fileInfo.FullName) ($($fileInfo.Length) bytes)"
                    $fileInfo
                }
                catch {
                    Microsoft.PowerShell.Utility\Write-Warning "Failed to download: $PSItem. Error: $($_.Exception.Message)"
                }
            }

            Microsoft.PowerShell.Management\Get-ChildItem -LiteralPath .\ -filter "*.pdf" | Microsoft.PowerShell.Core\ForEach-Object {

                $newName = [System.Text.RegularExpressions.Regex]::Replace(($_.Name), '\.pdf_\d*_\d*\.pdf', '.pdf')
                if ($newName -eq $_.Name) { return }

                if ([IO.File]::Exists((GenXdev\Expand-Path ".\\$newName"))) {

                    $null = Microsoft.PowerShell.Management\Remove-Item -LiteralPath $_.FullName -Force
                    return;
                }

                $null = Microsoft.PowerShell.Management\Rename-Item -LiteralPath $_ $newName -Force
            }
        }
    }
}
<##############################################################################
Part of PowerShell module : GenXdev.Queries.Webbrowser
Original cmdlet filename  : Open-BingQuery.ps1
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
Opens a Bing search query in a web browser.

.DESCRIPTION
Opens one or more Bing search queries in a web browser, using configurable
browser settings and command line switches. This function provides a
comprehensive interface for performing Bing searches with extensive browser
customization options including window positioning, monitor selection, private
browsing, and keystroke automation.

The function automatically URL-encodes queries and formats them for Bing's
search API. It supports all major browsers including Edge, Chrome, and Firefox
with features like private browsing, application mode, precise window
management, and keystroke automation.

.PARAMETER Queries
The search queries to perform on Bing. Each query is automatically URL-encoded
and formatted for Bing's search API.

.PARAMETER Language
The language of the returned search results. Supports a wide range of languages
including standard languages like English, Spanish, French, as well as
specialized variants like "Bork, bork, bork!" and "Klingon".

.PARAMETER Url
The URLs to open in the browser instead of search queries. When specified,
these URLs are opened directly without performing a Bing search.

.PARAMETER Private
Opens the browser in incognito/private browsing mode for anonymous searching.

.PARAMETER Force
Force enable debugging port, stopping existing browsers if needed.

.PARAMETER Edge
Opens the search in Microsoft Edge browser.

.PARAMETER Chrome
Opens the search in Google Chrome browser.

.PARAMETER Chromium
Opens the search in Microsoft Edge or Google Chrome, depending on which is
set as the default browser.

.PARAMETER Firefox
Opens the search in Mozilla Firefox browser.

.PARAMETER All
Opens the search in all registered modern browsers simultaneously.

.PARAMETER Monitor
The monitor to display the browser on:
0 = default monitor
-1 = discard window positioning
-2 = configured secondary monitor

.PARAMETER FullScreen
Opens the browser in fullscreen mode.

.PARAMETER Width
The initial width of the webbrowser window in pixels.

.PARAMETER Height
The initial height of the webbrowser window in pixels.

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
Hide the browser controls for a distraction-free search experience.

.PARAMETER NoBrowserExtensions
Prevent loading of browser extensions during the search session.

.PARAMETER DisablePopupBlocker
Disable the popup blocker to allow search-related popups.

.PARAMETER AcceptLang
Set the browser accept-lang http header for localized search results.

.PARAMETER KeysToSend
Keystrokes to send to the browser window after opening. Uses the same format
as the GenXdev\Send-Key cmdlet.

.PARAMETER FocusWindow
Focus the browser window after opening the search.

.PARAMETER SetForeground
Set the browser window to foreground after opening.

.PARAMETER Maximize
Maximize the window after positioning

.PARAMETER SetRestored
Restore the window to normal state after positioning

.PARAMETER RestoreFocus
Restore PowerShell window focus after opening the search.

.PARAMETER NewWindow
Don't re-use existing browser window, instead create a new one.

.PARAMETER PassThru
Returns a PowerShell process object representing the browser process.

.PARAMETER ReturnURL
Don't open webbrowser, just return the formatted search URL.

.PARAMETER ReturnOnlyURL
After opening webbrowser, return the formatted search URL.

.PARAMETER SendKeyEscape
Escape control characters when sending keystrokes to the browser.

.PARAMETER SendKeyHoldKeyboardFocus
Prevent returning keyboard focus to PowerShell after sending keystrokes.

.PARAMETER SendKeyUseShiftEnter
Send Shift+Enter instead of regular Enter for line breaks when sending keys.

.PARAMETER SendKeyDelayMilliSeconds
Delay between sending different key sequences in milliseconds.

.PARAMETER NoBorders
Removes the borders of the window.

.PARAMETER SideBySide
Will either set the window fullscreen on a different monitor than Powershell,
or side by side with Powershell on the same monitor.

.PARAMETER SessionOnly
Use alternative settings stored in session for AI preferences.

.PARAMETER ClearSession
Clear alternative settings stored in session for AI preferences.

.PARAMETER SkipSession
Store settings only in persistent preferences without affecting session.

.EXAMPLE
Open-BingQuery -Queries "PowerShell scripting" -Monitor 0

Opens a Bing search for "PowerShell scripting" on the default monitor.

.EXAMPLE
bq "PowerShell scripting" -m 0

Opens a Bing search using the alias and short parameter names.

.EXAMPLE
Open-BingQuery -Queries "machine learning" -Language "English" -Private

Opens a private browsing session to search for "machine learning" with
English language results.

.EXAMPLE
"PowerShell", "automation", "scripting" | Open-BingQuery -All -Left

Searches for multiple terms via pipeline and opens results in all installed
browsers, positioning windows on the left side of the screen.
#>
function Open-BingQuery {

    [CmdletBinding()]
    [Alias('bq')]
    param(
        [Parameter(
            Mandatory = $true,
            Position = 0,
            ValueFromRemainingArguments = $false,
            ValueFromPipeline = $true,
            ValueFromPipelineByPropertyName = $true,
            HelpMessage = 'The query to execute.'
        )]
        [Alias('q', 'Name', 'Text', 'Query')]
        [string[]] $Queries,
        [Parameter(
            Mandatory = $false,
            Position = 1,
            HelpMessage = 'The language of the returned search results'
        )]
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
        [string] $Language,

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
            HelpMessage = 'Set the browser accept-lang http header'
        )]
        [Alias('lang', 'locale')]
        [string] $AcceptLang,
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
            HelpMessage = 'Opens in fullscreen mode'
        )]
        [Alias('fs', 'f')]
        [switch] $FullScreen,
        [Parameter(
            Mandatory = $false,
            HelpMessage = 'Opens in incognito/private browsing mode'
        )]
        [Alias('incognito', 'inprivate')]
        [switch] $Private,
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
            HelpMessage = ('Returns a PowerShell object of ' +
                'the browserprocess')
        )]
        [Alias('pt')]
        [switch] $PassThru,
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
            HelpMessage = ('Will either set the window fullscreen on a different ' +
                'monitor than Powershell, or side by side with Powershell on the ' +
                'same monitor')
        )]
        [Alias('sbs')]
        [switch] $SideBySide,
        [Parameter(
            Mandatory = $false,
            HelpMessage = ('Keystrokes to send to the Browser window, ' +
                'see documentation for cmdlet GenXdev\Send-Key')
        )]
        [string[]] $KeysToSend,
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
            HelpMessage = ("Don't re-use existing browser window, instead, " +
                'create a new one')
        )]
        [Alias('nw', 'new')]
        [switch] $NewWindow,
        [Parameter(
            Mandatory = $false,
            HelpMessage = "Don't open webbrowser, just return the url"
        )]
        [switch] $ReturnURL,
        [Parameter(
            Mandatory = $false,
            HelpMessage = 'After opening webbrowser, return the url'
        )]
        [switch] $ReturnOnlyURL
    )

    begin {

    }

    process {

        # process each search query provided in the queries parameter
        foreach ($query in $Queries) {

            # output verbose information about the query being processed
            Microsoft.PowerShell.Utility\Write-Verbose (
                "Processing query: $query"
            )

            # copy identical parameters from this function to open-webbrowser
            $invocationArguments = GenXdev\Copy-IdenticalParamValues `
                -BoundParameters $PSBoundParameters `
                -FunctionName 'GenXdev\Open-Webbrowser' `
                -DefaultValues (Microsoft.PowerShell.Utility\Get-Variable `
                    -Scope Local `
                    -ErrorAction SilentlyContinue)

            # process language parameter if specified by user
            if (-not [string]::IsNullOrWhiteSpace($Language)) {

                # get the language code from the web language dictionary
                $code = (GenXdev\Get-WebLanguageDictionary)[$Language]

                # set accept-lang header if not already specified
                if (-not $PSBoundParameters.ContainsKey('AcceptLang')) {

                    # assign language code to invocation arguments
                    $null = $invocationArguments.AcceptLang = $code
                }
            }

            # construct the bing search url with properly encoded query
            $invocationArguments.'Url' = (
                "https://www.bing.com/search?q=$([Uri]::EscapeUriString($query))"
            )

            # handle return url only scenario without opening browser
            if ($ReturnOnlyURL) {

                # output the formatted url without opening browser
                Microsoft.PowerShell.Utility\Write-Output (
                    $invocationArguments.Url
                )

                # return early to avoid opening browser
                return
            }

            # open search in browser with inherited parameters
            GenXdev\Open-Webbrowser @invocationArguments
        }
    }

    end {

    }
}
<##############################################################################
Part of PowerShell module : GenXdev.Queries.Webbrowser
Original cmdlet filename  : Open-BuiltWithSiteInfo.ps1
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
Opens BuiltWith website queries in a web browser.

.DESCRIPTION
Opens a BuiltWith query in a web browser, with configurable monitor settings and
browser behavior options. The function analyzes website technology stacks by
querying BuiltWith.com's technology profiling service, which provides detailed
information about web technologies, frameworks, and services used by websites.

BuiltWith.com is a comprehensive technology lookup service that identifies web
technologies, frameworks, content management systems, analytics tools, hosting
providers, and other software components used by any website. This function
provides a PowerShell interface to quickly analyze technology stacks without
manually navigating to the BuiltWith website.

.PARAMETER Queries
The website URLs or domains to query on BuiltWith.com. Accepts both domain names
(e.g., "microsoft.com") and full URLs (e.g., "https://microsoft.com"). Multiple
queries can be processed via pipeline input or comma-separated values.

.PARAMETER Language
The language of the returned search results. This sets the browser's accept-lang
header to display BuiltWith results in the specified language if supported.

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

.PARAMETER SendKeyEscape
Escape control characters when sending keys.

.PARAMETER SendKeyHoldKeyboardFocus
Prevent returning keyboard focus to PowerShell after sending keys.

.PARAMETER SendKeyUseShiftEnter
Send Shift+Enter instead of regular Enter for line breaks.

.PARAMETER SendKeyDelayMilliSeconds
Delay between sending different key sequences in milliseconds.

.PARAMETER NoBorders
Removes the borders of the window.

.PARAMETER SideBySide
Will either set the window fullscreen on a different monitor than Powershell, or
side by side with Powershell on the same monitor.

.PARAMETER SessionOnly
Use alternative settings stored in session for AI preferences.

.PARAMETER ClearSession
Clear alternative settings stored in session for AI preferences.

.PARAMETER SkipSession
Store settings only in persistent preferences without affecting session.

.EXAMPLE
Open-BuiltWithSiteInfo -Queries "microsoft.com" -Monitor 0

Opens a BuiltWith technology analysis for Microsoft.com on the default monitor.

.EXAMPLE
"microsoft.com" | Open-BuiltWithSiteInfo -m -1

Analyzes Microsoft.com using pipeline input with monitor positioning discarded.
#>
function Open-BuiltWithSiteInfo {

    [CmdletBinding()]
    param(

        [Alias('q', 'Name', 'Text', 'Query')]
        [Parameter(
            Mandatory = $true,
            Position = 0,
            ValueFromRemainingArguments = $false,
            ValueFromPipeline = $true,
            ValueFromPipelineByPropertyName = $true,
            HelpMessage = 'The website URLs or domains to query on BuiltWith.com'
        )]
        [string[]] $Queries,
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
            Position = 1,
            HelpMessage = 'The language of the returned search results'
        )]
        [string] $Language,
        [Alias('m', 'mon')]
        [Parameter(
            Mandatory = $false,
            Position = 2,
            HelpMessage = ('The monitor to use, 0 = default, -1 is discard, ' +
                '-2 = Configured secondary monitor, defaults to -1, no positioning')
        )]
        [int] $Monitor = -1,
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
        [Alias('DelayMilliSeconds')]
        [Parameter(
            Mandatory = $false,
            HelpMessage = ('Delay between different input strings in ' +
                'milliseconds when sending keys')
        )]
        [int] $SendKeyDelayMilliSeconds,
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
        [Alias('fs', 'f')]
        [Parameter(
            Mandatory = $false,
            HelpMessage = 'Opens in fullscreen mode'
        )]
        [switch] $FullScreen,
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
        [Alias('fw', 'focus')]
        [Parameter(
            Mandatory = $false,
            HelpMessage = 'Focus the browser window after opening'
        )]
        [switch] $FocusWindow,
        [Alias('fg')]
        [Parameter(
            Mandatory = $false,
            HelpMessage = 'Set the browser window to foreground after opening'
        )]
        [switch] $SetForeground,
        [Alias('pt')]
        [Parameter(
            Mandatory = $false,
            HelpMessage = 'Returns a PowerShell object of the browserprocess'
        )]
        [switch] $PassThru,
        [Alias('sbs')]
        [Parameter(
            Mandatory = $false,
            HelpMessage = 'Will either set the window fullscreen on a different monitor than Powershell, or side by side with Powershell on the same monitor'
        )]
        [switch] $SideBySide,
        [Alias('nw', 'new')]
        [Parameter(
            Mandatory = $false,
            HelpMessage = "Don't re-use existing browser window, instead, create a new one"
        )]
        [switch] $NewWindow,
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
        [Alias('nb')]
        [Parameter(
            Mandatory = $false,
            HelpMessage = 'Removes the borders of the browser window'
        )]
        [switch] $NoBorders,
        [Parameter(
            Mandatory = $false,
            HelpMessage = 'Restore PowerShell window focus'
        )]
        [Alias('rf', 'bg')]
        [switch] $RestoreFocus,
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
        [Alias('Escape')]
        [Parameter(
            Mandatory = $false,
            HelpMessage = 'Escape control characters and modifiers when sending keys'
        )]
        [switch] $SendKeyEscape,
        [Alias('HoldKeyboardFocus')]
        [Parameter(
            Mandatory = $false,
            HelpMessage = 'Hold keyboard focus on target window when sending keys'
        )]
        [switch] $SendKeyHoldKeyboardFocus,
        [Alias('UseShiftEnter')]
        [Parameter(
            Mandatory = $false,
            HelpMessage = 'Use Shift+Enter instead of Enter when sending keys'
        )]
        [switch] $SendKeyUseShiftEnter,
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
        [switch] $SkipSession
    )

    begin {

        # copy identical parameters from this function to open-webbrowser
        $params = GenXdev\Copy-IdenticalParamValues `
            -BoundParameters $PSBoundParameters `
            -FunctionName 'GenXdev\Open-Webbrowser' `
            -DefaultValues (Microsoft.PowerShell.Utility\Get-Variable `
                -Scope Local `
                -ErrorAction SilentlyContinue)

        # process language setting if specified
        if (-not [string]::IsNullOrWhiteSpace($Language)) {

            # retrieve the language code from the language dictionary
            $code = (GenXdev\Get-WebLanguageDictionary)[$Language]

            # set accept-lang header if not already specified
            if (-not $PSBoundParameters.ContainsKey('AcceptLang')) {

                $null = $params.AcceptLang = $code
            }
        }
    }

    process {

        # process each search query
        foreach ($query in $Queries) {

            # output verbose information about the query being processed
            Microsoft.PowerShell.Utility\Write-Verbose "Processing query: $query"

            # construct the builtwith url with the escaped query parameter
            $params.'Url' = ('https://builtwith.com/?' +
                [Uri]::EscapeUriString($query))

            # handle return url only scenario
            if ($ReturnOnlyURL) {

                # output the url and continue to next query
                Microsoft.PowerShell.Utility\Write-Output ($params.Url)
                continue
            }

            # refresh parameter copy for this iteration
            $params = GenXdev\Copy-IdenticalParamValues `
                -BoundParameters $PSBoundParameters `
                -FunctionName 'GenXdev\Open-Webbrowser' `
                -DefaultValues (Microsoft.PowerShell.Utility\Get-Variable `
                    -Scope Local `
                    -ErrorAction SilentlyContinue)

            # set the constructed url for this query
            $params.'Url' = ('https://builtwith.com/?' +
                [Uri]::EscapeUriString($query))

            # open the webbrowser with the constructed url
            GenXdev\Open-Webbrowser @params

            # output url if requested
            if ($ReturnURL) {

                Microsoft.PowerShell.Utility\Write-Output ($params.Url)
            }
        }
    }

    end {
    }
}
<##############################################################################
Part of PowerShell module : GenXdev.Queries.Webbrowser
Original cmdlet filename  : Open-GithubQuery.ps1
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
Opens a Github repository search query in a web browser or executes advanced
searches against the GitHub REST API supporting all available qualifiers and
search categories (repositories, code, issues, users, commits, discussions,
topics, wikis).
.DESCRIPTION
Opens a Github repository search query in a web browser with extensive
customization options or performs advanced API searches. This function
provides a powerful interface for quickly accessing Github repositories from
PowerShell with support for multiple browsers, window positioning, language
filtering, and keyboard automation, or retrieving structured data via API.
Key features:

Multiple search query support with pipeline input
Language-specific filtering with automatic localization
Multi-browser support (Edge, Chrome, Firefox)
Advanced window positioning and monitor selection
Private/incognito browsing mode
Application mode for distraction-free browsing
Keyboard automation and focus management
URL return options for programmatic use
Advanced API search with qualifiers, sorting, pagination
Support for all GitHub search types
Authentication with personal access token
Asynchronous job execution for API searches
Raw JSON or structured object output

The function automatically constructs Github search URLs for web mode or API
endpoints for API mode and passes all browser-related parameters to the
underlying Open-Webbrowser function for consistent behavior.
.PARAMETER Query
The search queries to perform on Github. Supports multiple queries and
pipeline input for batch searching. Each query will be URL-encoded and used
to search Github.
.PARAMETER Type
The major category to search. Defaults to 'Code'.
.PARAMETER In
Field(s) to search. Only valid options for the selected Type will be
accepted.
.PARAMETER User
Restrict the search to a user's resources (repos, code, issues, etc.).
.PARAMETER Org
Restrict search to an organization.
.PARAMETER Repo
Restrict search to a named repository ('owner/repo').
.PARAMETER Path
Restrict code search to specific file or directory paths (supports wildcards
per GitHub Search Syntax).
.PARAMETER Filename
Filter results by the filename (not path).
.PARAMETER Extension
Restrict code search to file extensions.
.PARAMETER Language
Filter by programming language.
.PARAMETER Size
File/repo size. Supports numeric and range syntax (see examples).
.PARAMETER State
For issues/PR.
.PARAMETER Author
Issues/PR: limit to those created by a specified user.
.PARAMETER Assignee
Issues/PR: limit to those assigned a user.
.PARAMETER Labels
Issues/PR: must be labeled with all specified strings.
.PARAMETER No
Issues/PR: must lack certain metadata (e.g., label, milestone).
.PARAMETER SortBy
Sort field (depends on Type). E.g., 'stars', 'forks', 'updated', etc.
.PARAMETER Order
'asc' or 'desc' order for sorting.
.PARAMETER PerPage
Page size (max 100).
.PARAMETER Page
Page number for paged results.
.PARAMETER Token
GitHub OAuth or Personal Access Token. If not supplied, uses GITHUB_TOKEN or
environment variable.
.PARAMETER AcceptLang
Set the browser accept-lang http header.
.PARAMETER SendKeyDelayMilliSeconds
Delay between sending different key sequences in milliseconds.
.PARAMETER Monitor
The monitor to display results on. 0 = default, -1 = discard, -2 = secondary.
.PARAMETER Width
The initial width of the browser window.
.PARAMETER Height
The initial height of the browser window.
.PARAMETER X
The initial X position of the browser window.
.PARAMETER Y
The initial Y position of the browser window.
.PARAMETER KeysToSend
Keystrokes to send to the browser window, see documentation for cmdlet
GenXdev\Send-Key.
.PARAMETER CaseSensitive
Only match case-sensitive results (where supported).
.PARAMETER AsJob
Run the search asynchronously as a PowerShell job.
.PARAMETER RawResponse
Output raw JSON result from the API.
.PARAMETER Api
Use API mode instead of opening in web browser.
.PARAMETER Private
Opens the browser in private/incognito browsing mode for anonymous searching.
.PARAMETER Force
Force enable debugging port, stopping existing browsers if needed.
.PARAMETER Edge
Opens the search results in Microsoft Edge browser.
.PARAMETER Chrome
Opens the search results in Google Chrome browser.
.PARAMETER Chromium
Opens the search results in Microsoft Edge or Google Chrome, depending on
what the default browser is.
.PARAMETER Firefox
Opens the search results in Mozilla Firefox browser.
.PARAMETER All
Opens the search results in all registered modern browsers.
.PARAMETER FullScreen
Opens the browser in fullscreen mode.
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
Disable the popup blocker in the browser.
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
Returns a [System.Diagnostics.Process] object of the browserprocess in web
mode or query object in API mode.
.PARAMETER ReturnURL
Don't open webbrowser, just return the url.
.PARAMETER ReturnOnlyURL
After opening webbrowser, return the url.
.PARAMETER SendKeyEscape
Escape control characters when sending keys.
.PARAMETER SendKeyHoldKeyboardFocus
Prevent returning keyboard focus to PowerShell after sending keys.
.PARAMETER SendKeyUseShiftEnter
Send Shift+Enter instead of regular Enter for line breaks.
.PARAMETER NoBorders
Remove window borders and title bar for a cleaner appearance.
.PARAMETER SideBySide
Place browser window side by side with PowerShell on the same monitor.
.PARAMETER SessionOnly
Use alternative settings stored in session for preferences.
.PARAMETER ClearSession
Clear alternative settings stored in session for preferences.
.PARAMETER SkipSession
Store settings only in persistent preferences without affecting session.
.EXAMPLE
Open-GithubQuery -Query "powershell module" -Language "PowerShell"
Opens a search for PowerShell modules in Github with language filtering.
.EXAMPLE
qgithub "azure functions" -Monitor 0
Opens a search for Azure Functions on the primary monitor using the alias.
.EXAMPLE
Open-GithubQuery -Type Repository -Query PowerShell -SortBy stars -Order desc
-PerPage 1
Repository search: Find top-starred PowerShell repo in GitHub
.EXAMPLE
Open-GithubQuery -Type Code -Query "def " -Language python -In File
Code search for function definitions in Python
.EXAMPLE
Open-GithubQuery -Type Issue -Query security -Repo microsoft/vscode -Labels
bug -State open
Issue search: All open bugs mentioning 'security' in microsoft/vscode
.EXAMPLE
Open-GithubQuery -Type Repository -Query PowerShell -SortBy stars -Order desc
-PerPage 1 -Api
API mode for repository search.
#>
function Open-GithubQuery {

    [CmdletBinding(
        DefaultParameterSetName = 'Web',
        SupportsShouldProcess = $true,
        HelpUri = 'https://docs.github.com/en/rest/search'
    )]
    [System.Diagnostics.CodeAnalysis.SuppressMessageAttribute('PSUseDeclaredVarsMoreThanAssignments', '')]
    [Alias('qgithub', 'qgh')]
    [OutputType([PSCustomObject])]
    param(
        [Alias('q', 'Name', 'Text', 'Queries')]
        [Parameter(
            Mandatory = $true,
            Position = 0,
            ValueFromPipeline = $true,
            ValueFromPipelineByPropertyName = $true,
            HelpMessage = ('The search queries to execute on Github. Supports ' +
                'multiple queries and pipeline input for batch searching. Each ' +
                'query will be URL-encoded and used to search Github.')
        )
        ]
        [string[]] $Query,
        [Parameter(
            Mandatory = $false,
            HelpMessage = ("The major category to search. Defaults to 'Code'.")
        )
        ]
        [ValidateSet(
            'Repository',
            'Code',
            'Issue',
            'PullRequest',
            'Commit',
            'User',
            'Discussion',
            'Topic',
            'Wiki'
        )
        ]
        [string] $Type = 'Code',
        [Parameter(
            Mandatory = $false,
            HelpMessage = ('Field(s) to search. Only valid options for the ' +
                'selected Type will be accepted.')
        )]
        [ValidateSet(
            'Name',
            'Description',
            'Readme',
            'File',
            'Path',
            'Title',
            'Body',
            'Comments',
            'Login',
            'Email',
            'FullName',
            'Topics'
        )]
        [string[]] $In,
        [Parameter(
            Mandatory = $false,
            HelpMessage = ("Restrict the search to a user's resources (repos, " +
                'code, issues, etc.).')
        )]
        [string] $User,
        [Parameter(
            Mandatory = $false,
            HelpMessage = 'Restrict search to an organization.'
        )]
        [string] $Org,
        [Parameter(
            Mandatory = $false,
            HelpMessage = ("Restrict search to a named repository " +
                "('owner/repo').")
        )]
        [string] $Repo,
        [Parameter(
            Mandatory = $false,
            ParameterSetName = 'Code',
            HelpMessage = ('Restrict code search to specific file or directory ' +
                'paths (supports wildcards per GitHub Search Syntax).')
        )]
        [string] $Path,
        [Parameter(
            Mandatory = $false,
            ParameterSetName = 'Code',
            HelpMessage = 'Filter results by the filename (not path).'
        )]
        [string] $Filename,
        [Parameter(
            Mandatory = $false,
            ParameterSetName = 'Code',
            HelpMessage = 'Restrict code search to file extensions.'
        )]
        [string] $Extension,
        [Parameter(
            Mandatory = $false,
            HelpMessage = 'Filter by programming language.'
        )]
        [string] $Language,
        [Parameter(
            Mandatory = $false,
            HelpMessage = ('File/repo size. Supports numeric and range syntax ' +
                '(see examples).')
        )]
        [string] $Size,
        [Parameter(
            Mandatory = $false,
            ParameterSetName = 'Issue',
            HelpMessage = 'For issues/PR.'
        )]
        [ValidateSet('open', 'closed', 'all')]
        [string] $State,
        [Parameter(
            Mandatory = $false,
            ParameterSetName = 'Issue',
            HelpMessage = ('Issues/PR: limit to those created by a specified ' +
                'user.')
        )]
        [string] $Author,
        [Parameter(
            Mandatory = $false,
            ParameterSetName = 'Issue',
            HelpMessage = 'Issues/PR: limit to those assigned a user.'
        )]
        [string] $Assignee,
        [Parameter(
            Mandatory = $false,
            ParameterSetName = 'Issue',
            HelpMessage = ('Issues/PR: must be labeled with all specified ' +
                'strings.')
        )]
        [string[]] $Labels,
        [Parameter(
            Mandatory = $false,
            ParameterSetName = 'Issue',
            HelpMessage = ('Issues/PR: must lack certain metadata (e.g., label, ' +
                'milestone).')
        )]
        [string[]] $No,
        [Parameter(
            Mandatory = $false,
            HelpMessage = ('Sort field (depends on Type). E.g., "stars", ' +
                '"forks", "updated", etc.')
        )]
        [string] $SortBy,
        [Parameter(
            Mandatory = $false,
            HelpMessage = '"asc" or "desc" order for sorting.'
        )]
        [ValidateSet('asc', 'desc')]
        [string] $Order,
        [Parameter(
            Mandatory = $false,
            HelpMessage = 'Page size (max 100).'
        )]
        [ValidateRange(1, 100)]
        [int] $PerPage = 10,
        [Parameter(
            Mandatory = $false,
            HelpMessage = 'Page number for paged results.'
        )]
        [ValidateRange(1, 1000)]
        [int] $Page = 1,
        [Parameter(
            Mandatory = $false,
            ParameterSetName = 'Api',
            HelpMessage = ('GitHub OAuth or Personal Access Token. If not ' +
                'supplied, uses GITHUB_TOKEN or environment variable.')
        )]
        [string] $Token,
        [Parameter(
            Mandatory = $false,
            HelpMessage = 'Set the browser accept-lang http header.'
        )]
        [Alias('lang', 'locale')]
        [string] $AcceptLang = $null,
        [Parameter(
            Mandatory = $false,
            ParameterSetName = 'Web',
            HelpMessage = ('Delay between sending different key sequences in ' +
                'milliseconds.')
        )]
        [Alias('DelayMilliSeconds')]
        [int] $SendKeyDelayMilliSeconds,
        [Parameter(
            Mandatory = $false,
            ParameterSetName = 'Web',
            HelpMessage = ('The monitor to display results on. 0 = default, ' +
                '-1 = discard, -2 = secondary.')
        )]
        [Alias('m', 'mon')]
        [int] $Monitor = -1,
        [Parameter(
            Mandatory = $false,
            ParameterSetName = 'Web',
            HelpMessage = 'The initial width of the browser window.'
        )]
        [int] $Width = -1,
        [Parameter(
            Mandatory = $false,
            ParameterSetName = 'Web',
            HelpMessage = 'The initial height of the browser window.'
        )]
        [int] $Height = -1,
        [Parameter(
            Mandatory = $false,
            ParameterSetName = 'Web',
            HelpMessage = 'The initial X position of the browser window.'
        )]
        [int] $X = -999999,
        [Parameter(
            Mandatory = $false,
            ParameterSetName = 'Web',
            HelpMessage = 'The initial Y position of the browser window.'
        )]
        [int] $Y = -999999,
        [Parameter(
            Mandatory = $false,
            ParameterSetName = 'Web',
            HelpMessage = ('Keystrokes to send to the browser window, see ' +
                'documentation for cmdlet GenXdev\Send-Key.')
        )]
        [string[]] $KeysToSend,
        [Parameter(
            Mandatory = $false,
            HelpMessage = 'Only match case-sensitive results (where supported).'
        )]
        [switch] $CaseSensitive,
        [Parameter(
            Mandatory = $false,
            ParameterSetName = 'Api',
            HelpMessage = ('Run the search asynchronously as a PowerShell ' +
                'job.')
        )]
        [switch] $AsJob,
        [Parameter(
            Mandatory = $false,
            ParameterSetName = 'Api',
            HelpMessage = 'Output raw JSON result from the API.'
        )]
        [switch] $RawResponse,
        [Parameter(
            Mandatory = $false,
            ParameterSetName = 'Api',
            HelpMessage = 'Use API mode instead of opening in web browser.'
        )]
        [switch] $Api,
        [Parameter(
            Mandatory = $false,
            ParameterSetName = 'Web',
            HelpMessage = ('Opens the browser in private/incognito browsing ' +
                'mode for anonymous searching.')
        )]
        [Alias('incognito', 'inprivate')]
        [switch] $Private,
        [Parameter(
            Mandatory = $false,
            ParameterSetName = 'Web',
            HelpMessage = ('Force enable debugging port, stopping existing ' +
                'browsers if needed.')
        )]
        [switch] $Force,
        [Parameter(
            Mandatory = $false,
            ParameterSetName = 'Web',
            HelpMessage = 'Opens the search results in Microsoft Edge browser.'
        )]
        [Alias('e')]
        [switch] $Edge,
        [Parameter(
            Mandatory = $false,
            ParameterSetName = 'Web',
            HelpMessage = 'Opens the search results in Google Chrome browser.'
        )]
        [Alias('ch')]
        [switch] $Chrome,
        [Parameter(
            Mandatory = $false,
            ParameterSetName = 'Web',
            HelpMessage = ('Opens the search results in Microsoft Edge or ' +
                'Google Chrome, depending on what the default browser is.')
        )]
        [Alias('c')]
        [switch] $Chromium,
        [Parameter(
            Mandatory = $false,
            ParameterSetName = 'Web',
            HelpMessage = 'Opens the search results in Mozilla Firefox browser.'
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
            ParameterSetName = 'Web',
            HelpMessage = 'Opens the browser in fullscreen mode.'
        )]
        [Alias('fs', 'f')]
        [switch] $FullScreen,
        [Parameter(
            Mandatory = $false,
            ParameterSetName = 'Web',
            HelpMessage = 'Place browser window on the left side of the screen.'
        )]
        [switch] $Left,
        [Parameter(
            Mandatory = $false,
            ParameterSetName = 'Web',
            HelpMessage = ('Place browser window on the right side of the ' +
                'screen.')
        )]
        [switch] $Right,
        [Parameter(
            Mandatory = $false,
            ParameterSetName = 'Web',
            HelpMessage = 'Place browser window on the top side of the screen.'
        )]
        [switch] $Top,
        [Parameter(
            Mandatory = $false,
            ParameterSetName = 'Web',
            HelpMessage = ('Place browser window on the bottom side of the ' +
                'screen.')
        )]
        [switch] $Bottom,
        [Parameter(
            Mandatory = $false,
            ParameterSetName = 'Web',
            HelpMessage = 'Place browser window in the center of the screen.'
        )]
        [switch] $Centered,
        [Parameter(
            Mandatory = $false,
            ParameterSetName = 'Web',
            HelpMessage = 'Hide the browser controls.'
        )]
        [Alias('a', 'app', 'appmode')]
        [switch] $ApplicationMode,
        [Parameter(
            Mandatory = $false,
            ParameterSetName = 'Web',
            HelpMessage = 'Prevent loading of browser extensions.'
        )]
        [Alias('de', 'ne', 'NoExtensions')]
        [switch] $NoBrowserExtensions,
        [Parameter(
            Mandatory = $false,
            ParameterSetName = 'Web',
            HelpMessage = 'Disable the popup blocker in the browser.'
        )]
        [Alias('allowpopups')]
        [switch] $DisablePopupBlocker,
        [Parameter(
            Mandatory = $false,
            ParameterSetName = 'Web',
            HelpMessage = 'Focus the browser window after opening.'
        )]
        [Alias('fw', 'focus')]
        [switch] $FocusWindow,
        [Parameter(
            Mandatory = $false,
            ParameterSetName = 'Web',
            HelpMessage = ('Set the browser window to foreground after ' +
                'opening.')
        )]
        [Alias('fg')]
        [switch] $SetForeground,
        [Parameter(
            Mandatory = $false,
            ParameterSetName = 'Web',
            HelpMessage = 'Maximize the window after positioning.'
        )]
        [switch] $Maximize,
        [Parameter(
            Mandatory = $false,
            ParameterSetName = 'Web',
            HelpMessage = 'Restore PowerShell window focus.'
        )]
        [Alias('rf', 'bg')]
        [switch] $RestoreFocus,
        [Parameter(
            Mandatory = $false,
            ParameterSetName = 'Web',
            HelpMessage = ("Don't re-use existing browser window, instead, " +
                'create a new one.')
        )]
        [Alias('nw', 'new')]
        [switch] $NewWindow,
        [Parameter(
            Mandatory = $false,
            HelpMessage = ('Returns a [System.Diagnostics.Process] object of ' +
                'the browserprocess in web mode or query object in API mode.')
        )]
        [Alias('pt')]
        [switch] $PassThru,
        [Parameter(
            Mandatory = $false,
            ParameterSetName = 'Web',
            HelpMessage = "Don't open webbrowser, just return the url."
        )]
        [switch] $ReturnURL,
        [Parameter(
            Mandatory = $false,
            ParameterSetName = 'Web',
            HelpMessage = 'After opening webbrowser, return the url.'
        )]
        [switch] $ReturnOnlyURL,
        [Parameter(
            Mandatory = $false,
            ParameterSetName = 'Web',
            HelpMessage = 'Escape control characters when sending keys.'
        )]
        [Alias('Escape')]
        [switch] $SendKeyEscape,
        [Parameter(
            Mandatory = $false,
            ParameterSetName = 'Web',
            HelpMessage = ('Prevent returning keyboard focus to PowerShell ' +
                'after sending keys.')
        )]
        [Alias('HoldKeyboardFocus')]
        [switch] $SendKeyHoldKeyboardFocus,
        [Parameter(
            Mandatory = $false,
            ParameterSetName = 'Web',
            HelpMessage = ('Send Shift+Enter instead of regular Enter for ' +
                'line breaks.')
        )]
        [Alias('UseShiftEnter')]
        [switch] $SendKeyUseShiftEnter,
        [Parameter(
            Mandatory = $false,
            ParameterSetName = 'Web',
            HelpMessage = ('Remove window borders and title bar for a cleaner ' +
                'appearance.')
        )]
        [Alias('nb')]
        [switch] $NoBorders,
        [Parameter(
            Mandatory = $false,
            ParameterSetName = 'Web',
            HelpMessage = ('Place browser window side by side with PowerShell ' +
                'on the same monitor.')
        )]
        [Alias('sbs')]
        [switch] $SideBySide,
        [Parameter(
            Mandatory = $false,
            ParameterSetName = 'Web',
            HelpMessage = ('Use alternative settings stored in session for ' +
                'preferences.')
        )]
        [switch] $SessionOnly,
        [Parameter(
            Mandatory = $false,
            ParameterSetName = 'Web',
            HelpMessage = ('Clear alternative settings stored in session for ' +
                'preferences.')
        )]
        [switch] $ClearSession,
        [Parameter(
            Mandatory = $false,
            ParameterSetName = 'Web',
            HelpMessage = ('Store settings only in persistent preferences ' +
                'without affecting session.')
        )]
        [Alias('FromPreferences')]
        [switch] $SkipSession
    )

    begin {
        $invocationArguments = GenXdev\Copy-IdenticalParamValues `
            -BoundParameters $PSBoundParameters `
            -FunctionName 'GenXdev\Open-Webbrowser' `
            -DefaultValues (Microsoft.PowerShell.Utility\Get-Variable `
                -Scope Local `
                -ErrorAction SilentlyContinue)

        $ProgressActivity = "Executing GitHub query"
        Microsoft.PowerShell.Utility\Write-Verbose "Preparing request for type: $Type"

        if ($PSCmdlet.ParameterSetName -eq 'Api') {

            if (-not $Token) {
                $Token = $env:GITHUB_TOKEN
                if (-not $Token) {
                    Microsoft.PowerShell.Utility\Write-Warning "No GitHub API token provided; you will be subject to very strict rate limits."
                }
            }
            $AuthHeader = @{}
            if ($Token) {
                $AuthHeader['Authorization'] = "token $Token"
            }
            $Headers = $AuthHeader + @{
                "Accept"     = "application/vnd.github.v3+json"
                "User-Agent" = "Open-GithubQuery-PS/1.0"
            }

            $ApiEndpoint = switch ($Type) {
                'Repository' { "https://api.github.com/search/repositories" }
                'Code' { "https://api.github.com/search/code" }
                'Issue' { "https://api.github.com/search/issues" }
                'PullRequest' { "https://api.github.com/search/issues" }
                'Commit' { "https://api.github.com/search/commits" }
                'User' { "https://api.github.com/search/users" }
                'Discussion' { "https://api.github.com/search/discussions" }
                'Topic' { "https://api.github.com/search/topics" }
                'Wiki' { "https://api.github.com/search/wikis" }
                default { throw "Unsupported search type: $Type" }
            }
        }

        $Qualifiers = @()
        if ($User) { $Qualifiers += "user:$User" }
        if ($Org) { $Qualifiers += "org:$Org" }
        if ($Repo) { $Qualifiers += "repo:$Repo" }
        if ($In) { foreach ($f in $In) { $Qualifiers += "in:$f" } }
        if ($Language) { $Qualifiers += "language:$Language" }
        if ($Size) { $Qualifiers += "size:$Size" }
        if ($Path -and $Type -eq 'Code') { $Qualifiers += "path:$Path" }
        if ($Filename -and $Type -eq 'Code') { $Qualifiers += "filename:$Filename" }
        if ($Extension -and $Type -eq 'Code') { $Qualifiers += "extension:$Extension" }
        if ($CaseSensitive) { $Qualifiers += "case:yes" }
        if ($State -and ($Type -eq 'Issue' -or $Type -eq 'PullRequest')) {
            $Qualifiers += "state:$State"
        }
        if ($Author -and ($Type -eq 'Issue' -or $Type -eq 'PullRequest')) {
            $Qualifiers += "author:$Author"
        }
        if ($Assignee -and ($Type -eq 'Issue' -or $Type -eq 'PullRequest')) {
            $Qualifiers += "assignee:$Assignee"
        }
        if ($Labels -and ($Type -eq 'Issue' -or $Type -eq 'PullRequest')) {
            foreach ($label in $Labels) { $Qualifiers += "label:$label" }
        }
        if ($No -and ($Type -eq 'Issue' -or $Type -eq 'PullRequest')) {
            foreach ($noq in $No) { $Qualifiers += "no:$noq" }
        }
        if ($Type -eq 'PullRequest') { $Qualifiers += "is:pr" }
        elseif ($Type -eq 'Issue') { $Qualifiers += "is:issue" }
    }

    process {
        foreach ($q in $Query) {

            Microsoft.PowerShell.Utility\Write-Verbose "Processing Github search query: $q"

            $QueryString = [string]::Join(" ", $q, $Qualifiers -join ' ')

            if ($PSCmdlet.ParameterSetName -eq 'Api') {

                $Uri = "$ApiEndpoint?q=$([Uri]::EscapeDataString($QueryString))&per_page=$PerPage&page=$Page"
                if ($SortBy) { $Uri += "&sort=$SortBy" }
                if ($Order) { $Uri += "&order=$Order" }

                if ($PSCmdlet.ShouldProcess("GitHub", "Run $Type search query")) {
                    try {
                        Microsoft.PowerShell.Utility\Write-Progress -Activity $ProgressActivity -Status "Calling GitHub REST API" -PercentComplete 10

                        $Result = if ($AsJob) {
                            Microsoft.PowerShell.Core\Start-Job -ScriptBlock {
                                param($Uri, $Headers)
                                Microsoft.PowerShell.Utility\Invoke-RestMethod -Uri $Uri -Headers $Headers -Method Get
                            } -ArgumentList $Uri, $Headers | Microsoft.PowerShell.Core\Wait-Job | Microsoft.PowerShell.Core\Receive-Job
                        }
                        else {
                            Microsoft.PowerShell.Utility\Invoke-RestMethod -Uri $Uri -Headers $Headers -Method Get
                        }

                        Microsoft.PowerShell.Utility\Write-Progress -Activity $ProgressActivity -Completed

                        if ($RawResponse) {
                            Microsoft.PowerShell.Utility\Write-Output $Result
                            return
                        }

                        if ($null -ne $Result.items) {
                            foreach ($item in $Result.items) {
                                switch ($Type) {
                                    'Repository' {
                                        [PSCustomObject]@{
                                            Name        = $item.name
                                            FullName    = $item.full_name
                                            Owner       = $item.owner.login
                                            Url         = $item.html_url
                                            Description = $item.description
                                            Fork        = $item.fork
                                            LastUpdated = $item.updated_at
                                            LastPushed  = $item.pushed_at
                                            Language    = $item.language
                                            Stars       = $item.stargazers_count
                                            Forks       = $item.forks_count
                                            Topics      = $item.topics
                                            Visibility  = $item.visibility
                                        }
                                    }
                                    'Code' {
                                        [PSCustomObject]@{
                                            Name       = $item.name
                                            Path       = $item.path
                                            Repository = $item.repository.full_name
                                            RepoUrl    = $item.repository.html_url
                                            HtmlUrl    = $item.html_url
                                            Language   = $item.language
                                            Score      = $item.score
                                            Lines      = $item.line_numbers
                                            Sha        = $item.sha
                                        }
                                    }
                                    'Issue' {
                                        [PSCustomObject]@{
                                            Number   = $item.number
                                            Title    = $item.title
                                            Url      = $item.html_url
                                            State    = $item.state
                                            Author   = $item.user.login
                                            Labels   = $item.labels
                                            Comments = $item.comments
                                            Created  = $item.created_at
                                            Updated  = $item.updated_at
                                            Closed   = $item.closed_at
                                            Body     = $item.body
                                        }
                                    }

                                    'PullRequest' {
                                        [PSCustomObject]@{
                                            Number   = $item.number
                                            Title    = $item.title
                                            Url      = $item.html_url
                                            State    = $item.state
                                            Author   = $item.user.login
                                            Labels   = $item.labels
                                            Comments = $item.comments
                                            Created  = $item.created_at
                                            Updated  = $item.updated_at
                                            Closed   = $item.closed_at
                                            Body     = $item.body
                                        }
                                    }
                                    'User' {
                                        [PSCustomObject]@{
                                            UserName = $item.login
                                            Type     = $item.type
                                            Url      = $item.html_url
                                            Avatar   = $item.avatar_url
                                            Score    = $item.score
                                        }
                                    }
                                    default { Microsoft.PowerShell.Utility\Write-Output $item }
                                }
                            }
                        }
                        else {
                            Microsoft.PowerShell.Utility\Write-Warning "No results returned from GitHub API. Check parameters."
                        }

                        if ($PassThru) {
                            Microsoft.PowerShell.Utility\Write-Output ([PSCustomObject]@{
                                    Query      = $q
                                    Type       = $Type
                                    Parameters = $PSBoundParameters
                                    RawUri     = $Uri
                                })
                        }
                    }
                    catch {
                        Microsoft.PowerShell.Utility\Write-Error "GitHub API request failed: $_"
                        if ($_.Exception.Response -and $_.Exception.Response.Headers) {
                            try {
                                $RateLimit = $_.Exception.Response.Headers["X-RateLimit-Remaining"]
                                $LimitReset = $_.Exception.Response.Headers["X-RateLimit-Reset"]
                                if ($null -ne $RateLimit) {
                                    Microsoft.PowerShell.Utility\Write-Warning ("GitHub API rate limit remaining: $RateLimit. " +
                                        "Resets at: $([DateTimeOffset]::FromUnixTimeSeconds([int]$LimitReset))")
                                }
                            }
                            catch {

                            }
                        }
                    }
                }
            }
            else {

                $webType = switch ($Type) {
                    'Repository' { 'repositories' }
                    'Code' { 'code' }
                    'Issue' { 'issues' }
                    'PullRequest' { 'issues' }
                    'Commit' { 'commits' }
                    'User' { 'users' }
                    'Discussion' { 'discussions' }
                    'Topic' { 'topics' }
                    'Wiki' { 'wikis' }
                    default { 'repositories' }
                }

                $webUrl = "https://github.com/search?q=$([Uri]::EscapeDataString($QueryString))&type=$webType"
                if ($SortBy) { $webUrl += "&s=$SortBy" }
                if ($Order) { $webUrl += "&o=$Order" }
                if ($PerPage -ne 10) { $webUrl += "&per_page=$PerPage" }
                if ($Page -ne 1) { $webUrl += "&p=$Page" }

                $invocationArguments.'Url' = $webUrl

                if ($ReturnOnlyURL) {
                    Microsoft.PowerShell.Utility\Write-Output ($invocationArguments.Url)
                    continue
                }

                GenXdev\Open-Webbrowser @invocationArguments

                if ($ReturnURL) {
                    Microsoft.PowerShell.Utility\Write-Output ($invocationArguments.Url)
                }
            }
        }
    }

    end {

    }
}
<##############################################################################
Part of PowerShell module : GenXdev.Queries.Webbrowser
Original cmdlet filename  : Open-GoogleQuery.ps1
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
Opens Google queries in a web browser with configurable settings and extensive
customization options.

.DESCRIPTION
Opens one or more Google queries in a web browser with comprehensive support
for multiple languages, monitor selection, window positioning, browser
selection, and keyboard automation. The function provides a feature-rich
interface for performing Google searches with precise control over browser
behavior and appearance.

Key features include:
- Support for 100+ languages via Google's language filtering
- Multi-monitor support with automatic or manual monitor selection
- Window positioning (left, right, top, bottom, centered, fullscreen)
- Private/incognito browsing mode support
- Application mode for distraction-free browsing
- Extension and popup blocking options
- Focus management and window manipulation
- Batch query processing with pipeline support
- Keystroke automation to browser windows
- Smart parameter pass-through to underlying browser functions

The function automatically formats search queries for Google's search engine
and applies language filtering when specified. All browser positioning and
management features are inherited from the underlying Open-Webbrowser function.

.PARAMETER Queries
The search terms to query on Google. Supports multiple queries via pipeline
input or array specification. Each query is automatically URL-encoded for
safe transmission to Google's search servers.

.PARAMETER Language
The language for Google search results. Supports over 100 languages including
major world languages, regional dialects, and specialty languages like
Klingon and Pirate. The language setting affects both the search interface
and result filtering.

.PARAMETER Private
Opens the browser in private/incognito browsing mode. Uses InPrivate for
Edge and incognito for Chrome to prevent search history retention.

.PARAMETER Force
Forces enabling of the debugging port by stopping existing browser instances
if needed. Useful when browser automation features are required.

.PARAMETER Edge
Specifically opens queries in Microsoft Edge browser.

.PARAMETER Chrome
Specifically opens queries in Google Chrome browser.

.PARAMETER Chromium
Opens queries in either Microsoft Edge or Google Chrome, depending on which
is set as the default browser. Prefers Chromium-based browsers.

.PARAMETER Firefox
Specifically opens queries in Mozilla Firefox browser.

.PARAMETER All
Opens the specified queries in all installed modern browsers simultaneously.

.PARAMETER Monitor
The monitor to use for window placement:
- 0 = Primary monitor
- -1 = Discard positioning (no window management)
- -2 = Configured secondary monitor
Defaults to -1 for fast query execution without positioning.

.PARAMETER FullScreen
Opens the browser in fullscreen mode using F11 key simulation.

.PARAMETER Width
The initial width of the browser window in pixels. When not specified,
uses the monitor's working area width or half-width for side positioning.

.PARAMETER Height
The initial height of the browser window in pixels. When not specified,
uses the monitor's working area height or half-height for top/bottom
positioning.

.PARAMETER X
The initial X coordinate for window placement. When not specified, uses
the monitor's left edge. Can be specified relative to the selected monitor.

.PARAMETER Y
The initial Y coordinate for window placement. When not specified, uses
the monitor's top edge. Can be specified relative to the selected monitor.

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
Hides browser controls for a distraction-free search experience. Creates an
app-like interface for focused research.

.PARAMETER NoBrowserExtensions
Prevents loading of browser extensions during the search session. Uses safe
mode for Firefox and --disable-extensions for Chromium browsers.

.PARAMETER DisablePopupBlocker
Disables the browser's popup blocking functionality to allow search-related
popups and advertisements.

.PARAMETER AcceptLang
Sets the browser's Accept-Language HTTP header for internationalization.
Overrides the language parameter when both are specified.

.PARAMETER KeysToSend
Keystrokes to send to the browser window after opening the search. Uses the
same format as the GenXdev\Send-Key cmdlet for automation.

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
Gives focus to the browser window after opening the search.

.PARAMETER SetForeground
Brings the browser window to the foreground after opening the search.

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
for each search query.

.PARAMETER PassThru
Returns a PowerShell process object representing the browser process for
further automation or monitoring.

.PARAMETER ReturnURL
Don't open the web browser, just return the formatted Google search URL
for the query without launching any browser.

.PARAMETER ReturnOnlyURL
After opening the web browser with the search, return the formatted Google
search URL. Useful for logging or further processing.

.EXAMPLE
Open-GoogleQuery -Queries "PowerShell scripting" -Language "English" -Monitor 0

Opens a Google search for "PowerShell scripting" in English on the primary
monitor.

.EXAMPLE
q "machine learning algorithms" -m 2 -fs

Opens a Google search for "machine learning algorithms" in fullscreen mode
on monitor 2 using aliases.

.EXAMPLE
"PowerShell", "Python", "JavaScript" | Open-GoogleQuery -Language "English" -Chrome

Opens multiple Google searches in Chrome via pipeline input, each in English.

.EXAMPLE
Open-GoogleQuery -Queries "artificial intelligence" -Private -NewWindow

Opens a private browsing search for "artificial intelligence" in a new window.

.EXAMPLE
Open-GoogleQuery -Queries "web development" -ApplicationMode -Centered

Opens a search in application mode (no browser controls) centered on screen.
#>
function Open-GoogleQuery {

    [CmdletBinding()]

    param(
        [Alias('Name', 'Text', 'Query')]
        [Parameter(
            Position = 0,
            Mandatory = $true,
            ValueFromRemainingArguments = $false,
            ValueFromPipeline = $true,
            ValueFromPipelineByPropertyName = $true,
            HelpMessage = 'The search terms to query on Google'
        )]
        [string[]] $Queries,
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
            Position = 1,
            HelpMessage = 'The language for Google search results'
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
                '-2 = Configured secondary monitor, defaults to -1')
        )]
        [int] $Monitor = -1,
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
            HelpMessage = ('Place browser window on the right side of ' +
                'the screen')
        )]
        [switch] $Right,
        [Parameter(
            Mandatory = $false,
            HelpMessage = 'Place browser window on the top side of the screen'
        )]
        [switch] $Top,
        [Parameter(
            Mandatory = $false,
            HelpMessage = ('Place browser window on the bottom side of ' +
                'the screen')
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
            HelpMessage = 'Removes the borders of the window'
        )]
        [Alias('nb')]
        [switch] $NoBorders,
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
            HelpMessage = 'Position browser window either fullscreen on different monitor than PowerShell, or side by side with PowerShell on the same monitor.'
        )]
        [Alias('sbs')]
        [switch] $SideBySide
    )

    begin {

        # copy identical parameters between this function and Open-Webbrowser
        $invocationArguments = GenXdev\Copy-IdenticalParamValues `
            -BoundParameters $PSBoundParameters `
            -FunctionName 'GenXdev\Open-Webbrowser' `
            -DefaultValues (Microsoft.PowerShell.Utility\Get-Variable `
                -Scope Local `
                -ErrorAction SilentlyContinue)

        # initialize language code for google search filtering
        $code = $null

        # check if a language was specified for search results
        if (-not [string]::IsNullOrWhiteSpace($Language)) {

            # retrieve the language code from the language dictionary
            $code = (GenXdev\Get-WebLanguageDictionary)[$Language]

            # set accept-lang header if not already specified by user
            if (-not $PSBoundParameters.ContainsKey('AcceptLang')) {

                # automatically set the accept language header
                $null = $invocationArguments.AcceptLang = $code
            }
        }

        # default to english if no valid language code was found
        if ([string]::IsNullOrWhiteSpace($code)) {

            $code = 'en'
        }
    }


    process {

        # iterate through each search query provided by the user
        foreach ($query in $Queries) {

            # output verbose information about the current query being processed
            Microsoft.PowerShell.Utility\Write-Verbose "Processing query: $query"

            # construct the google search url with proper encoding and language
            $invocationArguments.'Url' = (
                'https://www.google.com/search?q=' +
                "$([Uri]::EscapeUriString($query))&udm=14&lr=lang_$code"
            )

            # check if user only wants the url without opening browser
            if ($ReturnOnlyURL) {

                # return the formatted url without opening any browser
                Microsoft.PowerShell.Utility\Write-Output (
                    $invocationArguments.Url
                )
                continue
            }

            # launch the browser with the constructed google search url
            GenXdev\Open-Webbrowser @invocationArguments

            # return the url if the user requested it along with browser launch
            if ($ReturnURL) {

                # output the formatted google search url
                Microsoft.PowerShell.Utility\Write-Output (
                    $invocationArguments.Url
                )
            }
        }
    }

    end {
    }
}
<##############################################################################
Part of PowerShell module : GenXdev.Queries.Webbrowser
Original cmdlet filename  : Open-GoogleSiteInfo.ps1
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
Opens Google site information queries in a web browser.

.DESCRIPTION
Opens multiple Google search queries related to site information (site:, link:,
related:) in a web browser for the specified domain(s).

.PARAMETER Queries
The domain names to query for site information.

.PARAMETER Monitor
The monitor to display the browser on. 0 = default, -1 = discard,
-2 = configured secondary monitor.

.EXAMPLE
Open-GoogleSiteInfo -Queries "example.com" -Monitor 0

.EXAMPLE
"example.com" | Open-GoogleSiteInfo -mon -1
#>
function Open-GoogleSiteInfo {

    [CmdletBinding()]
    [Alias()]
    param(
        [Alias('q', 'Name', 'Text', 'Query')]
        [Parameter(
            Mandatory = $true,
            Position = 0,
            ValueFromRemainingArguments = $false,
            ValueFromPipeline = $true,
            ValueFromPipelineByPropertyName = $true,
            HelpMessage = 'The query to execute.'
        )]
        [string[]] $Queries,
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
            Position = 2,
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
            HelpMessage = 'The monitor to use, 0 = default, -1 is discard, -2 = Configured secondary monitor, defaults to -1, no positioning'
        )]
        [int] $Monitor = -1,
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
        [Parameter(
            Mandatory = $false,
            HelpMessage = 'Removes window borders from the browser window'
        )]
        [Alias('nb')]
        [switch] $NoBorders,
        [Parameter(
            Mandatory = $false,
            HelpMessage = 'Use session-only mode for browser profile (no persistent data)'
        )]
        [switch] $SessionOnly,
        [Parameter(
            Mandatory = $false,
            HelpMessage = 'Clear browser session/profile data before opening'
        )]
        [switch] $ClearSession,
        [Parameter(
            Mandatory = $false,
            HelpMessage = 'Skip using a browser session/profile (use default)'
        )]
        [Alias('FromPreferences')]
        [switch] $SkipSession,
        [Parameter(
            Mandatory = $false,
            HelpMessage = 'Open browser windows side by side'
        )]
        [Alias('sbs')]
        [switch] $SideBySide,
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

        [Alias('fw', 'focus')]
        [Parameter(
            Mandatory = $false,
            HelpMessage = 'Focus the browser window after opening'
        )]
        [switch] $FocusWindow,


        [Alias('fg')]
        [Parameter(
            Mandatory = $false,
            HelpMessage = 'Set the browser window to foreground after opening'
        )]
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
        [Alias('pt')]
        [Parameter(
            Mandatory = $false,
            HelpMessage = 'Returns a [System.Diagnostics.Process] object of the browserprocess'
        )]
        [switch] $PassThru,
        [parameter(
            Mandatory = $false,
            HelpMessage = "Don't open webbrowser, just return the url"
        )]
        [switch] $ReturnURL,
        [parameter(
            Mandatory = $false,
            HelpMessage = 'After opening webbrowser, return the url'
        )]
        [switch] $ReturnOnlyURL

    )

    begin {
        # determine google domain based on language
        $invocationArguments = GenXdev\Copy-IdenticalParamValues `
            -BoundParameters $PSBoundParameters `
            -FunctionName 'GenXdev\Open-GoogleQuery' `
            -DefaultValues (Microsoft.PowerShell.Utility\Get-Variable -Scope Local -ErrorAction SilentlyContinue)
    }


    process {

        # process each search query
        foreach ($query in $Queries) {

            Microsoft.PowerShell.Utility\Write-Verbose "Processing query: $query"

            $invocationArguments.'Queries' = @(
                "site:$Query",
                "link:$Query",
                "related:$Query"
            )

            # execute the google search queries
            GenXdev\Open-GoogleQuery @invocationArguments
        }
    }

    end {

        Microsoft.PowerShell.Utility\Write-Verbose 'Completed Google site information queries'
    }
}
<##############################################################################
Part of PowerShell module : GenXdev.Queries.Webbrowser
Original cmdlet filename  : Open-GrokipediaQuery.ps1
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
Opens a Grokipedia query in a webbrowser.

.DESCRIPTION
Opens one or more Grokipedia search queries in a web browser with extensive
configuration options. Supports configurable browser behavior, monitor
selection, and window positioning. Queries are URL encoded and opened using
the specified language's Grokipedia domain with full localization support.

The function provides comprehensive browser control including private browsing
modes, window positioning, keyboard automation, and multi-monitor support.
It automatically handles URL encoding and language code mapping for
international Grokipedia domains.

.PARAMETER Queries
One or more search terms to look up on Grokipedia. Multiple queries will open
in separate browser instances. Supports pipeline input for batch processing.

.PARAMETER Private
Opens in incognito/private browsing mode for anonymous searches.

.PARAMETER Force
Force enable debugging port, stopping existing browsers if needed.

.PARAMETER Edge
Opens in Microsoft Edge browser.

.PARAMETER Chrome
Opens in Google Chrome browser.

.PARAMETER Chromium
Opens in Microsoft Edge or Google Chrome, depending on default browser.

.PARAMETER Firefox
Opens in Mozilla Firefox browser.

.PARAMETER All
Opens in all registered modern browsers simultaneously.

.PARAMETER Monitor
The monitor to use for window placement. 0=default, -1=discard positioning,
-2=configured secondary monitor, positive numbers=specific monitor.

.PARAMETER FullScreen
Opens in fullscreen mode using F11 key simulation.

.PARAMETER Width
The initial width of the webbrowser window in pixels.

.PARAMETER Height
The initial height of the webbrowser window in pixels.

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
Hide the browser controls for distraction-free reading.

.PARAMETER NoBrowserExtensions
Prevent loading of browser extensions.

.PARAMETER DisablePopupBlocker
Disable the popup blocker.

.PARAMETER AcceptLang
Set the browser accept-lang http header for language preferences.

.PARAMETER KeysToSend
Keystrokes to send to the browser window after opening. Uses the same format
as GenXdev\Send-Key cmdlet.

.PARAMETER SendKeyEscape
Escape control characters when sending keystrokes to the browser.

.PARAMETER SendKeyHoldKeyboardFocus
Prevent returning keyboard focus to PowerShell after sending keystrokes.

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
Restore PowerShell window focus after opening browser.

.PARAMETER NewWindow
Don't re-use existing browser window, instead create a new one.

.PARAMETER PassThru
Returns a PowerShell process object representing the browser process.

.PARAMETER ReturnURL
Don't open webbrowser, just return the formatted Grokipedia URL.

.PARAMETER ReturnOnlyURL
After opening webbrowser, return the formatted Grokipedia URL.

.EXAMPLE
Open-GrokipediaQuery -Queries "PowerShell" -Monitor 0 -Language "English"

Opens a Grokipedia search for "PowerShell" in English on the default monitor.

.EXAMPLE
wiki "PowerShell" -mon 0

Opens a Grokipedia search using the alias with positional parameters.

.EXAMPLE
"PowerShell", "Windows" | Open-GrokipediaQuery -Private

Searches for multiple terms in Grokipedia using private browsing mode.
#>
function Open-GrokipediaQuery {

    [CmdletBinding()]
    [Alias('wiki')]

    param(
        [Parameter(
            Mandatory = $true,
            Position = 0,
            ValueFromRemainingArguments = $false,
            ValueFromPipeline = $true,
            ValueFromPipelineByPropertyName = $true,
            HelpMessage = 'The Grokipedia search query to execute'
        )]
        [Alias('q', 'Name', 'Text', 'Query')]
        [string[]] $Queries,
        # ########################################################################
        # [Parameter(
        #     Mandatory = $false,
        #     Position = 1,
        #     HelpMessage = ('The language of the Grokipedia search results')
        # )]
        # [ValidateSet(
        #     'Afrikaans',
        #     'Akan',
        #     'Albanian',
        #     'Amharic',
        #     'Arabic',
        #     'Armenian',
        #     'Azerbaijani',
        #     'Basque',
        #     'Belarusian',
        #     'Bemba',
        #     'Bengali',
        #     'Bihari',
        #     'Bork, bork, bork!',
        #     'Bosnian',
        #     'Breton',
        #     'Bulgarian',
        #     'Cambodian',
        #     'Catalan',
        #     'Cherokee',
        #     'Chichewa',
        #     'Chinese (Simplified)',
        #     'Chinese (Traditional)',
        #     'Corsican',
        #     'Croatian',
        #     'Czech',
        #     'Danish',
        #     'Dutch',
        #     'Elmer Fudd',
        #     'English',
        #     'Esperanto',
        #     'Estonian',
        #     'Ewe',
        #     'Faroese',
        #     'Filipino',
        #     'Finnish',
        #     'French',
        #     'Frisian',
        #     'Ga',
        #     'Galician',
        #     'Georgian',
        #     'German',
        #     'Greek',
        #     'Guarani',
        #     'Gujarati',
        #     'Hacker',
        #     'Haitian Creole',
        #     'Hausa',
        #     'Hawaiian',
        #     'Hebrew',
        #     'Hindi',
        #     'Hungarian',
        #     'Icelandic',
        #     'Igbo',
        #     'Indonesian',
        #     'Interlingua',
        #     'Irish',
        #     'Italian',
        #     'Japanese',
        #     'Javanese',
        #     'Kannada',
        #     'Kazakh',
        #     'Kinyarwanda',
        #     'Kirundi',
        #     'Klingon',
        #     'Kongo',
        #     'Korean',
        #     'Krio (Sierra Leone)',
        #     'Kurdish',
        #     'Kurdish (Soranî)',
        #     'Kyrgyz',
        #     'Laothian',
        #     'Latin',
        #     'Latvian',
        #     'Lingala',
        #     'Lithuanian',
        #     'Lozi',
        #     'Luganda',
        #     'Luo',
        #     'Macedonian',
        #     'Malagasy',
        #     'Malay',
        #     'Malayalam',
        #     'Maltese',
        #     'Maori',
        #     'Marathi',
        #     'Mauritian Creole',
        #     'Moldavian',
        #     'Mongolian',
        #     'Montenegrin',
        #     'Nepali',
        #     'Nigerian Pidgin',
        #     'Northern Sotho',
        #     'Norwegian',
        #     'Norwegian (Nynorsk)',
        #     'Occitan',
        #     'Oriya',
        #     'Oromo',
        #     'Pashto',
        #     'Persian',
        #     'Pirate',
        #     'Polish',
        #     'Portuguese (Brazil)',
        #     'Portuguese (Portugal)',
        #     'Punjabi',
        #     'Quechua',
        #     'Romanian',
        #     'Romansh',
        #     'Runyakitara',
        #     'Russian',
        #     'Scots Gaelic',
        #     'Serbian',
        #     'Serbo-Croatian',
        #     'Sesotho',
        #     'Setswana',
        #     'Seychellois Creole',
        #     'Shona',
        #     'Sindhi',
        #     'Sinhalese',
        #     'Slovak',
        #     'Slovenian',
        #     'Somali',
        #     'Spanish',
        #     'Spanish (Latin American)',
        #     'Sundanese',
        #     'Swahili',
        #     'Swedish',
        #     'Tajik',
        #     'Tamil',
        #     'Tatar',
        #     'Telugu',
        #     'Thai',
        #     'Tigrinya',
        #     'Tonga',
        #     'Tshiluba',
        #     'Tumbuka',
        #     'Turkish',
        #     'Turkmen',
        #     'Twi',
        #     'Uighur',
        #     'Ukrainian',
        #     'Urdu',
        #     'Uzbek',
        #     'Vietnamese',
        #     'Welsh',
        #     'Wolof',
        #     'Xhosa',
        #     'Yiddish',
        #     'Yoruba',
        #     'Zulu')]
        # [string] $Language,
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
                '-2 = Configured secondary monitor')
        )]
        [Alias('m', 'mon')]
        [int] $Monitor = -1,
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
        [Parameter(
            Mandatory = $false,
            HelpMessage = ("Don't re-use existing browser window, instead, " +
                'create a new one')
        )]
        [Alias('nw', 'new')]
        [switch] $NewWindow,
        [Parameter(
            Mandatory = $false,
            HelpMessage = ('Returns a PowerShell process object representing ' +
                'the browser process')
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
            HelpMessage = 'Removes the borders of the browser window.'
        )]
        [Alias('nb')]
        [switch] $NoBorders,

        [Parameter(
            Mandatory = $false,
            HelpMessage = 'Position browser window either fullscreen on different monitor than PowerShell, or side by side with PowerShell on the same monitor.'
        )]
        [Alias('sbs')]
        [switch] $SideBySide,

        [Parameter(
            Mandatory = $false,
            HelpMessage = 'Use alternative settings stored in session for AI preferences.'
        )]
        [switch] $SessionOnly,

        [Parameter(
            Mandatory = $false,
            HelpMessage = 'Clear alternative settings stored in session for AI preferences.'
        )]
        [switch] $ClearSession,

        [Parameter(
            Mandatory = $false,
            HelpMessage = 'Store settings only in persistent preferences without affecting session.'
        )]
        [Alias('FromPreferences')]
        [switch] $SkipSession
    )

    begin {

        # copy identical parameter values from this function to open-webbrowser
        $invocationArguments = GenXdev\Copy-IdenticalParamValues `
            -BoundParameters $PSBoundParameters `
            -FunctionName 'GenXdev\Open-Webbrowser' `
            -DefaultValues (Microsoft.PowerShell.Utility\Get-Variable `
                -Scope Local `
                -ErrorAction SilentlyContinue)

        # # check if language parameter was provided for localization
        # if (-not [string]::IsNullOrWhiteSpace($Language)) {

        #     # retrieve the language code from the language dictionary
        #     $code = (GenXdev\Get-WebLanguageDictionary)[$Language]

        #     # set accept-lang header if not already specified by user
        #     if (-not $PSBoundParameters.ContainsKey('AcceptLang')) {

        #         # assign the language code to the accept-lang parameter
        #         $null = $invocationArguments.AcceptLang = $code
        #     }
        # }
    }

    process {

        # process each search query provided by the user
        foreach ($query in $Queries) {

            # output verbose information about the query being processed
            Microsoft.PowerShell.Utility\Write-Verbose ('Processing query: ' +
                $query)

            # build the Grokipedia search url with language code and query
            $invocationArguments.'Url' = ("https://grokipedia.com/search?q=$([Uri]::EscapeUriString($query))")

            # handle return url only scenario without opening browser
            if ($ReturnOnlyURL) {

                # output the formatted url and skip to next query
                Microsoft.PowerShell.Utility\Write-Output (
                    $invocationArguments.Url)

                continue
            }

            # launch browser with the Grokipedia search url
            GenXdev\Open-Webbrowser @invocationArguments

            # return url if specifically requested by user
            if ($ReturnURL) {

                # output the formatted url after opening browser
                Microsoft.PowerShell.Utility\Write-Output (
                    $invocationArguments.Url)
            }
        }
    }

    end {
    }
}
<##############################################################################
Part of PowerShell module : GenXdev.Queries.Webbrowser
Original cmdlet filename  : Open-IMDBQuery.ps1
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
Opens an IMDB search query in a web browser.

.DESCRIPTION
Opens a "Internet Movie Database" query in a web browser with extensive
configuration options. This function provides a convenient wrapper around
the IMDB search functionality, allowing users to search for movies, TV shows,
actors, and other entertainment content directly from PowerShell.

The function accepts search terms and constructs proper IMDB search URLs,
then opens them in the specified web browser with customizable window
positioning, browser selection, and display options. It supports all major
browsers including Edge, Chrome, and Firefox, with options for private
browsing, fullscreen mode, and window management.

Key features include multi-monitor support, language localization, keyboard
automation, and comprehensive browser configuration options. The function
can handle multiple search queries simultaneously and provides options for
both interactive use and automated workflows.

.PARAMETER Queries
The search terms to query on IMDB. Can be movie titles, actor names, TV show
names, or any other entertainment-related search terms. Accepts multiple
queries and pipeline input for batch processing.

.PARAMETER Language
The language of the returned search results. When specified, sets the browser's
Accept-Language header to display IMDB results in the selected language.
Supports a wide range of languages including major world languages and some
novelty options.

.PARAMETER Monitor
The monitor to display the browser on. 0 = default, -1 is discard,
-2 = Configured secondary monitor. Supports multi-monitor setups for
optimal viewing experience.

.PARAMETER Width
The initial width of the webbrowser window in pixels. When not specified,
uses the monitor's working area width or appropriate sizing based on
positioning options.

.PARAMETER Height
The initial height of the webbrowser window in pixels. When not specified,
uses the monitor's working area height or appropriate sizing based on
positioning options.

.PARAMETER X
The initial X position of the webbrowser window. When not specified, uses
the monitor's left edge. Can be specified relative to the selected monitor.

.PARAMETER Y
The initial Y position of the webbrowser window. When not specified, uses
the monitor's top edge. Can be specified relative to the selected monitor.

.PARAMETER AcceptLang
Set the browser accept-lang http header for internationalization. Overrides
the Language parameter when both are specified. Useful for testing IMDB
in different languages.

.PARAMETER KeysToSend
Keystrokes to send to the Browser window after opening. Uses the same format
as the GenXdev\Send-Key cmdlet. Useful for automating browser
interactions after opening IMDB search results.

.PARAMETER Private
Opens in incognito/private browsing mode. Useful for searching without
affecting browser history or cookies.

.PARAMETER Force
Force enable debugging port, stopping existing browsers if needed. Required
for certain browser automation scenarios.

.PARAMETER Edge
Opens in Microsoft Edge browser specifically.

.PARAMETER Chrome
Opens in Google Chrome browser specifically.

.PARAMETER Chromium
Opens in Microsoft Edge or Google Chrome, depending on what the default
browser is configured to be.

.PARAMETER Firefox
Opens in Firefox browser specifically.

.PARAMETER All
Opens in all registered modern browsers simultaneously.

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

.PARAMETER FullScreen
Opens in fullscreen mode for immersive IMDB browsing experience.

.PARAMETER ApplicationMode
Hide the browser controls for a distraction-free IMDB experience.

.PARAMETER NoBrowserExtensions
Prevent loading of browser extensions for cleaner IMDB browsing.

.PARAMETER DisablePopupBlocker
Disables the browser's popup blocking functionality.

.PARAMETER FocusWindow
Focus the browser window after opening the IMDB search.

.PARAMETER SetForeground
Set the browser window to foreground after opening.

.PARAMETER Maximize
Maximize the window after positioning

.PARAMETER SetRestored
Restore the window to normal state after positioning

.PARAMETER RestoreFocus
Restore PowerShell window focus after opening the browser.

.PARAMETER NewWindow
Don't re-use existing browser window, instead, create a new one for each
IMDB search.

.PARAMETER PassThru
Returns a [System.Diagnostics.Process] object of the browserprocess for
further automation or monitoring.

.PARAMETER ReturnURL
Don't open webbrowser, just return the constructed IMDB search URL.

.PARAMETER ReturnOnlyURL
After opening webbrowser, return the constructed IMDB search URL.

.PARAMETER SendKeyEscape
Escapes control characters when sending keystrokes to the browser.

.PARAMETER SendKeyHoldKeyboardFocus
Prevents returning keyboard focus to PowerShell after sending keystrokes.

.PARAMETER SendKeyUseShiftEnter
Uses Shift+Enter instead of regular Enter for line breaks when sending keys.

.PARAMETER SendKeyDelayMilliSeconds
Delay between sending different key sequences in milliseconds.

.EXAMPLE
Open-IMDBQuery -Queries "The Matrix" -Monitor 0

Opens an IMDB search for "The Matrix" on the default monitor.

.EXAMPLE
imdb "The Matrix" -m 0

Opens an IMDB search for "The Matrix" using the alias and shorthand parameters.

.EXAMPLE
"Inception", "Interstellar" | Open-IMDBQuery -Language "French" -Chrome

Searches for multiple movies on IMDB with French language results in Chrome.

.EXAMPLE
Open-IMDBQuery -Queries "Tom Hanks" -FullScreen -RestoreFocus

Searches for Tom Hanks on IMDB in fullscreen mode, then returns focus to
PowerShell.
#>
function Open-IMDBQuery {

    [CmdletBinding()]
    [Alias('imdb')]
    param(
        [Alias('q', 'Name', 'Text', 'Query')]
        [Parameter(
            Mandatory = $true,
            Position = 0,
            ValueFromRemainingArguments = $false,
            ValueFromPipeline = $true,
            ValueFromPipelineByPropertyName = $true,
            HelpMessage = 'The search terms to query on IMDB'
        )]
        [string[]] $Queries,
        [Parameter(
            Mandatory = $false,
            Position = 1,
            HelpMessage = 'The language of the returned search results'
        )]
        [ValidateSet(
            'Afrikaans', 'Akan', 'Albanian', 'Amharic', 'Arabic', 'Armenian',
            'Azerbaijani', 'Basque', 'Belarusian', 'Bemba', 'Bengali', 'Bihari',
            'Bork, bork, bork!', 'Bosnian', 'Breton', 'Bulgarian', 'Cambodian',
            'Catalan', 'Cherokee', 'Chichewa', 'Chinese (Simplified)',
            'Chinese (Traditional)', 'Corsican', 'Croatian', 'Czech', 'Danish',
            'Dutch', 'Elmer Fudd', 'English', 'Esperanto', 'Estonian', 'Ewe',
            'Faroese', 'Filipino', 'Finnish', 'French', 'Frisian', 'Ga',
            'Galician', 'Georgian', 'German', 'Greek', 'Guarani', 'Gujarati',
            'Hacker', 'Haitian Creole', 'Hausa', 'Hawaiian', 'Hebrew', 'Hindi',
            'Hungarian', 'Icelandic', 'Igbo', 'Indonesian', 'Interlingua',
            'Irish', 'Italian', 'Japanese', 'Javanese', 'Kannada', 'Kazakh',
            'Kinyarwanda', 'Kirundi', 'Klingon', 'Kongo', 'Korean',
            'Krio (Sierra Leone)', 'Kurdish', 'Kurdish (Soranî)', 'Kyrgyz',
            'Laothian', 'Latin', 'Latvian', 'Lingala', 'Lithuanian', 'Lozi',
            'Luganda', 'Luo', 'Macedonian', 'Malagasy', 'Malay', 'Malayalam',
            'Maltese', 'Maori', 'Marathi', 'Mauritian Creole', 'Moldavian',
            'Mongolian', 'Montenegrin', 'Nepali', 'Nigerian Pidgin',
            'Northern Sotho', 'Norwegian', 'Norwegian (Nynorsk)', 'Occitan',
            'Oriya', 'Oromo', 'Pashto', 'Persian', 'Pirate', 'Polish',
            'Portuguese (Brazil)', 'Portuguese (Portugal)', 'Punjabi', 'Quechua',
            'Romanian', 'Romansh', 'Runyakitara', 'Russian', 'Scots Gaelic',
            'Serbian', 'Serbo-Croatian', 'Sesotho', 'Setswana',
            'Seychellois Creole', 'Shona', 'Sindhi', 'Sinhalese', 'Slovak',
            'Slovenian', 'Somali', 'Spanish', 'Spanish (Latin American)',
            'Sundanese', 'Swahili', 'Swedish', 'Tajik', 'Tamil', 'Tatar',
            'Telugu', 'Thai', 'Tigrinya', 'Tonga', 'Tshiluba', 'Tumbuka',
            'Turkish', 'Turkmen', 'Twi', 'Uighur', 'Ukrainian', 'Urdu',
            'Uzbek', 'Vietnamese', 'Welsh', 'Wolof', 'Xhosa', 'Yiddish',
            'Yoruba', 'Zulu'
        )]
        [string] $Language,
        [Alias('m', 'mon')]
        [Parameter(
            Mandatory = $false,
            HelpMessage = ('The monitor to use, 0 = default, -1 is discard, ' +
                '-2 = Configured secondary monitor, defaults to -1')
        )]
        [int] $Monitor = -1,
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
        [Alias('fs', 'f')]
        [Parameter(
            Mandatory = $false,
            HelpMessage = 'Opens in fullscreen mode'
        )]
        [switch] $FullScreen,
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
            HelpMessage = "Disables the browser's popup blocking functionality"
        )]
        [Alias('allowpopups')]
        [switch] $DisablePopupBlocker,
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
            HelpMessage = 'Escapes control characters when sending keystrokes to the browser'
        )]
        [Alias('Escape')]
        [switch] $SendKeyEscape,
        [Parameter(
            Mandatory = $false,
            HelpMessage = ('Prevents returning keyboard focus to PowerShell ' +
                'after sending keystrokes')
        )]
        [Alias('HoldKeyboardFocus')]
        [switch] $SendKeyHoldKeyboardFocus,
        [Parameter(
            Mandatory = $false,
            HelpMessage = ('Uses Shift+Enter instead of regular Enter for ' +
                'line breaks when sending keys')
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
            Mandatory = $false,
            HelpMessage = 'Removes the borders of the window'
        )]
        [Alias('nb')]
        [switch] $NoBorders,
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
            HelpMessage = 'Open browser windows side by side'
        )]
        [Alias('sbs')]
        [switch] $SideBySide
    )

    begin {

        # copy all identical parameters to open-webbrowser
        $invocationArguments = GenXdev\Copy-IdenticalParamValues `
            -BoundParameters $PSBoundParameters `
            -FunctionName 'GenXdev\Open-Webbrowser' `
            -DefaultValues (Microsoft.PowerShell.Utility\Get-Variable `
                -Scope Local `
                -ErrorAction SilentlyContinue)

        # if a language is specified, map it to acceptlang if not already set
        if (-not [string]::IsNullOrWhiteSpace($Language)) {

            # retrieve the language code from the language dictionary
            $code = (GenXdev\Get-WebLanguageDictionary)[$Language]

            # set accept-lang header if not already specified
            if (-not $PSBoundParameters.ContainsKey('AcceptLang')) {

                $null = $invocationArguments.AcceptLang = $code
            }
        }
    }

    process {

        # process each search query
        foreach ($query in $Queries) {

            # show which query is being processed
            Microsoft.PowerShell.Utility\Write-Verbose "Processing query: $query"

            # build the imdb search url for the query
            $invocationArguments.'Url' = ('https://www.imdb.com/find?q=' +
                [Uri]::EscapeUriString($query) + '&ref_=nv_sr_sm=')

            # if only the url should be returned, output it and continue
            if ($ReturnOnlyURL) {

                Microsoft.PowerShell.Utility\Write-Output `
                ($invocationArguments.Url)

                continue
            }

            # open the browser with the constructed parameters
            GenXdev\Open-Webbrowser @invocationArguments

            # if returnurl is set, output the url after opening
            if ($ReturnURL) {

                Microsoft.PowerShell.Utility\Write-Output `
                ($invocationArguments.Url)
            }
        }
    }

    end {
    }
}
<##############################################################################
Part of PowerShell module : GenXdev.Queries.Webbrowser
Original cmdlet filename  : Open-InstantStreetViewQuery.ps1
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
Opens InstantStreetView queries in a web browser.

.DESCRIPTION
Opens InstantStreetView queries in a configurable manner using web browser
command line switches. Supports multiple queries and monitor selection.
Provides comprehensive browser control including window positioning, language
settings, and browser-specific features.

The function automatically constructs InstantStreetView URLs by URL-encoding
location queries and opening them in the specified browser. Supports all
major browsers including Edge, Chrome, and Firefox with extensive
customization options.

.PARAMETER Queries
The location queries to view in InstantStreetView. Accepts multiple queries
and supports pipeline input.

.PARAMETER Language
The language of the returned search results. Automatically sets the
Accept-Language HTTP header if not explicitly specified.

.PARAMETER Private
Opens in incognito/private browsing mode. Uses InPrivate for Edge and
incognito for Chrome.

.PARAMETER Force
Force enable debugging port, stopping existing browsers if needed.

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

.EXAMPLE
Open-InstantStreetViewQuery -Queries "Times Square, New York" -Monitor 0

Opens InstantStreetView for Times Square in the default browser on the
primary monitor.

.EXAMPLE
isv "Eiffel Tower, Paris" -mon -2

Opens InstantStreetView for the Eiffel Tower using the alias 'isv' and
displays on the secondary monitor.

.EXAMPLE
Open-InstantStreetViewQuery -Queries "Big Ben, London" -Language "English" -Private

Opens InstantStreetView for Big Ben in English language using private
browsing mode.

.EXAMPLE
"Central Park, New York", "Golden Gate Bridge, San Francisco" | isv -Chrome -Left

Opens multiple InstantStreetView queries via pipeline in Chrome browser
positioned on the left side of the screen.
#>
function Open-InstantStreetViewQuery {

    [CmdletBinding()]
    [Alias('isv')]
    param(
        [Parameter(
            Mandatory = $true,
            Position = 0,
            ValueFromRemainingArguments = $false,
            ValueFromPipeline = $true,
            ValueFromPipelineByPropertyName = $true,
            HelpMessage = 'The location queries to view in InstantStreetView'
        )]
        [Alias('q', 'Name', 'Text', 'Query')]
        [string[]] $Queries,

        [Parameter(
            Mandatory = $false,
            Position = 1,
            HelpMessage = 'The language of the returned search results'
        )]
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
            'Zulu'
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
        [int] $Monitor = -1,

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
        [string] $AcceptLang,

        [Parameter(
            Mandatory = $false,
            HelpMessage = ('Keystrokes to send to the Browser window, ' +
                'see documentation for cmdlet GenXdev\Send-Key')
        )]
        [string[]] $KeysToSend,

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
            HelpMessage = 'Removes the borders of the window'
        )]
        [Alias('nb')]
        [switch] $NoBorders,

        [Parameter(
            Mandatory = $false,
            HelpMessage = 'Open browser windows side by side'
        )]
        [Alias('sbs')]
        [switch] $SideBySide,

        [Parameter(
            Mandatory = $false,
            HelpMessage = 'Use alternative settings stored in session for AI preferences'
        )]
        [switch] $SessionOnly,

        [Parameter(
            Mandatory = $false,
            HelpMessage = 'Clear alternative settings stored in session for AI preferences'
        )]
        [switch] $ClearSession,

        [Parameter(
            Mandatory = $false,
            HelpMessage = 'Store settings only in persistent preferences without affecting session'
        )]
        [Alias('FromPreferences')]
        [switch] $SkipSession
    )

    begin {

        # copy identical parameters between functions for open-webbrowser call
        $invocationArguments = GenXdev\Copy-IdenticalParamValues `
            -BoundParameters $PSBoundParameters `
            -FunctionName 'GenXdev\Open-Webbrowser' `
            -DefaultValues (Microsoft.PowerShell.Utility\Get-Variable `
                -Scope Local -ErrorAction SilentlyContinue)

        # set accept-language header based on language parameter
        if (-not [string]::IsNullOrWhiteSpace($Language)) {

            # get language code from the language dictionary
            $code = (GenXdev\Get-WebLanguageDictionary)[$Language]

            # set accept-language header if not already specified
            if (-not $PSBoundParameters.ContainsKey('AcceptLang')) {

                $null = $invocationArguments.AcceptLang = $code
            }
        }
    }

    process {

        # process each search query provided
        foreach ($query in $Queries) {

            # output verbose information about the query being processed
            Microsoft.PowerShell.Utility\Write-Verbose "Processing query: $query"

            # url-encode the query for safe url construction
            $encodedQuery = [System.Web.HttpUtility]::UrlEncode($query)

            # construct the instantstreetview url with the encoded query
            $url = "https://www.instantstreetview.com/s/$encodedQuery"

            # store the url in the invocation arguments
            $invocationArguments.'Url' = $url

            # handle return url only scenario without opening browser
            if ($ReturnOnlyURL) {

                # output the url and continue to next query
                Microsoft.PowerShell.Utility\Write-Output ($invocationArguments.Url)
                continue
            }

            # launch browser with the instantstreetview url
            GenXdev\Open-Webbrowser @invocationArguments

            # return url if requested after opening browser
            if ($ReturnURL) {

                Microsoft.PowerShell.Utility\Write-Output ($invocationArguments.Url)
            }
        }
    }

    end {
    }
}
<##############################################################################
Part of PowerShell module : GenXdev.Queries.Webbrowser
Original cmdlet filename  : Open-MovieQuote.ps1
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
Opens a video of a movie quote in a web browser.

.DESCRIPTION
Searches for and opens movie quotes using playphrase.me, allowing specification
of monitor and browser settings. This function provides access to an extensive
database of movie quotes with video clips, supporting multiple languages and
advanced browser configuration options.

Key features:
- Search movie quotes from an extensive database
- Multi-language support with automatic language detection
- Advanced browser positioning and window management
- Support for multiple browsers (Edge, Chrome, Firefox)
- Private browsing mode support
- Keyboard automation for browser interaction
- Multi-monitor support with precise positioning

.PARAMETER Queries
The movie quote or phrase to search for. Supports multiple queries via
pipeline input or array specification.

.PARAMETER Language
The language of the returned search results. Supports over 100 languages
including common ones like English, Spanish, French, German, etc.

.PARAMETER Private
Opens in incognito/private browsing mode.

.PARAMETER Force
Force enable debugging port, stopping existing browsers if needed.

.PARAMETER Edge
Opens in Microsoft Edge.

.PARAMETER Chrome
Opens in Google Chrome.

.PARAMETER Chromium
Opens in Microsoft Edge or Google Chrome, depending on what the default
browser is.

.PARAMETER Firefox
Opens in Firefox.

.PARAMETER All
Opens in all registered modern browsers.

.PARAMETER Monitor
The monitor to display the browser on. 0 = default, -1 = discard,
-2 = configured secondary monitor.

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

.EXAMPLE
Open-MovieQuote -Queries "I'll be back"

Opens a search for the famous Terminator quote "I'll be back".

.EXAMPLE
Open-MovieQuote -Queries "Here's looking at you kid" -Monitor 1

Opens a search for the Casablanca quote on monitor 1.

.EXAMPLE
moviequote "May the Force be with you" -Language "English" -Private

Opens a search for the Star Wars quote in English using private browsing.

.EXAMPLE
"I'll be back", "Frankly, my dear" | Open-MovieQuote -Chrome -FullScreen

Opens multiple movie quote searches in Chrome fullscreen mode via pipeline.
#>
function Open-MovieQuote {

    [CmdletBinding()]
    [Alias('moviequote')]

    param(
        [Alias('q', 'Name', 'Text', 'Query')]
        [Parameter(
            Mandatory = $true,
            Position = 0,
            ValueFromRemainingArguments = $false,
            ValueFromPipeline = $true,
            ValueFromPipelineByPropertyName = $true,
            HelpMessage = 'The query to execute.'
        )]
        [string[]] $Queries,
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
            Position = 2,
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
            HelpMessage = 'The monitor to use, 0 = default, -1 is discard, -2 = Configured secondary monitor, defaults to -1, no positioning'
        )]
        [int] $Monitor = -1,
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
        [Alias('fw', 'focus')]
        [Parameter(
            Mandatory = $false,
            HelpMessage = 'Focus the browser window after opening'
        )]
        [switch] $FocusWindow,
        [Alias('fg')]
        [Parameter(
            Mandatory = $false,
            HelpMessage = 'Set the browser window to foreground after opening'
        )]
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
        [Alias('pt')]
        [Parameter(
            Mandatory = $false,
            HelpMessage = 'Returns a [System.Diagnostics.Process] object of the browserprocess'
        )]
        [switch] $PassThru,
        [Alias('nb')]
        [Parameter(
            Mandatory = $false,
            HelpMessage = 'Removes the borders of the browser window'
        )]
        [switch] $NoBorders,
        [Parameter(
            Mandatory = $false,
            HelpMessage = 'Use alternative settings stored in session for AI preferences'
        )]
        [switch] $SessionOnly,
        [Parameter(
            Mandatory = $false,
            HelpMessage = 'Clear alternative settings stored in session for AI preferences'
        )]
        [switch] $ClearSession,
        [Alias('FromPreferences')]
        [Parameter(
            Mandatory = $false,
            HelpMessage = 'Store settings only in persistent preferences without affecting session'
        )]
        [switch] $SkipSession,
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
        [Parameter(
            Mandatory = $false,
            HelpMessage = 'Position browser window either fullscreen on different monitor than PowerShell, or side by side with PowerShell on the same monitor.'
        )]
        [Alias('sbs')]
        [switch] $SideBySide

    )

    begin {

    }

    process {

        # process each search query
        foreach ($query in $Queries) {

            # output verbose information about the query being processed
            Microsoft.PowerShell.Utility\Write-Verbose "Processing query: $query"

            # copy identical parameters from this function to open-webbrowser
            $params = GenXdev\Copy-IdenticalParamValues `
                -BoundParameters $PSBoundParameters `
                -FunctionName 'GenXdev\Open-Webbrowser' `
                -DefaultValues (Microsoft.PowerShell.Utility\Get-Variable `
                    -Scope Local `
                    -ErrorAction SilentlyContinue)

            # process language setting if specified
            if (-not [string]::IsNullOrWhiteSpace($Language)) {

                # retrieve the language code from the language dictionary
                $code = (GenXdev\Get-WebLanguageDictionary)[$Language]

                # set accept-lang header if not already specified
                if (-not $PSBoundParameters.ContainsKey('AcceptLang')) {

                    $null = $params.AcceptLang = $code
                }
            }

            # construct the playphrase.me search url with the query
            $params.'Url' = ('https://www.playphrase.me/#/search?q=' +
                [Uri]::EscapeUriString($query))

            # handle return url only scenario
            if ($ReturnOnlyURL) {

                Microsoft.PowerShell.Utility\Write-Output ($params.Url)
                continue
            }

            # launch browser with the constructed url and parameters
            GenXdev\Open-Webbrowser @params

            # return url if requested
            if ($ReturnURL) {

                Microsoft.PowerShell.Utility\Write-Output ($params.Url)
            }
        }
    }

    end {

    }
}
<##############################################################################
Part of PowerShell module : GenXdev.Queries.Webbrowser
Original cmdlet filename  : Open-SearchEngine.ps1
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
Opens a search query in the specified search engine using a web browser.

.DESCRIPTION
This function provides a unified interface to search across multiple search
engines including Google, Bing, GitHub, Wikipedia, YouTube, and others. It
supports extensive browser configuration options including window positioning,
size, browser selection, and language preferences. The function dynamically
routes queries to the appropriate search engine specific functions.

.PARAMETER Queries
The search query or queries to execute. Supports multiple queries and accepts
pipeline input.

.PARAMETER EndPoint
The search engine to use for the query. Supports major search engines including
Google (default), Bing, GitHub, IMDB, StackOverflow, Wikipedia, YouTube, and
others.

.PARAMETER Language
The language for search results. Supports a comprehensive list of languages
from Afrikaans to Zulu, including regional variants and novelty languages.

.PARAMETER Private
Opens the browser in incognito or private browsing mode to prevent storing
search history and cookies.

.PARAMETER Force
Forces enabling of debugging port and stops existing browser instances if
needed for proper operation.

.PARAMETER Edge
Opens the search results in Microsoft Edge browser instead of the default
browser.

.PARAMETER Chrome
Opens the search results in Google Chrome browser instead of the default
browser.

.PARAMETER Chromium
Opens the search results in either Microsoft Edge or Google Chrome, depending
on which is set as the default browser.

.PARAMETER Firefox
Opens the search results in Mozilla Firefox browser instead of the default
browser.

.PARAMETER All
Opens the search results in all registered modern browsers simultaneously for
comparison or broader access.

.PARAMETER Monitor
Specifies which monitor to use for positioning the browser window. 0 for
default, -1 to discard positioning, -2 for configured secondary monitor.

.PARAMETER FullScreen
Opens the browser window in fullscreen mode, hiding all browser chrome and
window decorations.

.PARAMETER Width
Sets the initial width of the browser window in pixels. Use -1 for default
system sizing.

.PARAMETER Height
Sets the initial height of the browser window in pixels. Use -1 for default
system sizing.

.PARAMETER X
Sets the initial horizontal position of the browser window. Use -999999 for
default positioning.

.PARAMETER Y
Sets the initial vertical position of the browser window. Use -999999 for
default positioning.

.PARAMETER Left
Positions the browser window on the left side of the screen, automatically
calculating appropriate dimensions.

.PARAMETER Right
Positions the browser window on the right side of the screen, automatically
calculating appropriate dimensions.

.PARAMETER Top
Positions the browser window on the top portion of the screen, automatically
calculating appropriate dimensions.

.PARAMETER Bottom
Positions the browser window on the bottom portion of the screen, automatically
calculating appropriate dimensions.

.PARAMETER Centered
Centers the browser window on the screen, useful for focused viewing or
presentation scenarios.

.PARAMETER ApplicationMode
Hides browser controls and chrome to create an app-like experience with minimal
interface distractions.

.PARAMETER NoBrowserExtensions
Prevents loading of browser extensions to ensure clean execution without
third-party interference.

.PARAMETER AcceptLang
Sets the browser accept-language HTTP header to control content localization
and language preferences.

.PARAMETER KeysToSend
Specifies keystrokes to send to the browser window after opening. See
GenXdev\Send-Key documentation for supported key sequences.

.PARAMETER FocusWindow
Brings the browser window to focus after opening, ensuring it becomes the
active window.

.PARAMETER SetForeground
Sets the browser window as the foreground application, bringing it to the front
of all other windows.

.PARAMETER Maximize
Maximize the window after positioning

.PARAMETER SetRestored
Restore the window to normal state after positioning
constraints.

.PARAMETER RestoreFocus
Returns focus to the PowerShell window after opening the browser, allowing
continued command-line work.

.PARAMETER NewWindow
Creates a new browser window instead of reusing an existing window, useful for
maintaining separate browsing contexts.

.PARAMETER PassThru
Returns a System.Diagnostics.Process object representing the browser process
for further manipulation.

.PARAMETER ReturnURL
Returns the constructed search URL without opening the browser, useful for
programmatic URL generation.

.PARAMETER ReturnOnlyURL
Opens the browser and then returns the search URL, combining both actions for
specific workflows.

.EXAMPLE
Open-SearchEngine -Queries "PowerShell cmdlets" -EndPoint "Google" -Language "English"

Searches for "PowerShell cmdlets" on Google with English language results.

.EXAMPLE
q "GitHub PowerShell" Bing -Chrome -Private

Uses the alias 'q' to search for "GitHub PowerShell" on Bing using Chrome in
private mode.
#>
function Open-SearchEngine {

    [CmdletBinding()]
    [Alias('q')]
    param(
        [Alias('q', 'Name', 'Text', 'Query')]
        [Parameter(
            Mandatory = $true,
            Position = 0,
            ValueFromRemainingArguments = $false,
            ValueFromPipeline = $true,
            ValueFromPipelineByPropertyName = $true,
            HelpMessage = 'The query to execute.'
        )]
        [string[]] $Queries,
        [ValidateSet(
            'Bing',
            'Github',
            'Google',
            'IMDB',
            'InstantStreetView',
            'StackOverflow',
            'Wikipedia',
            'WikipediaNL',
            'WolframAlpha',
            'Youtube'
        )]
        [Parameter(
            Mandatory = $false,
            Position = 1,
            HelpMessage = 'The enpoint to invoke the query on'
        )]
        [string] $EndPoint = 'Google',
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
            'Zulu'
        )]
        [Parameter(
            Mandatory = $false,
            Position = 2,
            HelpMessage = 'The language of the returned search results'
        )]
        [string] $Language,
        [Parameter(
            Mandatory = $false,
            Position = 3,
            HelpMessage = 'The monitor to use, 0 = default, -1 is discard, ' +
                          '-2 = Configured secondary monitor, defaults to -1, ' +
                          'no positioning'
        )]
        [Alias('m', 'mon')]
        [int] $Monitor = -1,
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
        [Parameter(
            Mandatory = $false,
            HelpMessage = 'Opens in incognito/private browsing mode'
        )]
        [Alias('incognito', 'inprivate')]
        [switch] $Private,
        [Parameter(
            Mandatory = $false,
            HelpMessage = 'Force enable debugging port, stopping existing ' +
                          'browsers if needed'
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
            HelpMessage = 'Opens in Microsoft Edge or Google Chrome, depending ' +
                          'on what the default browser is'
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
            HelpMessage = 'Opens in fullscreen mode'
        )]
        [Alias('fs', 'f')]
        [switch] $FullScreen,
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
            HelpMessage = 'Focus the browser window after opening'
        )]
        [switch] $FocusWindow,
        [Parameter(
            Mandatory = $false,
            HelpMessage = 'Set the browser window to foreground after opening'
        )]
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
            HelpMessage = "Don't re-use existing browser window, instead, " +
                          "create a new one"
        )]
        [Alias('nw', 'new')]
        [switch] $NewWindow,
        [Parameter(
            Mandatory = $false,
            HelpMessage = 'Returns a [System.Diagnostics.Process] object of ' +
                          'the browserprocess'
        )]
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
        [switch] $ReturnOnlyURL
    )

    begin {

        # initialize default language code for google domain determination
        $code = 'www'

        # check if language parameter was provided and is not empty
        if (-not[string]::IsNullOrWhiteSpace($Language)) {

            Microsoft.PowerShell.Utility\Write-Verbose (
                "Language specified: ${Language}, determining language code"
            )

            # retrieve language code from the web language dictionary
            $code = (GenXdev\Get-WebLanguageDictionary)[$Language]

            # if accept language header is not already set, use the language code
            if ($null -eq $AcceptLang) {

                $AcceptLang = $code

                # add accept language to bound parameters if not already present
                if (-not $PSBoundParameters.ContainsKey('AcceptLang')) {

                    $null = $PSBoundParameters.Add('AcceptLang', $AcceptLang)
                }
            }
        }

        # store the endpoint value for command resolution
        $endpointValue = $EndPoint

        Microsoft.PowerShell.Utility\Write-Verbose (
            "Resolving command for endpoint: ${endpointValue}"
        )

        # get the command info for the specific endpoint query function
        $command = Microsoft.PowerShell.Core\Get-Command `
            -Name "Open-$($endpointValue)Query" `
            -ErrorAction SilentlyContinue

        # copy identical parameter values to pass to the endpoint function
        $invocationArguments = GenXdev\Copy-IdenticalParamValues `
            -BoundParameters $PSBoundParameters `
            -FunctionName "GenXdev\Open-$($endpointValue)Query" `
            -DefaultValues (Microsoft.PowerShell.Utility\Get-Variable `
                -Scope Local `
                -ErrorAction SilentlyContinue)

        Microsoft.PowerShell.Utility\Write-Verbose (
            "Prepared invocation arguments for ${endpointValue} query function"
        )
    }

    process {

        # invoke the endpoint-specific query function with prepared arguments
        & $command @invocationArguments
    }

    end {
    }
}
<##############################################################################
Part of PowerShell module : GenXdev.Queries.Webbrowser
Original cmdlet filename  : Open-SimularWebSiteInfo.ps1
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
Opens SimilarWeb website information for specified URLs in a web browser.

.DESCRIPTION
Opens a "Similar web" query in a web browser in a configurable manner using
command line switches. Allows checking website analytics and comparisons for
website traffic analysis, competitor research, and digital marketing insights.

.PARAMETER Queries
The website URLs to analyze on SimilarWeb. Can be provided as domain names
(e.g., "google.com") or full URLs. Multiple queries can be processed through
pipeline input or array parameters.

.PARAMETER Language
The language for SimilarWeb interface localization. Automatically sets the
browser's Accept-Language header when specified.

.PARAMETER Monitor
The monitor to use for displaying the browser window:
- 0 = Primary monitor (default)
- -1 = Discard positioning (fastest launch)
- -2 = Configured secondary monitor
- 1+ = Specific monitor number

.PARAMETER Width
The initial width of the browser window in pixels.

.PARAMETER Height
The initial height of the browser window in pixels.

.PARAMETER X
The initial X coordinate for window placement.

.PARAMETER Y
The initial Y coordinate for window placement.

.PARAMETER Private
Opens the browser in private/incognito browsing mode for anonymous analysis.

.PARAMETER NoBorders
Removes the borders of the browser window.

.PARAMETER Force
Force enable debugging port, stopping existing browsers if needed.

.PARAMETER Edge
Opens the analysis in Microsoft Edge browser.

.PARAMETER Chrome
Opens the analysis in Google Chrome browser.

.PARAMETER Chromium
Opens in Microsoft Edge or Google Chrome, depending on default browser.

.PARAMETER Firefox
Opens the analysis in Mozilla Firefox browser.

.PARAMETER All
Opens the analysis in all registered modern browsers simultaneously.

.PARAMETER Left
Positions the browser window on the left side of the screen.

.PARAMETER Right
Positions the browser window on the right side of the screen.

.PARAMETER Top
Positions the browser window on the top side of the screen.

.PARAMETER Bottom
Positions the browser window on the bottom side of the screen.

.PARAMETER Centered
Centers the browser window on the screen for optimal viewing.

.PARAMETER FullScreen
Opens the browser in fullscreen mode for distraction-free analysis.

.PARAMETER ApplicationMode
Hides browser controls for a clean analysis interface.

.PARAMETER NoBrowserExtensions
Prevents loading of browser extensions for faster performance.

.PARAMETER DisablePopupBlocker
Disables the browser's popup blocking functionality.

.PARAMETER AcceptLang
Sets the browser's Accept-Language HTTP header for localization.

.PARAMETER KeysToSend
Keystrokes to send to the browser window after opening. Uses the same
format as the GenXdev\Send-Key cmdlet.

.PARAMETER SendKeyEscape
Escapes control characters when sending keystrokes to the browser.

.PARAMETER SendKeyHoldKeyboardFocus
Prevents returning keyboard focus to PowerShell after sending keystrokes.

.PARAMETER SendKeyUseShiftEnter
Uses Shift+Enter instead of regular Enter for line breaks when sending keys.

.PARAMETER SendKeyDelayMilliSeconds
Delay between sending different key sequences in milliseconds.

.PARAMETER FocusWindow
Gives focus to the browser window after opening the analysis.

.PARAMETER SetForeground
Brings the browser window to the foreground after opening.

.PARAMETER Maximize
Maximize the window after positioning

.PARAMETER SetRestored
Restore the window to normal state after positioning

.PARAMETER RestoreFocus
Returns focus to the PowerShell window after opening the browser.

.PARAMETER NewWindow
Forces creation of a new browser window for each analysis.

.PARAMETER PassThru
Returns a PowerShell process object representing the browser process.

.PARAMETER ReturnURL
Returns the formatted SimilarWeb URL without opening the browser.

.PARAMETER ReturnOnlyURL
Returns the formatted SimilarWeb URL after opening the browser.

.PARAMETER SessionOnly
Use alternative settings stored in session for AI preferences.

.PARAMETER ClearSession
Clear alternative settings stored in session for AI preferences.

.PARAMETER SkipSession
Store settings only in persistent preferences without affecting session.

.EXAMPLE
Open-SimularWebSiteInfo -Queries "google.com" -Monitor 0

Opens a SimilarWeb analysis for Google.com on the primary monitor.

.EXAMPLE
simularsite google.com -mon 0

Opens a SimilarWeb analysis using the function alias with monitor positioning.

.EXAMPLE
"microsoft.com", "apple.com" | Open-SimularWebSiteInfo -Language "English" -Centered

Analyzes multiple websites through pipeline input with centered window positioning.

.EXAMPLE
Open-SimularWebSiteInfo -Queries "github.com" -ReturnURL

Returns the SimilarWeb URL for GitHub without opening the browser.
#>
function Open-SimularWebSiteInfo {

    [CmdletBinding()]
    [Alias('simularsite')]
    param(
        [Parameter(
            Mandatory = $true,
            Position = 0,
            ValueFromRemainingArguments = $false,
            ValueFromPipeline = $true,
            ValueFromPipelineByPropertyName = $true,
            HelpMessage = 'The website URLs to analyze on SimilarWeb'
        )]
        [Alias('q', 'Name', 'Text', 'Query')]
        [string[]] $Queries,
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
            Position = 1,
            HelpMessage = 'The language of the returned search results'
        )]
        [string] $Language,
        [Parameter(
            Mandatory = $false,
            HelpMessage = 'The monitor to use, 0 = default, -1 is discard, -2 = Configured secondary monitor, defaults to -1, no positioning'
        )]
        [Alias('m', 'mon')]
        [int] $Monitor = -1,
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
            HelpMessage = 'Opens in fullscreen mode'
        )]
        [Alias('fs', 'f')]
        [switch] $FullScreen,
        [Parameter(
            Mandatory = $false,
            HelpMessage = 'Opens in incognito/private browsing mode'
        )]
        [Alias('incognito', 'inprivate')]
        [switch] $Private,
        [Parameter(
            Mandatory = $false,
            HelpMessage = 'Removes the borders of the browser window.'
        )]
        [Alias('nb')]
        [switch] $NoBorders,
        [Parameter(
            Mandatory = $false,
            HelpMessage = 'Force enable debugging port, stopping existing browsers if needed'
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
            HelpMessage = 'Opens in Microsoft Edge or Google Chrome, depending on what the default browser is'
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
            HelpMessage = 'Keystrokes to send to the Browser window, see documentation for cmdlet GenXdev\Send-Key'
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
            HelpMessage = 'Delay between different input strings in milliseconds when sending keys'
        )]
        [Alias('DelayMilliSeconds')]
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
        [Parameter(
            Mandatory = $false,
            HelpMessage = "Don't re-use existing browser window, instead, create a new one"
        )]
        [Alias('nw', 'new')]
        [switch] $NewWindow,
        [Parameter(
            Mandatory = $false,
            HelpMessage = 'Returns a PowerShell object of the browserprocess'
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
            HelpMessage = 'Use alternative settings stored in session for AI preferences'
        )]
        [switch] $SessionOnly,
        [Parameter(
            Mandatory = $false,
            HelpMessage = 'Clear alternative settings stored in session for AI preferences'
        )]
        [switch] $ClearSession,
        [Parameter(
            Mandatory = $false,
            HelpMessage = 'Store settings only in persistent preferences without affecting session'
        )]
        [Alias('FromPreferences')]
        [switch] $SkipSession,
        [Parameter(
            Mandatory = $false,
            HelpMessage = 'Position browser window either fullscreen on different monitor than PowerShell, or side by side with PowerShell on the same monitor.'
        )]
        [Alias('sbs')]
        [switch] $SideBySide
    )

    begin {

        # copy identical parameter values from this function to open-webbrowser
        $invocationArguments = GenXdev\Copy-IdenticalParamValues `
            -BoundParameters $PSBoundParameters `
            -FunctionName 'GenXdev\Open-Webbrowser' `
            -DefaultValues (Microsoft.PowerShell.Utility\Get-Variable `
                -Scope Local `
                -ErrorAction SilentlyContinue)

        # process language parameter if specified for localization
        if (-not [string]::IsNullOrWhiteSpace($Language)) {

            # retrieve the language code from the web language dictionary
            $code = (GenXdev\Get-WebLanguageDictionary)[$Language]

            # set accept-lang header if not already specified by user
            if (-not $PSBoundParameters.ContainsKey('AcceptLang')) {

                $null = $invocationArguments.AcceptLang = $code
            }
        }
    }

    process {

        # process each website analysis query
        foreach ($query in $Queries) {

            # output verbose information about the query being processed
            Microsoft.PowerShell.Utility\Write-Verbose "Processing query: $query"

            # construct the similarweb url for the website analysis
            $invocationArguments.'Url' = 'https://www.similarweb.com/website/' +
            [Uri]::EscapeUriString($query)

            # handle return url only scenario without opening browser
            if ($ReturnOnlyURL) {

                Microsoft.PowerShell.Utility\Write-Output (
                    $invocationArguments.Url
                )
                continue
            }

            # launch browser with the similarweb analysis url
            GenXdev\Open-Webbrowser @invocationArguments

            # return url if requested after opening browser
            if ($ReturnURL) {

                Microsoft.PowerShell.Utility\Write-Output (
                    $invocationArguments.Url
                )
            }
        }
    }

    end {

    }
}
<##############################################################################
Part of PowerShell module : GenXdev.Queries.Webbrowser
Original cmdlet filename  : Open-StackOverflowQuery.ps1
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
Opens Stack Overflow search queries in a web browser.

.DESCRIPTION
Opens one or more Stack Overflow search queries in a web browser with
comprehensive browser and display configuration options. This function provides
an advanced wrapper around Stack Overflow search functionality with extensive
options for window positioning, browser selection, and behavior customization.

Key features:
- Multiple search query support with pipeline input
- Smart browser detection and selection (Edge, Chrome, Firefox, all browsers)
- Advanced window positioning (left, right, top, bottom, centered, fullscreen)
- Multi-monitor support with automatic or manual monitor selection
- Private/incognito browsing mode support
- Application mode for distraction-free browsing
- Language localization support for international search results
- Extension and popup blocking options
- Focus management and window manipulation
- Keystroke automation to browser windows
- URL return options for automation workflows

The function automatically detects system capabilities and adjusts behavior
accordingly. For browsers not installed on the system, operations are silently
skipped without errors.

.PARAMETER Queries
The search queries to perform on Stack Overflow. Accepts pipeline input and
supports multiple queries in a single operation. Each query is URL-encoded
and submitted as a separate Stack Overflow search.

.PARAMETER Language
The language of the returned search results. Accepts a comprehensive list of
languages and automatically sets the appropriate Accept-Language header for
localized search results.

.PARAMETER Monitor
The monitor to display results on:
- 0 = Primary monitor
- -1 = Discard positioning (no window positioning)
- -2 = Configured secondary monitor (uses $Global:DefaultSecondaryMonitor)
- 1+ = Specific monitor number

.PARAMETER Width
The initial width of the browser window in pixels. When not specified, uses
the monitor's working area width or half-width for side positioning.

.PARAMETER Height
The initial height of the browser window in pixels. When not specified, uses
the monitor's working area height or half-height for top/bottom positioning.

.PARAMETER X
The initial X position of the browser window. When not specified, uses the
monitor's left edge. Can be specified relative to the selected monitor.

.PARAMETER Y
The initial Y position of the browser window. When not specified, uses the
monitor's top edge. Can be specified relative to the selected monitor.

.PARAMETER AcceptLang
Set the browser accept-lang http header. Overrides the Language parameter
when both are specified.

.PARAMETER KeysToSend
Keystrokes to send to the browser window after opening. Uses the same format
as the GenXdev\Send-Key cmdlet for automation scenarios.

.PARAMETER Private
Opens in incognito/private browsing mode. Uses InPrivate for Edge and
incognito for Chrome.

.PARAMETER Force
Force enable debugging port, stopping existing browsers if needed. Useful
when browser debugging features are required.

.PARAMETER Edge
Opens in Microsoft Edge browser specifically.

.PARAMETER Chrome
Opens in Google Chrome browser specifically.

.PARAMETER Chromium
Opens in Microsoft Edge or Google Chrome, depending on what the default
browser is. Prefers Chromium-based browsers.

.PARAMETER Firefox
Opens in Firefox browser specifically.

.PARAMETER All
Opens in all registered modern browsers simultaneously.

.PARAMETER FullScreen
Opens in fullscreen mode using F11 key simulation.

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
Hide the browser controls for a distraction-free search experience.

.PARAMETER NoBrowserExtensions
Prevent loading of browser extensions during the search session.

.PARAMETER DisablePopupBlocker
Disable the popup blocker to allow search-related popups.

.PARAMETER FocusWindow
Focus the browser window after opening the search.

.PARAMETER SetForeground
Set the browser window to foreground after opening.

.PARAMETER Maximize
Maximize the window after positioning

.PARAMETER SetRestored
Restore the window to normal state after positioning

.PARAMETER RestoreFocus
Restore PowerShell window focus after opening the browser.

.PARAMETER NewWindow
Don't re-use existing browser window, instead, create a new one for each
search query.

.PARAMETER PassThru
Returns a [System.Diagnostics.Process] object of the browser process for
further automation or monitoring.

.PARAMETER ReturnURL
Don't open webbrowser, just return the formatted Stack Overflow search URL
for the query without launching any browser.

.PARAMETER ReturnOnlyURL
After opening webbrowser, return the formatted Stack Overflow search URL.
Useful for logging or further processing.

.PARAMETER SendKeyEscape
Escape control characters when sending keystrokes to the browser window.

.PARAMETER SendKeyHoldKeyboardFocus
Prevent returning keyboard focus to PowerShell after sending keystrokes to
the browser window.

.PARAMETER SendKeyUseShiftEnter
Send Shift+Enter instead of regular Enter for line breaks when sending
keystrokes to the browser.

.PARAMETER SendKeyDelayMilliSeconds
Delay between sending different key sequences in milliseconds. Useful for
slower systems or complex automation scenarios.

.EXAMPLE
Open-StackOverflowQuery -Queries "powershell array" -Monitor 0

Opens a Stack Overflow search for "powershell array" on the primary monitor.

.EXAMPLE
qso "powershell array" -mon 0

Opens a Stack Overflow search using the alias with monitor positioning.

.EXAMPLE
"powershell", "array manipulation" | Open-StackOverflowQuery -Language "English" -Chrome

Opens multiple Stack Overflow searches in Chrome with English language preference.

.EXAMPLE
Open-StackOverflowQuery -Queries "c# linq" -ReturnURL

Returns the Stack Overflow search URL without opening a browser.
#>
function Open-StackOverflowQuery {

    [CmdletBinding()]
    [Alias('qso')]
    param(
        [Alias('q', 'Name', 'Text', 'Query')]
        [Parameter(
            Mandatory = $true,
            Position = 0,
            ValueFromRemainingArguments = $false,
            ValueFromPipeline = $true,
            ValueFromPipelineByPropertyName = $true,
            HelpMessage = 'The search queries to perform on Stack Overflow'
        )]
        [string[]] $Queries,
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
            Position = 1,
            HelpMessage = ('The language of the returned search results for ' +
                'localized Stack Overflow content')
        )]
        [string] $Language,
        [Alias('m', 'mon')]
        [Parameter(
            Mandatory = $false,
            HelpMessage = ('The monitor to use, 0 = default, -1 is discard, ' +
                '-2 = Configured secondary monitor, defaults to -1, no positioning')
        )]
        [int] $Monitor = -1,
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
        [Alias('fs', 'f')]
        [Parameter(
            Mandatory = $false,
            HelpMessage = 'Opens in fullscreen mode'
        )]
        [switch] $FullScreen,
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
        [switch] $PassThru,
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
            Mandatory = $false,
            HelpMessage = 'Removes the borders of the browser window.'
        )]
        [Alias('nb')]
        [switch] $NoBorders,
        [Parameter(
            Mandatory = $false,
            HelpMessage = ('Use alternative settings stored in session for ' +
                'Stack Overflow search preferences')
        )]
        [switch] $SessionOnly,
        [Parameter(
            Mandatory = $false,
            HelpMessage = ('Clear alternative settings stored in session for ' +
                'Stack Overflow search preferences')
        )]
        [switch] $ClearSession,
        [Parameter(
            Mandatory = $false,
            HelpMessage = ('Store settings only in persistent preferences without ' +
                'affecting session for Stack Overflow search')
        )]
        [Alias('FromPreferences')]
        [switch] $SkipSession,
        [Parameter(
            Mandatory = $false,
            HelpMessage = 'Position browser window either fullscreen on different monitor than PowerShell, or side by side with PowerShell on the same monitor.'
        )]
        [Alias('sbs')]
        [switch] $SideBySide
    )

    begin {

        # copy identical parameter values from this function to open-webbrowser
        $invocationArguments = GenXdev\Copy-IdenticalParamValues `
            -BoundParameters $PSBoundParameters `
            -FunctionName 'GenXdev\Open-Webbrowser' `
            -DefaultValues (Microsoft.PowerShell.Utility\Get-Variable `
                -Scope Local `
                -ErrorAction SilentlyContinue)

        # process language parameter if specified by user
        if (-not [string]::IsNullOrWhiteSpace($Language)) {

            # retrieve the language code from the language dictionary
            $code = (GenXdev\Get-WebLanguageDictionary)[$Language]

            # set accept-lang header if not already explicitly specified
            if (-not $PSBoundParameters.ContainsKey('AcceptLang')) {

                $null = $invocationArguments.AcceptLang = $code
            }
        }
    }


    process {

        # process each search query provided by the user
        foreach ($query in $Queries) {

            # output verbose information about the query being processed
            Microsoft.PowerShell.Utility\Write-Verbose "Processing query: $query"

            # construct the complete stack overflow search url with encoded query
            $invocationArguments.'Url' = 'https://stackoverflow.com/search?q=' +
            [Uri]::EscapeUriString($query)

            # handle return url only scenario without opening browser
            if ($ReturnOnlyURL) {

                # return the constructed url directly to the output stream
                Microsoft.PowerShell.Utility\Write-Output (
                    $invocationArguments.Url
                )

                # skip to next query without opening browser
                continue
            }

            # launch browser with the constructed search url
            GenXdev\Open-Webbrowser @invocationArguments

            # return url if requested by user after opening browser
            if ($ReturnURL) {

                # output the constructed url to the output stream
                Microsoft.PowerShell.Utility\Write-Output (
                    $invocationArguments.Url
                )
            }
        }
    }

    end {
    }
}
<##############################################################################
Part of PowerShell module : GenXdev.Queries.Webbrowser
Original cmdlet filename  : Open-WaybackMachineSiteInfo.ps1
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
Opens WaybackMachine site information in a web browser.

.DESCRIPTION
Opens a Waybackmachine query in a web browser, displaying historical versions
of the specified URL or website. Supports multiple queries and monitor
selection. Provides access to archived web content through the Internet
Archive's Wayback Machine service.

.PARAMETER Queries
The URL or website addresses to search in the Wayback Machine. Can be a single
URL or multiple URLs to search for archived versions.

.PARAMETER Language
The language preference for the browser interface. This affects the browser's
accept-language header and helps display content in the preferred language.

.PARAMETER Private
Opens the browser in incognito or private browsing mode to prevent storing
browsing history and cookies.

.PARAMETER Force
Force enables debugging port, stopping existing browsers if needed for
automation purposes.

.PARAMETER Edge
Opens the Wayback Machine query specifically in Microsoft Edge browser.

.PARAMETER Chrome
Opens the Wayback Machine query specifically in Google Chrome browser.

.PARAMETER Chromium
Opens the Wayback Machine query in Microsoft Edge or Google Chrome, depending
on what the default browser is set to.

.PARAMETER Firefox
Opens the Wayback Machine query specifically in Mozilla Firefox browser.

.PARAMETER All
Opens the Wayback Machine query in all registered modern browsers
simultaneously.

.PARAMETER Monitor
The monitor to display the browser on. 0 = default monitor, -1 = discard
window positioning, -2 = configured secondary monitor. Default is -1.

.PARAMETER FullScreen
Opens the browser in fullscreen mode for an immersive viewing experience.

.PARAMETER Width
The initial width of the browser window in pixels.

.PARAMETER Height
The initial height of the browser window in pixels.

.PARAMETER X
The initial X position of the browser window on the screen.

.PARAMETER Y
The initial Y position of the browser window on the screen.

.PARAMETER Left
Places the browser window on the left side of the screen.

.PARAMETER Right
Places the browser window on the right side of the screen.

.PARAMETER Top
Places the browser window on the top side of the screen.

.PARAMETER Bottom
Places the browser window on the bottom side of the screen.

.PARAMETER Centered
Places the browser window in the center of the screen.

.PARAMETER ApplicationMode
Hides the browser controls for a distraction-free viewing experience.

.PARAMETER NoBrowserExtensions
Prevents loading of browser extensions during the session.

.PARAMETER DisablePopupBlocker
Disables the browser's popup blocking functionality.

.PARAMETER AcceptLang
Sets the browser's accept-language HTTP header for internationalization.

.PARAMETER KeysToSend
Keystrokes to send to the browser window after opening. Uses the same format
as the GenXdev\Send-Key cmdlet.

.PARAMETER SendKeyEscape
Escapes control characters when sending keystrokes to the browser.

.PARAMETER SendKeyHoldKeyboardFocus
Prevents returning keyboard focus to PowerShell after sending keystrokes.

.PARAMETER SendKeyUseShiftEnter
Uses Shift+Enter instead of regular Enter for line breaks when sending keys.

.PARAMETER SendKeyDelayMilliSeconds
Delay between sending different key sequences in milliseconds.

.PARAMETER FocusWindow
Focuses the browser window after opening.

.PARAMETER SetForeground
Sets the browser window to foreground after opening.

.PARAMETER Maximize
Maximize the window after positioning

.PARAMETER SetRestored
Restore the window to normal state after positioning

.PARAMETER RestoreFocus
Restores PowerShell window focus after opening the browser.

.PARAMETER NewWindow
Creates a new browser window instead of reusing existing windows.

.PARAMETER NoBorders
Removes the borders of the browser window.

.PARAMETER SessionOnly
Use alternative settings stored in session for Wayback Machine preferences.

.PARAMETER ClearSession
Clear alternative settings stored in session for Wayback Machine preferences.

.PARAMETER SkipSession
Store settings only in persistent preferences without affecting session.

.PARAMETER PassThru
Returns a System.Diagnostics.Process object of the browser process.

.PARAMETER ReturnURL
Returns the URL without opening the browser.

.PARAMETER ReturnOnlyURL
Returns the URL after opening the browser.

.EXAMPLE
Open-WaybackMachineSiteInfo -Queries "www.example.com" -Monitor 0

Opens the Wayback Machine archive for example.com on the default monitor.

.EXAMPLE
wayback example.com -mon -1

Opens the Wayback Machine archive for example.com using aliases with monitor
positioning discarded.

.EXAMPLE
Open-WaybackMachineSiteInfo -Queries "microsoft.com" -Chrome -Private

Opens the Wayback Machine archive for microsoft.com in Chrome's incognito mode.
#>
function Open-WaybackMachineSiteInfo {

    [CmdletBinding()]
    [Alias('wayback')]
    param(
        [Alias('q', 'Name', 'Text', 'Query')]
        [Parameter(
            Mandatory = $true,
            Position = 0,
            ValueFromRemainingArguments = $false,
            ValueFromPipeline = $true,
            ValueFromPipelineByPropertyName = $true,
            HelpMessage = 'The query to execute.'
        )]
        [string[]] $Queries,
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
            Position = 1,
            HelpMessage = ('The language preference for the browser interface ' +
                'and content')
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
                '-2 = Configured secondary monitor, defaults to -1, ' +
                'no positioning')
        )]
        [int] $Monitor = -1,
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
        [string] $AcceptLang,
        [Parameter(
            Mandatory = $false,
            HelpMessage = ('Keystrokes to send to the Browser window, ' +
                'see documentation for cmdlet GenXdev\Send-Key')
        )]
        [string[]] $KeysToSend,
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
        [switch] $PassThru,
        [Parameter(
            Mandatory = $false,
            HelpMessage = 'Removes the borders of the browser window.'
        )]
        [Alias('nb')]
        [switch] $NoBorders,
        [Parameter(
            Mandatory = $false,
            HelpMessage = ('Use alternative settings stored in session for ' +
                'Wayback Machine preferences')
        )]
        [switch] $SessionOnly,
        [Parameter(
            Mandatory = $false,
            HelpMessage = ('Clear alternative settings stored in session for ' +
                'Wayback Machine preferences')
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
            HelpMessage = "Don't open webbrowser, just return the url"
        )]
        [switch] $ReturnURL,
        [Parameter(
            Mandatory = $false,
            HelpMessage = 'After opening webbrowser, return the url'
        )]
        [switch] $ReturnOnlyURL,
        [Parameter(
            HelpMessage = 'Position browser window either fullscreen on different monitor than PowerShell, or side by side with PowerShell on the same monitor.'
        )]
        [Alias('sbs')]
        [switch] $SideBySide
    )

    begin {

        # copy identical parameter values from this function to open-webbrowser
        $invocationArguments = GenXdev\Copy-IdenticalParamValues `
            -BoundParameters $PSBoundParameters `
            -FunctionName 'GenXdev.Webbrowser' `
            -DefaultValues (Microsoft.PowerShell.Utility\Get-Variable `
                -Scope Local `
                -ErrorAction SilentlyContinue)

        # process language setting if provided
        if (-not [string]::IsNullOrWhiteSpace($Language)) {

            # get language code from the language dictionary
            $code = (GenXdev\Get-WebLanguageDictionary)[$Language]

            # set accept-lang header if not already specified by user
            if (-not $PSBoundParameters.ContainsKey('AcceptLang')) {

                $null = $invocationArguments.AcceptLang = $code
            }
        }
    }

    process {

        # process each search query provided
        foreach ($query in $Queries) {

            # output verbose information about the query being processed
            Microsoft.PowerShell.Utility\Write-Verbose "Processing query: $query"

            # construct the wayback machine url for the query
            $invocationArguments.'Url' = ('https://web.archive.org/web/*/' +
                "$([Uri]::EscapeUriString($query))")

            # handle return url only scenario without opening browser
            if ($ReturnOnlyURL) {

                Microsoft.PowerShell.Utility\Write-Output (
                    $invocationArguments.Url
                )
                continue
            }

            # launch browser with the constructed url
            GenXdev\Open-Webbrowser @invocationArguments

            # return url if requested by user
            if ($ReturnURL) {

                Microsoft.PowerShell.Utility\Write-Output (
                    $invocationArguments.Url
                )
            }
        }
    }

    end {
    }
}
<##############################################################################
Part of PowerShell module : GenXdev.Queries.Webbrowser
Original cmdlet filename  : Open-WebsiteAndPerformQuery.ps1
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
Opens a webpage in a webbrowser and performs one or more queries.

.DESCRIPTION
This function opens a website by URL in the default web browser, enters one or
more queries and submits them. It supports extensive monitor selection and
window positioning options through the underlying Open-Webbrowser function.

The function automatically copies each query to the clipboard and sends it to
the browser window using keyboard automation. It preserves the original
clipboard content and restores it after all queries are processed.

.PARAMETER Url
The URL of the website to open.

.PARAMETER Queries
One or more queries to perform on the opened website.

.PARAMETER Language
The language of the returned search results.

.PARAMETER Private
Opens in incognito/private browsing mode.

.PARAMETER Force
Force enable debugging port, stopping existing browsers if needed.

.PARAMETER Edge
Opens in Microsoft Edge.

.PARAMETER Chrome
Opens in Google Chrome.

.PARAMETER Chromium
Opens in Microsoft Edge or Google Chrome, depending on what the default
browser is.

.PARAMETER Firefox
Opens in Firefox.

.PARAMETER All
Opens in all registered modern browsers.

.PARAMETER Monitor
The monitor to display the browser on. 0 = default, -1 = discard,
-2 = configured secondary monitor.

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

.PARAMETER Maximize
Maximize the window after positioning

.PARAMETER SetRestored
Restore the window to normal state after positioning

.PARAMETER RestoreFocus
Restore PowerShell window focus.

.PARAMETER NewWindow
Don't re-use existing browser window, instead, create a new one.

.PARAMETER FocusWindow
Focus the browser window after opening.

.PARAMETER SetForeground
Set the browser window to foreground after opening.

.PARAMETER SendKeyEscape
Escape control characters when sending keys.

.PARAMETER SendKeyHoldKeyboardFocus
Prevent returning keyboard focus to PowerShell after sending keys.

.PARAMETER SendKeyUseShiftEnter
Send Shift+Enter instead of regular Enter for line breaks.

.PARAMETER SendKeyDelayMilliSeconds
Delay between sending different key sequences in milliseconds.

.EXAMPLE
Open-WebsiteAndPerformQuery -Url "https://www.google.com" -Queries "PowerShell"

Opens Google and searches for "PowerShell".

.EXAMPLE
owaq google.com "PowerShell tutorials" -Monitor 0

Opens Google and searches for "PowerShell tutorials" on the default monitor.
#>
function Open-WebsiteAndPerformQuery {

    [CmdletBinding()]
    [Diagnostics.CodeAnalysis.SuppressMessageAttribute('PSUseDeclaredVarsMoreThanAssignments', '')]
    [Alias('owaq')]

    param(
        [Alias('Value', 'u', 'uri', 'link', 'address', 'site', 'FullName', 'Website', 'WebsiteUrl')]
        [Parameter(
            Mandatory = $true,
            Position = 0,
            ValueFromPipelineByPropertyName = $true,
            HelpMessage = 'The URL of the website to open'
        )]
        [ValidateNotNullOrEmpty()]
        [string] $Url,
        [Alias('q', 'Name', 'Text', 'Query')]
        [Parameter(
            Mandatory = $true,
            Position = 1,
            ValueFromRemainingArguments = $false,
            ValueFromPipeline = $true,
            ValueFromPipelineByPropertyName = $true,
            HelpMessage = 'The query to execute.'
        )]
        [string[]] $Queries,
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
            Position = 2,
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
            HelpMessage = 'The monitor to use, 0 = default, -1 is discard, -2 = Configured secondary monitor, defaults to -1, no positioning'
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
            HelpMessage = 'Escape control characters when sending keys'
        )]
        [Alias('Escape')]
        [switch] $SendKeyEscape,
        [Parameter(
            Mandatory = $false,
            HelpMessage = ('Hold keyboard focus on target window when sending keys')
        )]
        [Alias('HoldKeyboardFocus')]
        [switch] $SendKeyHoldKeyboardFocus,
        [Parameter(
            Mandatory = $false,
            HelpMessage = ('Use Shift+Enter instead of Enter when sending keys')
        )]
        [Alias('UseShiftEnter')]
        [switch] $SendKeyUseShiftEnter,
        [Parameter(
            Mandatory = $false,
            HelpMessage = ('Delay between sending different key sequences ' +
                'in milliseconds')
        )]
        [Alias('DelayMilliSeconds')]
        [int] $SendKeyDelayMilliSeconds = 500,
        [Parameter(
            Mandatory = $false,
            HelpMessage = 'Removes the borders of the browser window'
        )]
        [Alias('nb')]
        [switch] $NoBorders,
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
            HelpMessage = 'Position browser window either fullscreen on different monitor than PowerShell, or side by side with PowerShell on the same monitor.'
        )]
        [Alias('sbs')]
        [switch] $SideBySide
    )

    begin {

        # prepare default keystrokes for web query submission
        $KeysToSend = (@('^v', '{ENTER}', '^{ENTER}') + @(($null -ne $KeysToSend) ? $KeysToSend : @()))

        # set window focus and new window behavior for query operations
        $focusWindow = $true
        $newWindow = $true

        # copy matching parameters from this function to Open-Webbrowser
        $invocationArguments = GenXdev\Copy-IdenticalParamValues `
            -BoundParameters $PSBoundParameters `
            -FunctionName 'GenXdev\Open-Webbrowser' `
            -DefaultValues (Microsoft.PowerShell.Utility\Get-Variable `
                -Scope Local `
                -ErrorAction SilentlyContinue)

        # preserve the original clipboard content for restoration
        $previousClipboard = Microsoft.PowerShell.Management\Get-Clipboard
    }

    process {

        # process each query provided by the user
        foreach ($query in $Queries) {

            # output verbose information about the query being processed
            Microsoft.PowerShell.Utility\Write-Verbose `
                "Processing query: $query"

            # copy the current query to the clipboard for pasting
            $query | Microsoft.PowerShell.Management\Set-Clipboard

            # open the browser with the website and send the keystrokes
            GenXdev\Open-Webbrowser @invocationArguments
        }
    }

    end {

        # restore the original clipboard content
        $null = Microsoft.PowerShell.Management\Set-Clipboard -Value $previousClipboard
    }
}
<##############################################################################
Part of PowerShell module : GenXdev.Queries.Webbrowser
Original cmdlet filename  : Open-WhoisHostSiteInfo.ps1
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
Opens a Whois host information query in a web browser.

.DESCRIPTION
Opens Whois host information queries in a web browser for domain names or IP
addresses. Supports configurable monitor selection and multiple queries with
extensive browser configuration options including window positioning, browser
selection, and automation features.

.PARAMETER Queries
One or more domain names or IP addresses to look up Whois information for.
Accepts pipeline input and supports multiple queries simultaneously.

.PARAMETER Language
The language for the returned search results. Affects the browser's
Accept-Language header and website localization.

.PARAMETER Private
Opens the browser in private/incognito browsing mode for enhanced privacy.

.PARAMETER Force
Forces enabling of the debugging port by stopping existing browser instances
if needed.

.PARAMETER Edge
Specifically opens URLs in Microsoft Edge browser.

.PARAMETER Chrome
Specifically opens URLs in Google Chrome browser.

.PARAMETER Chromium
Opens URLs in either Microsoft Edge or Google Chrome, depending on which
is set as the default browser.

.PARAMETER Firefox
Specifically opens URLs in Mozilla Firefox browser.

.PARAMETER All
Opens the specified URLs in all installed modern browsers simultaneously.

.PARAMETER Monitor
Specifies which monitor to display results on:
0 = Default monitor
-1 = Discard positioning
-2 = Configured secondary monitor

.PARAMETER FullScreen
Opens the browser in fullscreen mode using F11 key simulation.

.PARAMETER Width
The initial width of the browser window in pixels.

.PARAMETER Height
The initial height of the browser window in pixels.

.PARAMETER X
The initial X coordinate for window placement.

.PARAMETER Y
The initial Y coordinate for window placement.

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
Hides browser controls for a distraction-free experience.

.PARAMETER NoBrowserExtensions
Prevents loading of browser extensions during the session.

.PARAMETER DisablePopupBlocker
Disables the browser's popup blocking functionality.

.PARAMETER AcceptLang
Sets the browser's Accept-Language HTTP header for internationalization.

.PARAMETER KeysToSend
Keystrokes to send to the browser window after opening. Uses the same
format as the GenXdev\Send-Key cmdlet.

.PARAMETER FocusWindow
Gives focus to the browser window after opening.

.PARAMETER SetForeground
Brings the browser window to the foreground after opening.

.PARAMETER Maximize
Maximize the window after positioning

.PARAMETER SetRestored
Restore the window to normal state after positioning

.PARAMETER RestoreFocus
Returns focus to the PowerShell window after opening the browser.

.PARAMETER NewWindow
Forces creation of a new browser window instead of reusing existing windows.

.PARAMETER PassThru
Returns a PowerShell process object representing the browser process.

.PARAMETER ReturnURL
Returns the formatted URL without opening the browser.

.PARAMETER ReturnOnlyURL
Returns the formatted URL after opening the browser.

.PARAMETER SendKeyEscape
Escapes control characters when sending keystrokes to the browser.

.PARAMETER SendKeyHoldKeyboardFocus
Prevents returning keyboard focus to PowerShell after sending keystrokes.

.PARAMETER SendKeyUseShiftEnter
Uses Shift+Enter instead of regular Enter for line breaks when sending keys.

.PARAMETER SendKeyDelayMilliSeconds
Delay between sending different key sequences in milliseconds.

.EXAMPLE
Open-WhoisHostSiteInfo -Queries "example.com", "example.org" -Monitor 0

Opens Whois information for multiple domains on the default monitor.

.EXAMPLE
whois example.com -m 1

Opens Whois information for example.com using aliases and positional parameters.

.EXAMPLE
"microsoft.com", "google.com" | Open-WhoisHostSiteInfo -Private -Chrome

Opens Whois information for domains from pipeline in Chrome private mode.
#>
function Open-WhoisHostSiteInfo {

    [CmdletBinding()]
    [Alias('whois')]
    param(
        [Alias('q', 'Name', 'Text', 'Query')]
        [Parameter(
            Mandatory = $true,
            Position = 0,
            ValueFromRemainingArguments = $false,
            ValueFromPipeline = $true,
            ValueFromPipelineByPropertyName = $true,
            HelpMessage = 'The query to execute.'
        )]
        [string[]] $Queries,
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
            Position = 2,
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
            HelpMessage = 'The monitor to use, 0 = default, -1 is discard, -2 = Configured secondary monitor, defaults to -1, no positioning'
        )]
        [int] $Monitor = -1,
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
        [Alias('rf', 'bg')]
        [Parameter(
            Mandatory = $false,
            HelpMessage = 'Restore PowerShell window focus'
        )]
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
        [switch] $PassThru,
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
            Mandatory = $false,
            HelpMessage = 'Removes the borders of the browser window.'
        )]
        [Alias('nb')]
        [switch] $NoBorders,
        [Parameter(
            Mandatory = $false,
            HelpMessage = ('Use alternative settings stored in session for AI ' +
                'preferences like Language, Image collections, etc.')
        )]
        [switch] $SessionOnly,
        [Parameter(
            Mandatory = $false,
            HelpMessage = ('Clear alternative settings stored in session for AI ' +
                'preferences like Language, Image collections, etc.')
        )]
        [switch] $ClearSession,
        [Parameter(
            Mandatory = $false,
            HelpMessage = ('Store settings only in persistent preferences without ' +
                'affecting session for AI preferences like Language, Image ' +
                'collections, etc.')
        )]
        [Alias('FromPreferences')]
        [switch] $SkipSession,
        [Parameter(
            Mandatory = $false,
            HelpMessage = 'Position browser window either fullscreen on different monitor than PowerShell, or side by side with PowerShell on the same monitor.'
        )]
        [Alias('sbs')]
        [switch] $SideBySide

    )

    begin {

        # Copy identical parameters between functions
        $invocationArguments = GenXdev\Copy-IdenticalParamValues `
            -FunctionName 'GenXdev\Open-Webbrowser' `
            -BoundParameters $PSBoundParameters `
            -DefaultValues (Microsoft.PowerShell.Utility\Get-Variable `
                -Scope Local `
                -ErrorAction SilentlyContinue)

        # process language setting if specified
        if (-not [string]::IsNullOrWhiteSpace($Language)) {

            # retrieve the language code from the language dictionary
            $code = (GenXdev\Get-WebLanguageDictionary)[$Language]

            # set accept-lang header if not already specified
            if (-not $PSBoundParameters.ContainsKey('AcceptLang')) {

                $null = $invocationArguments.AcceptLang = $code
            }
        }
    }

    process {

        # process each search query
        foreach ($query in $Queries) {

            # output verbose information about the query being processed
            Microsoft.PowerShell.Utility\Write-Verbose "Processing query: $query"

            # construct the domaintools whois url for the query
            $whoisUrl = (
                'https://whois.domaintools.com/' +
                [Uri]::EscapeUriString($query)
            )

            # handle return url only scenario
            if ($ReturnOnlyURL) {

                # output the url without opening browser
                Microsoft.PowerShell.Utility\Write-Output $whoisUrl
                continue
            }

            # launch browser with the constructed url
            GenXdev\Open-Webbrowser @invocationArguments -Url $whoisUrl

            # return url if requested
            if ($ReturnURL) {

                # output the url after opening browser
                Microsoft.PowerShell.Utility\Write-Output $whoisUrl
            }
        }
    }

    end {
    }
}
<##############################################################################
Part of PowerShell module : GenXdev.Queries.Webbrowser
Original cmdlet filename  : Open-WikipediaNLQuery.ps1
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
Opens Dutch Wikipedia searches in a web browser.

.DESCRIPTION
Opens a 'Wikipedia - The Netherlands' query in a webbrowser, with configurable
display options. Supports searching multiple terms and specifying which monitor
to display results on.

.PARAMETER Queries
One or more search terms to look up on Dutch Wikipedia.

.PARAMETER Monitor
Monitor to display browser on (0=default, -1=discard, -2=secondary).

.EXAMPLE
Open-WikipediaNLQuery -Queries "Amsterdam" -Monitor 0

.EXAMPLE
wikinl "Amsterdam" -mon -2
#>
function Open-WikipediaNLQuery {

    [CmdletBinding()]
    [Alias('wikinl')]
    param(
        [Alias('q', 'Name', 'Text', 'Query')]
        [Parameter(
            Mandatory = $true,
            Position = 0,
            ValueFromRemainingArguments = $false,
            ValueFromPipeline = $true,
            ValueFromPipelineByPropertyName = $true,
            HelpMessage = 'The query to execute.'
        )]
        [string[]] $Queries,
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
            HelpMessage = 'The monitor to use, 0 = default, -1 is discard, -2 = Configured secondary monitor, defaults to -1, no positioning'
        )]
        [int] $Monitor = -1,
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
        ########################################################################        [Alias('fw', 'focus')]
        [Alias('fw', 'focus')]
        [Parameter(
            Mandatory = $false,
            HelpMessage = 'Focus the browser window after opening'
        )]
        [switch] $FocusWindow,
        [Alias('fg')]
        [Parameter(
            Mandatory = $false,
            HelpMessage = 'Set the browser window to foreground after opening'
        )]
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
        [Alias('pt')]
        [Parameter(
            Mandatory = $false,
            HelpMessage = 'Returns a [System.Diagnostics.Process] object of the browserprocess'
        )]
        [switch] $PassThru,
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
        [Alias('nb')]
        [Parameter(
            Mandatory = $false,
            HelpMessage = 'Removes window borders from the browser window'
        )]
        [switch] $NoBorders,
        [Alias('sbs')]
        [Parameter(
            Mandatory = $false,
            HelpMessage = 'Opens two browser windows side by side'
        )]
        [switch] $SideBySide,
        [Parameter(
            Mandatory = $false,
            HelpMessage = 'Use session-only cookies (no persistent cookies)'
        )]
        [switch] $SessionOnly,
        [Parameter(
            Mandatory = $false,
            HelpMessage = 'Clear browser session data before opening'
        )]
        [switch] $ClearSession,
        [Alias('FromPreferences')]
        [Parameter(
            Mandatory = $false,
            HelpMessage = 'Skip restoring previous browser session'
        )]
        [switch] $SkipSession

    )

    begin {
    }


    process {

        # process each search query
        foreach ($query in $Queries) {

            Microsoft.PowerShell.Utility\Write-Verbose "Processing query: $query"

            # determine google domain based on language
            $code = 'www'
            if (-not [string]::IsNullOrWhiteSpace($Language)) {
                $code = (GenXdev\Get-WebLanguageDictionary)[$Language]

                if (-not $PSBoundParameters.ContainsKey('AcceptLang')) {

                    $null = $PSBoundParameters.Add('AcceptLang', $code)
                }
            }

            # construct and encode the google search url
            $invocationArguments = GenXdev\Copy-IdenticalParamValues `
                -BoundParameters $PSBoundParameters `
                -FunctionName 'GenXdev\Open-WikipediaQuery' `
                -DefaultValues (Microsoft.PowerShell.Utility\Get-Variable -Scope Local -ErrorAction SilentlyContinue)

            $invocationArguments.'Language' = 'Dutch'

            GenXdev\Open-WikipediaQuery @invocationArguments
        }
    }

    end {
    }
}
<##############################################################################
Part of PowerShell module : GenXdev.Queries.Webbrowser
Original cmdlet filename  : Open-WikipediaQuery.ps1
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
Opens a Wikipedia query in a webbrowser.

.DESCRIPTION
Opens one or more Wikipedia search queries in a web browser with extensive
configuration options. Supports configurable browser behavior, monitor
selection, and window positioning. Queries are URL encoded and opened using
the specified language's Wikipedia domain with full localization support.

The function provides comprehensive browser control including private browsing
modes, window positioning, keyboard automation, and multi-monitor support.
It automatically handles URL encoding and language code mapping for
international Wikipedia domains.

.PARAMETER Queries
One or more search terms to look up on Wikipedia. Multiple queries will open
in separate browser instances. Supports pipeline input for batch processing.

.PARAMETER Language
The Wikipedia language to use for searches. Accepts full language names from
the ValidateSet list. Automatically maps language names to Wikipedia language
codes and sets appropriate Accept-Language headers.

.PARAMETER Private
Opens in incognito/private browsing mode for anonymous searches.

.PARAMETER Force
Force enable debugging port, stopping existing browsers if needed.

.PARAMETER Edge
Opens in Microsoft Edge browser.

.PARAMETER Chrome
Opens in Google Chrome browser.

.PARAMETER Chromium
Opens in Microsoft Edge or Google Chrome, depending on default browser.

.PARAMETER Firefox
Opens in Mozilla Firefox browser.

.PARAMETER All
Opens in all registered modern browsers simultaneously.

.PARAMETER Monitor
The monitor to use for window placement. 0=default, -1=discard positioning,
-2=configured secondary monitor, positive numbers=specific monitor.

.PARAMETER FullScreen
Opens in fullscreen mode using F11 key simulation.

.PARAMETER Width
The initial width of the webbrowser window in pixels.

.PARAMETER Height
The initial height of the webbrowser window in pixels.

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
Hide the browser controls for distraction-free reading.

.PARAMETER NoBrowserExtensions
Prevent loading of browser extensions.

.PARAMETER DisablePopupBlocker
Disable the popup blocker.

.PARAMETER AcceptLang
Set the browser accept-lang http header for language preferences.

.PARAMETER KeysToSend
Keystrokes to send to the browser window after opening. Uses the same format
as GenXdev\Send-Key cmdlet.

.PARAMETER SendKeyEscape
Escape control characters when sending keystrokes to the browser.

.PARAMETER SendKeyHoldKeyboardFocus
Prevent returning keyboard focus to PowerShell after sending keystrokes.

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
Restore PowerShell window focus after opening browser.

.PARAMETER NewWindow
Don't re-use existing browser window, instead create a new one.

.PARAMETER PassThru
Returns a PowerShell process object representing the browser process.

.PARAMETER ReturnURL
Don't open webbrowser, just return the formatted Wikipedia URL.

.PARAMETER ReturnOnlyURL
After opening webbrowser, return the formatted Wikipedia URL.

.EXAMPLE
Open-WikipediaQuery -Queries "PowerShell" -Monitor 0 -Language "English"

Opens a Wikipedia search for "PowerShell" in English on the default monitor.

.EXAMPLE
wiki "PowerShell" -mon 0

Opens a Wikipedia search using the alias with positional parameters.

.EXAMPLE
"PowerShell", "Windows" | Open-WikipediaQuery -Language "German" -Private

Searches for multiple terms in German Wikipedia using private browsing mode.
#>
function Open-WikipediaQuery {

    [CmdletBinding()]
    [Alias('wikipedia')]

    param(
        [Parameter(
            Mandatory = $true,
            Position = 0,
            ValueFromRemainingArguments = $false,
            ValueFromPipeline = $true,
            ValueFromPipelineByPropertyName = $true,
            HelpMessage = 'The Wikipedia search query to execute'
        )]
        [Alias('q', 'Name', 'Text', 'Query')]
        [string[]] $Queries,
        [Parameter(
            Mandatory = $false,
            Position = 1,
            HelpMessage = ('The language of the Wikipedia search results')
        )]
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
                '-2 = Configured secondary monitor')
        )]
        [Alias('m', 'mon')]
        [int] $Monitor = -1,
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
        [Parameter(
            Mandatory = $false,
            HelpMessage = ("Don't re-use existing browser window, instead, " +
                'create a new one')
        )]
        [Alias('nw', 'new')]
        [switch] $NewWindow,
        [Parameter(
            Mandatory = $false,
            HelpMessage = ('Returns a PowerShell process object representing ' +
                'the browser process')
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
            HelpMessage = 'Removes the borders of the browser window.'
        )]
        [Alias('nb')]
        [switch] $NoBorders,

        [Parameter(
            Mandatory = $false,
            HelpMessage = 'Position browser window either fullscreen on different monitor than PowerShell, or side by side with PowerShell on the same monitor.'
        )]
        [Alias('sbs')]
        [switch] $SideBySide,

        [Parameter(
            Mandatory = $false,
            HelpMessage = 'Use alternative settings stored in session for AI preferences.'
        )]
        [switch] $SessionOnly,

        [Parameter(
            Mandatory = $false,
            HelpMessage = 'Clear alternative settings stored in session for AI preferences.'
        )]
        [switch] $ClearSession,

        [Parameter(
            Mandatory = $false,
            HelpMessage = 'Store settings only in persistent preferences without affecting session.'
        )]
        [Alias('FromPreferences')]
        [switch] $SkipSession
    )

    begin {

        # copy identical parameter values from this function to open-webbrowser
        $invocationArguments = GenXdev\Copy-IdenticalParamValues `
            -BoundParameters $PSBoundParameters `
            -FunctionName 'GenXdev\Open-Webbrowser' `
            -DefaultValues (Microsoft.PowerShell.Utility\Get-Variable `
                -Scope Local `
                -ErrorAction SilentlyContinue)

        # check if language parameter was provided for localization
        if (-not [string]::IsNullOrWhiteSpace($Language)) {

            # retrieve the language code from the language dictionary
            $code = (GenXdev\Get-WebLanguageDictionary)[$Language]

            # set accept-lang header if not already specified by user
            if (-not $PSBoundParameters.ContainsKey('AcceptLang')) {

                # assign the language code to the accept-lang parameter
                $null = $invocationArguments.AcceptLang = $code
            }
        }

        # set default language code to english if no language specified
        if ([string]::IsNullOrWhiteSpace($code)) {

            $code = 'en'
        }
    }

    process {

        # process each search query provided by the user
        foreach ($query in $Queries) {

            # output verbose information about the query being processed
            Microsoft.PowerShell.Utility\Write-Verbose ('Processing query: ' +
                $query)

            # build the wikipedia search url with language code and query
            $invocationArguments.'Url' = ("https://$($code).wikipedia.org/" +
                'wiki/Special:Search?search=' +
                "$([Uri]::EscapeUriString($query))")

            # handle return url only scenario without opening browser
            if ($ReturnOnlyURL) {

                # output the formatted url and skip to next query
                Microsoft.PowerShell.Utility\Write-Output (
                    $invocationArguments.Url)

                continue
            }

            # launch browser with the wikipedia search url
            GenXdev\Open-Webbrowser @invocationArguments

            # return url if specifically requested by user
            if ($ReturnURL) {

                # output the formatted url after opening browser
                Microsoft.PowerShell.Utility\Write-Output (
                    $invocationArguments.Url)
            }
        }
    }

    end {
    }
}
<##############################################################################
Part of PowerShell module : GenXdev.Queries.Webbrowser
Original cmdlet filename  : Open-WolframAlphaQuery.ps1
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
Opens a Wolfram Alpha query in a web browser.

.DESCRIPTION
Opens one or more Wolfram Alpha queries in a web browser. Supports configurable
monitor selection and browser options through dynamic parameters. Provides
comprehensive browser control including positioning, sizing, and automation
capabilities for enhanced scientific computation workflows.

.PARAMETER Queries
The search queries to perform on Wolfram Alpha. Accepts multiple queries that
will be processed sequentially. Each query is URL-encoded automatically for
safe transmission to the Wolfram Alpha service.

.PARAMETER Language
The language of the returned search results. Affects the Accept-Language
HTTP header sent to Wolfram Alpha for localized computational results.

.PARAMETER Private
Opens in incognito/private browsing mode to prevent storage of search history
and cookies from the Wolfram Alpha session.

.PARAMETER Force
Force enable debugging port, stopping existing browsers if needed for
development and automation scenarios.

.PARAMETER Edge
Opens in Microsoft Edge browser specifically.

.PARAMETER Chrome
Opens in Google Chrome browser specifically.

.PARAMETER Chromium
Opens in Microsoft Edge or Google Chrome, depending on what the default
browser is. Prefers Chromium-based browsers for consistent behavior.

.PARAMETER Firefox
Opens in Firefox browser specifically.

.PARAMETER All
Opens in all registered modern browsers simultaneously for cross-browser
testing or comparison of results.

.PARAMETER Monitor
The monitor to use for display. 0 = default monitor, -1 = discard window
positioning, -2 = configured secondary monitor. Defaults to -1 for no
positioning constraints.

.PARAMETER FullScreen
Opens in fullscreen mode for immersive computational exploration.

.PARAMETER Width
The initial width of the webbrowser window in pixels.

.PARAMETER Height
The initial height of the webbrowser window in pixels.

.PARAMETER X
The initial X position of the webbrowser window on screen.

.PARAMETER Y
The initial Y position of the webbrowser window on screen.

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
Hide the browser controls for a distraction-free computational environment.

.PARAMETER NoBrowserExtensions
Prevent loading of browser extensions for a clean computational session.

.PARAMETER DisablePopupBlocker
Disable the popup blocker to allow Wolfram Alpha interactive elements.

.PARAMETER AcceptLang
Set the browser accept-lang http header for localized computational results.

.PARAMETER KeysToSend
Keystrokes to send to the Browser window, see documentation for cmdlet
GenXdev\Send-Key.

.PARAMETER SendKeyEscape
Escape control characters when sending keys to the browser window.

.PARAMETER SendKeyHoldKeyboardFocus
Prevent returning keyboard focus to PowerShell after sending keys.

.PARAMETER SendKeyUseShiftEnter
Send Shift+Enter instead of regular Enter for line breaks when sending keys.

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
Restore PowerShell window focus after opening the browser.

.PARAMETER NewWindow
Don't re-use existing browser window, instead, create a new one.

.PARAMETER PassThru
Returns a [System.Diagnostics.Process] object of the browserprocess.

.PARAMETER ReturnURL
Don't open webbrowser, just return the url.

.PARAMETER ReturnOnlyURL
After opening webbrowser, return the url.

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
Open-WolframAlphaQuery -Queries "mass of sun" -Monitor 0

Opens a Wolfram Alpha query for the mass of the sun on the default monitor.

.EXAMPLE
qalpha "speed of light", "planck constant"

Opens multiple Wolfram Alpha queries using the alias for quick scientific
computations.

.EXAMPLE
"derivative of x^2" | Open-WolframAlphaQuery -Language "English" -FullScreen

Opens a calculus query in fullscreen mode with English language preference
via pipeline input.
#>
function Open-WolframAlphaQuery {

    [CmdletBinding()]
    [Alias('qalpha')]

    param(
        [Alias('q', 'Name', 'Text', 'Query')]
        [Parameter(
            Position = 0,
            Mandatory = $true,
            ValueFromRemainingArguments = $false,
            ValueFromPipeline = $true,
            ValueFromPipelineByPropertyName = $true,
            HelpMessage = 'The query to execute.'
        )]
        [string[]] $Queries,
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
            Position = 2,
            Mandatory = $false,
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
                '-2 = Configured secondary monitor, defaults to -1, no ' +
                'positioning')
        )]
        [int] $Monitor = -1,
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
            HelpMessage = 'Delay between sending different key sequences in milliseconds.'
        )]
        [int] $SendKeyDelayMilliSeconds,

        [Alias('fw','focus')]
        [Parameter(
            Mandatory = $false,
            HelpMessage = 'Focus the browser window after opening'
        )]
        [switch] $FocusWindow,

        [Alias('fg')]
        [Parameter(
            Mandatory = $false,
            HelpMessage = 'Set the browser window to foreground after opening'
        )]
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

        [Alias('pt')]
        [Parameter(
            Mandatory = $false,
            HelpMessage = 'Returns a [System.Diagnostics.Process] object of the browserprocess.'
        )]
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

        [Alias('nb')]
        [Parameter(
            Mandatory = $false,
            HelpMessage = 'Removes the borders of the browser window.'
        )]
        [switch] $NoBorders,


        [Alias('sbs')]
        [Parameter(
            Mandatory = $false,
            HelpMessage = 'Position browser window either fullscreen on different monitor than PowerShell, or side by side with PowerShell on the same monitor.'
        )]
        [switch] $SideBySide,


        [Parameter(
            Mandatory = $false,
            HelpMessage = 'Use alternative settings stored in session for AI preferences.'
        )]
        [switch] $SessionOnly,


        [Parameter(
            Mandatory = $false,
            HelpMessage = 'Clear alternative settings stored in session for AI preferences.'
        )]
        [switch] $ClearSession,


        [Alias('FromPreferences')]
        [Parameter(
            Mandatory = $false,
            HelpMessage = 'Store settings only in persistent preferences without affecting session.'
        )]
        [switch] $SkipSession
    )

    begin {

        # copy identical parameters from this function to open-webbrowser
        $invocationArguments = GenXdev\Copy-IdenticalParamValues `
            -BoundParameters $PSBoundParameters `
            -FunctionName 'GenXdev\Open-Webbrowser' `
            -DefaultValues (Microsoft.PowerShell.Utility\Get-Variable `
                -Scope Local `
                -ErrorAction SilentlyContinue)

        # process language parameter if specified
        if (-not [string]::IsNullOrWhiteSpace($Language)) {

            # retrieve the language code from the language dictionary
            $code = (GenXdev\Get-WebLanguageDictionary)[$Language]

            # set accept-lang header if not already specified
            if (-not $PSBoundParameters.ContainsKey('AcceptLang')) {

                $null = $invocationArguments.AcceptLang = $code
            }
        }
    }

    process {

        # process each search query
        foreach ($query in $Queries) {

            # output verbose information about the query being processed
            Microsoft.PowerShell.Utility\Write-Verbose "Processing query: $query"

            # construct the wolfram alpha search url with encoded query
            $invocationArguments.'Url' = ('https://www.wolframalpha.com/' +
                'input/?i=' +
                [Uri]::EscapeUriString($query))

            # handle return url only scenario
            if ($ReturnOnlyURL) {

                # output the url without opening browser
                Microsoft.PowerShell.Utility\Write-Output (
                    $invocationArguments.Url
                )
                continue
            }

            # launch browser with the constructed url and parameters
            GenXdev\Open-Webbrowser @invocationArguments

            # return url if requested
            if ($ReturnURL) {

                # output the url after opening browser
                Microsoft.PowerShell.Utility\Write-Output (
                    $invocationArguments.Url
                )
            }
        }
    }

    end {
    }
}
<##############################################################################
Part of PowerShell module : GenXdev.Queries.Webbrowser
Original cmdlet filename  : Open-YoutubeQuery.ps1
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
Opens YouTube search queries in a web browser.

.DESCRIPTION
Opens one or more YouTube search queries in a web browser with extensive
positioning and configuration options. Supports configurable monitor selection,
browser settings, and keystroke automation through dynamic parameters inherited
from Open-Webbrowser cmdlet. Each query opens in a separate browser instance
with full control over window positioning, browser type, and search language.

.PARAMETER Queries
One or more search terms to query on YouTube. Each query will open in a separate
browser instance. Supports pipeline input for batch processing of multiple
search terms.

.PARAMETER Language
The language of the returned search results. Uses ValidateSet to ensure only
supported languages are specified. Automatically configures browser accept-lang
header when specified.

.PARAMETER Private
Opens in incognito/private browsing mode. Uses InPrivate for Edge and incognito
for Chrome.

.PARAMETER Force
Force enable debugging port, stopping existing browsers if needed. Useful when
browser debugging features are required.

.PARAMETER Edge
Opens in Microsoft Edge browser specifically.

.PARAMETER Chrome
Opens in Google Chrome browser specifically.

.PARAMETER Chromium
Opens in Microsoft Edge or Google Chrome, depending on what the default browser
is. Prefers Chromium-based browsers.

.PARAMETER Firefox
Opens in Mozilla Firefox browser specifically.

.PARAMETER All
Opens in all registered modern browsers simultaneously.

.PARAMETER Monitor
The monitor to use for window placement:
- 0 = Primary monitor
- -1 = Discard positioning
- -2 = Configured secondary monitor
- 1+ = Specific monitor number

.PARAMETER FullScreen
Opens in fullscreen mode using F11 key simulation.

.PARAMETER Width
The initial width of the webbrowser window in pixels.

.PARAMETER Height
The initial height of the webbrowser window in pixels.

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
Hide the browser controls for a distraction-free experience.

.PARAMETER NoBrowserExtensions
Prevent loading of browser extensions.

.PARAMETER DisablePopupBlocker
Disable the popup blocker in the browser.

.PARAMETER AcceptLang
Set the browser accept-lang http header for internationalization.

.PARAMETER KeysToSend
Keystrokes to send to the Browser window after opening. Uses the same format
as the GenXdev\Send-Key cmdlet.

.PARAMETER FocusWindow
Focus the browser window after opening.

.PARAMETER SetForeground
Set the browser window to foreground after opening.

.PARAMETER Maximize
Maximize the window after positioning

.PARAMETER SetRestored
Restore the window to normal state after positioning

.PARAMETER RestoreFocus
Restore PowerShell window focus after opening the browser.

.PARAMETER NewWindow
Don't re-use existing browser window, instead create a new one.

.PARAMETER PassThru
Returns a [System.Diagnostics.Process] object of the browserprocess.

.PARAMETER ReturnURL
Don't open webbrowser, just return the url.

.PARAMETER ReturnOnlyURL
After opening webbrowser, return the url.

.PARAMETER SendKeyEscape
Escape control characters when sending keys to the browser.

.PARAMETER SendKeyHoldKeyboardFocus
Prevent returning keyboard focus to PowerShell after sending keys.

.PARAMETER SendKeyUseShiftEnter
Send Shift+Enter instead of regular Enter for line breaks.

.PARAMETER SendKeyDelayMilliSeconds
Delay between sending different key sequences in milliseconds.

.EXAMPLE
Open-YoutubeQuery -Queries "PowerShell tutorial" -Monitor 0

Opens a YouTube search for "PowerShell tutorial" on the default monitor.

.EXAMPLE
youtube "how to code" -m -2

Opens a YouTube search for "how to code" on the configured secondary monitor
using the function alias.
#>
function Open-YoutubeQuery {

    [CmdletBinding()]
    [Alias('youtube')]
    param(
        [Alias('q', 'Name', 'Text', 'Query')]
        [Parameter(
            Mandatory = $true,
            Position = 0,
            ValueFromRemainingArguments = $false,
            ValueFromPipeline = $true,
            ValueFromPipelineByPropertyName = $true,
            HelpMessage = 'The query to execute.'
        )]
        [string[]] $Queries,
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
            Position = 2,
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
        [int] $Monitor = -1,
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
        [string] $AcceptLang,
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
        [switch] $PassThru,
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

        # construct and encode the google search url
        $invocationArguments = GenXdev\Copy-IdenticalParamValues `
            -BoundParameters $PSBoundParameters `
            -FunctionName 'GenXdev\Open-Webbrowser' `
            -DefaultValues (Microsoft.PowerShell.Utility\Get-Variable `
                -Scope Local `
                -ErrorAction SilentlyContinue)

        # check if language parameter was provided for localization
        if (-not [string]::IsNullOrWhiteSpace($Language)) {

            # retrieve the language code from the language dictionary
            $code = (GenXdev\Get-WebLanguageDictionary)[$Language]

            # set accept-lang header if not already specified by user
            if (-not $PSBoundParameters.ContainsKey('AcceptLang')) {

                $null = $invocationArguments.AcceptLang = $code
            }
        }
    }

    process {

        # process each search query individually
        foreach ($query in $Queries) {

            # output verbose information about the query being processed
            Microsoft.PowerShell.Utility\Write-Verbose "Processing query: $query"

            # construct the youtube search url with proper uri encoding
            $invocationArguments.'Url' = ('https://www.youtube.com/' +
                'results?search_query=' + [Uri]::EscapeUriString($query))

            # handle return url only scenario without opening browser
            if ($ReturnOnlyURL) {

                # return the constructed url without opening browser
                Microsoft.PowerShell.Utility\Write-Output (
                    $invocationArguments.Url
                )
                continue
            }

            # launch browser with the constructed parameters
            GenXdev\Open-Webbrowser @invocationArguments

            # return url if requested by user
            if ($ReturnURL) {

                # output the constructed url after opening browser
                Microsoft.PowerShell.Utility\Write-Output (
                    $invocationArguments.Url
                )
            }
        }
    }

    end {
    }
}


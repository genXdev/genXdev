<##############################################################################
Part of PowerShell module : GenXdev.Webbrowser
Original cmdlet filename  : Close-Webbrowser.ps1
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
Closes one or more webbrowser instances selectively.

.DESCRIPTION
Provides granular control over closing web browser instances. Can target specific
browsers (Edge, Chrome, Firefox) or close all browsers. Supports closing both main
windows and background processes.

.PARAMETER Edge
Closes all Microsoft Edge browser instances.

.PARAMETER Chrome
Closes all Google Chrome browser instances.

.PARAMETER Chromium
Closes the default Chromium-based browser (Edge or Chrome).

.PARAMETER Firefox
Closes all Firefox browser instances.

.PARAMETER PlayWright
Closes all Playwright-managed browser instances and removes
their global state from $Global:GenXdevPlaywright.

.PARAMETER All
Closes all detected modern browser instances.

.PARAMETER IncludeBackgroundProcesses
Also closes background processes and tasks for the selected browsers.

.EXAMPLE
Close-Webbrowser -Chrome -Firefox -IncludeBackgroundProcesses
Closes all Chrome and Firefox instances including background processes

.EXAMPLE
wbc -a -bg
Closes all browser instances including background processes using aliases
#>
function Close-Webbrowser {

    [CmdletBinding(DefaultParameterSetName = 'Specific')]
    [Diagnostics.CodeAnalysis.SuppressMessageAttribute('PSAvoidGlobalVars', '')]
    [Alias('wbc')]

    param(
        [Alias('e')]
        [parameter(
            Mandatory = $false,
            ParameterSetName = 'Specific',
            HelpMessage = 'Closes Microsoft Edge browser instances'
        )]
        [switch] $Edge,
        [Alias('ch')]
        [parameter(
            Mandatory = $false,
            ParameterSetName = 'Specific',
            HelpMessage = 'Closes Google Chrome browser instances'
        )]
        [switch] $Chrome,
        [Alias('c')]
        [parameter(
            Mandatory = $false,
            ParameterSetName = 'Specific',
            HelpMessage = 'Closes default chromium-based browser'
        )]
        [switch] $Chromium,
        [Alias('ff')]
        [parameter(
            Mandatory = $false,
            ParameterSetName = 'Specific',
            HelpMessage = 'Closes Firefox browser instances'
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
        [Alias('bg', 'Force')]
        [parameter(
            Mandatory = $false,
            HelpMessage = 'Closes all instances including background tasks'
        )]
        [switch] $IncludeBackgroundProcesses
    )

    begin {
        # query system for installed browser information
        $params = GenXdev\Copy-IdenticalParamValues `
            -BoundParameters $PSBoundParameters `
            -FunctionName "GenXdev\Get-Webbrowser" `
            -DefaultValues (Microsoft.PowerShell.Utility\Get-Variable -Scope Local -ErrorAction SilentlyContinue)

        $installedBrowsers = GenXdev\Get-Webbrowser @params

        # determine system default browser
        $defaultBrowser = GenXdev\Get-DefaultWebbrowser

        Microsoft.PowerShell.Utility\Write-Verbose "Found $($installedBrowsers.Count) installed browsers"
        Microsoft.PowerShell.Utility\Write-Verbose "Default browser: $($defaultBrowser.Name)"
    }


    process {

        function Close-BrowserInstance {
            param (
                [object] $Browser
            )

            Microsoft.PowerShell.Utility\Write-Verbose "Attempting to close $($Browser.Name)"

            # extract process name without extension for matching
            $processName = [System.IO.Path]::GetFileNameWithoutExtension($Browser.Path)

            # find and process all matching browser instances
            Microsoft.PowerShell.Management\Get-Process -Name $processName -ErrorAction SilentlyContinue |
                Microsoft.PowerShell.Core\ForEach-Object {

                    $currentProcess = $_

                    # handle background processes based on user preference
                    if ((-not $IncludeBackgroundProcesses) -and
                    ($currentProcess.MainWindowHandle -eq 0)) {

                        Microsoft.PowerShell.Utility\Write-Verbose "Skipping background process $($currentProcess.Id)"
                        return
                    }
                    elseif ($currentProcess.MainWindowHandle -ne 0) {

                        # attempt graceful window close for processes with UI
                        [GenXdev.Helpers.WindowObj]::GetMainWindow($currentProcess) |
                            Microsoft.PowerShell.Core\ForEach-Object {

                                $startTime = [DateTime]::UtcNow
                                $window = $_

                                # try graceful close
                                $null = $window.Close()

                                # wait up to 4 seconds for process to exit
                                while (!$currentProcess.HasExited -and
                            ([datetime]::UtcNow - $startTime -lt
                                    [System.TimeSpan]::FromSeconds(4))) {

                                    Microsoft.PowerShell.Utility\Start-Sleep -Milliseconds 20
                                }

                                if ($currentProcess.HasExited) {
                                    Microsoft.PowerShell.Utility\Set-Variable -Scope Global `
                                        -Name "_LastClose$($Browser.Name)" `
                                        -Value ([DateTime]::UtcNow.AddSeconds(-1))
                                    return
                                }
                            }
                        }

                        # force terminate if process still running
                        try {
                            $null = $currentProcess.Kill()
                            Microsoft.PowerShell.Utility\Set-Variable -Scope Global -Name "_LastClose$($Browser.Name)" `
                                -Value ([DateTime]::UtcNow)
                        }
                        catch {
                            Microsoft.PowerShell.Utility\Write-Warning "Failed to kill $($Browser.Name) process: $_"
                        }
                    }
        }

        # shared helper: close Playwright browsers matching the given keys
        function ClosePlaywrightBrowsers {
            param (
                [string[]] $TargetKeys
            )

            if ($Global:GenXdevPlaywright -isnot [Hashtable]) { return }

            $keysToClose = if ($TargetKeys.Count -gt 0) {
                @($Global:GenXdevPlaywright.Keys) |
                    Microsoft.PowerShell.Core\Where-Object { $_ -in $TargetKeys }
            }
            else {
                @($Global:GenXdevPlaywright.Keys)
            }

            foreach ($key in $keysToClose) {
                $state = $Global:GenXdevPlaywright[$key]
                try {
                    if ($state.Context) {
                        $state.Context.CloseAsync().GetAwaiter().GetResult()
                    }
                    if ($state.Browser -and $state.Browser.IsConnected) {
                        $state.Browser.CloseAsync().GetAwaiter().GetResult()
                    }
                    $Global:GenXdevPlaywright.Remove($key)
                    Microsoft.PowerShell.Utility\Write-Verbose (
                        "Closed ${key} Playwright browser"
                    )
                }
                catch {
                    Microsoft.PowerShell.Utility\Write-Warning (
                        "Failed to close ${key} Playwright browser: $($_.Exception.Message)"
                    )
                    $Global:GenXdevPlaywright.Remove($key)
                }
            }

            # also kill any lingering ms-playwright processes
            $killedProcessIds = [System.Collections.Generic.List[int]]::new()
            Microsoft.PowerShell.Management\Get-Process -ErrorAction SilentlyContinue |
                Microsoft.PowerShell.Core\Where-Object {
                    $PSItem.Path -and ($PSItem.Path -like '*\ms-playwright\*')
                } |
                Microsoft.PowerShell.Core\ForEach-Object {
                    try {
                        $null = $PSItem.Kill()
                        $killedProcessIds.Add($PSItem.Id)
                        Microsoft.PowerShell.Utility\Write-Verbose (
                            "Killed lingering Playwright process: $($PSItem.Id)"
                        )
                    }
                    catch {
                        Microsoft.PowerShell.Utility\Write-Verbose (
                            "Could not kill process $($PSItem.Id): $_"
                        )
                    }
                }

            # wait up to 5 seconds for killed processes to fully exit
            # to release the profile directory SingletonLock
            if ($killedProcessIds.Count -gt 0) {
                Microsoft.PowerShell.Utility\Write-Verbose (
                    "Waiting for $($killedProcessIds.Count) " +
                    'Playwright process(es) to fully exit...'
                )
                $waitStart = [DateTime]::UtcNow
                $allExited = $false
                do {
                    Microsoft.PowerShell.Utility\Start-Sleep -Milliseconds 200
                    $stillRunning = @(
                        Microsoft.PowerShell.Management\Get-Process -Id $killedProcessIds `
                            -ErrorAction SilentlyContinue
                    )
                    $allExited = $stillRunning.Count -eq 0
                } while (-not $allExited -and
                    ([DateTime]::UtcNow - $waitStart).TotalSeconds -lt 5)

                if (-not $allExited) {
                    Microsoft.PowerShell.Utility\Write-Verbose (
                        'Some Playwright processes did not exit within timeout'
                    )
                }
            }
        }

        # resolve which Playwright browser types to target based on switches
        function ResolvePlaywrightTargetKeys {
            $keys = [System.Collections.Generic.List[string]]::new()

            if ($Edge) {
                $keys.Add('EdgeNormal')
            }
            if ($Chrome) {
                $keys.Add('ChromeNormal')
            }
            if ($Chromium) {
                $keys.Add('ChromiumNormal')
                $keys.Add('ChromiumPlaywright')
            }
            if ($Firefox) {
                $keys.Add('FirefoxPlaywright')
            }
            if ($Webkit) {
                $keys.Add('WebKitPlaywright')
            }

            # if no specific browser switch is set alongside -PlayWright,
            # close all Playwright browsers (empty list = all)
            if ($keys.Count -eq 0) {
                return @()
            }
            return $keys.ToArray()
        }

        # close Playwright-managed browsers if requested
        if ($PlayWright) {
            Microsoft.PowerShell.Utility\Write-Verbose 'Closing Playwright-managed browsers'

            $pwKeys = ResolvePlaywrightTargetKeys
            ClosePlaywrightBrowsers -TargetKeys $pwKeys

            # also clear legacy global state
            $Global:chromeController = $null
            $Global:chromeSession = $null
            $Global:chrome = $null

            return
        }

        # close all browsers if requested
        if ($All) {
            Microsoft.PowerShell.Utility\Write-Verbose 'Closing all browsers'
            $installedBrowsers | Microsoft.PowerShell.Core\ForEach-Object { Close-BrowserInstance $_ }

            # also close all Playwright-managed browsers when -All is used
            ClosePlaywrightBrowsers -TargetKeys @()

            $Global:chromeController = $null
            $Global:chromeSession = $null
            $Global:chrome = $null

            return
        }

        # handle default chromium browser closure
        if ($Chromium -and -not ($Chrome -or $Edge)) {
            if ($defaultBrowser.Name -like '*Chrome*' -or
                $defaultBrowser.Name -like '*Edge*') {

                Close-BrowserInstance $defaultBrowser
                return
            }

            # fallback to first available chromium browser
            $installedBrowsers |
                Microsoft.PowerShell.Core\Where-Object { $_.Name -like '*Edge*' -or $_.Name -like '*Chrome*' } |
                Microsoft.PowerShell.Utility\Select-Object -First 1 |
                Microsoft.PowerShell.Core\ForEach-Object {
                    Close-BrowserInstance $_
                }
            return
        }

        # handle specific browser closures
        if ($Chrome) {
            $installedBrowsers |
                Microsoft.PowerShell.Core\Where-Object { $_.Name -like '*Chrome*' } |
                Microsoft.PowerShell.Core\ForEach-Object { Close-BrowserInstance $_ }
        }

        if ($Edge) {
            $installedBrowsers |
                Microsoft.PowerShell.Core\Where-Object { $_.Name -like '*Edge*' } |
                Microsoft.PowerShell.Core\ForEach-Object { Close-BrowserInstance $_ }
        }

        if ($Firefox) {
            $installedBrowsers |
                Microsoft.PowerShell.Core\Where-Object { $_.Name -like '*Firefox*' } |
                Microsoft.PowerShell.Core\ForEach-Object { Close-BrowserInstance $_ }
        }

        # close default browser if no specific browser selected
        if (-not ($Chromium -or $Chrome -or $Edge -or $Firefox -or $PlayWright)) {
            Close-BrowserInstance $defaultBrowser
        }
    }

    end {
    }
}
<##############################################################################
Part of PowerShell module : GenXdev.Webbrowser
Original cmdlet filename  : Close-WebbrowserTab.ps1
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
        [Parameter(
            Mandatory = $false,
            HelpMessage = 'Navigate using Microsoft Edge browser'
        )]
        [Alias('e')]
        [switch] $Edge,
        [Parameter(
            Mandatory = $false,
            HelpMessage = 'Navigate using Google Chrome browser'
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
        [Parameter(
            Mandatory = $false,
            HelpMessage = 'Uses the Playwright-managed WebKit browser'
        )]
        [Alias('wk')]
        [switch] $Webkit
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
<##############################################################################
Part of PowerShell module : GenXdev.Webbrowser
Original cmdlet filename  : Export-BrowserBookmarks.ps1
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
Exports browser bookmarks to a JSON file.

.DESCRIPTION
The Export-BrowserBookmarks cmdlet exports bookmarks from a specified web browser
(Microsoft Edge, Google Chrome, or Mozilla Firefox) to a JSON file. Only one
browser type can be specified at a time. The bookmarks are exported with full
preservation of their structure and metadata.

.PARAMETER OutputFile
The path to the JSON file where the bookmarks will be saved. The path will be
expanded to a full path before use.

.PARAMETER Chrome
Switch parameter to export bookmarks from Google Chrome browser.

.PARAMETER Edge
Switch parameter to export bookmarks from Microsoft Edge browser.

.PARAMETER Firefox
Switch parameter to export bookmarks from Mozilla Firefox browser.

.EXAMPLE
Export-BrowserBookmarks -OutputFile "C:\MyBookmarks.json" -Edge

.EXAMPLE
Export-BrowserBookmarks "C:\MyBookmarks.json" -Chrome
#>
function Export-BrowserBookmarks {

    [CmdletBinding()]
    [System.Diagnostics.CodeAnalysis.SuppressMessageAttribute('PSUseSingularNouns', '')]
    [System.Diagnostics.CodeAnalysis.SuppressMessageAttribute('PSAvoidGlobalVars', '')]
    [System.Diagnostics.CodeAnalysis.SuppressMessageAttribute('PSUseDeclaredVarsMoreThanAssignments', '')]
    param (
        [Parameter(
            Mandatory = $true,
            Position = 0,
            HelpMessage = 'Path to the JSON file where bookmarks will be saved'
        )]
        [ValidateNotNullOrEmpty()]
        [string]$OutputFile,
        [Alias('ch')]
        [Parameter(
            Mandatory = $false,
            HelpMessage = 'Export bookmarks from Google Chrome'
        )]
        [switch]$Chrome,
        [Alias('e')]
        [Parameter(
            Mandatory = $false,
            HelpMessage = 'Export bookmarks from Microsoft Edge'
        )]
        [switch]$Edge,
        [Alias('ff')]
        [Parameter(
            Mandatory = $false,
            ParameterSetName = 'Firefox',
            HelpMessage = 'Export bookmarks from Mozilla Firefox'
        )]
        [switch]$Firefox
    )

    begin {
        # convert relative or partial path to full filesystem path
        $outputFilePath = GenXdev\Expand-Path $OutputFile

        # inform user about the output destination
        Microsoft.PowerShell.Utility\Write-Verbose "Exporting bookmarks to: $outputFilePath"
    }


    process {

        # initialize empty hashtable for browser selection parameters
        $bookmarksArguments = @{}

        # set appropriate flag based on selected browser type
        if ($Chrome) {
            $bookmarksArguments['Chrome'] = $true
            Microsoft.PowerShell.Utility\Write-Verbose 'Exporting Chrome bookmarks'
        }
        if ($Edge) {
            $bookmarksArguments['Edge'] = $true
            Microsoft.PowerShell.Utility\Write-Verbose 'Exporting Edge bookmarks'
        }
        if ($Firefox) {
            $bookmarksArguments['Firefox'] = $true
            Microsoft.PowerShell.Utility\Write-Verbose 'Exporting Firefox bookmarks'
        }

        # retrieve bookmarks and save them as formatted json to the output file
        GenXdev\Get-BrowserBookmark @bookmarksArguments |
            Microsoft.PowerShell.Utility\ConvertTo-Json -Depth 100 |
            Microsoft.PowerShell.Management\Set-Content -LiteralPath $outputFilePath -Force

        Microsoft.PowerShell.Utility\Write-Verbose 'Bookmarks exported successfully'
    }

    end {
    }
}
<##############################################################################
Part of PowerShell module : GenXdev.Webbrowser
Original cmdlet filename  : Find-BrowserBookmark.ps1
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
Finds bookmarks from one or more web browsers.

.DESCRIPTION
Searches through bookmarks from Microsoft Edge, Google Chrome, or Mozilla Firefox.
Returns bookmarks that match one or more search queries in their name, URL, or
folder path. If no queries are provided, returns all bookmarks from the selected
browsers.

.PARAMETER Queries
One or more search terms to find matching bookmarks. Matches are found in the
bookmark name, URL, or folder path using wildcard pattern matching.

.PARAMETER Edge
Switch to include Microsoft Edge bookmarks in the search.

.PARAMETER Chrome
Switch to include Google Chrome bookmarks in the search.

.PARAMETER Firefox
Switch to include Mozilla Firefox bookmarks in the search.

.PARAMETER Count
Maximum number of results to return. Must be a positive integer.
Default is 99999999.

.PARAMETER PassThru
Switch to return complete bookmark objects instead of just URLs. Each bookmark
object contains Name, URL, and Folder properties.

.EXAMPLE
Find-BrowserBookmark -Query "github" -Edge -Chrome -Count 10
Searches Edge and Chrome bookmarks for "github", returns first 10 URLs

.EXAMPLE
bookmarks powershell -e -ff -PassThru
Searches Edge and Firefox bookmarks for "powershell", returns full objects
#>
function Find-BrowserBookmark {

    [CmdletBinding(DefaultParameterSetName = 'Default')]
    [Alias('bookmarks')]
    param (
        [Alias('q', 'Name', 'Text', 'Query')]
        [parameter(
            Mandatory = $false,
            Position = 0,
            ValueFromRemainingArguments = $false,
            ValueFromPipeline = $true,
            ValueFromPipelineByPropertyName = $true,
            HelpMessage = 'Search terms to find matching bookmarks'
        )]
        [SupportsWildcards()]
        [string[]] $Queries,

        [Alias('e')]
        [parameter(
            Mandatory = $false,
            HelpMessage = 'Search through Microsoft Edge bookmarks'
        )]
        [switch] $Edge,

        [Alias('ch')]
        [parameter(
            Mandatory = $false,
            HelpMessage = 'Search through Google Chrome bookmarks'
        )]
        [switch] $Chrome,

        [Alias('ff')]
        [parameter(
            Mandatory = $false,
            HelpMessage = 'Search through Firefox bookmarks'
        )]
        [switch] $Firefox,

        [parameter(
            Mandatory = $false,
            HelpMessage = 'Maximum number of results to return'
        )]
        [ValidateRange(1, [int]::MaxValue)]
        [int] $Count = 99999999,

        [parameter(
            Mandatory = $false,
            HelpMessage = 'Return bookmark objects instead of just URLs'
        )]
        [switch] $PassThru
    )

    begin {
        Microsoft.PowerShell.Utility\Write-Verbose 'Initializing browser bookmark search'
        $bookmarksArguments = GenXdev\Copy-IdenticalParamValues `
            -BoundParameters $PSBoundParameters `
            -FunctionName 'GenXdev\Get-BrowserBookmark' `
            -DefaultValues (Microsoft.PowerShell.Utility\Get-Variable -Scope Local -ErrorAction SilentlyContinue)
    }


    process {

        # retrieve all bookmarks from selected browsers
        Microsoft.PowerShell.Utility\Write-Verbose 'Fetching bookmarks from selected browsers'
        $bookmarks = GenXdev\Get-BrowserBookmark @bookmarksArguments

        # handle case when no search queries provided
        if (($null -eq $Queries) -or ($Queries.Length -eq 0)) {

            Microsoft.PowerShell.Utility\Write-Verbose 'No search terms specified - returning all bookmarks'
            $bookmarks |
                Microsoft.PowerShell.Utility\Select-Object -First $Count
            return
        }

        # search bookmarks for matches to any query terms
        Microsoft.PowerShell.Utility\Write-Verbose "Searching bookmarks for matches to $($Queries.Count) queries"
        $results = $Queries |
            Microsoft.PowerShell.Core\ForEach-Object {
                $query = $PSItem
                if (-not ($query.Contains('*') -or ($query.Contains('?')))) {
                    $query = "*$query*"
                }
                Microsoft.PowerShell.Utility\Write-Verbose "Processing query: $query"

                $bookmarks |
                    Microsoft.PowerShell.Core\Where-Object {
                ($PSItem.Folder -like "$query") -or
                ($PSItem.Name -Like "$query") -or
                ($PSItem.URL -Like "$query")
                    }
                } |
                Microsoft.PowerShell.Utility\Select-Object -First $Count

        # return either full bookmark objects or just URLs
        if ($PassThru) {
            Microsoft.PowerShell.Utility\Write-Verbose "Returning $($results.Count) bookmark objects"
            $results
        }
        else {
            Microsoft.PowerShell.Utility\Write-Verbose "Returning $($results.Count) bookmark URLs"
            $results |
                Microsoft.PowerShell.Core\ForEach-Object URL
        }
    }

    end {
    }
}
<##############################################################################
Part of PowerShell module : GenXdev.Webbrowser
Original cmdlet filename  : Get-BrowserBookmark.ps1
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
Returns all bookmarks from installed web browsers.

.DESCRIPTION
Retrieves bookmarks from Microsoft Edge, Google Chrome, or Mozilla Firefox
browsers installed on the system. The function can filter by browser type and
returns detailed bookmark information including name, URL, folder location, and
timestamps. Automatically handles consent for System.Data.SQLite NuGet package
installation when reading Firefox bookmarks.

.PARAMETER Chrome
Retrieves bookmarks specifically from Google Chrome browser.

.PARAMETER Edge
Retrieves bookmarks specifically from Microsoft Edge browser.

.PARAMETER Firefox
Retrieves bookmarks specifically from Mozilla Firefox browser.

.PARAMETER ForceConsent
Force consent for third-party software installation without prompting.

.PARAMETER ConsentToThirdPartySoftwareInstallation
Provide consent to third-party software installation.

.EXAMPLE
Get-BrowserBookmark -Edge | Format-Table Name, URL, Folder
Returns Edge bookmarks formatted as a table showing name, URL and folder.

.EXAMPLE
gbm -Chrome | Where-Object URL -like "*github*"
Returns Chrome bookmarks filtered to only show GitHub-related URLs.

.EXAMPLE
Get-BrowserBookmark -Firefox -ConsentToThirdPartySoftwareInstallation
Returns Firefox bookmarks with automatic consent to SQLite package installation.
#>
function Get-BrowserBookmark {

    [CmdletBinding(DefaultParameterSetName = 'Default')]

    [OutputType([System.Object[]])]
    [Alias('gbm')]
    param (
        [Alias('ch')]
        [Parameter(
            Mandatory = $false,
            HelpMessage = 'Returns bookmarks from Google Chrome'
        )]
        [switch] $Chrome,

        [Alias('e')]
        [Parameter(
            Mandatory = $false,
            HelpMessage = 'Returns bookmarks from Microsoft Edge'
        )]
        [switch] $Edge,

        [Alias('ff')]
        [Parameter(
            Mandatory = $false,
            ParameterSetName = 'Firefox',
            HelpMessage = 'Returns bookmarks from Mozilla Firefox'
        )]
        [switch] $Firefox,
        [Parameter(
            Mandatory = $false,
            HelpMessage = 'Force consent for third-party software installation'
        )]
        [switch]$ForceConsent,
        [Parameter(
            Mandatory = $false,
            HelpMessage = 'Consent to third-party software installation'
        )]
        [switch]$ConsentToThirdPartySoftwareInstallation
    )

    begin {
        # prepare parameters for EnsureNuGetAssembly with embedded consent
        $params = GenXdev\Copy-IdenticalParamValues `
            -BoundParameters $PSBoundParameters `
            -FunctionName 'GenXdev\EnsureNuGetAssembly' `
            -DefaultValues (Microsoft.PowerShell.Utility\Get-Variable -Scope Local -ErrorAction SilentlyContinue)

        # load SQLite client assembly with embedded consent
        GenXdev\EnsureNuGetAssembly -PackageKey 'System.Data.Sqlite' `
            -Description 'Required for reading bookmark database files' `
            -Publisher 'SQLite Development Team' @params

        # ensure filesystem module is loaded for path handling
        if (-not (Microsoft.PowerShell.Core\Get-Command -Name GenXdev\Expand-Path -ErrorAction SilentlyContinue)) {
            Microsoft.PowerShell.Core\Import-Module GenXdev.FileSystem
        }

        Microsoft.PowerShell.Utility\Write-Verbose 'Getting installed browsers...'

        # get list of installed browsers for validation
        $Script:installedBrowsers = GenXdev\Get-Webbrowser

        # if no specific browser selected, use system default
        if (-not $Edge -and -not $Chrome -and -not $Firefox) {

            Microsoft.PowerShell.Utility\Write-Verbose 'No browser specified, detecting default browser...'
            $defaultBrowser = GenXdev\Get-DefaultWebbrowser

            # set appropriate switch based on default browser
            if ($defaultBrowser.Name -like '*Edge*') {
                $Edge = $true
            }
            elseif ($defaultBrowser.Name -like '*Chrome*') {
                $Chrome = $true
            }
            elseif ($defaultBrowser.Name -like '*Firefox*') {
                $Firefox = $true
            }
            else {
                Microsoft.PowerShell.Utility\Write-Warning 'Default browser is not Edge, Chrome, or Firefox.'
                return
            }
        }
    }


    process {

        # helper function to parse Chromium-based browser bookmarks
        function Get-ChromiumBookmarks {

            [CmdletBinding()]
            [OutputType([System.Object[]])]
            [System.Diagnostics.CodeAnalysis.SuppressMessageAttribute('PSUseSingularNouns', '')]
            [System.Diagnostics.CodeAnalysis.SuppressMessageAttribute('PSAvoidGlobalVars', '')]
            [System.Diagnostics.CodeAnalysis.SuppressMessageAttribute('PSUseOutputTypeCorrectly', '')]
            param (
                [string] $bookmarksFilePath,
                [string] $rootFolderName,
                [string] $browserName
            )

            if (-not (Microsoft.PowerShell.Management\Test-Path -LiteralPath $bookmarksFilePath)) {
                Microsoft.PowerShell.Utility\Write-Verbose "Bookmarks file not found: $bookmarksFilePath"
                return @()
            }

            # read bookmarks json file
            $bookmarksContent = Microsoft.PowerShell.Management\Get-Content -LiteralPath  $bookmarksFilePath -Raw |
                Microsoft.PowerShell.Utility\ConvertFrom-Json

            $bookmarks = [System.Collections.Generic.List[object]]::new()

            # recursive function to traverse bookmark tree
            function ParseBookmarkFolder {
                param (
                    [pscustomobject] $folder,
                    [string] $parentFolder = ''
                )

                foreach ($item in $folder.children) {
                    if ($item.type -eq 'folder') {
                        ParseBookmarkFolder -Folder $item `
                            -ParentFolder ($parentFolder + '\' + $item.name)
                    }
                    elseif ($item.type -eq 'url') {
                        $null = $bookmarks.Add([pscustomobject]@{
                                Name          = $item.name
                                URL           = $item.url
                                Folder        = $parentFolder
                                DateAdded     = [DateTime]::FromFileTimeUtc(
                                    [int64]$item.date_added
                                )
                                DateModified  = if ($item.PSObject.Properties.Match(
                                        'date_modified')) {
                                    [DateTime]::FromFileTimeUtc(
                                        [int64]$item.date_modified
                                    )
                                }
                                else {
                                    $null
                                }
                                BrowserSource = $browserName
                            })
                    }
                }
            }

            # process each root folder
            ParseBookmarkFolder -Folder $bookmarksContent.roots.bookmark_bar `
                -ParentFolder "$rootFolderName\Bookmarks Bar"
            ParseBookmarkFolder -Folder $bookmarksContent.roots.other `
                -ParentFolder "$rootFolderName\Other Bookmarks"
            ParseBookmarkFolder -Folder $bookmarksContent.roots.synced `
                -ParentFolder "$rootFolderName\Synced Bookmarks"

            return $bookmarks
        }

        # helper function to parse Firefox bookmarks from SQLite
        function Get-FirefoxBookmark {

            [CmdletBinding()]
            [OutputType([System.Object[]])]

            param (
                [string] $placesFilePath,
                [string] $browserName
            )

            if (-not (Microsoft.PowerShell.Management\Test-Path -LiteralPath $placesFilePath)) {
                Microsoft.PowerShell.Utility\Write-Verbose "Firefox places.sqlite not found: $placesFilePath"
                return @()
            }

            $connectionString = "Data Source=$placesFilePath;Version=3;"
            $query = @'
                SELECT
                    b.title,
                    p.url,
                    b.dateAdded,
                    b.lastModified,
                    f.title AS Folder
                FROM moz_bookmarks b
                JOIN moz_places p ON b.fk = p.id
                LEFT JOIN moz_bookmarks f ON b.parent = f.id
                WHERE b.type = 1
'@

            $bookmarks = @()

            try {

                $connection = Microsoft.PowerShell.Utility\New-Object System.Data.Sqlite.SQLiteConnection($connectionString)
                $connection.Open()
                $command = $connection.CreateCommand()
                $command.CommandText = $query
                $reader = $command.ExecuteReader()

                while ($reader.Read()) {
                    $bookmarks += [pscustomobject]@{
                        Name          = $reader['title']
                        URL           = $reader['url']
                        Folder        = $reader['Folder']
                        DateAdded     = [DateTime]::FromFileTimeUtc($reader['dateAdded'])
                        DateModified  = [DateTime]::FromFileTimeUtc($reader['lastModified'])
                        BrowserSource = $browserName
                    }
                }

                $reader.Close()
                $connection.Close()
            }
            catch {
                Microsoft.PowerShell.Utility\Write-Host "Error reading Firefox bookmarks: $PSItem"
            }

            return $bookmarks
        }

        Microsoft.PowerShell.Utility\Write-Verbose 'Processing browser selection...'

        if ($Edge) {
            # validate Edge installation
            $browser = $Script:installedBrowsers |
                Microsoft.PowerShell.Core\Where-Object { $PSItem.Name -like '*Edge*' }

            if (-not $browser) {
                Microsoft.PowerShell.Utility\Write-Warning 'Microsoft Edge is not installed.'
                return
            }

            # construct path to Edge bookmarks file
            $bookmarksFilePath = Microsoft.PowerShell.Management\Join-Path `
                -Path $env:LOCALAPPDATA `
                -ChildPath 'Microsoft\Edge\User Data\Default\Bookmarks'

            $rootFolderName = 'Edge'

            # get Edge bookmarks
            $bookmarks = Get-ChromiumBookmarks `
                -BookmarksFilePath $bookmarksFilePath `
                -RootFolderName $rootFolderName `
                -BrowserName $browser.Name

        }
        elseif ($Chrome) {
            # validate Chrome installation
            $browser = $Script:installedBrowsers | Microsoft.PowerShell.Core\Where-Object { $PSItem.Name -like '*Chrome*' }
            if (-not $browser) {
                Microsoft.PowerShell.Utility\Write-Host 'Google Chrome is not installed.'
                return
            }
            $rootFolderName = 'Chrome'

            # modern Chrome uses AccountBookmarks for synced bookmarks
            $accountBookmarksPath = Microsoft.PowerShell.Management\Join-Path -Path $env:LOCALAPPDATA `
                -ChildPath 'Google\Chrome\User Data\Default\AccountBookmarks'

            # construct path to legacy Chrome bookmarks file
            $bookmarksFilePath = Microsoft.PowerShell.Management\Join-Path -Path $env:LOCALAPPDATA `
                -ChildPath 'Google\Chrome\User Data\Default\Bookmarks'

            # get Chrome bookmarks from both sources
            $bookmarks = Get-ChromiumBookmarks `
                -bookmarksFilePath $bookmarksFilePath `
                -rootFolderName $rootFolderName `
                -browserName ($browser.Name)

            $accountBookmarks = Get-ChromiumBookmarks `
                -bookmarksFilePath $accountBookmarksPath `
                -rootFolderName $rootFolderName `
                -browserName ($browser.Name)

            $bookmarks = @($bookmarks) + @($accountBookmarks)
        }
        elseif ($Firefox) {
            # validate Firefox installation
            $browser = $Script:installedBrowsers | Microsoft.PowerShell.Core\Where-Object { $PSItem.Name -like '*Firefox*' }
            if (-not $browser) {
                Microsoft.PowerShell.Utility\Write-Host 'Mozilla Firefox is not installed.'
                return
            }
            # find Firefox profile folder
            $profileFolderPath = "$env:APPDATA\Mozilla\Firefox\Profiles"
            $profileFolder = Microsoft.PowerShell.Management\Get-ChildItem -LiteralPath  $profileFolderPath -Directory | Microsoft.PowerShell.Core\Where-Object { $PSItem.Name -match '\.default-release$' } | Microsoft.PowerShell.Utility\Select-Object -First 1
            if ($null -eq $profileFolder) {
                Microsoft.PowerShell.Utility\Write-Host 'Firefox profile folder not found.'
                return
            }
            # construct path to Firefox places.sqlite file
            $placesFilePath = Microsoft.PowerShell.Management\Join-Path -Path $profileFolder.FullName -ChildPath 'places.sqlite'
            # get Firefox bookmarks
            $bookmarks = Get-FirefoxBookmark -placesFilePath $placesFilePath -browserName ($browser.Name)
        }
        else {
            Microsoft.PowerShell.Utility\Write-Warning 'Please specify either -Chrome, -Edge, or -Firefox switch.'
            return
        }

        return $bookmarks
    }

    end {
    }
}
<##############################################################################
Part of PowerShell module : GenXdev.Webbrowser
Original cmdlet filename  : Get-PlaywrightSessionReference.ps1
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
        [Alias('e')]
        [Parameter(
            Mandatory = $false,
            HelpMessage = 'Prefer Microsoft Edge browser session'
        )]
        [switch] $Edge,
        [Alias('ch')]
        [Parameter(
            Mandatory = $false,
            HelpMessage = 'Prefer Google Chrome browser session'
        )]
        [switch] $Chrome,
        [Alias('c')]
        [Parameter(
            Mandatory = $false,
            HelpMessage = ('Prefer Microsoft Edge or Google Chrome, ' +
                'depending on what the default browser is')
        )]
        [switch] $Chromium,
        [Alias('ff')]
        [Parameter(
            Mandatory = $false,
            HelpMessage = 'Prefer Firefox browser session'
        )]
        [switch] $Firefox,
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
<##############################################################################
Part of PowerShell module : GenXdev.Webbrowser
Original cmdlet filename  : Get-WebbrowserTabDomNodes.ps1
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
Queries and manipulates DOM nodes in the active browser tab using CSS selectors.

.DESCRIPTION
Uses browser automation to find elements matching a CSS selector and returns their
HTML content or executes custom JavaScript on each matched element. This function
is useful for web scraping and browser automation tasks.

.PARAMETER QuerySelector
CSS selector string to find matching DOM elements. Uses standard CSS selector
syntax like '#id', '.class', 'tag', etc.

.PARAMETER ModifyScript
JavaScript code to execute on each matched element. The code runs as an async
function with parameters:
- e: The matched DOM element
- i: Index of the element (0-based)
- n: Complete NodeList of matching elements
- modifyScript: The script being executed

.EXAMPLE
Get HTML of all header divs
Get-WebbrowserTabDomNodes -QuerySelector "div.header"

.EXAMPLE
Pause all videos on the page
wl "video" "e.pause()"
#>
function Get-WebbrowserTabDomNodes {

    [CmdletBinding()]
    [System.Diagnostics.CodeAnalysis.SuppressMessageAttribute('PSUseSingularNouns', '')]
    [Alias('wl')]
    param(
        [parameter(
            Mandatory = $true,
            Position = 0,
            HelpMessage = 'The query selector string or array of strings to use for selecting DOM nodes'
        )]
        [string[]] $QuerySelector,
        [parameter(
            Mandatory = $false,
            Position = 1,
            ValueFromRemainingArguments = $false,
            HelpMessage = "The script to modify the output of the query selector, e.g. e.outerHTML or e.outerHTML='hello world'"
        )]
        [string] $ModifyScript = '',
        [Alias('e')]
        [parameter(
            Mandatory = $false,
            HelpMessage = 'Use Microsoft Edge browser'
        )]
        [switch] $Edge,
        [Alias('ch')]
        [parameter(
            Mandatory = $false,
            HelpMessage = 'Use Google Chrome browser'
        )]
        [switch] $Chrome,
        [Alias('c')]
        [parameter(
            Mandatory = $false,
            HelpMessage = ('Use Microsoft Edge or Google Chrome, ' +
                'depending on what the default browser is')
        )]
        [switch] $Chromium,
        [Alias('ff')]
        [parameter(
            Mandatory = $false,
            HelpMessage = 'Use Firefox browser'
        )]
        [switch] $Firefox,
        [Alias('wk')]
        [parameter(
            Mandatory = $false,
            HelpMessage = 'Use the Playwright-managed WebKit browser'
        )]
        [switch] $Webkit,
        [Parameter(
            HelpMessage = 'Browser page object reference for targeting ' +
                'a specific tab',
            ValueFromPipeline = $false
        )]
        [object] $Page,
        [Parameter(
            HelpMessage = 'Browser session reference object for ' +
                'reusing an existing browser session',
            ValueFromPipeline = $false
        )]
        [PSCustomObject] $ByReference,
        [Parameter(
            Mandatory = $false,
            ValueFromPipeline = $false,
            HelpMessage = 'Prevent automatic tab selection'
        )]
        [switch] $NoAutoSelectTab
    )

    begin {
        # convert input parameters to json to prevent script injection attacks
        $jsonModifyScript = $ModifyScript |
            Microsoft.PowerShell.Utility\ConvertTo-Json -Compress -Depth 100 |
            Microsoft.PowerShell.Utility\ConvertTo-Json -Compress

        $jsonQuerySelector = @($QuerySelector) |
            Microsoft.PowerShell.Utility\ConvertTo-Json -Compress -Depth 100 |
            Microsoft.PowerShell.Utility\ConvertTo-Json -Compress

        # javascript that will be executed in the browser context
        # it handles both simple HTML extraction and custom modifications
        $browserScript = @"
        debugger;
let modifyScript = JSON.parse($jsonModifyScript);
let selectors = JSON.parse($jsonQuerySelector);
selectors = selectors instanceof Array ? selectors : [selectors];
let currentSelector = selectors[0];
async function* traverseNodes(node, selectorIndex) {
    if (selectorIndex >= selectors.length) return;

    let currentSelector = selectors[selectorIndex];
    let nodes = node.querySelectorAll(currentSelector);

    for (let i = 0; i < nodes.length; i++) {
        let currentNode = nodes[i];

        // Check for Shadow DOM
        if (currentNode.shadowRoot) {
            yield* traverseNodes(currentNode.shadowRoot, selectorIndex + 1);
            continue;
        }

        // Check for IFrames
        if (currentNode.tagName === 'IFRAME') {
            try {
                let iframeDoc = currentNode.contentDocument || currentNode.contentWindow.document;
                yield* traverseNodes(iframeDoc, selectorIndex + 1);
            } catch(e) {
                // Handle cross-origin iframe access errors
                console.warn('Cannot access iframe content');
            }
            continue;
        }

        // If this is the last selector, process the node
        if (selectorIndex === selectors.length - 1) {
            if (!!modifyScript && modifyScript != "") {
                try {
                    yield await (async function(e, i, n, modifyScript) {
                        return eval(modifyScript);
                    })(currentNode, i, nodes, modifyScript);
                } catch (e) {
                    yield e+'';
                }
            } else {
                yield currentNode.outerHTML;
            }
        } else {
            // Continue traversing with next selector
            yield* traverseNodes(currentNode, selectorIndex + 1);
        }
    }
}

// Start traversal from document root
for await (let result of traverseNodes(document, 0)) {
    yield result;
}
"@
    }


    process {

        # log the operation for debugging purposes
        Microsoft.PowerShell.Utility\Write-Verbose "Executing query '$QuerySelector' with modifier script:`n$ModifyScript"

        # execute the javascript in browser and return results
        $invocationParams = GenXdev\Copy-IdenticalParamValues `
            -BoundParameters $PSBoundParameters `
            -FunctionName 'GenXdev\Invoke-WebbrowserEvaluation'

        $invocationParams.Scripts = $browserScript
        GenXdev\Invoke-WebbrowserEvaluation @invocationParams
    }

    end {
    }
}
<##############################################################################
Part of PowerShell module : GenXdev.Webbrowser
Original cmdlet filename  : Import-BrowserBookmarks.ps1
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
Imports bookmarks from a file or collection into a web browser.

.DESCRIPTION
Imports bookmarks into Microsoft Edge or Google Chrome from either a CSV file or
a collection of bookmark objects. The bookmarks are added to the browser's
bookmark bar or specified folders. Firefox import is not currently supported.

.PARAMETER InputFile
The path to a CSV file containing bookmarks to import. The CSV should have
columns for Name, URL, Folder, DateAdded, and DateModified.

.PARAMETER Bookmarks
An array of bookmark objects to import. Each object should have properties for
Name, URL, Folder, DateAdded, and DateModified.

.PARAMETER Chrome
Switch to import bookmarks into Google Chrome.

.PARAMETER Edge
Switch to import bookmarks into Microsoft Edge.

.PARAMETER Firefox
Switch to indicate Firefox as target (currently not supported).

.EXAMPLE
Import-BrowserBookmarks -InputFile "C:\MyBookmarks.csv" -Edge
Imports bookmarks from the CSV file into Microsoft Edge.

.EXAMPLE
$bookmarks = @(
    @{
        Name = "Microsoft";
        URL = "https://microsoft.com";
        Folder = "Tech"
    }
)
Import-BrowserBookmarks -Bookmarks $bookmarks -Chrome
Imports a collection of bookmarks into Google Chrome.
#>
function Import-BrowserBookmarks {

    [CmdletBinding(DefaultParameterSetName = 'Default', SupportsShouldProcess)]
    [System.Diagnostics.CodeAnalysis.SuppressMessageAttribute('PSUseSingularNouns', '')]
    param (
        [Parameter(
            Mandatory = $false,
            Position = 0,
            ParameterSetName = 'FromFile',
            HelpMessage = 'Path to CSV file with bookmarks to import'
        )]
        [string]$InputFile,
        [Parameter(
            Mandatory = $false,
            Position = 0,
            ParameterSetName = 'FromCollection',
            HelpMessage = 'Collection of bookmarks to import'
        )]
        [array]$Bookmarks,
        [Alias('ch')]
        [Parameter(
            Mandatory = $false,
            HelpMessage = 'Import into Google Chrome'
        )]
        [switch]$Chrome,
        [Alias('e')]
        [Parameter(
            Mandatory = $false,
            HelpMessage = 'Import into Microsoft Edge'
        )]
        [switch]$Edge,
        [Alias('ff')]
        [Parameter(
            Mandatory = $false,
            HelpMessage = 'Import into Firefox (not supported)'
        )]
        [switch]$Firefox
    )

    begin {

        ###############################################################################helper function to write bookmarks to browser's bookmark file
        function Write-Bookmarks {
            [CmdletBinding(SupportsShouldProcess)]
            [System.Diagnostics.CodeAnalysis.SuppressMessageAttribute('PSUseSingularNouns', '')]
            param (
                [Parameter(Mandatory)]
                [string]$BookmarksFilePath,

                [Parameter(Mandatory)]
                [array]$BookmarksToWrite
            )

            if (-not ($Edge -or $Chrome)) { return }

            $bookmarksContent = if (Microsoft.PowerShell.Management\Test-Path -LiteralPath $BookmarksFilePath) {
                Microsoft.PowerShell.Management\Get-Content -LiteralPath $BookmarksFilePath -Raw | Microsoft.PowerShell.Utility\ConvertFrom-Json
            }
            else {
                @{
                    roots = @{
                        bookmark_bar = @{children = @() }
                        other        = @{children = @() }
                        synced       = @{children = @() }
                    }
                }
            }

            $changes = $false
            foreach ($bookmark in $BookmarksToWrite) {
                if (-not $PSCmdlet.ShouldProcess(
                        "$BookmarksFilePath",
                        "Add bookmark '$($bookmark.Name)' to $(if($Edge){'Edge'}else{'Chrome'}) at folder '$($bookmark.Folder)'"
                    )) { continue }

                $newBookmark = @{
                    type          = 'url'
                    name          = $bookmark.Name
                    url           = $bookmark.URL
                    date_added    = if ($bookmark.DateAdded) {
                        [string]$bookmark.DateAdded.ToFileTimeUtc()
                    }
                    else {
                        [string][DateTime]::UtcNow.ToFileTimeUtc()
                    }
                    date_modified = if ($bookmark.DateModified) {
                        [string]$bookmark.DateModified.ToFileTimeUtc()
                    }
                    else {
                        $null
                    }
                }

                # Determine the folder to add the bookmark to
                $folderPath = $bookmark.Folder -split '\\'
                $currentNode = $bookmarksContent.roots.bookmark_bar

                foreach ($folder in $folderPath) {
                    if ($folder -eq 'Bookmarks Bar') {
                        $currentNode = $bookmarksContent.roots.bookmark_bar
                    }
                    elseif ($folder -eq 'Other Bookmarks') {
                        $currentNode = $bookmarksContent.roots.other
                    }
                    elseif ($folder -eq 'Synced Bookmarks') {
                        $currentNode = $bookmarksContent.roots.synced
                    }
                    else {
                        $existingFolder = $currentNode.children | Microsoft.PowerShell.Core\Where-Object { $PSItem.type -eq 'folder' -and $PSItem.name -eq $folder }
                        if ($existingFolder) {
                            $currentNode = $existingFolder
                        }
                        else {
                            $newFolder = @{
                                type     = 'folder'
                                name     = $folder
                                children = @()
                            }
                            $currentNode.children += $newFolder
                            $currentNode = $newFolder
                        }
                    }
                }

                # Add the new bookmark to the determined folder
                $currentNode.children += $newBookmark
                $changes = $true
            }

            # Only write file if changes were made and approved
            if ($changes -and $PSCmdlet.ShouldProcess($BookmarksFilePath, 'Save bookmarks file')) {

                $bookmarksContent | Microsoft.PowerShell.Utility\ConvertTo-Json -Depth 100 | Microsoft.PowerShell.Management\Set-Content -LiteralPath $BookmarksFilePath
            }
        }

        # ensure the GenXdev\Expand-Path cmdlet is available for file operations
        if (-not (Microsoft.PowerShell.Core\Get-Command -Name GenXdev\Expand-Path -ErrorAction SilentlyContinue)) {

            Microsoft.PowerShell.Core\Import-Module GenXdev.FileSystem
        }

        # get list of installed browsers on the system
        $installedBrowsers = GenXdev\Get-Webbrowser
        Microsoft.PowerShell.Utility\Write-Verbose "Found installed browsers: $($installedBrowsers.Name)"
    }


    process {

        # load bookmarks from either the collection or input file
        $importedBookmarks = if ($Bookmarks) {
            Microsoft.PowerShell.Utility\Write-Verbose "Using provided collection of $($Bookmarks.Count) bookmarks"
            $Bookmarks
        }
        elseif ($InputFile) {
            Microsoft.PowerShell.Utility\Write-Verbose "Reading bookmarks from CSV: $InputFile"
            Microsoft.PowerShell.Utility\Import-Csv -Path (GenXdev\Expand-Path $InputFile)
        }
        else {
            Microsoft.PowerShell.Utility\Write-Host 'Please provide either an InputFile or Bookmarks collection.'
            return
        }

        # determine target browser if none specified
        if (-not $Edge -and -not $Chrome -and -not $Firefox) {
            $defaultBrowser = GenXdev\Get-DefaultWebbrowser
            Microsoft.PowerShell.Utility\Write-Verbose "No browser specified, using default: $($defaultBrowser.Name)"

            if ($defaultBrowser.Name -like '*Edge*') {
                $Edge = $true
            }
            elseif ($defaultBrowser.Name -like '*Chrome*') {
                $Chrome = $true
            }
            elseif ($defaultBrowser.Name -like '*Firefox*') {
                $Firefox = $true
            }
            else {
                Microsoft.PowerShell.Utility\Write-Host 'Default browser is not Edge, Chrome, or Firefox.'
                return
            }
        }

        # handle import for each supported browser
        if ($Edge) {
            $browser = $installedBrowsers |
                Microsoft.PowerShell.Core\Where-Object { $PSItem.Name -like '*Edge*' }

            if (-not $browser) {
                Microsoft.PowerShell.Utility\Write-Host 'Microsoft Edge is not installed.'
                return
            }

            $bookmarksFilePath = Microsoft.PowerShell.Management\Join-Path -Path $env:LOCALAPPDATA `
                -ChildPath 'Microsoft\Edge\User Data\Default\Bookmarks'

            if ($PSCmdlet.ShouldProcess($bookmarksFilePath, 'Import bookmarks to Microsoft Edge')) {
                Microsoft.PowerShell.Utility\Write-Verbose "Writing bookmarks to Edge at: $bookmarksFilePath"
                GenXdev\Write-Bookmarks -BookmarksFilePath $bookmarksFilePath `
                    -BookmarksToWrite $importedBookmarks
            }
        }
        elseif ($Chrome) {
            $browser = $installedBrowsers |
                Microsoft.PowerShell.Core\Where-Object { $PSItem.Name -like '*Chrome*' }

            if (-not $browser) {
                Microsoft.PowerShell.Utility\Write-Host 'Google Chrome is not installed.'
                return
            }

            # modern Chrome uses AccountBookmarks for synced bookmarks
            $bookmarksFilePath = Microsoft.PowerShell.Management\Join-Path `
                -Path $env:LOCALAPPDATA `
                -ChildPath 'Google\Chrome\User Data\Default\AccountBookmarks'

            if ($PSCmdlet.ShouldProcess($bookmarksFilePath, 'Import bookmarks to Google Chrome')) {
                Microsoft.PowerShell.Utility\Write-Verbose "Writing bookmarks to Chrome at: $bookmarksFilePath"
                GenXdev\Write-Bookmarks -BookmarksFilePath $bookmarksFilePath `
                    -BookmarksToWrite $importedBookmarks
            }
        }
        elseif ($Firefox) {
            Microsoft.PowerShell.Utility\Write-Host 'Firefox import not supported'
        }
        else {
            Microsoft.PowerShell.Utility\Write-Host 'Please specify -Chrome, -Edge, or -Firefox switch.'
        }
    }

    end {
    }
}
<##############################################################################
Part of PowerShell module : GenXdev.Webbrowser
Original cmdlet filename  : Import-GenXdevBookmarkletMenu.ps1
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
Imports GenXdev JavaScript bookmarklets into browser bookmark collections.

.DESCRIPTION
This function scans a directory for GenXdev bookmarklet files with the
.bookmarklet.txt extension and imports them into the specified web browser
as bookmarks. The bookmarklets are placed in browser-specific folders and
can be used as interactive tools in web pages. The function supports Edge,
Chrome, and Firefox browsers and provides a preview mode for safety.

.PARAMETER SnippetsPath
The file system path to the directory containing bookmarklet snippet files.
Each file should have a .bookmarklet.txt extension and contain JavaScript
code that can be executed as a bookmarklet in web browsers.

.PARAMETER TargetFolder
The target browser bookmark folder where the bookmarklets will be imported.
If not specified, the folder is automatically determined based on the
selected browser type. Uses browser-specific default bookmark bar locations.

.PARAMETER Edge
Specifies Microsoft Edge as the target browser for importing bookmarklets.
When used, bookmarklets are placed in the Edge Bookmarks Bar folder for
easy access from the browser toolbar.

.PARAMETER Chrome
Specifies Google Chrome as the target browser for importing bookmarklets.
When used, bookmarklets are placed in the Chrome Bookmarks Bar folder for
easy access from the browser toolbar.

.PARAMETER Firefox
Specifies Mozilla Firefox as the target browser for importing bookmarklets.
When used, bookmarklets are placed in the Firefox bookmarks folder
structure for browser integration.

.PARAMETER WhatIf
Performs a dry run of the import operation without actually creating any
bookmarks. Displays what bookmarklets would be imported and where they
would be placed for verification before executing the actual import.

.EXAMPLE
Import-GenXdevBookmarkletMenu -Edge

Imports all bookmarklet files from the default snippets directory into
Microsoft Edge's bookmark bar folder.

.EXAMPLE
Import-GenXdevBookmarkletMenu -SnippetsPath "C:\MyBookmarklets" -Chrome -WhatIf

Shows what bookmarklets would be imported from the specified path into
Google Chrome without actually performing the import operation.
#>
function Import-GenXdevBookmarkletMenu {

    [CmdletBinding(SupportsShouldProcess = $true, ConfirmImpact = 'Medium')]

    param(
        [Parameter(
            Mandatory = $false,
            Position = 0,
            HelpMessage = "Path to directory containing bookmarklet snippet files"
        )]
        [string] $SnippetsPath = "$($MyInvocation.MyCommand.Module.ModuleBase)\Bookmarklets",
        [Parameter(
            Mandatory = $false,
            Position = 1,
            HelpMessage = "Target bookmark folder in browser bookmark structure"
        )]
        [string] $TargetFolder = "",
        [Alias('e')]
        [Parameter(
            Mandatory = $false,
            HelpMessage = "Import bookmarklets into Microsoft Edge browser"
        )]
        [switch] $Edge,
        [Alias('ch')]
        [Parameter(
            Mandatory = $false,
            HelpMessage = "Import bookmarklets into Google Chrome browser"
        )]
        [switch] $Chrome,
        [Alias('ff')]
        [Parameter(
            Mandatory = $false,
            HelpMessage = "Import bookmarklets into Mozilla Firefox browser"
        )]
        [switch] $Firefox
    )

    begin {

        # validate the snippets directory exists before proceeding
        if (Microsoft.PowerShell.Management\Test-Path $SnippetsPath) {

            # change to the snippets directory for file operations
            Microsoft.PowerShell.Management\Set-Location $SnippetsPath

            Microsoft.PowerShell.Utility\Write-Verbose (
                "Changed directory to snippets path: ${SnippetsPath}"
            )
        }
        else {

            # output error message when snippets directory is not found
            Microsoft.PowerShell.Utility\Write-Error "Snippets path not found: ${SnippetsPath}"

            return
        }
    }

    process {

        # find all bookmarklet files with the expected extension
        $bookmarkletFiles = Microsoft.PowerShell.Management\Get-ChildItem -Filter "*.bookmarklet.txt"

        # check if any bookmarklet files were found in the directory
        if ($bookmarkletFiles.Count -eq 0) {

            Microsoft.PowerShell.Utility\Write-Warning "No bookmarklet files found in ${SnippetsPath}"

            return
        }

        Microsoft.PowerShell.Utility\Write-Verbose (
            "Found $($bookmarkletFiles.Count) snippet files to import"
        )

        # determine target folder path based on selected browser
        if ([string]::IsNullOrEmpty($TargetFolder)) {

            if ($Edge) {

                # set default Edge bookmark bar folder path
                $TargetFolder = "Edge\Bookmarks Bar\▼"

            }
            elseif ($Chrome) {

                # set default Chrome bookmark bar folder path
                $TargetFolder = "Chrome\Bookmarks Bar\▼"

            }
            elseif ($Firefox) {

                # set default Firefox bookmark folder path
                $TargetFolder = "Firefox\▼"

            }
            else {

                # default to Edge browser when no browser is specified
                $TargetFolder = "Edge\Bookmarks Bar\▼"

                $Edge = $true
            }
        }

        Microsoft.PowerShell.Utility\Write-Verbose (
            "Target folder: ${TargetFolder}"
        )

        # create bookmark objects from each bookmarklet file
        $bookmarksToImport = $bookmarkletFiles |
            Microsoft.PowerShell.Core\ForEach-Object {

                # read the javascript content from the bookmarklet file
                $bookmarkletUrl = Microsoft.PowerShell.Management\Get-Content $_.FullName -Raw

                # extract bookmark name by removing the file extension
                $bookmarkName = $_.BaseName -replace '\.bookmarklet$', ''

                # create structured bookmark object for import operation
                [PSCustomObject]@{
                    Name         = $bookmarkName
                    URL          = $bookmarkletUrl.Trim()
                    Folder       = $TargetFolder
                    DateAdded    = $_.CreationTime
                    DateModified = $_.LastWriteTime
                }
            }

        # check if user wants to proceed with the import operation
        if (-not $PSCmdlet.ShouldProcess(
            "Import $($bookmarksToImport.Count) bookmarklets to ${TargetFolder}",
            "Import bookmarklets",
            "Confirm Bookmarklet Import")) {

            return
        }

        # prepare parameters for the import browser bookmarks function
        $importParams = @{
            Bookmarks = $bookmarksToImport
        }

        # add browser-specific parameters to the import operation
        if ($Edge) {
            $importParams.Edge = $true
        }

        if ($Chrome) {
            $importParams.Chrome = $true
        }

        if ($Firefox) {
            $importParams.Firefox = $true
        }

        Microsoft.PowerShell.Utility\Write-Verbose (
            "Importing $($bookmarksToImport.Count) bookmarks to folder " +
            "'${TargetFolder}'"
        )

        # execute the bookmark import operation with error handling
        try {

            GenXdev\Import-BrowserBookmarks @importParams -Verbose

            Microsoft.PowerShell.Utility\Write-Host (
                "Successfully imported snippets as bookmarks!"
            ) -ForegroundColor Green

            Microsoft.PowerShell.Utility\Write-Host (
                "Check your browser's '${TargetFolder}' folder for the " +
                "imported bookmarks."
            ) -ForegroundColor Cyan

        }
        catch {

            Microsoft.PowerShell.Utility\Write-Error "Failed to import bookmarks: ${_}"
        }
    }

    end {

         # check if user wants to proceed with the import operation
        if (-not $PSCmdlet.ShouldProcess(
            "Close any open browser instances",
            "Close browsers",
            "Confirm Browser Closure")) {

            return
        }
        $params = GenXdev\Copy-IdenticalParamValues `
            -BoundParameters $PSBoundParameters `
            -FunctionName 'GenXdev\Close-Webbrowser' `
            -DefaultValues (Microsoft.PowerShell.Utility\Get-Variable -Scope Local -ErrorAction SilentlyContinue);

        GenXdev\Close-Webbrowser @params
    }
}
<##############################################################################
Part of PowerShell module : GenXdev.Webbrowser
Original cmdlet filename  : Invoke-WebbrowserEvaluation.ps1
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
Executes JavaScript code in a selected web browser tab.

.DESCRIPTION
Executes JavaScript code in a selected browser tab with support for async/await,
promises, and data synchronization between PowerShell and the browser context.
Can execute code from strings, files, or URLs.

This function provides comprehensive access to browser APIs including IndexedDB,
localStorage, sessionStorage, and other web platform features. It includes
built-in error handling, timeout management, and support for yielding multiple
results from generator functions.

The function uses Playwright for browser automation, which provides privileged
access that bypasses standard JavaScript security restrictions in the context
of the current page. This enables access to storage APIs, cross-origin
resources (within the same tab), and other browser features that would
normally be restricted in standard web contexts.

Key capabilities:
- Async/await and Promise support
- Generator functions with yield support
- Data synchronization via $Global:Data
- Privileged access to browser storage APIs
- Bypasses same-origin policy restrictions for current page storage
- IndexedDB enumeration and data extraction
- DOM manipulation and web API access
- Error handling and timeout management

.PARAMETER Scripts
JavaScript code to execute. Can be string content, file paths, or URLs.
Accepts pipeline input.

.PARAMETER Inspect
Adds debugger statement before executing to enable debugging.

.PARAMETER NoAutoSelectTab
Prevents automatic tab selection if no tab is currently selected.

.PARAMETER Edge
Selects Microsoft Edge browser for execution.

.PARAMETER Chrome
Selects Google Chrome browser for execution.

.PARAMETER Page
Browser page object for execution when using ByReference mode.

.PARAMETER ByReference
Session reference object when using ByReference mode.

.EXAMPLE
// Execute simple JavaScript
Invoke-WebbrowserEvaluation "document.title = 'hello world'"

.EXAMPLE
PS>

// Synchronizing data
Select-WebbrowserTab -Force;
$Global:Data = @{ files= (Get-ChildItem *.* -file | % FullName)};

[int] $number = Invoke-WebbrowserEvaluation "

    document.body.innerHTML = JSON.stringify(data.files);
    data.title = document.title;
    return 123;
";

Write-Host "
    Document title : $($Global:Data.title)
    return value   : $Number
";
.EXAMPLE
PS>

Support for promises
Select-WebbrowserTab -Force;
Invoke-WebbrowserEvaluation "
    let myList = [];
    return new Promise((resolve) => {
        let i = 0;
        let a = setInterval(() => {
            myList.push(++i);
            if (i == 10) {
                clearInterval(a);
                resolve(myList);
            }
        }, 1000);
    });
"
.EXAMPLE
PS>

// Support for promises and more

// this function returns all rows of all tables/datastores of all databases of indexedDb in the selected tab
// beware, not all websites use indexedDb, it could return an empty set

Select-WebbrowserTab -Force;
Set-WebbrowserTabLocation "https://www.youtube.com/"
Start-Sleep 3
$AllIndexedDbData = Invoke-WebbrowserEvaluation "

    // enumerate all indexedDB databases
    for (let db of await indexedDB.databases()) {

        // request to open database
        let openRequest = await indexedDB.open(db.name);

        // wait for eventhandlers to be called
        await new Promise((resolve,reject) => {
            openRequest.onsuccess = resolve;
            openRequest.onerror = reject
        });

        // obtain reference
        let openedDb = openRequest.result;

        // initialize result
        let result = { DatabaseName: db.name, Version: db.version, Stores: [] }

        // itterate object store names
        for (let i = 0; i < openedDb.objectStoreNames.length; i++) {

            // reference
            let storeName = openedDb.objectStoreNames[i];

            // start readonly transaction
            let tr = openedDb.transaction(storeName);

            // get objectstore handle
            let store = tr.objectStore(storeName);

            // request all data
            let getRequest = store.getAll();

            // await result
            await new Promise((resolve,reject) => {
                getRequest.onsuccess = resolve;
                getRequest.onerror = reject;
            });

            // add result
            result.Stores.push({ StoreName: storeName, Data: getRequest.result});
        }

        // stream this database contents to the PowerShell pipeline, and continue
        yield result;
    }
";

$AllIndexedDbData | Out-Host

// SECURITY NOTE: This basic example works because the module uses Playwright
// browser automation, which bypasses normal JavaScript security restrictions
// in the current page context. Standard web pages cannot access IndexedDB from
// other origins, but Playwright has the same privileges as the website itself.
// See the enhanced example below for more details on security considerations.

.EXAMPLE
PS>

// Enhanced IndexedDB enumeration with metadata and error handling

// This enhanced approach provides more comprehensive IndexedDB data extraction including
// database counts, error handling, and metadata. Unlike the basic example above, this
// version handles security restrictions, provides detailed store information, and
// includes record counts without necessarily retrieving all data.

Select-WebbrowserTab -Force;
Set-WebbrowserTabLocation "https://www.youtube.com/"
Start-Sleep 3
$EnhancedIndexedDbData = Invoke-WebbrowserEvaluation "

    // Enhanced IndexedDB enumeration with comprehensive error handling
    let results = [];

    for (let dbInfo of await indexedDB.databases()) {
        try {
            // Open database with timeout
            let db = await new Promise((resolve, reject) => {
                let req = indexedDB.open(dbInfo.name);
                req.onsuccess = () => resolve(req.result);
                req.onerror = () => reject(req.error);
                setTimeout(() => reject(new Error('Database open timeout')), 5000);
            });

            let dbResult = {
                DatabaseName: dbInfo.name,
                Version: dbInfo.version,
                ObjectStoreCount: db.objectStoreNames.length,
                Stores: []
            };

            // Process each object store
            for (let i = 0; i < db.objectStoreNames.length; i++) {
                let storeName = db.objectStoreNames[i];
                try {
                    let transaction = db.transaction(storeName, 'readonly');
                    let store = transaction.objectStore(storeName);

                    // Get record count (faster than retrieving all data)
                    let count = await new Promise((resolve, reject) => {
                        let req = store.count();
                        req.onsuccess = () => resolve(req.result);
                        req.onerror = () => reject(req.error);
                        setTimeout(() => reject(new Error('Count timeout')), 3000);
                    });

                    dbResult.Stores.push({
                        StoreName: storeName,
                        RecordCount: count,
                        KeyPath: store.keyPath,
                        AutoIncrement: store.autoIncrement,
                        IndexNames: Array.from(store.indexNames)
                    });

                } catch (storeError) {
                    dbResult.Stores.push({
                        StoreName: storeName,
                        Error: storeError.message
                    });
                }
            }

            results.push(dbResult);
            db.close();

        } catch (dbError) {
            results.push({
                DatabaseName: dbInfo.name,
                Error: dbError.message
            });
        }
    }

    yield results;
";

$EnhancedIndexedDbData | ConvertTo-Json -Depth 10

// Key differences from the basic example:
// 1. Includes error handling for database access issues
// 2. Provides metadata (KeyPath, AutoIncrement, IndexNames)
// 3. Gets record counts without retrieving all data (more efficient)
// 4. Handles timeout scenarios
// 5. Returns structured information about database schema
// 6. More suitable for large databases where retrieving all data would be slow

// SECURITY CONSIDERATIONS FOR INDEXEDDB ACCESS:
// Both examples work because this module uses Playwright browser automation,
// which bypasses standard JavaScript security restrictions in the context
// of the current page:

// Standard JavaScript Limitations:
// - Same-origin policy restricts access to IndexedDB from other origins
// - Some databases may be hidden or protected by browser security features
// - Cross-origin database access is typically blocked
// - Service worker databases may have additional protection

// How this example bypasses restrictions:
// - Uses Playwright browser automation for privileged access
// - Executes in the context of the actual page, not a sandboxed environment
// - Has the same permissions as the website itself for its own storage
// - Can access all databases created by the current origin/domain

// Limitations:
// - Cannot access databases from other origins/domains in the same browser
// - Cannot access databases from other browser profiles or private browsing
// - Some browser extensions may create isolated storage not accessible via JavaScript

// Alternative Approaches for Maximum Access:
// - Use GenXdev.Webbrowser with multiple tabs from different origins
// - Combine with file system access to browser profile directories (when possible)
// - Use browser automation to navigate between different domains

.EXAMPLE
PS>

Support for yielded pipeline results
Select-WebbrowserTab -Force;
Invoke-WebbrowserEvaluation "

    for (let i = 0; i < 10; i++) {

        await (new Promise((resolve) => setTimeout(resolve, 1000)));

        yield i;
    }
";
.EXAMPLE
PS> Get-ChildItem *.js | Invoke-WebbrowserEvaluation -Edge
.EXAMPLE
PS> ls *.js | et -e
.NOTES
Requires the Windows 10+ Operating System
#>
function Invoke-WebbrowserEvaluation {

    [CmdletBinding()]
    [System.Diagnostics.CodeAnalysis.SuppressMessageAttribute('PSUseSingularNouns', '')]
    [System.Diagnostics.CodeAnalysis.SuppressMessageAttribute('PSAvoidGlobalVars', '')]
    [System.Diagnostics.CodeAnalysis.SuppressMessageAttribute('PSUseDeclaredVarsMoreThanAssignments', '')]
    [Alias('Eval', 'et')]

    param(
        [Parameter(
            Position = 0,
            Mandatory = $false,
            HelpMessage = 'JavaScript code, file path or URL to execute',
            ValueFromPipeline,
            ValueFromPipelineByPropertyName)
        ]
        [Alias('FullName')]
        [object[]] $Scripts,
        [Parameter(
            Mandatory = $false,
            HelpMessage = 'Break in browser debugger before executing',
            ValueFromPipeline = $false)
        ]
        [switch] $Inspect,
        [Parameter(
            Mandatory = $false,
            ValueFromPipeline = $false,
            HelpMessage = 'Prevent automatic tab selection'
        )]
        [switch] $NoAutoSelectTab,
        [Alias('e')]
        [parameter(
            Mandatory = $false,
            HelpMessage = 'Use Microsoft Edge browser'
        )]
        [switch] $Edge,
        [Alias('ch')]
        [parameter(
            Mandatory = $false,
            HelpMessage = 'Use Google Chrome browser'
        )]
        [switch] $Chrome,
        [Alias('c')]
        [parameter(
            Mandatory = $false,
            HelpMessage = ('Use Microsoft Edge or Google Chrome, ' +
                'depending on what the default browser is')
        )]
        [switch] $Chromium,
        [Alias('ff')]
        [parameter(
            Mandatory = $false,
            HelpMessage = 'Use Firefox browser'
        )]
        [switch] $Firefox,
        [Alias('wk')]
        [parameter(
            Mandatory = $false,
            HelpMessage = 'Use the Playwright-managed WebKit browser'
        )]
        [switch] $Webkit,
        [Parameter(
            HelpMessage = 'Browser page object reference',
            ValueFromPipeline = $false
        )]
        [object] $Page,
        [Parameter(
            HelpMessage = 'Browser session reference object',
            ValueFromPipeline = $false
        )]
        [PSCustomObject] $ByReference
    )

    Begin {
        # initialize reference tracking
        $reference = $null

        # resolve page from parameters or global Playwright state
        if (($null -eq $Page) -or ($null -eq $ByReference)) {

            if ($ByReference) {
                $reference = $ByReference
                $Page = $ByReference.Page
            }
            elseif ($Page) {
                $reference = @{ Page = $Page; data = $Global:Data }
            }
            else {
                # determine target browser type from switches
                $browserType = if ($Webkit) {
                    'WebKitPlaywright'
                }
                elseif ($Firefox) {
                    'FirefoxPlaywright'
                }
                else {
                    # Edge, Chrome, Chromium, or default map to
                    # ChromiumNormal
                    'ChromiumNormal'
                }

                # try the target browser type first, then fallback to others
                $activeBrowser = if (
                    $Global:GenXdevPlaywright.ContainsKey($browserType)) {
                    $Global:GenXdevPlaywright[$browserType]
                }
                elseif ($Global:GenXdevPlaywright.ContainsKey('ChromiumNormal') -and
                    $browserType -ne 'ChromiumNormal') {
                    $Global:GenXdevPlaywright['ChromiumNormal']
                }
                elseif ($Global:GenXdevPlaywright.ContainsKey('ChromeNormal') -and
                    $browserType -ne 'ChromeNormal') {
                    $Global:GenXdevPlaywright['ChromeNormal']
                }
                elseif ($Global:GenXdevPlaywright.ContainsKey('EdgeNormal') -and
                    $browserType -ne 'EdgeNormal') {
                    $Global:GenXdevPlaywright['EdgeNormal']
                }
                elseif ($Global:GenXdevPlaywright.ContainsKey('ChromiumPlaywright') -and
                    $browserType -ne 'ChromiumPlaywright') {
                    $Global:GenXdevPlaywright['ChromiumPlaywright']
                }
                elseif ($Global:GenXdevPlaywright.ContainsKey('FirefoxPlaywright') -and
                    $browserType -ne 'FirefoxPlaywright') {
                    $Global:GenXdevPlaywright['FirefoxPlaywright']
                }
                elseif ($Global:GenXdevPlaywright.ContainsKey('WebKitPlaywright') -and
                    $browserType -ne 'WebKitPlaywright') {
                    $Global:GenXdevPlaywright['WebKitPlaywright']
                }
                else {
                    $null
                }

                if (-not $activeBrowser) {
                    if ($NoAutoSelectTab) {
                        throw 'No Playwright browser is running. Use Open-PlayWrightBrowser to launch one first.'
                    }

                    # auto-launch the target browser type
                    Microsoft.PowerShell.Utility\Write-Verbose (
                        "No Playwright browser running. Auto-launching ${browserType}..."
                    )

                    try {
                        $activeBrowser = GenXdev\Open-PlayWrightBrowser `
                            -BrowserType $browserType `
                            -ConsentToThirdPartySoftwareInstallation
                    }
                    catch {
                        throw (
                            'Failed to auto-launch Playwright browser: ' +
                            "$($PSItem.Exception.Message)"
                        )
                    }
                }

                $Page = $activeBrowser.Page
                $reference = @{ Page = $Page; data = $Global:Data }
            }
        }
        else {
            $reference = $ByReference
        }

        # validate browser context
        if (($null -eq $Page)) {

            throw 'No browser page available. Use Open-PlayWrightBrowser to launch a browser first.'
        }

        # Define the custom JavaScript for Visibility API events and CSS overrides
        $visibilityScript = @'
document.addEventListener('visibilitychange', function() {
    console.log('Visibility changed to: ' + document.visibilityState);
});
'@

        $cssOverrideScript = @'
document.documentElement.style.setProperty('--default-color-scheme', 'dark');
'@

        # Subscribe to the FrameNavigated event to inject the custom JavaScript
        $null = Microsoft.PowerShell.Utility\Register-ObjectEvent -InputObject $page -EventName FrameNavigated -Action {
            $null = $page.EvaluateAsync($visibilityScript, @()).Wait()
            $null = $page.EvaluateAsync($cssOverrideScript, @()).Wait()
        }
    }


    process {
        Microsoft.PowerShell.Utility\Write-Verbose 'Processing JavaScript evaluation request...'

        # enumerate provided scripts
        foreach ($js in $Scripts) {

            try {

                if ($js -is [System.IO.FileInfo]) {

                    # make it a string
                    $js = $js.FullName;
                }

                Microsoft.PowerShell.Utility\Set-Variable -Name 'Data' -Value $reference.data -Scope Global

                # is it a file reference?
                if (($js -is [IO.FileInfo]) -or (($js -is [System.String]) -and [IO.File]::Exists($js))) {

                    # comming from Get-ChildItem command?
                    if ($js -is [IO.FileInfo]) {

                        # make it a string
                        $js = $js.FullName;
                    }

                    # it's a string with a path, load the content
                    $js = [IO.File]::ReadAllText($js, [System.Text.Encoding]::UTF8)
                }
                else {

                    # make it a string, if it isn't yet
                    if ($js -isnot [System.String] -or [string]::IsNullOrWhiteSpace($js)) {

                        $js = "$js";
                    }

                    if ([string]::IsNullOrWhiteSpace($js) -eq $false) {

                        [Uri] $uri = $null;
                        $isUri = (

                            [Uri]::TryCreate("$js", 'absolute', [ref] $uri) -or (
                                $js.ToLowerInvariant().StartsWith('www.') -and
                                [Uri]::TryCreate("http://$js", 'absolute', [ref] $uri)
                            )
                        ) -and $uri.IsWellFormedOriginalString() -and $uri.Scheme -like 'http*';

                        if ($IsUri) {
                            Microsoft.PowerShell.Utility\Write-Verbose 'is Uri'
                            $httpResult = Microsoft.PowerShell.Utility\Invoke-WebRequest -Uri $Js

                            if ($httpResult.StatusCode -eq 200) {

                                $type = 'text/javascript';

                                if ($httpResult.Content -Match "[`r`n\s`t;,]import ") {

                                    $type = 'module';
                                }
                                $ScriptHash = [GenXdev.Helpers.Hash]::FormatBytesAsHexString(
                                    [GenXdev.Helpers.Hash]::GetSha256BytesOfString($httpResult.Content));
                                $js = "
                                    let scripts = document.getElementsByTagName('script');
                                    for (let i = 0; i < scripts.length; i++) {

                                        let script = scripts[i];
                                        if (!!script && typeof script.getAttribute === 'function' && script.getAttribute('data-hash') === '$scriptHash') {
                                            return;
                                        }
                                    }
                                    let scriptTag = document.createElement('script');
                                    let scriptLoaded = false;
                                    let loaded = () => {  };

                                    scriptTag.innerHTML = $(($httpResult.Content | Microsoft.PowerShell.Utility\ConvertTo-Json));
                                    scriptTag.setAttribute('type', '$type');
                                    scriptTag.setAttribute('data-hash', '$ScriptHash');
                                    let head = document.getElementsByTagName('head')[0];
                                    if (!head) {
                                        head = document.createElement('head');
                                        document.appendChild(head);
                                    }
                                    head.appendChild(scriptTag);
                                ";
                            }
                            else {

                                throw "Downloading script '$js' resulted in http statuscode $($HttpResult.StatusCode) - $($HttpResult.StatusDescription)"
                            }
                        }
                    }
                }

                # '-Inspect' parameter provided?
                if ($Inspect -eq $true) {

                    # invoke a debug break-point
                    $js = "debugger;`r`n$js"
                }

                Microsoft.PowerShell.Utility\Write-Verbose "Processing: `r`n$($js.Trim())"

                # convert data object to json, and then again to make it a json string
                $json = ($reference.data | Microsoft.PowerShell.Utility\ConvertTo-Json -Compress -Depth 100 |
                    Microsoft.PowerShell.Utility\ConvertTo-Json -Compress -Depth 100);

                # Helper: convert Playwright JsonElement to native PS types
                function ConvertFromJsonElement ($Value) {
                    if ($null -eq $Value) { return $null }
                    if ($Value -is [System.Text.Json.JsonElement]) {
                        $je = [System.Text.Json.JsonElement]$Value
                        switch ($je.ValueKind) {
                            'Number' {
                                if ($je.TryGetInt64([ref]$null)) {
                                    $i = 0L; [void]$je.TryGetInt64([ref]$i); return $i
                                }
                                $d = 0.0; [void]$je.TryGetDouble([ref]$d); return $d
                            }
                            'String' { return $je.GetString() }
                            'True'   { return $true }
                            'False'  { return $false }
                            'Array'  { return @($je.EnumerateArray() |
                                    Microsoft.PowerShell.Core\ForEach-Object { ConvertFromJsonElement $_ }) }
                            default  { return $je.ToString() }
                        }
                    }
                    return $Value
                }

                # simple expression: no return, yield, await, or data sync needed
                # Use Playwright's native EvaluateAsync directly (no generator overhead)
                if ($js -notmatch '\b(?:return|yield|await|data\.)\b' -and
                    $js -notmatch '[{};]') {

                    Microsoft.PowerShell.Utility\Write-Verbose 'Simple expression evaluation'
                    $rawResult = $Page.EvaluateAsync($js, @()).GetAwaiter().GetResult()
                    ConvertFromJsonElement $rawResult
                    continue
                }

                # async expression without yield/data — wrap in async IIFE
                if ($js -notmatch '\b(?:yield|data\.)\b') {

                    Microsoft.PowerShell.Utility\Write-Verbose 'Async expression evaluation'
                    if ($js -notmatch '[{};]' -and $js -notmatch '^\s*return\b') {
                        $wrappedJs = "(async () => await ($js))()"
                    }
                    else {
                        $wrappedJs = "(async () => { $js })()"
                    }
                    $rawResult = $Page.EvaluateAsync($wrappedJs, @()).GetAwaiter().GetResult()
                    ConvertFromJsonElement $rawResult
                    continue
                }

                # complex script with yield or data sync — use generator wrapper
                # init result
                $result = $null;
                $ScriptHash = [GenXdev.Helpers.Hash]::FormatBytesAsHexString(
                    [GenXdev.Helpers.Hash]::GetSha256BytesOfString($js));

                $js = "(function(data) {

                let resultData = window['iwae$ScriptHash'] || {

                    started: false,
                    done: false,
                    success: true,
                    data: data,
                    returnValues: []
                }

                window['iwae$ScriptHash'] = resultData;

                function catcher(e) {

                    let resultData = window['iwae$ScriptHash'];
                    resultData.success = false;
                    resultData.done = true;
                    try {
                        resultData.returnValue = JSON.stringify(e);
                    }
                    catch (e2) {

                        resultData.returnValue = e+'';
                    }
                }

                if (!resultData.started) {

                    resultData.started = true;

                    try {

                        eval($("

                        (async () => {
                            let result;
                            try {

                                result = (async function*() { $js })();

                                let resultCount = 0;
                                let resultValue;
                                do {
                                    resultValue = await result.next();

                                    if (resultValue.value instanceof Promise) {

                                        resultValue.value = await resultValue.value;
                                    }

                                    let resultData = window['iwae$ScriptHash']

                                    if (resultCount++ === 0 && resultValue.done) {

                                        resultData.returnValue = resultValue.value;
                                    }
                                    else {
                                        if (!resultValue.done) {

                                            resultData.returnValues.push(resultValue.value);
                                        }
                                    }
                                } while (!resultValue.done)

                                let resultData = window['iwae$ScriptHash']
                                resultData.done = true;
                                resultData.success = true;
                            }
                            catch (e) {

                                catcher(e);
                            }
                        })()

                        " | Microsoft.PowerShell.Utility\ConvertTo-Json -Compress -Depth 100));
                    }
                    catch(e) {

                        catcher(e);
                    }
                }

                if (resultData.done) {

                    delete window['iwae$ScriptHash'];
                }

                let clone = JSON.parse(JSON.stringify(resultData));
                resultData.returnValues = [];
                return clone;
            })(JSON.parse($json));
        ";
                [int] $pollCount = 0;
                $result = $null;
                do {
                    # de-serialize outputed result object
                    $result = $Page.EvaluateAsync($js, @()).Result
                    if ($null -eq $result) {

                        continue;
                    }
                    # Playwright returns JsonElement; stringify it so
                    # ConvertFrom-Json can process it
                    if ($result -is [System.Text.Json.JsonElement]) {
                        $result = $result.ToString()
                    }
                    $result = ($result | Microsoft.PowerShell.Utility\ConvertFrom-Json);

                    if ($null -ne $result) {

                        Microsoft.PowerShell.Utility\Write-Verbose "Got results: [$($result.getType())] $($result | Microsoft.PowerShell.Utility\ConvertTo-Json -Compress -Depth 100)"
                    }

                    # all good?
                    if ($result -is [PSCustomObject]) {

                        # there was an exception thrown?
                        if ($result.subtype -eq 'error') {

                            # re-throw
                            throw $result;
                        }

                        # got a data object?
                        if ($null -ne $result.data) {

                            # initialize
                            $reference.data = @{}

                            # enumerate properties
                            $result.data |
                                Microsoft.PowerShell.Utility\Get-Member -ErrorAction SilentlyContinue |
                                Microsoft.PowerShell.Core\Where-Object -Property MemberType -Like *Property* |
                                Microsoft.PowerShell.Core\ForEach-Object -ErrorAction SilentlyContinue {

                                    # set in a case-sensitive manner
                                    $reference.data."$($PSItem.Name)" = $result.data."$($PSItem.Name)"
                                }

                            Microsoft.PowerShell.Utility\Set-Variable -Name 'Data' -Value ($reference.data) -Scope Global
                        }

                        $pollCount++;

                        if (($null -ne $result.returnValues) -and ($result.returnValues.Length -gt 0)) {

                            $result.returnValues | Microsoft.PowerShell.Utility\Write-Output
                            $result.returnValues = @();
                        }
                        $result.returnValues = @();
                    }
                } while (!!$result -and !$result.done -and (-not [Console]::KeyAvailable));

                # result indicate an exception thrown?
                if ($result.success -eq $false) {

                    if ($result.returnValue -is [string]) {

                        # re-throw
                        throw $result.returnValue;
                    }

                    throw 'An unknown script parsing error occured';
                }

                if ($null -ne $result.returnValue) {

                    Microsoft.PowerShell.Utility\Write-Output $result.returnValue;
                }
            }
            Catch {

                throw "
                        $($PSItem.Exception) $($PSItem.InvocationInfo.PositionMessage)
                        $($PSItem.InvocationInfo.Line)
                    "
            }
        }
    }

    End {

    }
}
<##############################################################################
Part of PowerShell module : GenXdev.Webbrowser
Original cmdlet filename  : Open-BrowserBookmarks.ps1
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
Opens browser bookmarks that match specified search criteria.

.DESCRIPTION
Searches bookmarks across Microsoft Edge, Google Chrome, and Mozilla Firefox
browsers based on provided search queries. Opens matching bookmarks in the
selected browser with configurable window settings and browser modes.

This function provides a comprehensive interface for finding and opening
browser bookmarks with advanced filtering and display options. It supports
multiple search criteria and can open results in any installed browser with
extensive window positioning and behavior customization.

.PARAMETER Queries
Search terms used to filter bookmarks by title or URL.

.PARAMETER Count
Maximum number of bookmarks to open (default 50).

.PARAMETER Edge
Use Microsoft Edge browser bookmarks as search source.

.PARAMETER Chrome
Use Google Chrome browser bookmarks as search source.

.PARAMETER Firefox
Use Mozilla Firefox browser bookmarks as search source.

.PARAMETER Monitor
The monitor to use for window placement:
- 0 = Primary monitor
- -1 = Discard positioning
- -2 = Configured secondary monitor

.PARAMETER SideBySide
Will either set the window fullscreen on a different monitor than Powershell, or
side by side with Powershell on the same monitor

.PARAMETER Private
Opens bookmarks in private/incognito browsing mode.

.PARAMETER Force
Forces enabling of debugging port, stops existing browser instances if needed.

.PARAMETER FullScreen
Opens browser windows in fullscreen mode.

.PARAMETER Width
Sets initial browser window width in pixels.

.PARAMETER Height
Sets initial browser window height in pixels.

.PARAMETER X
Sets initial browser window X position.

.PARAMETER Y
Sets initial browser window Y position.

.PARAMETER Left
Places browser window on left side of screen.

.PARAMETER Right
Places browser window on right side of screen.

.PARAMETER Top
Places browser window on top of screen.

.PARAMETER Bottom
Places browser window on bottom of screen.

.PARAMETER Centered
Centers browser window on screen.

.PARAMETER ApplicationMode
Hides browser controls for clean app-like experience.

.PARAMETER NoBrowserExtensions
Prevents loading of browser extensions.

.PARAMETER AcceptLang
Sets browser accept-language HTTP header.

.PARAMETER KeysToSend
Keystrokes to send to the Browser window.

.PARAMETER FocusWindow
Focus the browser window after opening.

.PARAMETER SetForeground
Set the browser window to foreground after opening.

.PARAMETER Maximize
Maximize the window after positioning

.PARAMETER SetRestored
Restore the window to normal state after positioning

.PARAMETER Minimize
Minimize the browser window after positioning.

.PARAMETER RestoreFocus
Restores PowerShell window focus after opening bookmarks.

.PARAMETER NewWindow
Creates new browser window instead of reusing existing one.

.PARAMETER Chromium
Opens in Microsoft Edge or Google Chrome, depending on what the default
browser is.

.PARAMETER All
Opens in all registered modern browsers.

.PARAMETER DisablePopupBlocker
Disables the browser's popup blocking functionality.

.PARAMETER SendKeyEscape
Escapes control characters when sending keystrokes to the browser.

.PARAMETER SendKeyHoldKeyboardFocus
Prevents returning keyboard focus to PowerShell after sending keystrokes.

.PARAMETER SendKeyUseShiftEnter
Uses Shift+Enter instead of regular Enter for line breaks when sending keys.

.PARAMETER SendKeyDelayMilliSeconds
Delay between sending different key sequences in milliseconds.

.EXAMPLE
Open-BrowserBookmarks -Queries "github" -Edge -Count 5

Searches for bookmarks containing "github" in Microsoft Edge and opens the
first 5 results in the default browser.

.EXAMPLE
sites gh -e -c 5

Same as above using aliases - searches Edge bookmarks for "gh" and opens 5
results in the default browser.

.EXAMPLE
Open-BrowserBookmarks -Queries "development", "tools" -Chrome -Firefox -Left -Count 10

Searches Chrome bookmarks for "development" and "tools", opens first 10
results in Firefox positioned on the left side of screen.
#>
function Open-BrowserBookmarks {

    [CmdletBinding(DefaultParameterSetName = 'Default')]
    [System.Diagnostics.CodeAnalysis.SuppressMessageAttribute('PSUseSingularNouns', '')]
    [System.Diagnostics.CodeAnalysis.SuppressMessageAttribute('PSAvoidGlobalVars', '')]
    [System.Diagnostics.CodeAnalysis.SuppressMessageAttribute('PSUseDeclaredVarsMoreThanAssignments', '')]
    [Alias('sites')]

    param (
        [parameter(
            Position = 0,
            Mandatory = $false,
            ValueFromPipeline = $true,
            ValueFromPipelineByPropertyName = $true,
            HelpMessage = 'Search terms to filter bookmarks'
        )]
        [Alias('q', 'Name', 'Text', 'Query')]
        [string[]] $Queries,

        [parameter(
            Position = 1,
            Mandatory = $false,
            HelpMessage = 'Maximum number of urls to open'
        )]
        [int] $Count = 50,
        [parameter(
            Mandatory = $false,
            HelpMessage = 'Select in Microsoft Edge'
        )]
        [Alias('e')]
        [switch] $Edge,
        [parameter(
            Mandatory = $false,
            HelpMessage = 'Select in Google Chrome'
        )]
        [Alias('ch')]
        [switch] $Chrome,
        [parameter(
            Mandatory = $false,
            HelpMessage = 'Select in Firefox'
        )]
        [Alias('ff')]
        [switch] $Firefox,
        [parameter(
            Mandatory = $false,
            HelpMessage = ('The monitor to use, 0 = default, -1 is discard, ' +
                '-2 = Configured secondary monitor')
        )]
        [Alias('m', 'mon')]
        [int] $Monitor = -1,
        [parameter(
            Mandatory = $false,
            HelpMessage = ('Will either set the window fullscreen on a different ' +
                'monitor than Powershell, or side by side with Powershell on the ' +
                'same monitor')
        )]
        [Alias('sbs')]
        [switch]$SideBySide,
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
        [Alias('fs', 'f')]
        [Parameter(
            Mandatory = $false,
            HelpMessage = 'Opens in fullscreen mode'
        )]
        [switch] $FullScreen,
        [Alias('sw')]
        [Parameter(
            Mandatory = $false,
            HelpMessage = 'Show the browser window (not 1d or hidden)'
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
            HelpMessage = 'Minimize the window after positioning'
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
            HelpMessage = ('Opens in Microsoft Edge or Google Chrome, ' +
                'depending on what the default browser is')
        )]
        [Alias('c')]
        [switch] $Chromium,
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
            HelpMessage = 'Removes the borders of the browser window'
        )]
        [Alias('nb')]
        [switch] $NoBorders,
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

        # log the initialization phase for bookmark search operations
        Microsoft.PowerShell.Utility\Write-Verbose ('Initializing browser ' +
            'parameters for bookmark search...')

        # copy identical parameters between functions for passing to open-webbrowser
        $invocationParams = GenXdev\Copy-IdenticalParamValues `
            -BoundParameters $PSBoundParameters `
            -FunctionName 'GenXdev\Open-Webbrowser' `
            -DefaultValues (Microsoft.PowerShell.Utility\Get-Variable `
                -Scope Local `
                -ErrorAction SilentlyContinue)

        # remove count parameter as it's specific to this function
        if ($invocationParams.ContainsKey('Count')) {

            $null = $invocationParams.Remove('Count')
        }
    }

    process {

        # log the search criteria being used for bookmark filtering
        Microsoft.PowerShell.Utility\Write-Verbose ('Searching bookmarks ' +
            'with criteria: ' + ($Queries -join ', '))

        # copy identical parameters between functions for bookmark searching
        $findParams = GenXdev\Copy-IdenticalParamValues `
            -BoundParameters $PSBoundParameters `
            -FunctionName 'GenXdev\Find-BrowserBookmark' `
            -DefaultValues (Microsoft.PowerShell.Utility\Get-Variable `
                -Scope Local `
                -ErrorAction SilentlyContinue)

        # enable pass-through mode to get bookmark objects
        $findParams['PassThru'] = $true

        # find matching bookmarks and extract urls with count limitation
        $urls = @(GenXdev\Find-BrowserBookmark @findParams |
                Microsoft.PowerShell.Core\ForEach-Object Url |
                Microsoft.PowerShell.Utility\Select-Object -First $Count)

        # check if any matching bookmarks were found
        if ($urls.Length -eq 0) {

            Microsoft.PowerShell.Utility\Write-Host ('No bookmarks found ' +
                'matching the criteria')
            return
        }

        # log the number of matching bookmarks found
        Microsoft.PowerShell.Utility\Write-Verbose ('Opening ' +
            "$($urls.Length) matching bookmarks in browser...")

        # pass extracted urls to browser opening function
        $invocationParams['Url'] = $urls

        # open all matching bookmark urls in the configured browser
        GenXdev\Open-Webbrowser @invocationParams
    }

    end {

    }
}
<##############################################################################
Part of PowerShell module : GenXdev.Webbrowser
Original cmdlet filename  : Open-Webbrowser.ps1
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
Opens URLs in one or more browser windows with optional positioning and styling.

.DESCRIPTION
This function provides an advanced wrapper around browser launching with
extensive options for window positioning, browser selection, and behavior
customization. It supports multiple browsers including Edge, Chrome, and
Firefox with features like private browsing, application mode, and precise
window management.

Key features:
- Smart browser detection and selection
- Window positioning (left, right, top, bottom, centered, fullscreen)
- Multi-monitor support with automatic or manual monitor selection
- Private/incognito browsing mode support
- Application mode for distraction-free browsing
- Extension and popup blocking options
- Focus management and window manipulation
- Batch URL opening across multiple browsers
- Keystroke automation to browser windows

The function can automatically detect system capabilities and adjust behavior
accordingly. For browsers not installed on the system, operations are silently
skipped without errors.

.PARAMETER Url
The URLs to open in the browser. Accepts pipeline input and automatically
handles file paths (converts to file:// URLs). When no URL is provided,
opens the default GenXdev PowerShell help page.

.PARAMETER Monitor
The monitor to use for window placement:
- 0 = Primary monitor
- -1 = Discard positioning
- -2 = Configured secondary monitor (uses $Global:DefaultSecondaryMonitor or
  defaults to monitor 2)
- 1+ = Specific monitor number

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

.PARAMETER AcceptLang
Sets the browser's Accept-Language HTTP header for internationalization.
Useful for testing websites in different languages.

.PARAMETER Force
Forces enabling of the debugging port by stopping existing browser instances
if needed. Useful when browser debugging features are required.

.PARAMETER Edge
Specifically opens URLs in Microsoft Edge browser.

.PARAMETER Chrome
Specifically opens URLs in Google Chrome browser.

.PARAMETER Chromium
Opens URLs in either Microsoft Edge or Google Chrome, depending on which
is set as the default browser. Prefers Chromium-based browsers.

.PARAMETER Firefox
Specifically opens URLs in Mozilla Firefox browser.

.PARAMETER All
Opens the specified URLs in all installed modern browsers simultaneously.

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

.PARAMETER FullScreen
Opens the browser in fullscreen mode using F11 key simulation.

.PARAMETER Private
Opens the browser in private/incognito browsing mode. Uses InPrivate for
Edge and incognito for Chrome. Not supported for the default browser mode.

.PARAMETER ApplicationMode
Hides browser controls for a distraction-free experience. Creates an app-like
interface for web applications.

.PARAMETER NoBrowserExtensions
Prevents loading of browser extensions. Uses safe mode for Firefox and
--disable-extensions for Chromium browsers.

.PARAMETER DisablePopupBlocker
Disables the browser's popup blocking functionality.

.PARAMETER NewWindow
Forces creation of a new browser window instead of reusing existing windows.

.PARAMETER FocusWindow
Gives focus to the browser window after opening.

.PARAMETER SetForeground
Brings the browser window to the foreground after opening.

.PARAMETER Maximize
Maximize the window after positioning

.PARAMETER SetRestored
Restore the window to normal state after positioning

.PARAMETER PassThru
Returns PowerShell objects representing the browser processes created.

.PARAMETER NoBorders
Removes the borders of the browser window.

.PARAMETER RestoreFocus
Returns focus to the PowerShell window after opening the browser. Useful
for automated workflows where you want to continue working in PowerShell.

.PARAMETER SideBySide
Position browser window either fullscreen on different monitor than PowerShell,
or side by side with PowerShell on the same monitor.

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

.PARAMETER SessionOnly
Use alternative settings stored in session for AI preferences.

.PARAMETER ClearSession
Clear alternative settings stored in session for AI preferences.

.PARAMETER SkipSession
Store settings only in persistent preferences without affecting session.

.PARAMETER PlayWright
Use Playwright-managed browser instead of the OS-installed browser.
When specified, delegates to Open-PlayWrightBrowser for browser
lifecycle management.

.PARAMETER Webkit
Opens the Playwright-managed WebKit browser. Implies -PlayWright
and sets BrowserType to WebKit. Only effective with -PlayWright.

.PARAMETER Headless
Run the browser without a visible window. Only used with -PlayWright.

.PARAMETER ConsentToThirdPartySoftwareInstallation
Automatically consent to third-party software installation of
Playwright browser binaries. Only used with -PlayWright.

.PARAMETER ForceConsent
Force re-prompting of the installation consent dialog.


.EXAMPLE
wb -PlayWright https://github.com

Opens GitHub in a Playwright-managed Chromium browser.

.EXAMPLE
Open-Webbrowser -Url "https://github.com"

Opens GitHub in the default browser.

.EXAMPLE
Open-Webbrowser -Url "https://stackoverflow.com" -Monitor 1 -Left

Opens Stack Overflow in the left half of monitor 1.

.EXAMPLE
wb "https://google.com" -m 0 -fs

Opens Google in fullscreen mode on the primary monitor using aliases.

.EXAMPLE
Open-Webbrowser -Chrome -Private -NewWindow

Opens a new Chrome window in incognito mode.

.EXAMPLE
"https://github.com", "https://stackoverflow.com" | Open-Webbrowser -All

Opens multiple URLs in all installed browsers via pipeline.

.EXAMPLE
Open-Webbrowser -Monitor 0 -Right

Re-positions an already open browser window to the right side of the primary
monitor.

.EXAMPLE
Open-Webbrowser -ApplicationMode -Url "https://app.example.com"

Opens a web application in app mode without browser controls.

.NOTES
Requires Windows 10+ Operating System.

This cmdlet is designed for interactive use and performs window manipulation
tricks including Alt-Tab keystrokes. Avoid touching keyboard/mouse during
positioning operations.

For fast launches of multiple URLs:
- Set Monitor to -1
- Avoid using positioning switches (-X, -Y, -Left, -Right, -Top, -Bottom,
  -RestoreFocus)

For browsers not installed on the system, operations are silently skipped.
#>
function Open-Webbrowser {

    [CmdletBinding()]
    [System.Diagnostics.CodeAnalysis.SuppressMessageAttribute('PSAvoidGlobalVars', '')]
    [Alias('wb')]

    param(
        [Parameter(
            Mandatory = $false,
            Position = 0,
            ValueFromPipeline = $false,
            HelpMessage = 'The URLs to open in the browser'
        )]
        [string[]] $Url,
        [Parameter(
            Mandatory = $false,
            ValueFromPipeline = $true,
            ValueFromPipelineByPropertyName = $true,
            HelpMessage = 'The URLs to open in the browser'
        )]
        [Alias('Value', 'Uri', 'FullName', 'Website', 'WebsiteUrl')]
        [string] $Input,
        [Parameter(
            Mandatory = $false,
            Position = 1,
            HelpMessage = ('The monitor to use, 0 = default, -1 is discard, ' +
                '-2 = Configured secondary monitor, defaults to ' +
                "`$Global:DefaultSecondaryMonitor or 2 if not found")
        )]
        [Alias('m', 'mon')]
        [int] $Monitor = -2,
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
            HelpMessage = ('Force close existing browser instances before ' +
                'opening a new one')
        )]
        [switch] $Force,
        [Parameter(
            Mandatory = $false,
            HelpMessage = 'Force re-prompting of the installation consent dialog'
        )]
        [switch] $ForceConsent,
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
            HelpMessage = ("Don't re-use existing browser window, instead, " +
                'create a new one')
        )]
        [Alias('nw', 'new')]
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
        [switch]$PassThru,
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
            HelpMessage = ('Keystrokes to send to the Window, ' +
                'see documentation for cmdlet GenXdev\Send-Key')
        )]
        [string[]] $KeysToSend,
        [Parameter(
            Mandatory = $false,
            HelpMessage = ('Escape control characters and modifiers when ' +
                'sending keys')
        )]
        [Alias('Escape')]
        [switch] $SendKeyEscape,
        [Parameter(
            Mandatory = $false,
            HelpMessage = ('Hold keyboard focus on target window when ' +
                'sending keys')
        )]
        [Alias('HoldKeyboardFocus')]
        [switch] $SendKeyHoldKeyboardFocus,
        [Parameter(
            Mandatory = $false,
            HelpMessage = ('Use Shift+Enter instead of Enter when ' +
                'sending keys')
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
            HelpMessage = ('Use alternative settings stored in session for AI ' +
                'preferences')
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
        [switch] $SkipSession,
        [Parameter(
            Mandatory = $false,
            HelpMessage = ('Use Playwright-managed browser instead of the ' +
                'OS-installed browser')
        )]
        [Alias('pw')]
        [switch] $PlayWright,
        [Parameter(
            Mandatory = $false,
            HelpMessage = ('Use the bundled Playwright browser binary ' +
                'instead of the OS-installed browser via channel. Only ' +
                'affects Chrome, Edge, and Chromium modes. Implies ' +
                '-PlayWright')
        )]
        [switch] $PreferPlaywrightBrowser,
        [Parameter(
            Mandatory = $false,
            HelpMessage = ('Opens the Playwright-managed WebKit browser. ' +
                'Implies -PlayWright')
        )]
        [Alias('wk')]
        [switch] $Webkit,
        [Parameter(
            Mandatory = $false,
            HelpMessage = 'Run the browser without a visible window'
        )]
        [Alias('hl')]
        [switch] $Headless,
        [Parameter(
            Mandatory = $false,
            HelpMessage = 'Automatically consent to third-party software ' +
                'installation (Playwright browsers)'
        )]
        [Alias('Consent')]
        [switch] $ConsentToThirdPartySoftwareInstallation
    )

    begin {

        # determine if side-by-side positioning should be forced
        [int] $setDefaultMonitor = $Global:DefaultSecondaryMonitor -is [int] ?
        (
            $Global:DefaultSecondaryMonitor
        ):
        2;

        if ($null -eq $Url) {

            $Url = @()
        }

        [System.Collections.Generic.List[string]] $UrlList = @($Url)

        # -Webkit implies -PlayWright
        if ($Webkit) {
            $PlayWright = $true
        }

        # -PreferPlaywrightBrowser implies -PlayWright
        if ($PreferPlaywrightBrowser) {
            $PlayWright = $true
        }

        # If -PlayWright, delegate to Open-PlayWrightBrowser
        if ($PlayWright) {

            Microsoft.PowerShell.Utility\Write-Verbose (
                'PlayWright mode — delegating to Open-PlayWrightBrowser'
            )

            $playwrightParams = GenXdev\Copy-IdenticalParamValues `
                -BoundParameters $PSBoundParameters `
                -FunctionName 'GenXdev\Open-PlayWrightBrowser'

            # Map browser selection flags to BrowserType.
            # Priority: -Webkit/-Firefox (only bundled available),
            # then -PreferPlaywrightBrowser (force bundled Chromium),
            # then -Edge/-Chrome/-Chromium flags (Normal/channel),
            # then auto-detect.
            if ($Webkit) {
                $playwrightParams.BrowserType = 'WebKitPlaywright'
            }
            elseif ($Firefox) {
                $playwrightParams.BrowserType = 'FirefoxPlaywright'
            }
            elseif ($PreferPlaywrightBrowser) {
                $playwrightParams.BrowserType = 'ChromiumPlaywright'
            }
            elseif (-not $playwrightParams.ContainsKey('BrowserType')) {
                if ($Edge) {
                    $playwrightParams.BrowserType = 'EdgeNormal'
                }
                elseif ($Chrome) {
                    $playwrightParams.BrowserType = 'ChromeNormal'
                }
                elseif ($Chromium) {
                    $playwrightParams.BrowserType = 'ChromiumNormal'
                }
                else {
                    # Auto-detect from system default browser
                    try {
                        $defaultBrowser = GenXdev\Get-DefaultWebbrowser
                        if ($defaultBrowser -match 'Firefox') {
                            $playwrightParams.BrowserType = 'FirefoxPlaywright'
                        }
                        else {
                            $playwrightParams.BrowserType = 'ChromiumNormal'
                        }
                    }
                    catch {
                        $playwrightParams.BrowserType = 'ChromiumNormal'
                    }
                }
            }

            Microsoft.PowerShell.Utility\Write-Verbose (
                "BrowserType: $($playwrightParams.BrowserType)"
            )

            # pt the Playwright browser
            $browserState = GenXdev\Open-PlayWrightBrowser @playwrightParams

            if (-not $browserState) {
                Microsoft.PowerShell.Utility\Write-Error (
                    'Failed to launch Playwright browser'
                )
                return
            }

            # Navigate to URLs
            foreach ($targetUrl in $UrlList) {
                if ($targetUrl) {
                    Microsoft.PowerShell.Utility\Write-Verbose (
                        "Navigating to: ${targetUrl}"
                    )
                    try {
                        $gotoOptions = [Microsoft.Playwright.PageGotoOptions]::new()
                        $gotoOptions.Timeout = 15000
                        $null = $browserState.Page.GotoAsync(
                            $targetUrl,
                            $gotoOptions
                        ).GetAwaiter().GetResult()
                    }
                    catch {
                        Microsoft.PowerShell.Utility\Write-Warning (
                            "Failed to navigate to ${targetUrl}: $($_.Exception.Message)"
                        )
                    }
                }
            }

            return
        }

        # force new window creation if keystrokes need to be sent to browser
        if ($KeysToSend -and ($KeysToSend.Count -gt 0)) {

            $NewWindow = $true
        }

        # store original parameters for later use in key sending operations
        $wbParams = $PSBoundParameters

        # get all available screens/monitors on the system
        $allScreens = @([WpfScreenHelper.Screen]::AllScreens |
                Microsoft.PowerShell.Core\ForEach-Object {

                    $PSItem
                })

        # output diagnostic information about the function call
        Microsoft.PowerShell.Utility\Write-Verbose ("Open-Webbrowser " +
            "monitor = $Monitor, urls=$($UrlList |Microsoft.PowerShell.Utility\ConvertTo-Json)")

        # track if url parameter was explicitly provided by user
        [bool] $urlSpecified = $true

        # check if no url was specified by the user
        if (($null -eq $UrlList) -or ($UrlList.Length -lt 1)) {

            $urlSpecified = $false

            # show the default help page from github when no url provided
            $UrlList = @('https://powershell.genxdev.net/')
        }
        else {

            # process and normalize each url provided
            $UrlList = $($UrlList |
                    Microsoft.PowerShell.Core\ForEach-Object {

                        # clean up url by trimming quotes and spaces
                        $newUrl = $PSItem.Trim(' "'''.ToCharArray())
                        $filePath = $newUrl

                        try {

                            # try to expand the path in case it's a relative file path
                            $filePath = (GenXdev\Expand-Path $newUrl)
                        }
                        catch {

                            # ignore expansion errors for urls that aren't file paths
                        }

                        # check if the url refers to an existing local file
                        if ([System.IO.File]::Exists($filePath)) {

                            # convert local file path to file:// url format
                            $newUrl = ('file://' +
                                [Uri]::EscapeUriString($filePath.Replace('\', '/')))
                        }

                        $newUrl
                    }
            )
        }

        # get reference to the powershell main window for focus restoration
        $powerShellWindow = GenXdev\Get-PowershellMainWindow

        # retrieve list of all available/installed modern webbrowsers
        $browsers = GenXdev\Get-Webbrowser

        # get the system's configured default webbrowser
        $defaultBrowser = GenXdev\Get-DefaultWebbrowser

        # set primary monitor as the initial screen reference
        $screen = [WpfScreenHelper.Screen]::PrimaryScreen
        $allScreens = @([WpfScreenHelper.Screen]::AllScreens |
                Microsoft.PowerShell.Core\ForEach-Object {

                    $PSItem
                });

        Microsoft.PowerShell.Utility\Write-Verbose ("Found $($allScreens.Count) " +
            "monitors available for window positioning")

        # copy window positioning parameters for later use
        $wpparams = GenXdev\Copy-IdenticalParamValues `
            -BoundParameters $wbParams `
            -FunctionName 'GenXdev\Set-WindowPosition'

        Microsoft.PowerShell.Utility\Write-Verbose ("Window positioning " +
            "parameters copied: $($wpparams.Keys -join ', ')")

        # set default positioning behavior when no positioning parameters provided
        if ($wpparams.Keys.Count -eq 0 -and -not $SideBySide) {

            Microsoft.PowerShell.Utility\Write-Verbose ("No window positioning " +
                "parameters provided, using defaults: SetForeground=true, " +
                "RestoreFocus=true, Maximize=$($Monitor -ne -1)")
            $SetForeground = $true
            $wpparams.SetForeground = $true
            $RestoreFocus = $true
            $wpparams.RestoreFocus = $true
            $Maximize = $Monitor -ne -1
            $wpparams.Maximize = $Maximize
        }
        else {
            Microsoft.PowerShell.Utility\Write-Verbose ("Window positioning " +
                "parameters provided, using user settings")
        }

        # determine if side-by-side mode should be forced due to monitor limitations
        $ForcedSideBySide = ($Monitor -eq -2) -and (
            ($allScreens.Count -lt 2) -or
            (-not ($setDefaultMonitor -is [int] -and ($setDefaultMonitor -gt 0)))
        )

        if ($ForcedSideBySide) {

            Microsoft.PowerShell.Utility\Write-Verbose ("Forcing side-by-side " +
                "positioning: insufficient monitors ($($allScreens.Count)) or " +
                "invalid DefaultSecondaryMonitor " +
                "($setDefaultMonitor)")
        }

        # configure side-by-side positioning if requested or forced
        if ($SideBySide -or $ForcedSideBySide) {

            Microsoft.PowerShell.Utility\Write-Verbose ("Configuring " +
                "side-by-side positioning - PowerShell monitor: " +
                "$($powerShellWindow.GetCurrentMonitor()), " +
                "Browser monitor: $($powerShellWindow.GetCurrentMonitor() + 1)")

            $SideBySide = $true
            $wpparams.SideBySide = $true
            $Monitor = $powerShellWindow.GetCurrentMonitor() + 1
            $wpparams.Monitor = $Monitor
            $RestoreFocus = $true
            $wpparams.RestoreFocus = $true
            $Maximize = $false
            $wpparams.Maximize = $false
            $FullScreen = $false
            $wpparams.FullScreen = $false

            if ($KeysToSend.Count -eq 1 -and $KeysToSend[0] -in @('f', '{F11}')) {
                $KeysToSend = @()
                if ($wpparams.ContainsKey('KeysToSend')) {
                    $null = $wpparams.Remove('KeysToSend')
                }
            }
        }

        # determine which monitor to use based on monitor parameter
        if ($Monitor -eq 0) {

            Microsoft.PowerShell.Utility\Write-Verbose ('Choosing primary ' +
                'monitor, because default monitor requested using -Monitor 0')
            Microsoft.PowerShell.Utility\Write-Verbose ("Primary monitor " +
                "working area: $($screen.WorkingArea.Width)x" +
                "$($screen.WorkingArea.Height) at " +
                "($($screen.WorkingArea.X),$($screen.WorkingArea.Y))")
        }
        else {

            # check if secondary monitor was requested and global variable is set
            if ((-not $SideBySide) -and $Monitor -eq -2 -and $setDefaultMonitor -is [int] -and
                $setDefaultMonitor -ge 0) {

                $selectedIndex = ($setDefaultMonitor - 1) % $allScreens.Length
                Microsoft.PowerShell.Utility\Write-Verbose ('Picking monitor ' +
                    "$selectedIndex as secondary (requested with -monitor -2) " +
                    "set by `$setDefaultMonitor=" +
                    "$setDefaultMonitor")
                $screen = $allScreens[$selectedIndex]
                Microsoft.PowerShell.Utility\Write-Verbose ("Selected monitor " +
                    "working area: $($screen.WorkingArea.Width)x" +
                    "$($screen.WorkingArea.Height) at " +
                    "($($screen.WorkingArea.X),$($screen.WorkingArea.Y))")
            }
            elseif ((-not $SideBySide) -and $Monitor -eq -2 -and
                (-not ($setDefaultMonitor -is [int] -and
                    $setDefaultMonitor -ge 0)) -and
                ((GenXdev\Get-MonitorCount) -gt 1)) {

                Microsoft.PowerShell.Utility\Write-Verbose (('Picking monitor ' +
                        '#1 as default secondary (requested with -monitor -2), ' +
                        "because `$setDefaultMonitor not set"))
                $screen = $allScreens[1]
                Microsoft.PowerShell.Utility\Write-Verbose ("Secondary monitor " +
                    "working area: $($screen.WorkingArea.Width)x" +
                    "$($screen.WorkingArea.Height) at " +
                    "($($screen.WorkingArea.X),$($screen.WorkingArea.Y))")
            }
            # check if specific monitor number was requested
            elseif ((-not $SideBySide) -and $Monitor -ge 1) {

                $selectedIndex = ($Monitor - 1) % $allScreens.Length
                Microsoft.PowerShell.Utility\Write-Verbose ('Picking monitor ' +
                    "#$selectedIndex as requested by the -Monitor parameter " +
                    "($Monitor)")
                $screen = $allScreens[$selectedIndex]
                Microsoft.PowerShell.Utility\Write-Verbose ("Requested monitor " +
                    "working area: $($screen.WorkingArea.Width)x" +
                    "$($screen.WorkingArea.Height) at " +
                    "($($screen.WorkingArea.X),$($screen.WorkingArea.Y))")
            }
            else {
                try {
                    Microsoft.PowerShell.Utility\Write-Verbose ('Picking monitor ' +
                        '#1 (same as PowerShell), because no monitor specified')
                    $screen = [WpfScreenHelper.Screen]::FromPoint(@{
                            X = $powerShellWindow[0].Position().X
                            Y = $powerShellWindow[0].Position().Y
                        })
                    if ($SideBySide) {

                        $Monitor = [WpfScreenHelper.Screen]::AllScreens.indexOf($screen) + 1
                        Microsoft.PowerShell.Utility\Write-Verbose ("Side-by-side " +
                            "mode: adjusted Monitor to $Monitor")
                    }
                    Microsoft.PowerShell.Utility\Write-Verbose ("PowerShell " +
                        "monitor working area: $($screen.WorkingArea.Width)x" +
                        "$($screen.WorkingArea.Height) at " +
                        "($($screen.WorkingArea.X),$($screen.WorkingArea.Y))")
                }
                catch {
                    $screen = [WpfScreenHelper.Screen]::PrimaryScreen
                    Microsoft.PowerShell.Utility\Write-Verbose ("Failed to detect " +
                        "PowerShell monitor, using primary monitor")
                }
            }
        }

        # determine if any window positioning parameters were provided
        [bool] $havePositioning = (($Monitor -ge 0 -or $Monitor -eq -2) -or
            ($Left -or $Right -or $Top -or $Bottom -or $Centered -or $SideBySide -or $Maximize -or $FullScreen -or
            (($X -is [int]) -and ($X -gt -999999)) -or
            (($Y -is [int]) -and ($Y -gt -999999))))

        Microsoft.PowerShell.Utility\Write-Verbose ("Window positioning " +
            "required: $havePositioning (Monitor=$Monitor, Left=$Left, " +
            "Right=$Right, Top=$Top, Bottom=$Bottom, Centered=$Centered, " +
            "SideBySide=$SideBySide, Maximize=$Maximize, FullScreen=$FullScreen, " +
            "X=$X, Y=$Y)")

        # initialize window x position based on parameters or screen defaults
        if (($X -le -999999) -or ($X -isnot [int])) {

            $X = $screen.WorkingArea.X
            Microsoft.PowerShell.Utility\Write-Verbose ("Using default X " +
                "position: $X (screen working area left)")
        }
        else {

            # adjust x position relative to selected monitor if monitor specified
            if ($Monitor -ge 0) {

                $originalX = $X
                $X = $screen.WorkingArea.X + $X
                Microsoft.PowerShell.Utility\Write-Verbose ("Adjusted X " +
                    "position from $originalX to $X (relative to monitor)")
            }
            else {
                Microsoft.PowerShell.Utility\Write-Verbose ("Using absolute X " +
                    "position: $X")
            }
        }

        # initialize window y position based on parameters or screen defaults
        if (($Y -le -999999) -or ($Y -isnot [int])) {

            $Y = $screen.WorkingArea.Y
            Microsoft.PowerShell.Utility\Write-Verbose ("Using default Y " +
                "position: $Y (screen working area top)")
        }
        else {

            # adjust y position relative to selected monitor if monitor specified
            if ($Monitor -ge 0) {

                $originalY = $Y
                $Y = $screen.WorkingArea.Y + $Y
                Microsoft.PowerShell.Utility\Write-Verbose ("Adjusted Y " +
                    "position from $originalY to $Y (relative to monitor)")
            }
            else {
                Microsoft.PowerShell.Utility\Write-Verbose ("Using absolute Y " +
                    "position: $Y")
            }
        }

        # create state object to track browser window positioning and processes
        $state = @{
            existingWindow    = $false
            hadVisibleBrowser = $false
            Browser           = $null
            IsDefaultBrowser  = ((-not $All) -and
                ((-not $Chromium) -or ($defaultBrowser.Name -like '*chrome*') -or
                ($defaultBrowser.Name -like '*edge*')) -and
                ((-not $Chrome) -or ($defaultBrowser.Name -like '*chrome*')) -and
                ((-not $Edge) -or ($defaultBrowser.Name -like '*edge*')) -and
                ((-not $Firefox) -or ($defaultBrowser.Name -like '*firefox*')))
            FirstProcess      = $null
            PositioningDone   = $false
            BrowserWindow     = $null
        }

        # determine if we can use simple start-process instead of complex positioning
        $useStartProcess = (-not ($havePositioning -or $FullScreen)) -and
        $state.IsDefaultBrowser -and ($Monitor -eq -1) -and (-not $NewWindow)

        # configure window dimensions and positioning if positioning is required
        if ($havePositioning -or $FullScreen) {

            Microsoft.PowerShell.Utility\Write-Verbose ("Configuring window " +
                "positioning - initial dimensions: ${Width}x${Height}")

            # check if width parameter was explicitly provided
            $widthProvided = ($Width -gt 0) -and ($Width -is [int])

            # check if height parameter was explicitly provided
            $heightProvided = ($Height -gt 0) -and ($Height -is [int])

            Microsoft.PowerShell.Utility\Write-Verbose ("Width provided by " +
                "user: $widthProvided, Height provided by user: $heightProvided")

            # set default width if not provided by user
            if ($widthProvided -eq $false) {

                $Width = $screen.WorkingArea.Width
                Microsoft.PowerShell.Utility\Write-Verbose ("Using default " +
                    "width: $Width (full screen working area)")
            }

            # set default height if not provided by user
            if ($heightProvided -eq $false) {

                $Height = $screen.WorkingArea.Height
                Microsoft.PowerShell.Utility\Write-Verbose ("Using default " +
                    "height: $Height (full screen working area)")
            }

            # configure window position and size for left side placement
            if ($Left -eq $true) {

                Microsoft.PowerShell.Utility\Write-Verbose ("Configuring LEFT " +
                    "side positioning")
                $X = $screen.WorkingArea.X

                # use half screen width if width not explicitly provided
                if ($widthProvided -eq $false) {

                    $Width = [Math]::Min($screen.WorkingArea.Width / 2, $Width)
                    Microsoft.PowerShell.Utility\Write-Verbose ("Left side: " +
                        "using half width: $Width")
                }

                # use full screen height if height not explicitly provided
                if ($heightProvided -eq $false) {

                    $Height = [Math]::Min($screen.WorkingArea.Height, $Height)
                    Microsoft.PowerShell.Utility\Write-Verbose ("Left side: " +
                        "using full height: $Height")
                }
                $Y = $screen.WorkingArea.Y
                Microsoft.PowerShell.Utility\Write-Verbose ("Left side final " +
                    "position: ${Width}x${Height} at ($X,$Y)")
            }

            # configure window position and size for right side placement
            if ($Right -eq $true) {

                # use half screen width if width not explicitly provided
                if ($widthProvided -eq $false) {

                    $Width = [Math]::Min($screen.WorkingArea.Width / 2, $Width)
                }

                # use full screen height if height not explicitly provided
                if ($heightProvided -eq $false) {

                    $Height = [Math]::Min($screen.WorkingArea.Height, $Height)
                }

                # position window on right side of screen
                $X = $screen.WorkingArea.X + $screen.WorkingArea.Width - $Width
                $Y = $screen.WorkingArea.Y
            }

            # configure window position and size for top placement
            if ($Top -eq $true) {

                $Y = $screen.WorkingArea.Y

                # use half screen height if height not explicitly provided
                if ($heightProvided -eq $false) {

                    $Height = [Math]::Min($screen.WorkingArea.Height / 2, $Height)
                }

                $Width = $screen.WorkingArea.Width
                $X = $screen.WorkingArea.X
            }

            # configure window position and size for bottom placement
            if ($Bottom -eq $true) {

                # use half screen height if height not explicitly provided
                if ($heightProvided -eq $false) {

                    $Height = [Math]::Min($screen.WorkingArea.Height / 2, $Height)
                }

                $Width = $screen.WorkingArea.Width

                # position window at bottom of screen
                $Y = $screen.WorkingArea.Y + $screen.WorkingArea.Height - $Height
                $X = $screen.WorkingArea.X
            }

            # configure window position and size for centered placement
            if ($Centered -eq $true) {

                # use 80% of screen height if height not explicitly provided
                if ($heightProvided -eq $false) {

                    $Height = [Math]::Round([Math]::Min(
                            $screen.WorkingArea.Height * 0.8, $Height), 0)
                }

                # use 80% of screen width if width not explicitly provided
                if ($widthProvided -eq $false) {

                    $Width = [Math]::Round([Math]::Min(
                            $screen.WorkingArea.Width * 0.8, $Width), 0)
                }

                # center window on screen
                $X = ($screen.WorkingArea.X +
                    [Math]::Round(($screen.WorkingArea.Width - $Width) / 2, 0))
                $Y = ($screen.WorkingArea.Y +
                    [Math]::Round(($screen.WorkingArea.Height - $Height) / 2, 0))
            }
        }
    }

    process {

        if ([string]::IsNullOrEmpty($Input)) { return }

        $null = $UrlList.Add($_)
    }

    end {

        if ($PlayWright) { return }

        $Url = $UrlList.ToArray() | Microsoft.PowerShell.Utility\Select-Object -Unique

        <#
        .SYNOPSIS
        Ensures minimum delay between browser window close and open operations.

        .DESCRIPTION
        This helper function prevents timing issues when repositioning browser
        windows by enforcing a minimum delay since the last browser close.

        .PARAMETER browser
        The browser object to check timing delays for.
        #>
        function enforceMinimumDelays($browser) {

            # skip delay enforcement if no positioning is required
            if ($havePositioning -eq $false) {

                return
            }

            # get the last close time for this specific browser
            $last = (Microsoft.PowerShell.Utility\Get-Variable -Scope Global `
                    -Name "_LastClose$($browser.Name)" -ErrorAction SilentlyContinue)

            # check if we have a valid last close timestamp
            if (($null -ne $last) -and ($last.Value -is [DateTime])) {

                $now = [DateTime]::UtcNow

                # enforce minimum 1 second delay since last close
                if ($now - $last.Value -lt [System.TimeSpan]::FromSeconds(1)) {

                    Microsoft.PowerShell.Utility\Start-Sleep -Milliseconds 200
                }
            }
        }

        <#
        .SYNOPSIS
        Constructs browser-specific command line arguments.

        .DESCRIPTION
        Builds the appropriate command line argument list based on the browser
        type and user-specified parameters for launching the browser process.

        .PARAMETER browser
        The browser object containing executable path and type information.

        .PARAMETER currentUrl
        The URL to open in the browser.

        .PARAMETER state
        The state object tracking browser window positioning and process info.
        #>
        function constructArgumentList($browser, $currentUrl, $state) {

            # initialize empty argument list for browser command line
            $argumentList = @()


            # handle firefox-specific command line arguments
            if ($browser.Name -like '*Firefox*') {

                # set default firefox command line parameters
                $argumentList = @()

                # add window size parameters if both width and height specified
                if (($Width -is [int]) -and ($Width -gt 0) -and
                    ($Height -is [int]) -and ($Height -gt 0)) {

                    $argumentList = $argumentList + @('-width', $Width,
                        '-height', $Height)
                }

                # set foreground mode unless restore focus is requested
                if ($RestoreFocus -ne $true) {

                    # set firefox to foreground on startup
                    $argumentList = $argumentList + @('-foreground')
                }

                # disable browser extensions if requested
                if ($NoBrowserExtensions -eq $true) {

                    $argumentList = $argumentList + @('-safe-mode')
                }

                # disable popup blocker if requested
                if ($DisablePopupBlocker -eq $true) {

                    $argumentList = $argumentList + @('-disable-popup-blocking')
                }

                # set accept language header if provided
                if ($null -ne $AcceptLang) {

                    $argumentList = $argumentList + @('--lang', $AcceptLang)
                }

                # handle private browsing mode for firefox
                if ($Private -eq $true) {

                    # open url in firefox private window
                    $argumentList = $argumentList + @('-private-window',
                        $currentUrl)
                }
                else {

                    # handle new window creation for firefox
                    if ((-not $state.PositioningDone) -and
                        ($NewWindow -eq $true)) {

                        # create new firefox window with url
                        $argumentList = $argumentList + @('--new-window',
                            $currentUrl)
                    }
                    else {

                        # open url in existing or new firefox tab
                        $argumentList = $argumentList + @('-url', $currentUrl)
                    }
                }
            }
            else {


                # handle chromium-based browsers (edge and chrome)
                if ($browser.Name -like '*Edge*' -or
                    $browser.Name -like '*Chrome*') {

                    # set default chromium command line parameters
                    # reference: https://peter.sh/experiments/chromium-command-line-switches/
                    $argumentList = $argumentList + @(
                        '--disable-infobars',
                        '--hide-crash-restore-bubble',
                        '--no-first-run',
                        '--disable-session-crashed-bubble',
                        '--disable-crash-reporter',
                        '--no-default-browser-check',
                        '--disable-restore-tabs'
                    )

                    # add window size if both dimensions are specified
                    if (($Width -is [int]) -and ($Width -gt 0) -and
                        ($Height -is [int]) -and ($Height -gt 0)) {

                        $argumentList = $argumentList + @("--window-size=$Width,$Height")
                    }

                    # set initial window position
                    $argumentList = $argumentList + @("--window-position=$X,$Y")

                    # disable browser extensions if requested
                    if ($NoBrowserExtensions -eq $true) {

                        $argumentList = $argumentList + @('--disable-extensions')
                    }

                    # disable popup blocker if requested
                    if ($DisablePopupBlocker -eq $true) {

                        $argumentList = $argumentList + @('--disable-popup-blocking')
                    }

                    # set accept language header if provided
                    if ($null -ne $AcceptLang) {

                        $argumentList = $argumentList + @("--accept-lang=$AcceptLang")
                    }

                    # handle private browsing mode for chromium browsers
                    if ($Private -eq $true) {

                        # force new window for private mode
                        $NewWindow = $true

                        # set appropriate private browsing flag
                        if ($browser.Name -like '*Edge*') {

                            # use edge inprivate mode
                            $argumentList = $argumentList + @('-InPrivate')
                        }
                        else {

                            # use chrome incognito mode
                            $argumentList = $argumentList + @('--incognito')
                        }
                    }

                    # force new window creation if requested and not positioned yet
                    if ((-not $state.PositioningDone) -and ($NewWindow -eq $true)) {

                        # force creation of new browser window
                        $argumentList = $argumentList + @('--new-window') +
                        @('--force-launch-browser')
                    }

                    # set window to start maximized by default
                    $argumentList = $argumentList + @('--start-maximized')

                    # handle application mode for chromium browsers
                    if ($ApplicationMode -eq $true) {

                        # run browser in application mode with specific url
                        $argumentList = $argumentList + @("--app=$currentUrl")
                    }
                    else {

                        # add url to standard command line arguments
                        $argumentList = $argumentList + @($currentUrl)
                    }
                }
                else {


                    # handle default/other browsers
                    if ($Private -eq $true) {

                        # private mode not supported for default browser
                        return
                    }

                    # add url as only argument for default browser
                    $argumentList = @($currentUrl)
                }
            }

            $argumentList
        }

        <#
        .SYNOPSIS
        Finds and returns the browser process and main window.

        .DESCRIPTION
        Locates the browser process after launch and gets a reference to its
        main window handle for positioning and management operations.

        .PARAMETER browser
        The browser object containing executable information.

        .PARAMETER process
        The initial process object from browser launch.

        .PARAMETER state
        The state object tracking browser window and process information.
        #>
        function findProcess($browser, $process, $state) {

            # initialize window tracking variables
            $state.existingWindow = $false
            $window = @()

            # retry loop to find the browser process and window
            do {

                try {
                    # wait briefly for process to initialize
                    $null = [System.Threading.Thread]::Sleep(100)

                    # find the most recent browser process with main window
                    $processesNew = @(Microsoft.PowerShell.Management\Get-Process `
                        ([IO.Path]::GetFileNameWithoutExtension($browser.Path)) `
                            -ErrorAction SilentlyContinue |
                            Microsoft.PowerShell.Core\Where-Object -Property Path `
                                -EQ $browser.Path |
                            Microsoft.PowerShell.Core\Where-Object -Property MainWindowHandle `
                                -NE 0 |
                            Microsoft.PowerShell.Utility\Sort-Object `
                            { $PSItem.StartTime } -Descending |
                            Microsoft.PowerShell.Utility\Select-Object -First 1)

                    # check if no process was found
                    if (($processesNew.Length -eq 0) -or ($null -eq $processesNew[0])) {

                        Microsoft.PowerShell.Utility\Write-Verbose ('No process ' +
                            'found, retrying..')
                        $window = @()

                        $null = [System.Threading.Thread]::Sleep(80)
                    }
                    else {

                        Microsoft.PowerShell.Utility\Write-Verbose 'Found new process'

                        # get window helper utility for main window of process
                        $state.existingWindow = $state.hadVisibleBrowser
                        $process = $processesNew[0]
                        $window = [GenXdev.Helpers.WindowObj]::GetMainWindow($process,
                            1, 80)
                        break
                    }
                }
                catch {
                    Microsoft.PowerShell.Utility\Write-Verbose ('Error: ' +
                        "$($_.Exception.Message)")
                    $window = @()
                    $null = [System.Threading.Thread]::Sleep(100)
                }
            } while (($i++ -lt 50) -and ($window.length -le 0))

            # return process and window information
            @{
                Process = $process
                Window  = $window
            }
        }

        <#
        .SYNOPSIS
        Sends keystrokes to the browser window if specified.

        .DESCRIPTION
        Helper function to send keystrokes to the browser window after a delay
        to ensure the window is ready. Handles window handle detection and
        parameter copying for the Send-Key function.

        .PARAMETER window
        The browser window array to send keystrokes to.
        #>
        function sendKeysIfSpecified($window) {
            # send keys if specified, after a delay to ensure window is ready
            if ($null -ne $KeysToSend -and ($KeysToSend.Count -gt 0)) {
                Microsoft.PowerShell.Utility\Write-Verbose ('Sending keystrokes to browser window after 4 second delay')
                Microsoft.PowerShell.Utility\Start-Sleep 6

                # copy key sending parameters
                $invocationParams = GenXdev\Copy-IdenticalParamValues `
                    -BoundParameters $wbParams `
                    -FunctionName 'GenXdev\Send-Key'

                if ($window.Length -eq 1) {
                    $invocationParams.WindowHandle = $window[0].Handle
                }

                $null = GenXdev\Send-Key @invocationParams -SendKeyHoldKeyboardFocus

                Microsoft.PowerShell.Utility\Start-Sleep 1
            }
        }

        <#
        .SYNOPSIS
        Opens a browser with the specified URL and configuration.

        .DESCRIPTION
        Launches a browser process with the provided URL and handles window
        positioning, process management, and browser-specific configurations.

        .PARAMETER browser
        The browser object containing executable path and type information.

        .PARAMETER currentUrl
        The URL to open in the browser.

        .PARAMETER state
        The state object tracking browser positioning and process information.
        #>
        function open($browser, $currentUrl, $state) {

            Microsoft.PowerShell.Utility\Write-Verbose 'open()'

            # determine if this browser is the system default
            $state.IsDefaultBrowser = $browser -eq $defaultBrowser

            # enforce timing delays for proper window positioning
            enforceMinimumDelays $browser

            # initialize browser launch variables
            $startBrowser = $true
            $state.hadVisibleBrowser = $false
            $process = $null

            # find any existing browser process with main window
            $prcBefore = @(Microsoft.PowerShell.Management\Get-Process `
                ([IO.Path]::GetFileNameWithoutExtension($browser.Path)) `
                    -ErrorAction SilentlyContinue) |
                Microsoft.PowerShell.Core\Where-Object -Property Path -EQ $browser.Path |
                Microsoft.PowerShell.Core\Where-Object -Property MainWindowHandle -NE 0 |
                Microsoft.PowerShell.Utility\Sort-Object { $PSItem.StartTime } -Descending |
                Microsoft.PowerShell.Utility\Select-Object -First 1

            # check if existing browser window was found
            if ($state.PositioningDone -or (($prcBefore.Length -ge 1) -and
                    ($null -ne $prcBefore[0]))) {

                Microsoft.PowerShell.Utility\Write-Verbose ('Found existing ' +
                    'webbrowser window')
                $state.hadVisibleBrowser = $true
            }

            # determine if we should skip launching new browser process
            if ((-not $NewWindow) -and
                (-not ($havePositioning -or $FullScreen)) -and
                (-not $urlSpecified)) {

                if ($state.hadVisibleBrowser) {

                    Microsoft.PowerShell.Utility\Write-Verbose ('No url specified, ' +
                        'found existing webbrowser window')
                    $startBrowser = $false
                    $process = if ($state.FirstProcess) {
                        $state.FirstProcess
                    }
                    else {
                        $prcBefore[0]
                    }
                }
            }

            # launch new browser process if needed
            if ($startBrowser) {

                # handle force parameter to close existing browser instances
                if ($Force) {

                    Microsoft.PowerShell.Utility\Write-Verbose ('Force closing ' +
                        'existing browser instances before starting a new one')
                    $null = Microsoft.PowerShell.Management\Get-Process `
                        -Name ([IO.Path]::GetFileNameWithoutExtension($browser.Path)) `
                        -ErrorAction SilentlyContinue |
                        Microsoft.PowerShell.Management\Stop-Process -Force `
                            -ErrorAction SilentlyContinue
                }

                # check if any browser processes currently exist
                $currentProcesses = @((Microsoft.PowerShell.Management\Get-Process `
                            -Name ([IO.Path]::GetFileNameWithoutExtension($browser.Path)) `
                            -ErrorAction SilentlyContinue))
                if ($currentProcesses.Count -eq 0) {

                    $NewWindow = $false
                }

                # get browser-specific command line arguments
                $argumentList = constructArgumentList $browser $currentUrl $state

                # output verbose information about browser launch
                Microsoft.PowerShell.Utility\Write-Verbose ("$($browser.Name) --> " +
                    "$($argumentList | Microsoft.PowerShell.Utility\ConvertTo-Json)")

                # start the browser process with constructed arguments
                $process = Microsoft.PowerShell.Management\Start-Process `
                    -FilePath ($browser.Path) -ArgumentList $argumentList -PassThru

                # wait briefly for process to initialize
                $null = $process.WaitForExit(2000)
            }

            # validate that we have a valid process
            if ($null -eq $process) {

                Microsoft.PowerShell.Utility\Write-Warning ('Could not start ' +
                    "browser $($browser.Name)")
                return
            }

            # skip positioning if not needed or already done
            if ((-not $PassThru) -and
                ((-not ($havePositioning -or ($FullScreen -and
                            -not $state.PositioningDone))) -or $state.PositioningDone)) {

                sendKeysIfSpecified $window

                Microsoft.PowerShell.Utility\Write-Verbose ('No positioning ' +
                    'required, done..')
                return
            }

            # return process object if passthru requested
            if ($PassThru) {

                # return first process if positioning done and process available
                if (($state.PositioningDone -or
                        ((-not $FullScreen) -and (-not $havePositioning))) -and
                    ($null -ne $state.FirstProcess) -and
                    (-not $state.FirstProcess.HasExited) -and
                    ($state.FirstProcess.MainWindowHandle -ne 0)) {

                    Microsoft.PowerShell.Utility\Write-Verbose ('Returning ' +
                        'first process')
                    Microsoft.PowerShell.Utility\Write-Output $state.FirstProcess
                    return
                }

                # return current process if valid and has window
                if (($null -ne $process) -and (-not $process.HasExited) -and
                    ($process.MainWindowHandle -ne 0)) {

                    Microsoft.PowerShell.Utility\Write-Verbose 'Returning process'
                    Microsoft.PowerShell.Utility\Write-Output $process

                    if (-not $havePositioning) {

                        return
                    }
                }
            }

            # allow browser startup time and update process handle if needed
            enforceMinimumDelays $browser
            $browserFound = findProcess $browser $process $state
            $process = $browserFound.Process
            $window = $browserFound.Window

            # return process after lookup if passthru requested
            if (($PassThru -eq $true) -and ($null -ne $process)) {

                Microsoft.PowerShell.Utility\Write-Verbose ('Returning process ' +
                    'after process lookup')
                Microsoft.PowerShell.Utility\Write-Output $process
            }

            # skip positioning if not required or already completed
            if ((-not ($havePositioning -or ($FullScreen -and
                            (-not $state.PositioningDone)))) -or $state.PositioningDone) {
                sendKeysIfSpecified $window

                Microsoft.PowerShell.Utility\Write-Verbose ('No positioning ' +
                    'required, done..')
                return
            }

            # mark positioning as completed and store first process
            $state.PositioningDone = $true
            $state.FirstProcess = $process

            # position browser window if we have a valid window handle
            if ($window.Length -eq 1) {
                if ($wpparams.ContainsKey('KeysToSend')) {
                    $null = $wpparams.Remove('KeysToSend')
                }
                $null = GenXdev\Set-WindowPosition @wpparams `
                    -WindowHelper:$window[0] -ErrorAction SilentlyContinue
            }

            # wait for window positioning to complete
            Microsoft.PowerShell.Utility\Start-Sleep 2
        }

        # initialize url processing index counter
        $index = -1
        try {
            # iterate through each url that needs to be opened
            foreach ($currentUrl in $Url) {

                $index++
                Microsoft.PowerShell.Utility\Write-Verbose "Opening $currentUrl"

                # use simple start-process for default browser without positioning
                if ($useStartProcess -or (($index -gt 0) -and
                        ($state.IsDefaultBrowser))) {
                    Microsoft.PowerShell.Utility\Write-Verbose 'Start-Process'

                    # launch default browser with simple start-process method
                    $process = Microsoft.PowerShell.Management\Start-Process $currentUrl `
                        -PassThru

                    # return process if passthru requested for first launch
                    if ($PassThru -and $useStartProcess -and ($index -eq 0)) {

                        $browserFound = findProcess $defaultBrowser $process $state

                        $process = $browserFound.Process
                        $window = $browserFound.Window

                        Microsoft.PowerShell.Utility\Write-Verbose ('Returning ' +
                            'process after Start-Process')
                        Microsoft.PowerShell.Utility\Write-Output $process
                    }

                    continue
                }

                # handle opening url in all available browsers
                if ($All -eq $true) {

                    # open current url in all installed browsers
                    $browsers |
                        Microsoft.PowerShell.Core\ForEach-Object {
                            open $PSItem $currentUrl $state
                        }

                    continue
                }
                # handle chrome-specific browser selection
                elseif ($Chrome -eq $true) {

                    # find and open chrome browser instances
                    $browsers |
                        Microsoft.PowerShell.Core\ForEach-Object {

                            # check if this is a chrome browser
                            if ($PSItem.Name -like '*Chrome*') {

                                # open url in chrome
                                open $PSItem $currentUrl $state
                            }
                        }
                }
                # handle edge-specific browser selection
                elseif ($Edge -eq $true) {

                    # find and open edge browser instances
                    $browsers |
                        Microsoft.PowerShell.Core\ForEach-Object {

                            # check if this is an edge browser
                            if ($PSItem.Name -like '*Edge*') {

                                # open url in edge
                                open $PSItem $currentUrl $state
                            }
                        }
                }
                # handle chromium-based browser preference (edge or chrome)
                elseif ($Chromium -eq $true) {

                    # check if default browser is already chromium-based
                    if (($defaultBrowser.Name -like '*Chrome*') -or
                        ($defaultBrowser.Name -like '*Edge*')) {

                        # use default browser since it's already chromium-based
                        open $defaultBrowser $currentUrl $state
                        continue
                    }

                    # find available chromium-based browsers
                    $browsers |
                        Microsoft.PowerShell.Utility\Sort-Object { $PSItem.Name } `
                            -Descending |
                        Microsoft.PowerShell.Core\ForEach-Object {

                            # check if this is a chromium-based browser
                            if (($PSItem.Name -like '*Chrome*') -or
                                ($PSItem.Name -like '*Edge*')) {

                                # open url in chromium-based browser
                                open $PSItem $currentUrl $state
                            }
                        }
                }

                # handle firefox-specific browser selection
                if ($Firefox -eq $true) {

                    # find and open firefox browser instances
                    $browsers |
                        Microsoft.PowerShell.Core\ForEach-Object {

                            # check if this is a firefox browser
                            if ($PSItem.Name -like '*Firefox*') {

                                # open url in firefox
                                open $PSItem $currentUrl $state
                            }
                        }
                }

                # use default browser when no specific browser requested
                if (($Chromium -ne $true) -and ($Chrome -ne $true) -and
                    ($Edge -ne $true) -and ($Firefox -ne $true)) {

                    # open url in system default browser
                    open $defaultBrowser $currentUrl $state
                }
            }
        }
        finally {

            # handle fullscreen mode activation after all urls processed
            if ($FullScreen -eq $true) {

                Microsoft.PowerShell.Utility\Write-Verbose 'Setting fullscreen'

                # use browser window reference if available
                if ($null -ne $state.BrowserWindow) {

                    Microsoft.PowerShell.Utility\Write-Verbose ('Changing focus ' +
                        'to browser window')

                    try {
                        $null = $state.BrowserWindow.Focus()
                        $null = $state.BrowserWindow.Maximize()
                    }
                    catch {
                        # ignore window manipulation errors
                    }
                    $tt = 0
                    $focusedWindowProcess = GenXdev\Get-CurrentFocusedProcess

                    # wait for browser window to receive focus
                    while (($tt++ -lt 20) -and
                        (($null -eq $focusedWindowProcess) -or
                        ($focusedWindowProcess.MainWindowHandle -ne
                        $state.BrowserWindow.Handle))) {

                        Microsoft.PowerShell.Utility\Write-Verbose ('have browser ' +
                            'window, sleeping 500ms')
                        $null = [System.Threading.Thread]::Sleep(500)

                        try {

                            $null = $state.BrowserWindow.Focus()
                            $null = $state.BrowserWindow.Maximize()
                        }
                        catch {
                            # ignore window manipulation errors
                        }
                        $null = GenXdev\Set-ForegroundWindow `
                        ($state.BrowserWindow.Handle)

                        $focusedWindowProcess = GenXdev\Get-CurrentFocusedProcess
                        if ($null -eq $focusedWindowProcess) { break }

                        if ($focusedWindowProcess.MainWindowHandle -ne $state.BrowserWindow.Handle) {

                            $null = [System.Threading.Thread]::Sleep(500)
                        }
                    }
                }
                else {
                    Microsoft.PowerShell.Utility\Write-Verbose ('Setting ' +
                        'fullscreen without having reference to browser window')
                    $tt = 0
                    $focusedWindowProcess = GenXdev\Get-CurrentFocusedProcess
                    $powershellWindow = GenXdev\Get-PowershellMainWindow

                    # wait for powershell window focus before sending f11
                    while (($tt++ -lt 20) -and
                        (($null -eq $focusedWindowProcess) -or
                        ($null -eq $powerShellWindow) -or
                        ($focusedWindowProcess.MainWindowHandle -ne
                        $powerShellWindow.Handle))) {
                        Microsoft.PowerShell.Utility\Write-Verbose ('no browser ' +
                            'window, sleeping 500ms')
                        $null = [System.Threading.Thread]::Sleep(500)

                        $focusedWindowProcess = GenXdev\Get-CurrentFocusedProcess

                        $powershellWindow = GenXdev\Get-PowershellMainWindow
                        if ($null -eq $focusedWindowProcess) { break }

                        if ($null -ne $powershellWindow -and $focusedWindowProcess.MainWindowHandle -ne $powerShellWindow.Handle) {

                            $null = [System.Threading.Thread]::Sleep(500)
                        }
                    }
                }
                $w = (GenXdev\Get-PowershellMainWindow);

                # send f11 key to activate fullscreen if browser has focus
                if ( ($w) -and ((GenXdev\Get-CurrentFocusedProcess).MainWindowHandle -ne
                        $w.Handle)) {
                    try {

                        # create com object to send f11 key press
                        $helper = Microsoft.PowerShell.Utility\New-Object `
                            -ComObject WScript.Shell
                        $null = $helper.sendKeys('{F11}')
                        Microsoft.PowerShell.Utility\Write-Verbose 'Sending F11'
                        $null = [System.Threading.Thread]::Sleep(500)
                    }
                    catch {
                        # ignore key sending errors
                    }
                }
            }
        }

        # restore powershell window focus if requested
        if ($RestoreFocus) {

            GenXdev\Set-WindowPosition -SetForeground
        }
    }
}
<##############################################################################
Part of PowerShell module : GenXdev.Webbrowser
Original cmdlet filename  : Open-WebbrowserSideBySide.ps1
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
Launches a new web browser window with specific positioning.

.DESCRIPTION
Opens a new browser window (Edge or Chrome) positioned on the right side of the
primary monitor in background mode.

.PARAMETER Edge
Opens Microsoft Edge browser instead of the default browser.

.PARAMETER Chrome
Opens Google Chrome browser instead of the default browser.

.EXAMPLE
wbn -Edge

.EXAMPLE
wbn -ch
#>
function Open-WebbrowserSideBySide {

    [CmdletBinding()]
    [Alias("wbn")]
    param(
        [Parameter(
            Mandatory = $false,
            Position = 0,
            ValueFromPipeline = $true,
            ValueFromPipelineByPropertyName = $false,
            HelpMessage = 'The URLs to open in the browser'
        )]
        [Alias('Value', 'Uri', 'FullName', 'Website', 'WebsiteUrl')]
        [string[]] $Url,
        [Parameter(
            Mandatory = $false,
            Position = 1,
            HelpMessage = ('The monitor to use, 0 = default, -1 is discard, ' +
                '-2 = Configured secondary monitor, defaults to ' +
                "`$Global:DefaultSecondaryMonitor or 2 if not found")
        )]
        [Alias('m', 'mon')]
        [int] $Monitor = -2,
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
            HelpMessage = ("Don't re-use existing browser window, instead, " +
                'create a new one')
        )]
        [Alias('nw', 'new')]
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
        [switch]$PassThru,
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
            HelpMessage = ('Keystrokes to send to the Window, ' +
                'see documentation for cmdlet GenXdev\Send-Key')
        )]
        [string[]] $KeysToSend,
        [Parameter(
            Mandatory = $false,
            HelpMessage = ('Escape control characters and modifiers when ' +
                'sending keys')
        )]
        [Alias('Escape')]
        [switch] $SendKeyEscape,
        [Parameter(
            Mandatory = $false,
            HelpMessage = ('Hold keyboard focus on target window when ' +
                'sending keys')
        )]
        [Alias('HoldKeyboardFocus')]
        [switch] $SendKeyHoldKeyboardFocus,
        [Parameter(
            Mandatory = $false,
            HelpMessage = ('Use Shift+Enter instead of Enter when ' +
                'sending keys')
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
            HelpMessage = ('Use alternative settings stored in session for AI ' +
                'preferences')
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

        Microsoft.PowerShell.Utility\Write-Verbose 'Launching new browser window'
    }


    process {

        GenXdev\Set-WindowPosition -Left -Monitor 0

        $NewWindow = $true
        $Monitor = 0
        $SideBySide = $true;
        $RestoreFocus = $true

        $params = GenXdev\Copy-IdenticalParamValues `
            -BoundParameters $PSBoundParameters `
            -FunctionName "GenXdev\Open-Webbrowser" `
            -DefaultValues (Microsoft.PowerShell.Utility\Get-Variable -Scope Local -ErrorAction SilentlyContinue)

        GenXdev\Open-Webbrowser @params
    }

    end {

        Microsoft.PowerShell.Utility\Write-Verbose 'Browser window launched successfully'

        if ($Force) {

            $params = GenXdev\Copy-IdenticalParamValues `
                -BoundParameters $PSBoundParameters `
                -FunctionName "GenXdev\Select-WebbrowserTab" `
                -DefaultValues (Microsoft.PowerShell.Utility\Get-Variable -Scope Local -ErrorAction SilentlyContinue)

            GenXdev\Select-WebbrowserTab @params
        }
    }
}
<##############################################################################
Part of PowerShell module : GenXdev.Webbrowser
Original cmdlet filename  : Select-WebbrowserTab.ps1
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
Selects a browser tab from running Playwright-managed browsers.

.DESCRIPTION
Lists and selects browser tabs from all running Playwright-managed
browser instances. When called without selection criteria, displays
a table of all available tabs across all browser types. Supports
selection by numeric index, URL pattern, or direct page reference.

When a tab is selected, sets $Global:chromeController and
$Global:chromeSession for backward compatibility with other
Webbrowser cmdlets.

.PARAMETER Id
Numeric tab index to select, shown when listing available tabs.

.PARAMETER Name
URL pattern to match against open tabs. Selects the first tab whose
URL contains the specified pattern. Supports wildcards.

.PARAMETER ByReference
Direct page reference from a Playwright browser state.

.PARAMETER Edge
Filter tabs to Microsoft Edge (Chromium-based) browser instances.

.PARAMETER Chrome
Filter tabs to Google Chrome (Chromium-based) browser instances.

.PARAMETER Chromium
Filter tabs to Chromium-based browser instances (Edge or Chrome).

.PARAMETER Firefox
Filter tabs to Firefox browser instances.

.PARAMETER PlayWright
Filter tabs to all Playwright-managed browser types.

.PARAMETER Webkit
Filter tabs to WebKit browser instances.

.PARAMETER All
Show tabs from all browser types (no filtering).

.PARAMETER Force
Skip confirmation and select the first matching tab automatically.

.EXAMPLE
Select-WebbrowserTab
Lists all open tabs across all Playwright browser types.

.EXAMPLE
Select-WebbrowserTab -Id 2
Selects the tab at index 2 from the list.

.EXAMPLE
st -Name "github.com"
Selects the first tab whose URL contains "github.com".

.EXAMPLE
st -Firefox -Id 0
Selects the first tab from the Firefox browser.
#>
function Select-WebbrowserTab {

    [CmdletBinding(DefaultParameterSetName = 'ById')]
    [OutputType([PSCustomObject])]
    [System.Diagnostics.CodeAnalysis.SuppressMessageAttribute(
        'PSUseDeclaredVarsMoreThanAssignments', '')]
    [System.Diagnostics.CodeAnalysis.SuppressMessageAttribute(
        'PSAvoidGlobalVars', '')]
    [Alias('st')]

    param(
        [Parameter(
            Mandatory = $false,
            Position = 0,
            ParameterSetName = 'ById',
            HelpMessage = 'Tab index from the shown list'
        )]
        [ValidateRange(0, [int]::MaxValue)]
        [int] $Id = -1,

        [Parameter(
            Mandatory = $true,
            Position = 0,
            ParameterSetName = 'ByName',
            HelpMessage = 'Selects first tab containing this text in its URL'
        )]
        [Alias('Pattern')]
        [ValidateNotNullOrEmpty()]
        [SupportsWildcards()]
        [string] $Name,

        [Parameter(
            Mandatory = $true,
            ParameterSetName = 'ByReference',
            HelpMessage = 'Direct page reference from a Playwright browser state'
        )]
        [ValidateNotNull()]
        [object] $ByReference,

        [Alias('e')]
        [Parameter(
            Mandatory = $false,
            HelpMessage = 'Filter tabs to Microsoft Edge browser instances'
        )]
        [switch] $Edge,

        [Alias('ch')]
        [Parameter(
            Mandatory = $false,
            HelpMessage = 'Filter tabs to Google Chrome browser instances'
        )]
        [switch] $Chrome,

        [Alias('c')]
        [Parameter(
            Mandatory = $false,
            HelpMessage = ('Filter tabs to Chromium-based browser ' +
                'instances (Edge or Chrome)')
        )]
        [switch] $Chromium,

        [Alias('ff')]
        [Parameter(
            Mandatory = $false,
            HelpMessage = 'Filter tabs to Firefox browser instances'
        )]
        [switch] $Firefox,

        [Alias('pw')]
        [Parameter(
            Mandatory = $false,
            HelpMessage = 'Filter tabs to all Playwright-managed browser types'
        )]
        [switch] $PlayWright,

        [Alias('wk')]
        [Parameter(
            Mandatory = $false,
            HelpMessage = 'Filter tabs to WebKit browser instances'
        )]
        [switch] $Webkit,

        [Alias('a')]
        [Parameter(
            Mandatory = $false,
            HelpMessage = 'Show tabs from all browser types (no filtering)'
        )]
        [switch] $All,

        [Parameter(
            Mandatory = $false,
            HelpMessage = 'Skip confirmation and select first matching tab'
        )]
        [switch] $Force
    )

    begin {
        # ensure global state container exists
        if ($Global:GenXdevPlaywright -isnot [Hashtable]) {
            $Global:GenXdevPlaywright = @{}
        }

        # resolve browser switches to filter types
        $browserFilter = if ($All) {
            $null
        }
        elseif ($Webkit) {
            @('WebKitPlaywright')
        }
        elseif ($Firefox) {
            @('FirefoxPlaywright')
        }
        elseif ($PlayWright) {
            @('ChromeNormal', 'EdgeNormal', 'ChromiumNormal',
                'ChromiumPlaywright', 'FirefoxPlaywright', 'WebKitPlaywright')
        }
        elseif ($Edge) {
            @('EdgeNormal')
        }
        elseif ($Chrome) {
            @('ChromeNormal')
        }
        elseif ($Chromium) {
            @('ChromeNormal', 'EdgeNormal', 'ChromiumNormal',
                'ChromiumPlaywright')
        }
        else {
            $null
        }

        # remove stale/disconnected browsers from global state
        $staleKeys = [System.Collections.Generic.List[string]]::new()
        foreach ($key in $Global:GenXdevPlaywright.Keys) {
            $state = $Global:GenXdevPlaywright[$key]
            if ($state.Browser -and -not $state.Browser.IsConnected) {
                $staleKeys.Add($key)
            }
        }
        foreach ($key in $staleKeys) {
            $null = $Global:GenXdevPlaywright.Remove($key)
            Microsoft.PowerShell.Utility\Write-Verbose (
                "Removed stale browser state: ${key}"
            )
        }

        # Helper: Select a page and set global state for backward compatibility
        function SelectPage {
            param([PSCustomObject] $TabInfo)

            $page = $TabInfo.Page
            $state = $TabInfo.State

            # set backward-compat globals
            $Global:chromeController = $page
            $Global:chrome = $state

            # build session object to mimic old CDP session format
            $Global:chromeSession = [PSCustomObject]@{
                id    = ''
                url   = $page.Url
                title = $TabInfo.Title
            }

            Microsoft.PowerShell.Utility\Write-Verbose (
                "Selected tab [$($TabInfo.Index)] $($TabInfo.BrowserType): " +
                $TabInfo.Url
            )
        }
    }

    process {
        # Collect all pages from all running Playwright browser types
        function GatherAllPages {
            $allPages = [System.Collections.Generic.List[PSObject]]::new()
            $index = 0

            foreach ($browserKey in $Global:GenXdevPlaywright.Keys) {
                $state = $Global:GenXdevPlaywright[$browserKey]

                # skip if browser not connected
                if (-not ($state.Browser -and $state.Browser.IsConnected)) {
                    continue
                }

                # filter by browser type if specified
                if ($browserFilter -and $browserKey -notin $browserFilter) {
                    continue
                }

                try {
                    # gather pages from all contexts of this browser
                    $contexts = $state.Browser.Contexts
                    foreach ($ctx in $contexts) {
                        foreach ($page in $ctx.Pages) {
                            $url = $page.Url
                            $title = ''
                            try {
                                $title = $page.TitleAsync().
                                    GetAwaiter().GetResult()
                            }
                            catch { }

                            $allPages.Add([PSCustomObject]@{
                                    PSTypeName  = 'GenXdev.Webbrowser.TabInfo'
                                    Index       = $index
                                    BrowserType = $browserKey
                                    Url         = $url
                                    Title       = $title
                                    Page        = $page
                                    Context     = $ctx
                                    State       = $state
                                })
                            $index++
                        }
                    }
                }
                catch { }
            }

            return $allPages.ToArray()
        }

        # Format tab list for display (old-style Show-TabList format)
        function Format-TabList {
            param([array] $pages)

            $pages | Microsoft.PowerShell.Core\ForEach-Object {
                $isCurrent = ($null -ne $Global:chromeController) -and
                    ($_.Page -eq $Global:chromeController)

                [PSCustomObject]@{
                    id          = $_.Index
                    A           = $isCurrent ? '*' : ' '
                    BrowserType = $_.BrowserType
                    url         = $_.Url
                    title       = $_.Title
                }
            }
        }

        # Handle ByReference — direct page assignment
        if ($PSCmdlet.ParameterSetName -eq 'ByReference') {
            Microsoft.PowerShell.Utility\Write-Verbose (
                'Selecting tab by direct reference'
            )

            $Global:chromeController = $ByReference

            # build minimal session object for backward compat
            $Global:chromeSession = [PSCustomObject]@{
                id    = ''
                url   = $ByReference.Url
                title = ''
            }

            return $ByReference
        }

        # Gather all active pages
        $allPages = GatherAllPages

        if ($allPages.Count -eq 0) {
            Microsoft.PowerShell.Utility\Write-Warning (
                'No Playwright browser tabs found. Start a browser with ' +
                'Open-PlayWrightBrowser or Open-Webbrowser -PlayWright first.'
            )
            return
        }

        # Handle -Name selection
        if ($PSCmdlet.ParameterSetName -eq 'ByName') {
            Microsoft.PowerShell.Utility\Write-Verbose (
                "Selecting tab by name pattern: ${Name}"
            )

            $matched = $allPages |
                Microsoft.PowerShell.Core\Where-Object { $_.Url -like "*${Name}*" } |
                Microsoft.PowerShell.Utility\Select-Object -First 1

            if (-not $matched) {
                Microsoft.PowerShell.Utility\Write-Warning (
                    "No tab found matching pattern: ${Name}"
                )
                return
            }

            SelectPage $matched
            return [PSCustomObject]@{
                Index       = $matched.Index
                BrowserType = $matched.BrowserType
                Url         = $matched.Url
                Title       = $matched.Title
            }
        }

        # Handle -Id selection
        if ($Id -ge 0) {
            $matched = $allPages | Microsoft.PowerShell.Core\Where-Object { $_.Index -eq $Id } |
                Microsoft.PowerShell.Utility\Select-Object -First 1

            if (-not $matched) {
                Microsoft.PowerShell.Utility\Write-Warning (
                    "No tab found with index: ${Id}"
                )
                return
            }

            SelectPage $matched
            return [PSCustomObject]@{
                Index       = $matched.Index
                BrowserType = $matched.BrowserType
                Url         = $matched.Url
                Title       = $matched.Title
            }
        }

        # No selection criteria — show list
        Format-TabList $allPages
        return
    }

    end {
    }
}
<##############################################################################
Part of PowerShell module : GenXdev.Webbrowser
Original cmdlet filename  : Set-BrowserVideoFullscreen.ps1
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
Maximizes the first video element found in the current browser tab.

.DESCRIPTION
Executes JavaScript code to locate and maximize the first video element on the
current webpage. The video is set to cover the entire viewport with maximum
z-index to ensure visibility. Page scrollbars are hidden for a clean fullscreen
experience.

.EXAMPLE
Set-BrowserVideoFullscreen
#>
function Set-BrowserVideoFullscreen {

    [CmdletBinding(SupportsShouldProcess)]
    [Alias('fsvideo')]
    param(
        [Alias('e')]
        [Parameter(
            Mandatory = $false,
            HelpMessage = 'Use Microsoft Edge browser'
        )]
        [switch] $Edge,
        [Alias('ch')]
        [Parameter(
            Mandatory = $false,
            HelpMessage = 'Use Google Chrome browser'
        )]
        [switch] $Chrome,
        [Alias('c')]
        [Parameter(
            Mandatory = $false,
            HelpMessage = ('Use Microsoft Edge or Google Chrome, ' +
                'depending on what the default browser is')
        )]
        [switch] $Chromium,
        [Alias('ff')]
        [Parameter(
            Mandatory = $false,
            HelpMessage = 'Use Firefox browser'
        )]
        [switch] $Firefox,
        [Alias('wk')]
        [Parameter(
            Mandatory = $false,
            HelpMessage = 'Use the Playwright-managed WebKit browser'
        )]
        [switch] $Webkit
    )

    begin {

        # prepare the javascript command that will handle video manipulation
        $script = @(
            "window.video = document.getElementsByTagName('video')[0];" +
            "video.setAttribute('style','position:fixed;left:0;top:0;bottom:0;" +
            "right:0;z-index:10000;width:100vw;height:100vh');" +
            'document.body.appendChild(video);' +
            "document.body.setAttribute('style', 'overflow:hidden');"
        ) -join ''

        Microsoft.PowerShell.Utility\Write-Verbose 'Prepared JavaScript code for video fullscreen manipulation'
    }


    process {

        # check if we should proceed with the operation
        if ($PSCmdlet.ShouldProcess('browser video', 'Set to fullscreen mode')) {

            Microsoft.PowerShell.Utility\Write-Verbose 'Executing JavaScript to maximize video element'
            GenXdev\Invoke-WebbrowserEvaluation $script
        }
    }

    end {
    }
}
<##############################################################################
Part of PowerShell module : GenXdev.Webbrowser
Original cmdlet filename  : Set-WebbrowserTabLocation.ps1
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
Navigates the current webbrowser tab to a specified URL.

.DESCRIPTION
Sets the location (URL) of the currently selected webbrowser tab. Supports both
Edge and Chrome browsers through optional switches. The navigation includes
validation of the URL and ensures proper page loading through async operations.

.PARAMETER Url
The target URL for navigation. Accepts pipeline input and must be a valid URL
string. This parameter is required.

.PARAMETER NoAutoSelectTab
Prevents automatic tab selection if no tab is currently selected.

.PARAMETER Edge
Switch parameter to specifically target Microsoft Edge browser. Cannot be used
together with -Chrome parameter.

.PARAMETER Chrome
Switch parameter to specifically target Google Chrome browser. Cannot be used
together with -Edge parameter.

.PARAMETER Page
Browser page object for execution when using ByReference mode.

.PARAMETER ByReference
Session reference object when using ByReference mode.

.EXAMPLE
Set-WebbrowserTabLocation -Url "https://github.com/microsoft" -Edge

.EXAMPLE
"https://github.com/microsoft" | lt -ch
#>
function Set-WebbrowserTabLocation {

    [System.Diagnostics.CodeAnalysis.SuppressMessageAttribute('PSAvoidGlobalVars', '')]
    [System.Diagnostics.CodeAnalysis.SuppressMessageAttribute('PSUseDeclaredVarsMoreThanAssignments', '')]
    [System.Diagnostics.CodeAnalysis.SuppressMessageAttribute('PSReviewUnusedParameter', '')]
    [CmdletBinding(
        SupportsShouldProcess = $true,
        DefaultParameterSetName = 'Default'
    )]
    [Alias('lt', 'Nav')]

    param(
        [parameter(
            Mandatory = $true,
            Position = 0,
            ValueFromPipeline = $true,
            ValueFromPipelineByPropertyName = $true,
            HelpMessage = 'The URL to navigate to'
        )]
        [ValidateNotNullOrEmpty()]
        [string] $Url,
        [Parameter(
            Mandatory = $false,
            ValueFromPipeline = $false,
            HelpMessage = 'Prevent automatic tab selection'
        )]
        [switch] $NoAutoSelectTab,
        [Parameter(
            Mandatory = $false,
            ParameterSetName = 'Edge',
            HelpMessage = 'Navigate using Microsoft Edge browser'
        )]
        [Alias('e')]
        [switch] $Edge,
        [Parameter(
            Mandatory = $false,
            ParameterSetName = 'Chrome',
            HelpMessage = 'Navigate using Google Chrome browser'
        )]
        [Alias('ch')]
        [switch] $Chrome,
        [Alias('c')]
        [Parameter(
            Mandatory = $false,
            HelpMessage = ('Navigate using Microsoft Edge or Google Chrome, ' +
                'depending on what the default browser is')
        )]
        [switch] $Chromium,
        [Alias('ff')]
        [Parameter(
            Mandatory = $false,
            HelpMessage = 'Navigate using Firefox browser'
        )]
        [switch] $Firefox,
        [Alias('wk')]
        [Parameter(
            Mandatory = $false,
            HelpMessage = 'Navigate using the Playwright-managed WebKit browser'
        )]
        [switch] $Webkit,
        [Parameter(
            HelpMessage = 'Browser page object reference',
            ValueFromPipeline = $false
        )]
        [object] $Page,
        [Parameter(
            HelpMessage = 'Browser session reference object',
            ValueFromPipeline = $false
        )]
        [PSCustomObject] $ByReference
    )

    begin {
        # initialize reference tracking
        $reference = $null

        # resolve page from parameters or global Playwright state
        if (($null -eq $Page) -or ($null -eq $ByReference)) {

            if ($ByReference) {
                $reference = $ByReference
                $Page = $ByReference.Page
            }
            elseif ($Page) {
                $reference = @{ Page = $Page }
            }
            else {
                # use the active Playwright browser page
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
                    if ($NoAutoSelectTab) {
                        throw 'No Playwright browser is running. Use Open-PlayWrightBrowser to launch one first.'
                    }

                    # auto-launch Chromium if no browser is running
                    Microsoft.PowerShell.Utility\Write-Verbose (
                        'No Playwright browser running. Auto-launching Chromium...'
                    )

                    try {
                        $activeBrowser = GenXdev\Open-PlayWrightBrowser `
                            -BrowserType Chromium `
                            -ConsentToThirdPartySoftwareInstallation
                    }
                    catch {
                        throw (
                            'Failed to auto-launch Playwright browser: ' +
                            "$($PSItem.Exception.Message)"
                        )
                    }
                }

                $Page = $activeBrowser.Page
                $reference = @{ Page = $Page }
            }
        }
        else {
            $reference = $ByReference
        }

        # validate browser context
        if (($null -eq $Page)) {

            throw 'No browser page available. Use Open-PlayWrightBrowser to launch a browser first.'
        }
    }


    process {

        if ($PSCmdlet.ShouldProcess($Url, 'Navigate to URL')) {

            Microsoft.PowerShell.Utility\Write-Verbose "Navigating to URL: $Url"
            $null = $Page.GotoAsync($Url).GetAwaiter().GetResult()
        }
    }

    end {
    }
}
<##############################################################################
Part of PowerShell module : GenXdev.Webbrowser
Original cmdlet filename  : Show-WebsiteInAllBrowsers.ps1
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
Opens a URL in multiple browsers simultaneously in a mosaic layout.

.DESCRIPTION
This function creates a mosaic layout of browser windows by opening the specified
URL in Chrome, Edge, Firefox, and a private browsing window. The browsers are
arranged in a 2x2 grid pattern:
- Chrome: Top-left quadrant
- Edge: Bottom-left quadrant
- Firefox: Top-right quadrant
- Private window: Bottom-right quadrant

All parameters from Open-Webbrowser are supported and passed through to control
browser positioning, behavior, and appearance. The function acts as a wrapper
that applies consistent quadrant positioning while allowing full customization
of browser launch parameters.

.PARAMETER Url
The URLs to open in all browsers. Accepts pipeline input and can be specified by
position or through properties.

.PARAMETER Monitor
The monitor to use for window placement:
- 0 = Primary monitor
- -1 = Discard positioning
- -2 = Configured secondary monitor (uses $Global:DefaultSecondaryMonitor or
  defaults to monitor 2)
- 1+ = Specific monitor number

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

.PARAMETER AcceptLang
Sets the browser's Accept-Language HTTP header for internationalization.
Useful for testing websites in different languages.

.PARAMETER FullScreen
Opens the browser in fullscreen mode using F11 key simulation.

.PARAMETER Private
Opens the browser in private/incognito browsing mode. Uses InPrivate for
Edge and incognito for Chrome. Not supported for the default browser mode.

.PARAMETER Force
Forces enabling of the debugging port by stopping existing browser instances
if needed. Useful when browser debugging features are required.

.PARAMETER Edge
Specifically opens URLs in Microsoft Edge browser.

.PARAMETER Chrome
Specifically opens URLs in Google Chrome browser.

.PARAMETER Chromium
Opens URLs in either Microsoft Edge or Google Chrome, depending on which
is set as the default browser. Prefers Chromium-based browsers.

.PARAMETER Firefox
Specifically opens URLs in Mozilla Firefox browser.

.PARAMETER All
Opens the specified URLs in all installed modern browsers simultaneously.

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
Hides browser controls for a distraction-free experience. Creates an app-like
interface for web applications.

.PARAMETER NoBrowserExtensions
Prevents loading of browser extensions. Uses safe mode for Firefox and
--disable-extensions for Chromium browsers.

.PARAMETER DisablePopupBlocker
Disables the browser's popup blocking functionality.

.PARAMETER RestoreFocus
Returns focus to the PowerShell window after opening the browser. Useful
for automated workflows where you want to continue working in PowerShell.

.PARAMETER NewWindow
Forces creation of a new browser window instead of reusing existing windows.

.PARAMETER FocusWindow
Gives focus to the browser window after opening.

.PARAMETER SetForeground
Brings the browser window to the foreground after opening.

.PARAMETER Maximize
Maximize the window after positioning

.PARAMETER SetRestored
Restore the window to normal state after positioning

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

.EXAMPLE
Show-WebsiteInAllBrowsers -Url "https://www.github.com"
Opens github.com in four different browsers arranged in a mosaic layout.

.EXAMPLE
"https://www.github.com" | Show-UrlInAllBrowsers
Uses the function's alias and pipeline input to achieve the same result.
#>
function Show-WebsiteInAllBrowsers {

    [CmdletBinding()]
    [System.Diagnostics.CodeAnalysis.SuppressMessageAttribute('PSUseSingularNouns', '')]

    param(
        [Parameter(
            Mandatory = $true,
            Position = 0,
            ValueFromPipeline = $true,
            ValueFromPipelineByPropertyName = $true,
            HelpMessage = 'The URLs to open in all browsers simultaneously'
        )]
        [ValidateNotNullOrEmpty()]
        [Alias('Value', 'Uri', 'FullName', 'Website', 'WebsiteUrl')]
        [string] $Url,
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

        # log the start of the operation with the target url
        Microsoft.PowerShell.Utility\Write-Verbose ('Starting browser mosaic ' +
            "layout for URL: $Url")
    }

    process {

        # copy identical parameters between functions
        $params = GenXdev\Copy-IdenticalParamValues `
            -FunctionName 'GenXdev\Open-Webbrowser' `
            -BoundParameters $PSBoundParameters `
            -DefaultValues (Microsoft.PowerShell.Utility\Get-Variable -Scope Local -ErrorAction SilentlyContinue)

        GenXdev\Open-Webbrowser @params

        # initialize chrome in the top-left quadrant of the screen
        Microsoft.PowerShell.Utility\Write-Verbose ('Launching Chrome in ' +
            'top-left quadrant')

        $null = GenXdev\Open-Webbrowser @params `
            -Chrome -Left -Top -Url $Url

        # initialize edge in the bottom-left quadrant of the screen
        Microsoft.PowerShell.Utility\Write-Verbose ('Launching Edge in ' +
            'bottom-left quadrant')

        $null = GenXdev\Open-Webbrowser @params `
            -Edge -Left -Bottom -Url $Url

        # initialize firefox in the top-right quadrant of the screen
        Microsoft.PowerShell.Utility\Write-Verbose ('Launching Firefox in ' +
            'top-right quadrant')

        $null = GenXdev\Open-Webbrowser @params `
            -Firefox -Right -Top -Url $Url

        # initialize private window in the bottom-right quadrant of the screen
        Microsoft.PowerShell.Utility\Write-Verbose ('Launching Private window ' +
            'in bottom-right quadrant')

        $null = GenXdev\Open-Webbrowser @params `
            -Private -Right -Bottom -Url $Url
    }

    end {
    }
}


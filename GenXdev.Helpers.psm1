<##############################################################################
Part of PowerShell module : GenXdev.Helpers
Original cmdlet filename  : alignScript.ps1
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
Returns a string (with altered indentation) of a provided scriptblock string

.DESCRIPTION
Changes the indentation of a scriptblock string while respecting the original code-block identations

.PARAMETER script
The scriptblock string

.PARAMETER spaces
The minimum number of spaces for each line
#>
function alignScript([string] $script, [int] $spaces = 0) {

    $lines = @($script.Replace("`r`n", "`n").Replace("`t", '    ').Split("`n"));

    [int] $NrOfSpacesToTrim = [int]::MaxValue;

    $lines | Microsoft.PowerShell.Core\ForEach-Object -ErrorAction SilentlyContinue {

        $c = 0;
        $s = $PSItem
        while (($s.Length -gt 0) -and ($s.substring(0, 1) -eq ' ')) {

            $c++;
            if ($s.Length -gt 1) {

                $s = $s.substring(1);
            }
            else {

                $s = '';
            }
        }

        $NrOfSpacesToTrim = [Math]::Min($NrOfSpacesToTrim, $c);
    }

    if ($NrOfSpacesToTrim -eq [int]::MaxValue) {

        $NrOfSpacesToTrim = 0;
    }

    @($lines | Microsoft.PowerShell.Core\ForEach-Object -ErrorAction SilentlyContinue {

            [int] $c = $NrOfSpacesToTrim;
            $a = $PSItem

            while (($a.Length -gt 0) -and ($a.substring(0, 1) -eq ' ') -and ($c -gt 0)) {

                $c--;

                if ($a.Length -gt 1) {

                    $a = $a.substring(1);
                }
                else {

                    $a = '';
                }
            }

            for ($i = 0; $i -lt $spaces; $i++) {

                $a = " $a"
            }

            $a
        }) -Join "`r`n"
}
<##############################################################################
Part of PowerShell module : GenXdev.Helpers
Original cmdlet filename  : Approve-NewTextFileContent.ps1
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
Interactive file content comparison and approval using WinMerge.

.DESCRIPTION
Facilitates content comparison and merging through WinMerge by creating a
temporary file with proposed changes. The user can interactively review and
modify changes before approving. Returns approval status and final content.

.PARAMETER ContentPath
The path to the target file for comparison and potential update. If the file
doesn't exist, it will be created.

.PARAMETER NewContent
The proposed new content to compare against the existing file content.

.PARAMETER Monitor
The monitor to use, 0 = default, -1 is discard, -2 = Configured secondary
monitor, defaults to $Global:DefaultSecondaryMonitor or 2 if not found

.PARAMETER Width
The initial width of the webbrowser window

.PARAMETER Height
The initial height of the webbrowser window

.PARAMETER X
The initial X position of the webbrowser window

.PARAMETER Y
The initial Y position of the webbrowser window

.PARAMETER AcceptLang
Set the browser accept-lang http header

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

.PARAMETER FullScreen
Opens in fullscreen mode

.PARAMETER Private
Opens in incognito/private browsing mode

.PARAMETER ApplicationMode
Hide the browser controls

.PARAMETER NoBrowserExtensions
Prevent loading of browser extensions

.PARAMETER DisablePopupBlocker
Disable the popup blocker

.PARAMETER NewWindow
Don't re-use existing browser window, instead, create a new one

.PARAMETER FocusWindow
Focus the browser window after opening

.PARAMETER SetForeground
Set the browser window to foreground after opening

.PARAMETER Maximize
Maximize the window after positioning

.PARAMETER SetRestored
Restore the window to normal state after positioning

.PARAMETER PassThru
Returns a PowerShell object of the browserprocess

.PARAMETER NoBorders
Removes the borders of the window

.PARAMETER RestoreFocus
Restore PowerShell window focus

.PARAMETER SideBySide
Position browser window either fullscreen on different monitor than
PowerShell, or side by side with PowerShell on the same monitor.

.PARAMETER KeysToSend
Keystrokes to send to the Window, see documentation for cmdlet
GenXdev\Send-Key

.PARAMETER SendKeyEscape
Escape control characters and modifiers when sending keys

.PARAMETER SendKeyHoldKeyboardFocus
Hold keyboard focus on target window when sending keys

.PARAMETER SendKeyUseShiftEnter
Use Shift+Enter instead of Enter when sending keys

.PARAMETER SendKeyDelayMilliSeconds
Delay between different input strings in milliseconds when sending keys

.PARAMETER SessionOnly
Use alternative settings stored in session for AI preferences

.PARAMETER ClearSession
Clear alternative settings stored in session for AI preferences

.PARAMETER SkipSession
Store settings only in persistent preferences without affecting session

.EXAMPLE
$result = Approve-NewTextFileContent -ContentPath "C:\temp\myfile.txt" `
    -NewContent "New file content"

.EXAMPLE
Approve-NewTextFileContent -ContentPath "C:\temp\myfile.txt" -NewContent "New content" -e -fs

.NOTES
Returns a hashtable with these properties:
- approved: True if changes were saved, False if discarded
- approvedAsIs: True if content was accepted without modifications
- savedContent: Final content if modified by user
- userDeletedFile: True if user deleted existing file
#>
function Approve-NewTextFileContent {

    [CmdletBinding()]
    param (
        [Parameter(
            Mandatory = $true,
            Position = 0,
            HelpMessage = 'Path to the target file for comparison'
        )]
        [ValidateNotNullOrEmpty()]
        [string]$ContentPath,
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
            HelpMessage = ('Prevent loading of browser ' +
                'extensions')
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
            HelpMessage = ('Focus the browser window ' +
                'after opening')
        )]
        [Alias('fw', 'focus')]
        [switch] $FocusWindow,
        [Parameter(
            Mandatory = $false,
            HelpMessage = ('Set the browser window to foreground ' +
                'after opening')
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
            HelpMessage = ('Restore the window to normal state ' +
                'after positioning')
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
                'PowerShell on the same monitor.')
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
            HelpMessage = ('Escape control characters and modifiers ' +
                'when sending keys')
        )]
        [Alias('Escape')]
        [switch] $SendKeyEscape,
        [Parameter(
            Mandatory = $false,
            HelpMessage = ('Hold keyboard focus on target window ' +
                'when sending keys')
        )]
        [Alias('HoldKeyboardFocus')]
        [switch] $SendKeyHoldKeyboardFocus,
        [Parameter(
            Mandatory = $false,
            HelpMessage = ('Use Shift+Enter instead of Enter ' +
                'when sending keys')
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

        # ensure content path exists, create if missing
        $contentPath = GenXdev\Expand-Path $ContentPath `
            -CreateFile

        # log the target file path for debugging
        Microsoft.PowerShell.Utility\Write-Verbose (
            "Target file path: ${contentPath}")
    }


    process {

        # check initial file existence for tracking deletion
        $existed = [System.IO.File]::Exists($contentPath)

        # log initial file existence state
        Microsoft.PowerShell.Utility\Write-Verbose (
            "File existed before comparison: ${existed}")

        # create temporary file with matching extension for comparison
        $tempFile = GenXdev\Expand-Path (
            [System.IO.Path]::GetTempFileName() +
            [System.IO.Path]::GetExtension($contentPath)) `
            -CreateDirectory

        # log temporary file creation
        Microsoft.PowerShell.Utility\Write-Verbose (
            "Created temp comparison file: ${tempFile}")

        # write proposed content to temp file
        $NewContent |
            Microsoft.PowerShell.Utility\Out-File $tempFile -Force

        # launch winmerge for interactive comparison
        $null = GenXdev\Invoke-WinMerge `
            -SourcecodeFilePath $tempFile `
            -TargetcodeFilePath $contentPath `
            -Wait

        # prepare result tracking object
        $result = @{

            approved = [System.IO.File]::Exists($contentPath)
        }

        if ($result.approved) {

            # read file content to check for modifications
            $content = [System.IO.File]::ReadAllText($contentPath)

            # compare original and modified content
            $changed = $content.Trim() -ne $NewContent.Trim()

            # track if content was accepted without changes
            $result.approvedAsIs = -not $changed

            if ($changed) {

                # store the user-modified content
                $result.savedContent = $content
            }
        }
        elseif ($existed) {

            # track if user deleted the existing file
            $result.userDeletedFile = $true
        }

        # log the comparison result
        Microsoft.PowerShell.Utility\Write-Verbose (
            "Comparison result: $(
                $result |
                    Microsoft.PowerShell.Utility\ConvertTo-Json)")

        return $result
    }

    end {
    }
}
<##############################################################################
Part of PowerShell module : GenXdev.Helpers
Original cmdlet filename  : Assert-RefactorFile.ps1
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
Executes a refactoring operation on a source file using the specified IDE and
AI prompt template.

.DESCRIPTION
This function automates the refactoring process by preparing an AI prompt based
on the refactor definition, detecting or selecting the appropriate IDE (VS Code
or Visual Studio), and opening the target file with the prepared prompt. The
function handles prompt template processing, IDE detection, and automation of
the refactoring workflow.

.PARAMETER RefactorDefinition
The refactor definition object containing settings, prompt templates, and IDE
preferences for the refactoring operation.

.PARAMETER Path
The absolute or relative path to the source file that needs to be refactored.
The path will be expanded to an absolute path during processing.

.EXAMPLE
$refactorDef = Get-RefactorDefinition -Type "Documentation"
Assert-RefactorFile -RefactorDefinition $refactorDef -Path "MyScript.ps1"

.EXAMPLE
Assert-RefactorFile -RefactorDefinition $refactorDef -Path ".\Functions\Test.ps1"
#>
function Assert-RefactorFile {

    [CmdletBinding()]
    param(
        [Parameter(
            Mandatory = $true,
            Position = 0,
            HelpMessage = 'The path to the source file to improve'
        )]
        [ValidateNotNullOrEmpty()]
        [Alias('FullName')]
        [string] $Path,
        [Parameter(
            Mandatory = $false,
            Position = 1,
            HelpMessage = 'The refactor definition containing settings and prompt template'
        )]
        [ValidateNotNull()]
        [GenXdev.Helpers.RefactorSettings] $RefactorSettings = [GenXdev.Helpers.RefactorSettings]::new(),
        [switch] $AllowLongRunningTests
    )

    begin {

        # prepare paths for scripts and modules directories
        $scriptsPath = GenXdev\Expand-Path `
            "$($MyInvocation.MyCommand.Module.ModuleBase)\..\..\..\Scripts\" `
            -CreateDirectory

        $modulesPath = GenXdev\Expand-Path `
            "$($MyInvocation.MyCommand.Module.ModuleBase)\..\..\" `
            -CreateDirectory

        # expand the target file path to absolute path
        $Path = GenXdev\Expand-Path $Path

        # extract prompt settings from the refactor definition
        $prompt = $RefactorSettings.Prompt

        $promptKey = $RefactorSettings.PromptKey

        # detect which IDE is currently active by examining running processes
        [System.Diagnostics.Process] $hostProcess = `
            GenXdev\Get-PowershellMainWindowProcess

        $isCode = $hostProcess.Name -eq 'Code' -or $hostProcess.Name -eq 'Code - Insiders'
        $isVisualStudio = $hostProcess.Name -eq 'devenv'

        # fallback to refactor definition preferences if no active IDE found
        if (-not ($isCode -or $isVisualStudio)) {

            # check if VS Code is preferred in settings
            if ($RefactorSettings.Code -ge 0) {

                $isCode = $RefactorSettings.Code -eq 1
            }

            # check if Visual Studio is preferred in settings
            if ($RefactorSettings.VisualStudio -ge 0) {

                $isVisualStudio = $RefactorSettings.VisualStudio -eq 1
            }

            # attempt to find any running IDE process as final fallback
            if (-not ($isCode -or $isVisualStudio)) {

                Microsoft.PowerShell.Utility\Write-Verbose (
                    'Attempting to detect running IDE instances')

                # search for running VS Code processes
                [System.Diagnostics.Process] $hostProcess = `
                    Microsoft.PowerShell.Management\Get-Process 'Code' `
                        -ErrorAction SilentlyContinue |
                        Microsoft.PowerShell.Utility\Sort-Object |
                        Microsoft.PowerShell.Utility\Select-Object -First 1

                $isCode = $null -ne $hostProcess

                # search for running Visual Studio processes
                $hostProcess = Microsoft.PowerShell.Management\Get-Process 'devenv' `
                    -ErrorAction SilentlyContinue |
                    Microsoft.PowerShell.Utility\Sort-Object |
                    Microsoft.PowerShell.Utility\Select-Object -First 1

                $isVisualStudio = $null -ne $hostProcess
            }
        }

        # prompt user to select IDE if no clear choice can be determined
        if (-not ($isCode -bxor $isVisualStudio)) {

            Microsoft.PowerShell.Utility\Write-Verbose 'Prompting user to select IDE'

            # use cached selection or prompt for new choice
            $userAnswer = $null -ne $Script:_CodeOrVisualStudioRefactor ?
                $Script:_CodeOrVisualStudioRefactor :
                ($host.ui.PromptForChoice(
                    'Make a choice',
                    'What IDE to use for refactoring?',
                    @('Visual Studio &Code', '&Visual Studio'),
                    0))

            # cache the user's selection for future operations
            $Script:_CodeOrVisualStudioRefactor = $userAnswer

            # apply the user's IDE selection
            switch ($userAnswer) {

                0 {
                    $isCode = $true

                    $isVisualStudio = $false

                    break;
                }
                1 {
                    $isCode = $false

                    $isVisualStudio = $true

                    break;
                }
            }
        }

        # process and load prompt template if a template key is specified
        if (-not [string]::IsNullOrWhiteSpace($PromptKey)) {

            # construct the base path for prompt templates
            $promptFilePath = GenXdev\Expand-Path `
                "$($MyInvocation.MyCommand.Module.ModuleBase)\Prompts\GenXdev.Coding.PowerShell.Modules\" `
                -CreateDirectory

            # build the template file path using the prompt key
            $promptFilePath = Microsoft.PowerShell.Management\Join-Path `
                $promptFilePath "Assert-$PromptKey.txt"

            # use script-specific template if target file is in scripts folder
            if ($Path -like "$scriptsPath\*.ps1") {

                $promptFilePath = GenXdev\Expand-Path (
                    "$($MyInvocation.MyCommand.Module.ModuleBase)\Prompts\GenXdev.Coding.PowerShell.Modules\" +
                    "Assert-$PromptKey-script.txt") -CreateFile
            }

            # load the template file and replace the prompt placeholder
            $Prompt = [System.IO.File]::ReadAllText($promptFilePath).Replace(
                "`$Prompt",
                $Prompt
            )
        }

        # replace template variables with actual values from the target file
        $Prompt = $Prompt.Replace(
            "`$CmdletName",
            [System.IO.Path]::GetFileNameWithoutExtension($Path)
        )

        # remove test suffix from cmdlet name for cleaner prompts
        $Prompt = $Prompt.Replace(
            "`$CmdLetNoTestName",
            [System.IO.Path]::GetFileNameWithoutExtension($Path).Replace(
                '.Tests', ''
            )
        )

        # insert the script filename into the prompt
        $Prompt = $Prompt.Replace(
            "`$ScriptFileName",
            [System.IO.Path]::GetFileName($Path)
        )

        # normalize tab characters to spaces for consistent formatting
        $Prompt = $Prompt.Replace("`t", '  ')

        # determine module context based on file location
        if ($Path.ToLowerInvariant().StartsWith($scriptsPath.ToLowerInvariant())) {

            # handle files in the scripts directory
            $Prompt = $Prompt.Replace(
                "`$FullModuleName",
                'GenXdev.Scripts'
            )

            $Prompt = $Prompt.Replace(
                "`$BaseModuleName",
                ''
            )
        }
        else {

            # extract base module name from the file path
            $baseModuleName = `
                "$($Path.Substring($modulesPath.Length + 1).Split('\')[0])"

            # construct paths for functions and tests directories
            $functionsPath = GenXdev\Expand-Path `
                "$modulesPath\$baseModuleName\3.26.2026\Functions\" `
                -CreateDirectory

            $testsPath = GenXdev\Expand-Path `
                "$modulesPath\$baseModuleName\3.26.2026\Tests\" `
                -CreateDirectory

            # determine the specific module context based on file location
            if ($Path.ToLowerInvariant().StartsWith($functionsPath.ToLowerInvariant())) {

                # extract sub-module name from functions path
                $Prompt = $Prompt.Replace(
                    "`$FullModuleName",
                    "$($Path.Substring($functionsPath.Length + 1).Split('\')[0])"
                )
            }
            elseif ($Path.ToLowerInvariant().StartsWith($testsPath.ToLowerInvariant())) {

                # extract sub-module name from tests path
                $Prompt = $Prompt.Replace(
                    "`$FullModuleName",
                    "$($Path.Substring($testsPath.Length + 1).Split('\')[0])"
                )
            }
            else {

                # use base module name for other locations
                $Prompt = $Prompt.Replace(
                    "`$FullModuleName",
                    "$baseModuleName"
                )
            }

            # set the base module name in the prompt
            $Prompt = $Prompt.Replace(
                "`$BaseModuleName",
                "$baseModuleName"
            )
        }

        # final normalization of tab characters
        $Prompt = $Prompt.Replace("`t", '  ')

        # preserve current clipboard content for later restoration
        $previousClipboard = Microsoft.PowerShell.Management\Get-Clipboard

        # copy the prepared prompt to clipboard for use in IDE
        $null = Microsoft.PowerShell.Management\Set-Clipboard -Value $prompt

        Microsoft.PowerShell.Utility\Write-Verbose (
            'Prepared prompt and copied to clipboard:')

        Microsoft.PowerShell.Utility\Write-Verbose $prompt

        # determine keyboard automation sequence based on selected IDE
        $keysToSend = $RefactorSettings.KeysToSend

        # use default key sequences if none specified in settings
        if (($null -eq $keysToSend) -or ($keysToSend.Count -eq 0)) {

            # configure VS Code key sequence for AI assistant integration
            if ($isCode) {

                $keysToSend = @("^``", "^``", '^+i', '^n', '^a', '{DELETE}', '^%b',
                    '^+%{F12}', '{ENTER}', '^v', '{ENTER}', '^{ENTER}', "^``") # '^%b',
            }
            elseif ($isVisualStudio) {

                # configure Visual Studio key sequence for copilot integration
                $keysToSend = @('^\', '^c', '^a', ' {DELETE}', '^v',
                    '{ENTER}', '^{ENTER}')
            }
        }
    }

    process {

        Microsoft.PowerShell.Utility\Write-Verbose (
            'Opening file in IDE for refactoring')

        # prepare parameter hashtable for IDE invocation
        $invocationParams = @{
            Path       = $Path
            KeysToSend = $keysToSend
        }

        # add IDE-specific parameters if they exist in current scope
        $invocationParams.Code = $Code

        $invocationParams.VisualStudio = $VisualStudio

        # launch the selected IDE with automation parameters
        GenXdev\Open-SourceFileInIde @invocationParams
    }

    end {

        # restore the original clipboard content to maintain user workflow
        $null = Microsoft.PowerShell.Management\Set-Clipboard -Value $previousClipboard
    }
}
<##############################################################################
Part of PowerShell module : GenXdev.Helpers
Original cmdlet filename  : Confirm-InstallationConsent.ps1
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
Confirms user consent for installing third-party software, using
preferences for persistent choices.

.DESCRIPTION
This function acts as a custom ShouldProcess mechanism specifically for
software installations. It checks a user preference to determine if
automatic installation is allowed for the specified application. If no
preference is set, it prompts the user with a clear explanation of what
will be installed, the source, potential risks, and options to allow or
deny the installation (with options for one-time or persistent choices).

This ensures explicit user consent before proceeding with any installation,
helping to mitigate potential legal risks by requiring affirmative action
from the user. The prompt clearly states that the module author (GenXdev)
is not responsible for third-party software, and that the user is
consenting to the installation at their own risk.

Preferences are stored in a JSON file, allowing users to set "always
allow" for specific applications or enable global consent for all GenXdev
third-party installations, making it convenient while remaining legally
sound.

If consent is denied (or preference is set to deny), the function returns $false and does not
proceed with installation. If allowed, it returns $true.

.PARAMETER ApplicationName
The name of the application or software being installed (e.g., "Docker
Desktop", "Sysinternals Suite"). This is used to create a unique
preference key like "AllowInstall_DockerDesktop".

.PARAMETER Source
The source of the installation (e.g., "Winget", "PowerShell Gallery",
"apt-get in WSL", "dotnet CLI"). This is included in the explanation
prompt for transparency.

.PARAMETER Description
Optional detailed description of what the software does and why it's
being installed. If not provided, a generic message is used.

.PARAMETER Publisher
Optional publisher or vendor of the software (e.g., "Microsoft", "Docker
Inc."). Included in the prompt for clarity.

.PARAMETER ForceConsent
Forces a prompt even if a preference is already set (useful for
re-confirmation).

.EXAMPLE
if (Confirm-InstallationConsent -ApplicationName "Docker Desktop" `
        -Source "Winget") {
    # Proceed with installation
    Microsoft.WinGet.Client\Install-WinGetPackage `
        -Id "Docker.DockerDesktop"
}

This checks consent before installing Docker Desktop via Winget.

.EXAMPLE
Confirm-InstallationConsent -ApplicationName "Pester" `
    -Source "PowerShell Gallery" -Publisher "Pester Team" `
    -Description "Required for unit testing in PowerShell modules."

Prompts with detailed information before installing the Pester module.

.NOTES
- Preference keys are formatted as "AllowInstall_<ApplicationName>" (spaces
  removed for simplicity).
- Global consent key is "AllowInstall_GenXdevGlobal" which applies to all
  third-party installations.
- Preferences are stored in JSON format at:
  $Env:LOCALAPPDATA\GenXdev.PowerShell\SoftwareConsent.json
- If denied, no installation occurs, and the function returns $false.
- For legal soundness: The prompt explicitly requires user consent,
  disclaims liability, and explains risks (e.g., third-party software may
  have its own terms, potential security implications).
- Integrate this into your Ensure* functions by replacing automatic
  installations with a check like: if (-not (Confirm-InstallationConsent
  ...)) { throw "Installation consent denied." }
- This function does not perform the installation itself—it's purely for
  consent checking.
#>
function Confirm-InstallationConsent {

    [CmdletBinding()]
    [OutputType([System.Boolean])]

    param(
        [Parameter(
            Mandatory = $true,
            Position = 0,
            HelpMessage = "The name of the application or software being installed."
        )]
        [ValidateNotNullOrEmpty()]
        [string] $ApplicationName,

        [Parameter(
            Mandatory = $true,
            Position = 1,
            HelpMessage = "The source of the installation (e.g., Winget, PowerShell Gallery)."
        )]
        [ValidateNotNullOrEmpty()]
        [string] $Source,

        [Parameter(
            Mandatory = $false,
            HelpMessage = "Optional description of the software and its purpose."
        )]
        [ValidateNotNullOrEmpty()]
        [string] $Description = "This software is required for certain features in the GenXdev modules.",

        [Parameter(
            Mandatory = $false,
            HelpMessage = "Optional publisher or vendor of the software."
        )]
        [ValidateNotNullOrEmpty()]
        [string] $Publisher = "Third-party vendor",

        [Parameter(
            Mandatory = $false,
            HelpMessage = "Force a prompt even if preference is set."
        )]
        [switch] $ForceConsent,

        [Parameter(
            Mandatory = $false,
            HelpMessage = "Automatically consent to third-party software installation and set persistent flag."
        )]
        [switch] $ConsentToThirdPartySoftwareInstallation
    )

    begin {

        # normalize application name by removing spaces to create safe key
        $safeAppName = $ApplicationName -replace '\s+', ''

        # create preference key for this application
        $preferenceKey = "AllowInstall_${safeAppName}"

        # set directory path for storing consent preferences
        $consentDir = Microsoft.PowerShell.Management\Join-Path $Env:LOCALAPPDATA "GenXdev.PowerShell"

        # set full file path for consent json file
        $consentFile = Microsoft.PowerShell.Management\Join-Path $consentDir "SoftwareConsent.json"

        Microsoft.PowerShell.Utility\Write-Verbose "Checking consent for installing '${ApplicationName}' from '${Source}'."

        # define helper function to read consent data from json file
        function GetConsentData {
            try {
                if (Microsoft.PowerShell.Management\Test-Path -LiteralPath $consentFile) {
                    $data = Microsoft.PowerShell.Management\Get-Content $consentFile -Raw -ErrorAction Stop |
                        Microsoft.PowerShell.Utility\ConvertFrom-Json -AsHashtable -ErrorAction Stop
                    if ($data) { return $data }
                }
            }
            catch {
                Microsoft.PowerShell.Utility\Write-Verbose "Could not read consent file: ${_}"
            }
            return @{}
        }

        # define helper function to save consent data to json file
        function SaveConsentData {
            param([hashtable]$Data, [string]$Key, [string]$Value)
            try {
                if (-not (Microsoft.PowerShell.Management\Test-Path -LiteralPath $consentDir)) {
                    Microsoft.PowerShell.Management\New-Item -Path $consentDir -ItemType Directory -Force |
                        Microsoft.PowerShell.Core\Out-Null
                }
                $Data[$Key] = $Value
                $Data | Microsoft.PowerShell.Utility\ConvertTo-Json -Depth 10 |
                    Microsoft.PowerShell.Management\Set-Content $consentFile -Encoding UTF8 -ErrorAction Stop
                return $true
            }
            catch {
                Microsoft.PowerShell.Utility\Write-Warning "Could not save consent preference: ${_}"
                return $false
            }
        }
    }

    process {

        # check if global genxdev consent is set
        $globalConsentKey = "AllowInstall_GenXdevGlobal"
        $consentData = GetConsentData

        if ($consentData[$globalConsentKey] -eq 'true' -and -not $ForceConsent) {
            Microsoft.PowerShell.Utility\Write-Verbose "Global GenXdev consent allows installation of '${ApplicationName}'."
            return $true
        }

        # check existing preference for this application
        $existingPref = $consentData[$preferenceKey]

        if ($existingPref -and -not $ForceConsent) {
            if ($existingPref -eq 'true') {
                Microsoft.PowerShell.Utility\Write-Verbose "Existing preference allows installation of '${ApplicationName}'."
                return $true
            }
            elseif ($existingPref -eq 'false') {
                Microsoft.PowerShell.Utility\Write-Warning "Installation of '${ApplicationName}' denied by user preference."
                return $false
            }
        }

        # handle automatic consent parameter
        if ($ConsentToThirdPartySoftwareInstallation) {
            if (SaveConsentData -Data $consentData -Key $preferenceKey -Value 'true') {
                Microsoft.PowerShell.Utility\Write-Verbose "Automatic consent granted and persistent allowance set for '${ApplicationName}'."
            }
            return $true
        }

        # prepare to prompt user for consent
        # display header for the consent prompt
        Microsoft.PowerShell.Utility\Write-Host "`n" -NoNewline
        Microsoft.PowerShell.Utility\Write-Host "### " -ForegroundColor Cyan -NoNewline
        Microsoft.PowerShell.Utility\Write-Host "Installation Consent Required" -ForegroundColor Cyan -NoNewline
        Microsoft.PowerShell.Utility\Write-Host " ###`n" -ForegroundColor Cyan

        # display software details
        Microsoft.PowerShell.Utility\Write-Host (
            "This PowerShell module (GenXdev) needs to install third-party software:"
        ) -ForegroundColor White
        Microsoft.PowerShell.Utility\Write-Host "  Software: " -ForegroundColor White -NoNewline
        Microsoft.PowerShell.Utility\Write-Host "${ApplicationName}" -ForegroundColor Green
        Microsoft.PowerShell.Utility\Write-Host "  Publisher: " -ForegroundColor White -NoNewline
        Microsoft.PowerShell.Utility\Write-Host "${Publisher}" -ForegroundColor Green
        Microsoft.PowerShell.Utility\Write-Host "  Source: " -ForegroundColor White -NoNewline
        Microsoft.PowerShell.Utility\Write-Host "${Source}" -ForegroundColor Green
        Microsoft.PowerShell.Utility\Write-Host "  Purpose: " -ForegroundColor White -NoNewline
        Microsoft.PowerShell.Utility\Write-Host "${Description}" -ForegroundColor Cyan

        # display legal notes
        Microsoft.PowerShell.Utility\Write-Host "`nImportant Legal and Safety Notes:" -ForegroundColor Yellow
        Microsoft.PowerShell.Utility\Write-Host (
            "• This software is provided by a third party (${Publisher}), not by GenXdev or its author."
        ) -ForegroundColor White
        Microsoft.PowerShell.Utility\Write-Host (
            "• By consenting, you agree to download and install this software at your own risk."
        ) -ForegroundColor White
        Microsoft.PowerShell.Utility\Write-Host (
            "• GenXdev makes no warranties about the software's safety, functionality, or compliance."
        ) -ForegroundColor White
        Microsoft.PowerShell.Utility\Write-Host (
            "• Third-party software may have its own license terms, privacy policies, and potential risks."
        ) -ForegroundColor White
        Microsoft.PowerShell.Utility\Write-Host (
            "• You are responsible for reviewing the software's terms and ensuring compliance."
        ) -ForegroundColor White
        Microsoft.PowerShell.Utility\Write-Host (
            "• No liability: The author of GenXdev assumes no responsibility for any issues."
        ) -ForegroundColor White
        Microsoft.PowerShell.Utility\Write-Host ""

        # set up prompt for user choice
        $title = "Installation Consent for '${ApplicationName}'"
        $message = "Do you consent to install this third-party software?"

        $choices = @(
            Microsoft.PowerShell.Utility\New-Object System.Management.Automation.Host.ChoiceDescription "&Yes", "Yes (this time only)"
            Microsoft.PowerShell.Utility\New-Object System.Management.Automation.Host.ChoiceDescription "&Always", "Always allow (set persistent preference)"
            Microsoft.PowerShell.Utility\New-Object System.Management.Automation.Host.ChoiceDescription "&Global", "Always consent with GenXdev (allow all GenXdev third-party installations)"
            Microsoft.PowerShell.Utility\New-Object System.Management.Automation.Host.ChoiceDescription "&No", "No (this time only)"
            Microsoft.PowerShell.Utility\New-Object System.Management.Automation.Host.ChoiceDescription "&Help", "Show additional help information"
        )

        $defaultChoice = 3  # Default to "No"
        $choice = $Host.UI.PromptForChoice($title, $message, $choices, $defaultChoice)

        # handle user choice
        switch ($choice) {
            0 {
                # Yes
                Microsoft.PowerShell.Utility\Write-Verbose "User consented for this installation only."
                return $true
            }
            1 {
                # Always
                if (SaveConsentData -Data $consentData -Key $preferenceKey -Value 'true') {
                    Microsoft.PowerShell.Utility\Write-Host "Persistent allowance set for '${ApplicationName}'." -ForegroundColor Green
                    Microsoft.PowerShell.Utility\Write-Verbose "User set persistent allowance for '${ApplicationName}'."
                }
                return $true
            }
            2 {
                # Global
                if (SaveConsentData -Data $consentData -Key $globalConsentKey -Value 'true') {
                    Microsoft.PowerShell.Utility\Write-Host (
                        "Global GenXdev consent enabled for all third-party software installations."
                    ) -ForegroundColor Green
                    Microsoft.PowerShell.Utility\Write-Verbose "User enabled global GenXdev consent for all third-party installations."
                }
                return $true
            }
            3 {
                # No
                Microsoft.PowerShell.Utility\Write-Host "Installation denied for this time." -ForegroundColor Yellow
                return $false
            }
            4 {
                # Help
                Microsoft.PowerShell.Utility\Write-Host "`nAdditional Help:" -ForegroundColor Cyan
                Microsoft.PowerShell.Utility\Write-Host (
                    "• Choosing 'Always' options saves your preference to: ${consentFile}"
                ) -ForegroundColor White
                Microsoft.PowerShell.Utility\Write-Host (
                    "• 'Global' option enables automatic consent for ALL GenXdev third-party installations."
                ) -ForegroundColor White
                Microsoft.PowerShell.Utility\Write-Host (
                    "• You can manually edit the JSON file or delete it to reset all preferences."
                ) -ForegroundColor White
                Microsoft.PowerShell.Utility\Write-Host (
                    "• This prompt ensures your explicit consent to avoid any automatic installations."
                ) -ForegroundColor White
                Microsoft.PowerShell.Utility\Write-Host (
                    "• The preference key for this application is: ${preferenceKey}"
                ) -ForegroundColor White
                Microsoft.PowerShell.Utility\Write-Host (
                    "• The global preference key is: ${globalConsentKey}"
                ) -ForegroundColor White
                Microsoft.PowerShell.Utility\Write-Host ""

                # re-prompt after showing help
                return GenXdev\Confirm-InstallationConsent @PSBoundParameters
            }
            default {
                Microsoft.PowerShell.Utility\Write-Warning "Invalid choice. Treating as denial."
                return $false
            }
        }
    }

    end {
    }
}
<##############################################################################
Part of PowerShell module : GenXdev.Helpers
Original cmdlet filename  : ConvertTo-LLMOpenAIApiFunctionDefinition.ps1
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

<###############################################################################
.SYNOPSIS
Converts PowerShell functions to LLM OpenAI API function definitions.

.DESCRIPTION
Takes exposed cmdlet definitions and generates LLM OpenAI API compatible function definitions
including parameter information and callback handlers.

.PARAMETER ExposedCmdLets
Array of custom objects containing function definitions and their allowed parameters to convert to LLM OpenAI API definitions.

.EXAMPLE
Get-Command Get-Process | ConvertTo-LLMOpenAIApiFunctionDefinition
#>
function ConvertTo-LLMOpenAIApiFunctionDefinition {

    [CmdletBinding()]
    [OutputType([System.Collections.Generic.List[hashtable]])]
    [System.Diagnostics.CodeAnalysis.SuppressMessageAttribute('PSUseDeclaredVarsMoreThanAssignments', '')]
    param(
        # Array of custom objects containing function definitions and their allowed parameters
        [Parameter(
            Mandatory = $false,
            Position = 0,
            ValueFromPipeline = $true,
            HelpMessage = 'PowerShell commands to convert to tool functions'
        )]
        [GenXdev.Helpers.ExposedCmdletDefinition[]] $ExposedCmdLets = @()
    )

    begin {

        # Initialize collection to store the converted function definitions
        [System.Collections.Generic.List[hashtable]] $result = Microsoft.PowerShell.Utility\New-Object 'System.Collections.Generic.List[System.Collections.Hashtable]'

        Microsoft.PowerShell.Utility\Write-Verbose 'Starting conversion of PowerShell functions to LLM OpenAI API format'
    }


    process {

        if ($ExposedCmdLets) {

            foreach ($currentCommand in $ExposedCmdLets) {

                # Retrieve detailed command information from PowerShell
                $commandInfo = Microsoft.PowerShell.Core\Get-Command -Name ($currentCommand.Name) -ErrorAction SilentlyContinue | Microsoft.PowerShell.Utility\Select-Object -First 1

                # Skip if command doesn't exist in the current session
                if ($null -eq $commandInfo) {

                    Microsoft.PowerShell.Utility\Write-Verbose "Command $($currentCommand.Name) not found. Skipping."
                    continue
                }

                # Extract allowed parameters for this command
                $allowedParams = @($currentCommand.AllowedParams);

                Microsoft.PowerShell.Utility\Write-Verbose "Processing command: $($currentCommand.Name)"

                # Store command info for callback handling
                $callback = $commandInfo

                # Collections to track parameter metadata
                [System.Collections.Generic.List[string]]$requiredParams = @()
                $propertiesTable = @{}

                # Process each parameter of the command
                @($commandInfo.Parameters.GetEnumerator()).Value | Microsoft.PowerShell.Core\ForEach-Object {
                    $parameter = $_

                    [System.Management.Automation.ParameterMetadata]$parameter = $_

                    # Check if parameter is in allowed list and extract type information
                    $found = $false
                    $typeStr = ''
                    foreach ($allowedParam in $allowedParams) {

                        # Parse parameter name and optional type override
                        $parts = "$allowedParam".Split('=');
                        $name = $parts[0].Trim()

                        if ($parameter.Name -like $name) {

                            $found = $true
                            if ($parts.Length -gt 1) {

                                $typeStr = $parts[1].Trim()
                            }
                            break
                        }
                    }

                    # Skip parameters not in allowed list
                    if (-not $found) {

                        return
                    }

                    # Track return type information
                    $returnType = '';
                    $powershell_returnType = '';

                    # Process parameter attributes
                    $parameter.Attributes | Microsoft.PowerShell.Core\ForEach-Object {
                        # Handle mandatory parameters
                        if ($_.TypeId.FullName -eq 'System.Management.Automation.ParameterAttribute') {

                            if ($_.Mandatory -and $requiredParams.Contains($parameter.Name) -eq $false) {

                                $null = $requiredParams.Add($parameter.Name)
                            }
                        }
                        # Extract return type information
                        if ($_.TypeId.FullName -eq 'System.Management.Automation.OutputTypeAttribute') {

                            [System.Management.Automation.OutputTypeAttribute] $p = $_

                            $powershell_returnType = $p.Type
                            $returnType = GenXdev\Convert-DotNetTypeToLLMType -DotNetType $powershell_returnType.FullName
                        }
                    }

                    # Attempt to get parameter help message from command documentation
                    $helpMessage = $null;

                    try {
                        $moduleName = $commandInfo.ModuleName
                        if ($moduleName -like 'GenXdev.*') {

                            $moduleName = (($commandInfo.ModuleName.Split('.') | Microsoft.PowerShell.Utility\Select-Object -First 2) -Join '.')
                        }

                        if ([string]::IsNullOrWhiteSpace($moduleName)) {

                            $moduleName = ''
                        }
                        else {

                            $moduleName = "$moduleName\"
                        }

                        $help = Microsoft.PowerShell.Core\Get-Help -Name "$ModuleName$($commandInfo.Name)" -Parameter ($parameter.Name) -ErrorAction SilentlyContinue -WarningAction SilentlyContinue
                        if ($null -eq $help) {

                            $help = Microsoft.PowerShell.Core\Get-Help -Name ($commandInfo.Name) -Parameter ($parameter.Name) -ErrorAction SilentlyContinue -WarningAction SilentlyContinue
                        }

                        if ($null -ne $help) {

                            $paramHelp = $help ? "$(($help.description | Microsoft.PowerShell.Utility\Out-String).trim())" : $null
                            if (-not [string]::IsNullOrWhiteSpace($paramHelp)) {

                                $helpMessage = $paramHelp
                            }
                        }
                    }
                    catch {

                        $helpMessage = $null
                        Microsoft.PowerShell.Utility\Write-Verbose "Could not get help message for parameter $($parameter.Name)"
                    }

                    # Build parameter property dictionary with type information and description
                    if ([string]::IsNullOrWhiteSpace($helpMessage)) {

                        $propertiesTable."$($parameter.Name)" = @{

                            type            = [string]::IsNullOrWhiteSpace($typeStr) ? (GenXdev\Convert-DotNetTypeToLLMType -DotNetType $parameter.ParameterType.FullName) : $typeStr
                            powershell_type = $parameter.ParameterType.FullName
                        }
                    }
                    else {
                        $propertiesTable."$($parameter.Name)" = @{

                            type            = [string]::IsNullOrWhiteSpace($typeStr) ? (GenXdev\Convert-DotNetTypeToLLMType -DotNetType $parameter.ParameterType.FullName) : $typeStr
                            powershell_type = $parameter.ParameterType.FullName
                            description     = $helpMessage
                        }
                    }

                    if ($parameter.ParameterType.IsEnum) {

                        $paramDefinition = $propertiesTable."$($parameter.Name)"
                        $paramDefinition.type = 'string'
                        $paramDefinition.enum = @($parameter.ParameterType.GetEnumNames())
                    }

                    # Handle switch parameters explicitly - ensure they get proper boolean/object type
                    if ($parameter.ParameterType.FullName -eq 'System.Management.Automation.SwitchParameter') {
                        $paramDefinition = $propertiesTable."$($parameter.Name)"
                        # Use boolean if no type override is specified, otherwise respect the override
                        if ([string]::IsNullOrWhiteSpace($typeStr)) {
                            # Try 'boolean' first, fallback to 'object' if needed
                            # This can be configured based on the target system's capabilities
                            $paramDefinition.type = 'boolean'  # Use 'boolean' as default for broader compatibility
                        }
                        Microsoft.PowerShell.Utility\Write-Verbose "Switch parameter '$($parameter.Name)' set to type '$($paramDefinition.type)'"
                    }

                    # Handle array and list types
                    $paramDefinition = $propertiesTable."$($parameter.Name)"
                    $paramType = $parameter.ParameterType
                    if ($paramType.IsArray) {
                        $elementType = $paramType.GetElementType().FullName
                        $itemType = GenXdev\Convert-DotNetTypeToLLMType -DotNetType $elementType
                        $paramDefinition.type = 'array'
                        $paramDefinition.items = @{ type = $itemType }
                    }
                    elseif ($paramType.IsGenericType -and $paramType.Name -like 'List`1*') {
                        $elementType = $paramType.GetGenericArguments()[0].FullName
                        $itemType = GenXdev\Convert-DotNetTypeToLLMType -DotNetType $elementType
                        $paramDefinition.type = 'array'
                        $paramDefinition.items = @{ type = $itemType }
                    }
                }

                # Get function-level help message and normalize module name
                $functionHelpMessage = $commandInfo.Description

                $moduleName = $commandInfo.ModuleName

                if ($moduleName -like 'GenXdev.*') {

                    $moduleName = (($commandInfo.ModuleName.Split('.') | Microsoft.PowerShell.Utility\Select-Object -First 2) -Join '.')
                }

                if ([string]::IsNullOrWhiteSpace($moduleName)) {

                    $moduleName = ''
                }
                else {

                    $moduleName = "$moduleName\"
                }

                if (-not ([string]::IsNullOrWhiteSpace($currentCommand.Description))) {

                    $functionHelpMessage = $currentCommand.Description
                }
                elseif ([string]::IsNullOrWhiteSpace($functionHelpMessage)) {
                    try {

                        $functionHelpMessage = "$((Microsoft.PowerShell.Core\Get-Help ("$ModuleName$($commandInfo.Name)")).description.Text)"
                    }
                    catch {
                        $functionHelpMessage = 'No description available.'
                    }
                }

                # Check if function requires confirmation based on configuration
                $name = $commandInfo.Name
                $found = $false;
                $allCmdletNames = @($name.ToLowerInvariant(), ($moduleName.ToLowerInvariant() + $name.ToLowerInvariant()))
                $NoConfirmationToolFunctionNames = @($ExposedCmdLets | Microsoft.PowerShell.Core\Where-Object -Property Confirm -EQ $false | Microsoft.PowerShell.Utility\Select-Object -ExpandProperty Name)

                foreach ($AllowedCmdLet in $NoConfirmationToolFunctionNames) {

                    if ($AllowedCmdLet.ToLowerInvariant() -in $allCmdletNames) {

                        $found = $true
                        break;
                    }
                }

                # Construct the final function definition object
                $newFunctionDefinition = @{
                    type     = 'function'
                    function = @{
                        name        = "$name"
                        description = "$functionHelpMessage"
                        parameters  = @{
                            type       = 'object'
                            properties = $propertiesTable
                            required   = $requiredParams
                        }
                        callback    = $callback
                    }
                }

                # Add return type information if available
                if (-not [string]::IsNullOrWhiteSpace($powershell_returnType)) {

                    $newFunctionDefinition.function.powershell_returnType = $powershell_returnType
                }

                if (-not [string]::IsNullOrWhiteSpace($returnType)) {

                    $newFunctionDefinition.function.returnType = $returnType
                }

                # Add the completed function definition to results
                $null = $result.Add($newFunctionDefinition)
            }
        }
    }

    end {

        # Return the collection of converted function definitions
        Microsoft.PowerShell.Utility\Write-Verbose "Completed conversion with $($result.Count) function definitions"
        Microsoft.PowerShell.Utility\Write-Output $result
    }
}
<##############################################################################
Part of PowerShell module : GenXdev.Helpers
Original cmdlet filename  : EnsureGenXdev.ps1
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
Ensures all GenXdev modules are properly loaded by invoking all Ensure*
cmdlets.

.DESCRIPTION
This function retrieves all GenXdev cmdlets that start with "Ensure" or
"Optimize-Ensure" (for c# cmdlets) and
executes each one to guarantee that all required GenXdev modules and
dependencies are properly loaded and available for use. Any failures during
the execution are caught and displayed as informational messages.

Optionally, it can also download and load all NuGet packages defined in the
packages.json manifest file.

.PARAMETER Force
Forces the execution of ensure operations even if they appear to be already
completed.

.PARAMETER DownloadAllNugetPackages
Downloads and loads all NuGet packages defined in the packages.json manifest
file.

.PARAMETER ForceConsent
Force a consent prompt even if a preference is already set for third-party
software installation, overriding any saved consent preferences.

.PARAMETER ConsentToThirdPartySoftwareInstallation
Automatically consent to third-party software installation and set a persistent
preference flag for all packages, bypassing interactive consent prompts.

.EXAMPLE
EnsureGenXdev

This command runs all available Ensure* cmdlets to initialize the GenXdev
environment.

.EXAMPLE
EnsureGenXdev -DownloadAllNugetPackages

This command runs all Ensure* cmdlets and also downloads and loads all NuGet
packages defined in the packages.json manifest file.

.EXAMPLE
EnsureGenXdev -DownloadAllNugetPackages -ConsentToThirdPartySoftwareInstallation

This command runs all Ensure* cmdlets and downloads NuGet packages.
#>
function EnsureGenXdev {

    [CmdletBinding()]
    # PSScriptAnalyzer rule exception: SideBySide and ShowWindow are used by Get-Variable
    [Diagnostics.CodeAnalysis.SuppressMessage('PSUseDeclaredVarsMoreThanAssignments', '')]

    param(
        [parameter(
            Mandatory = $false,
            HelpMessage = "Forces the execution of ensure operations even if they appear to be already completed"
        )]
        [Switch] $Force,
        [parameter(
            Mandatory = $false,
            HelpMessage = "Downloads and loads all NuGet packages defined in the packages.json manifest file"
        )]
        [Switch] $DownloadAllNugetPackages,

        [Parameter(
            Mandatory = $false,
            HelpMessage = 'Force a consent prompt even if preference is set for third-party software installation.'
        )]
        [switch] $ForceConsent,

        [Parameter(
            Mandatory = $false,
            HelpMessage = 'Automatically consent to third-party software installation and set persistent flag for all packages.'
        )]
        [switch] $ConsentToThirdPartySoftwareInstallation
    )

    begin {

        # initialize variables for local scope
        $sideBySide = $true
        $showWindow = $true

        # retrieve all ensure cmdlets from genxdev helpers module
        Microsoft.PowerShell.Utility\Write-Verbose (
            'Retrieving all Ensure* cmdlets from GenXdev.Helpers module'
        )
    }

    process {

        # ensure vs code installation is available
        try {
            # request consent for VSCode installation using embedded consent
            $vscodeParams = GenXdev\Copy-IdenticalParamValues `
                -BoundParameters $PSBoundParameters `
                -FunctionName 'GenXdev\Confirm-InstallationConsent' `
                -DefaultValues (
                Microsoft.PowerShell.Utility\Get-Variable -Scope Local `
                    -ErrorAction SilentlyContinue
            )

            # Set specific parameters for VSCode
            $vscodeParams['ApplicationName'] = 'Visual Studio Code'
            $vscodeParams['Source'] = 'Winget'
            $vscodeParams['Description'] = 'Code editor required for GenXdev development environment'
            $vscodeParams['Publisher'] = 'Microsoft'

            $consent = GenXdev\Confirm-InstallationConsent @vscodeParams

            if (-not $consent) {
                Microsoft.PowerShell.Utility\Write-Warning "VSCode installation consent denied. Some GenXdev features may not be available."
            }
            else {
                GenXdev\EnsureVSCodeInstallation
            }
        }
        catch {
            Microsoft.PowerShell.Utility\Write-Warning "Failed to check VSCode installation consent: $($_.Exception.Message)"
        }

        # ensure Playwright browser binaries are available
        try {
            $pwParams = GenXdev\Copy-IdenticalParamValues `
                -BoundParameters $PSBoundParameters `
                -FunctionName 'ensurePlaywright' `
                -DefaultValues (
                Microsoft.PowerShell.Utility\Get-Variable -Scope Local `
                    -ErrorAction SilentlyContinue
            )

            GenXdev\ensurePlaywright @pwParams
        }
        catch {
            Microsoft.PowerShell.Utility\Write-Warning "Failed to ensure Playwright browsers: $($_.Exception.Message)"
        }

        # get all ensure cmdlets and execute each one (excluding self to prevent infinite recursion)
        (@(GenXdev\Get-GenXDevCmdlet Ensure*) + @(GenXdev\Get-GenXDevCmdlet Optimize-Ensure*)) |
            Microsoft.PowerShell.Core\ForEach-Object name |
            Microsoft.PowerShell.Core\Where-Object {

                # exclude self and other specific cmdlets to prevent recursion
                (@('EnsureGenXdev', 'EnsureGenXdev').IndexOf($_) -lt 0) -and
                ($_ -ne "EnsureNuGetAssembly") -and
                ($_ -ne "Optimize-EnsureNuGetAssembly")

            } |
            Microsoft.PowerShell.Core\ForEach-Object {

                try {

                    # skip empty or whitespace entries
                    if ([string]::IsNullOrWhiteSpace($_)) { return }

                    # execute the current ensure cmdlet
                    Microsoft.PowerShell.Utility\Write-Verbose (
                        "Executing cmdlet: $_"
                    )

                    # copy identical parameter values for the target function
                    $params = GenXdev\Copy-IdenticalParamValues `
                        -BoundParameters $PSBoundParameters `
                        -FunctionName $_ `
                        -DefaultValues (Microsoft.PowerShell.Utility\Get-Variable -Scope Local -ErrorAction SilentlyContinue)

                    # get the command and invoke it with the copied parameters
                    $command = Microsoft.PowerShell.Core\Get-Command -Name $_
                    & $command @params
                }
                catch {

                    # capture and display any execution failures
                    $errorMessage = "Failed to ensure GenXdev module: $_"

                    Microsoft.PowerShell.Utility\Write-Host -Message $errorMessage -ForegroundColor Cyan
                }
            }

        # download all NuGet packages if requested
        if ($DownloadAllNugetPackages) {
            try {
                # request consent for NuGet packages installation using embedded consent
                $nugetParams = GenXdev\Copy-IdenticalParamValues `
                    -BoundParameters $PSBoundParameters `
                    -FunctionName 'GenXdev\Confirm-InstallationConsent' `
                    -DefaultValues (
                    Microsoft.PowerShell.Utility\Get-Variable -Scope Local `
                        -ErrorAction SilentlyContinue
                )

                # Set specific parameters for NuGet packages
                $nugetParams['ApplicationName'] = 'NuGet Packages'
                $nugetParams['Source'] = 'PowerShell Gallery'
                $nugetParams['Description'] = 'Third-party .NET assemblies and libraries for GenXdev functionality'
                $nugetParams['Publisher'] = 'Various'

                $nugetConsent = GenXdev\Confirm-InstallationConsent @nugetParams

                if (-not $nugetConsent) {
                    Microsoft.PowerShell.Utility\Write-Warning "NuGet packages installation consent denied. Some GenXdev features may not be available."
                    return
                }

                Microsoft.PowerShell.Utility\Write-Verbose (
                    'Processing all NuGet packages from packages.json'
                )

                # construct path to packages.json in GenXdev.PackageManagement module
                $packagesJsonPath = GenXdev\Expand-Path (
                    "$($MyInvocation.MyCommand.Module.ModuleBase)\packages.json"
                )

                # check if the packages configuration file exists
                if (Microsoft.PowerShell.Management\Test-Path -LiteralPath $packagesJsonPath) {
                    Microsoft.PowerShell.Utility\Write-Verbose (
                        "Loading packages from: $packagesJsonPath"
                    )

                    # load and parse the package configuration
                    $packages = Microsoft.PowerShell.Management\Get-Content -LiteralPath $packagesJsonPath -ErrorAction Stop |
                        Microsoft.PowerShell.Utility\ConvertFrom-Json -ErrorAction Stop -AsHashtable

                    # iterate through each package key and ensure it's loaded
                    foreach ($packageKey in $packages.Keys) {
                        try {
                            Microsoft.PowerShell.Utility\Write-Verbose (
                                "Ensuring NuGet package: $packageKey"
                            )

                            # ensure the specific nuget assembly is loaded using embedded consent
                            $ensureParams = GenXdev\Copy-IdenticalParamValues `
                                -BoundParameters $PSBoundParameters `
                                -FunctionName 'GenXdev\EnsureNuGetAssembly' `
                                -DefaultValues (
                                Microsoft.PowerShell.Utility\Get-Variable -Scope Local `
                                    -ErrorAction SilentlyContinue
                            )

                            $ensureParams['PackageKey'] = $packageKey
                            GenXdev\EnsureNuGetAssembly @ensureParams
                        }
                        catch {
                            # capture and display package loading failures
                            $errorMessage = (
                                "Failed to ensure NuGet package: $packageKey - $($_.Exception.Message)"
                            )
                            Microsoft.PowerShell.Utility\Write-Host -Message $errorMessage -ForegroundColor Cyan
                        }
                    }
                }
                else {
                    # warn when packages configuration is not found
                    Microsoft.PowerShell.Utility\Write-Warning (
                        "packages.json not found at: $packagesJsonPath"
                    )
                }
            }
            catch {
                # capture and display general nuget processing failures
                $errorMessage = "Failed to process NuGet packages: $($_.Exception.Message)"
                Microsoft.PowerShell.Utility\Write-Host -Message $errorMessage -ForegroundColor Cyan
            }
        }

        # define the types of ai queries that require model initialization
        $queryTypes = @(
            'SimpleIntelligence',
            'Knowledge',
            'Pictures',
            'TextTranslation',
            'Coding',
            'ToolUse'
        )
    }

    end {
    }
}
<##############################################################################
Part of PowerShell module : GenXdev.Helpers
Original cmdlet filename  : EnsureNuGetAssembly.ps1
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
Downloads and loads .NET assemblies from NuGet packages based on package key or ID.

.DESCRIPTION
This function ensures that the specified NuGet package assemblies are downloaded
and loaded into the current PowerShell session. It supports automatic detection
and loading with fallback to a JSON manifest for configuration overrides,
handling edge cases like stub dependencies (e.g., SQLite). Installation uses
the dotnet CLI exclusively for reliable package management and loads assemblies
directly from the global NuGet cache without copying. Lazy loading checks if
the type is already available before proceeding.

.PARAMETER PackageKey
The unique identifier for the package, either a key from the packages.json
manifest or the direct NuGet PackageId.

.PARAMETER ManifestPath
Optional path to the packages.json manifest. Defaults to module root if omitted.

.PARAMETER Version
Optional specific version to install and load. If omitted, uses highest from
JSON or latest from NuGet.

.PARAMETER TypeName
Optional .NET type name to verify after loading (e.g., 'Microsoft.Data.Sqlite.SQLiteConnection').

.PARAMETER ForceLatest
Switch to fallback to latest version if specified version fails.

.PARAMETER Destination
Optional custom destination path for package installation. Defaults to persistent local or global cache.

.PARAMETER Description
Optional description of the software and its purpose for consent prompts. If not provided, a default description is used.

.PARAMETER Publisher
Optional publisher or vendor of the software for consent prompts. If not provided, attempts to read from packages.json or uses default.

.PARAMETER ForceConsent
Force a consent prompt even if a preference is already set for the package.

.PARAMETER ConsentToThirdPartySoftwareInstallation
Automatically consent to third-party software installation and set a persistent preference flag, bypassing interactive prompts.

.EXAMPLE
EnsureNuGetAssembly -PackageKey "Microsoft.Data.Sqlite.Core"

.EXAMPLE
EnsureNuGetAssembly -PackageKey "Microsoft.Playwright" -Version "1.54.0" -TypeName "Microsoft.Playwright.Playwright"

.EXAMPLE
EnsureNuGetAssembly -PackageKey "Microsoft.Data.Sqlite.Core" -ConsentToThirdPartySoftwareInstallation
#>
function EnsureNuGetAssembly {

    [CmdletBinding()]

    param(
        [Parameter(Mandatory = $true, Position = 0,
            HelpMessage = "Package key from packages.json or direct NuGet PackageId.")]
        [string] $PackageKey,

        [Parameter(Mandatory = $false,
            HelpMessage = "Path to packages.json; defaults to module root if omitted.")]
        [string] $ManifestPath,

        [Parameter(Mandatory = $false,
            HelpMessage = "Specific version; if omitted, use highest from JSON or latest.")]
        [string] $Version,

        [Parameter(Mandatory = $false,
            HelpMessage = "TypeName to verify loading.")]
        [string] $TypeName,

        [Parameter(Mandatory = $false,
            HelpMessage = "Fallback to latest if exact version fails.")]
        [switch] $ForceLatest,

        [Parameter(Mandatory = $false,
            HelpMessage = "Custom install destination; defaults to local persistent or global cache.")]
        [string] $Destination,

        [Parameter(Mandatory = $false,
            HelpMessage = "Optional description of the software and its purpose for consent.")]
        [string] $Description,

        [Parameter(Mandatory = $false,
            HelpMessage = "Optional publisher or vendor of the software for consent.")]
        [string] $Publisher,

        [Parameter(Mandatory = $false,
            HelpMessage = "Force a prompt even if preference is set for consent.")]
        [switch] $ForceConsent,

        [Parameter(Mandatory = $false,
            HelpMessage = "Automatically consent to third-party software installation and set persistent flag.")]
        [switch] $ConsentToThirdPartySoftwareInstallation
    )
    begin {
        # Lazy check if type already loaded
        if ($TypeName -and ($TypeName -as [type])) {
            return
        }

        # Fully qualified cmdlet usage for explicitness
        Microsoft.PowerShell.Utility\Write-Verbose "Starting EnsureNuGetAssembly for ${PackageKey}"

        # Preferred TFMs for .NET 9+ (PowerShell 7.5+)
        $frameworkPreference = @(
            'net9.0', 'net8.0', 'net7.0', 'net6.0',
            'netstandard2.1', 'netstandard2.0'
        )

        # Add older fallbacks from old function
        $frameworkFallback = @(
            'netcoreapp3.1', 'net461', 'net46',
            'net451', 'net45'
        )

        # Module root using custom helper
        $moduleRoot = GenXdev\Expand-Path "$($MyInvocation.MyCommand.Module.ModuleBase)\"

        # Default manifest path if not provided
        if (-not $ManifestPath) {
            $ManifestPath = Microsoft.PowerShell.Management\Join-Path $moduleRoot 'packages.json'
        }

        Microsoft.PowerShell.Utility\Write-Verbose "Using manifest path: ${ManifestPath}"

        # Default destination: persistent local as in old
        if (-not $Destination) {
            $Destination = Microsoft.PowerShell.Management\Join-Path $env:LOCALAPPDATA 'GenXdev\NuGetPackages'
            Microsoft.PowerShell.Utility\Write-Verbose "Creating default destination directory: ${Destination}"
            $null = Microsoft.PowerShell.Management\New-Item -Path $Destination -ItemType Directory -Force
        }
        else {
            Microsoft.PowerShell.Utility\Write-Verbose "Using provided destination: ${Destination}"
        }

        # Global cache fallback path (cross-platform)
        $globalCache = if ($env:OS -eq 'Windows_NT') {
            "$env:USERPROFILE\.nuget\packages"
        }
        else {
            "$env:HOME/.nuget/packages"
        }
        Microsoft.PowerShell.Utility\Write-Verbose "Global cache path: ${globalCache}"

        # Load JSON if exists
        $packages = $null
        $pkgConfig = $null
        if (Microsoft.PowerShell.Management\Test-Path -LiteralPath $ManifestPath) {
            Microsoft.PowerShell.Utility\Write-Verbose "Manifest file exists; loading content from ${ManifestPath}"
            try {
                $packages = Microsoft.PowerShell.Management\Get-Content -LiteralPath $ManifestPath |
                    Microsoft.PowerShell.Utility\ConvertFrom-Json -AsHashtable
                Microsoft.PowerShell.Utility\Write-Verbose "Successfully parsed manifest JSON"
            }
            catch {
                throw "Failed to parse manifest at ${ManifestPath}: $($_.Exception.Message)"
            }

            # Find config by key or PackageId
            $actualKey = $PackageKey
            if ($packages.ContainsKey($PackageKey)) {
                $pkgConfig = $packages[$PackageKey]
            }
            else {
                foreach ($key in $packages.Keys) {
                    if ($packages[$key].PackageId -eq $PackageKey) {
                        $actualKey = $key
                        $pkgConfig = $packages[$key]
                        break
                    }
                }
            }

            if ($pkgConfig) {
                Microsoft.PowerShell.Utility\Write-Verbose "Found JSON config for ${actualKey}"
            }
            else {
                Microsoft.PowerShell.Utility\Write-Verbose "No JSON config found for ${PackageKey}; treating as direct PackageId"
            }
        }
        else {
            Microsoft.PowerShell.Utility\Write-Verbose "Manifest path does not exist: ${ManifestPath}; proceeding without JSON config"
        }

        # Determine PackageId
        $PackageId = if ($pkgConfig -and $pkgConfig.PackageId) {
            $pkgConfig.PackageId
        }
        else {
            $PackageKey
        }
        Microsoft.PowerShell.Utility\Write-Verbose "Determined PackageId: ${PackageId}"

        # Version determination
        if (-not $Version) {
            if ($pkgConfig -and $pkgConfig.Versions) {
                # Use highest version from JSON
                $Version = ($pkgConfig.Versions.Keys | Microsoft.PowerShell.Utility\Sort-Object -Descending) |
                    Microsoft.PowerShell.Utility\Select-Object -First 1
                Microsoft.PowerShell.Utility\Write-Verbose "Using highest JSON version: ${Version}"
            }
            elseif ($pkgConfig -and $pkgConfig.Version) {
                $Version = $pkgConfig.Version
                Microsoft.PowerShell.Utility\Write-Verbose "Using JSON version: ${Version}"
            }
            elseif ($pkgConfig -and $pkgConfig.DefaultVersion) {
                $Version = $pkgConfig.DefaultVersion
                Microsoft.PowerShell.Utility\Write-Verbose "Using JSON default version: ${Version}"
            }
            else {
                # Find latest version using dotnet list command
                Microsoft.PowerShell.Utility\Write-Verbose "No version specified or in JSON; querying latest from NuGet using dotnet"
                try {
                    $null = & dotnet list package --outdated --include-prerelease --source https://api.nuget.org/v3/index.json 2>$null
                    # For simplicity, we'll use a default "latest" approach via dotnet add package without version
                    $Version = "latest"
                    Microsoft.PowerShell.Utility\Write-Verbose "Will use latest version available"
                }
                catch {
                    Microsoft.PowerShell.Utility\Write-Warning "Could not determine latest version, will use dotnet's default behavior"
                    $Version = "latest"
                }
            }
        }
        else {
            Microsoft.PowerShell.Utility\Write-Verbose "Using provided version: ${Version}"
        }

        # Version-specific config from JSON
        $versionConfig = if ($pkgConfig -and $pkgConfig.Versions -and $Version -and $pkgConfig.Versions.ContainsKey($Version)) {
            $pkgConfig.Versions[$Version]
        }
        else {
            $pkgConfig
        }
        Microsoft.PowerShell.Utility\Write-Verbose "Version-specific config loaded (if any)"

        # Assemblies from JSON or default
        $Assemblies = if ($versionConfig -and $versionConfig.Assemblies) {
            $versionConfig.Assemblies
        }
        else {
            @("$PackageId.dll")
        }
        Microsoft.PowerShell.Utility\Write-Verbose "Assemblies to load: $($Assemblies -join ', ')"

        # Native copy from JSON
        $nativeCopy = if ($versionConfig -and $versionConfig.NativeCopy) {
            $versionConfig.NativeCopy
        }
        if ($nativeCopy) {
            Microsoft.PowerShell.Utility\Write-Verbose "Native copy config found: From $($nativeCopy.From) to $($nativeCopy.To)"
        }
        else {
            Microsoft.PowerShell.Utility\Write-Verbose "No native copy config"
        }

        # RID for natives
        $rid = [System.Runtime.InteropServices.RuntimeInformation]::RuntimeIdentifier
        Microsoft.PowerShell.Utility\Write-Verbose "Runtime Identifier (RID): ${rid}"

        # TLS fix for retries
        Microsoft.PowerShell.Utility\Write-Verbose "Setting SecurityProtocol to Tls12"
        [Net.ServicePointManager]::SecurityProtocol = [Net.SecurityProtocolType]::Tls12



        # Check and install dotnet SDK if missing (for fallback)
        Microsoft.PowerShell.Utility\Write-Verbose "Checking for dotnet CLI"
        if (-not (Microsoft.PowerShell.Core\Get-Command dotnet -ErrorAction SilentlyContinue)) {
            Microsoft.PowerShell.Utility\Write-Host "dotnet CLI not found; attempting install via winget if available..."
            if (Microsoft.PowerShell.Core\Get-Command winget -ErrorAction SilentlyContinue) {
                # Request consent for .NET SDK installation using embedded consent logic
                $sdkDescription = if ($Description) { $Description } else { "Required for NuGet package management and compilation" }

                # Use Copy-IdenticalParamValues to pass parameters to Confirm-InstallationConsent
                $sdkConsentParams = GenXdev\Copy-IdenticalParamValues `
                    -BoundParameters $PSBoundParameters `
                    -FunctionName 'GenXdev\Confirm-InstallationConsent' `
                    -DefaultValues (Microsoft.PowerShell.Utility\Get-Variable -Scope Local -ErrorAction SilentlyContinue)

                # Set fixed values for .NET SDK consent
                $sdkConsentParams['ApplicationName'] = "Microsoft .NET SDK 10"
                $sdkConsentParams['Source'] = 'Winget'
                $sdkConsentParams['Description'] = $sdkDescription
                $sdkConsentParams['Publisher'] = "Microsoft"

                $consentResult = GenXdev\Confirm-InstallationConsent @sdkConsentParams

                if (-not $consentResult) {
                    throw "Installation consent denied for Microsoft .NET SDK 10. Cannot proceed without dotnet CLI. Please install .NET SDK 9+ manually from https://dotnet.microsoft.com/download/dotnet/9.0"
                }

                Microsoft.PowerShell.Utility\Write-Verbose "Invoking winget install Microsoft.DotNet.SDK.9 --accept-package-agreements --accept-source-agreements"
                winget install Microsoft.DotNet.SDK.10 --accept-package-agreements --accept-source-agreements
                # Reload PATH after install
                Microsoft.PowerShell.Utility\Write-Verbose "Reloading PATH environment variable"
                $env:Path = [System.Environment]::GetEnvironmentVariable("Path", "Machine") + ";" + [System.Environment]::GetEnvironmentVariable("Path", "User")
                Microsoft.PowerShell.Utility\Write-Verbose "PATH reloaded"
            }
            else {
                throw "dotnet CLI required for fallback but not found, and winget not available for auto-install. Please install .NET SDK 9+ manually from https://dotnet.microsoft.com/download/dotnet/9.0"
            }
            # Re-check after install
            if (-not (Microsoft.PowerShell.Core\Get-Command dotnet -ErrorAction SilentlyContinue)) {
                throw "dotnet install failed; manual installation required."
            }
            Microsoft.PowerShell.Utility\Write-Verbose "dotnet CLI installed successfully"
        }
        else {
            Microsoft.PowerShell.Utility\Write-Verbose "dotnet CLI already available"
        }

        # Loaded tracking as in old
        $loadedAssemblies = @()
    }
    process {
        # Lazy check if type already loaded
        if ($TypeName -and ($TypeName -as [type])) {
            Microsoft.PowerShell.Utility\Write-Verbose "${TypeName} already loaded; skipping"
            return
        }
        try {
            # Package dir - use local destination, not global cache
            $packageLower = $PackageId.ToLower()

            # Find existing package installation (if any) when version is "latest"
            $pkgDir = $null
            $installed = $false

            if ($Version -eq "latest") {
                # Look for existing main package first, then fallback to any related package
                $mainPkgs = Microsoft.PowerShell.Management\Get-ChildItem $Destination -Directory |
                    Microsoft.PowerShell.Core\Where-Object { $_.Name -match "^${packageLower}\.\d+(\.\d+)*(\.\d+)*$" } |
                    Microsoft.PowerShell.Utility\Sort-Object Name -Descending

                if ($mainPkgs) {
                    $pkgDir = $mainPkgs[0].FullName
                    Microsoft.PowerShell.Utility\Write-Verbose "Found existing main package: ${pkgDir}"
                }
                else {
                    # Fallback to any related package
                    $existingPkgs = Microsoft.PowerShell.Management\Get-ChildItem $Destination -Directory |
                        Microsoft.PowerShell.Core\Where-Object { $_.Name -like "${packageLower}.*" } |
                        Microsoft.PowerShell.Utility\Sort-Object Name -Descending

                    if ($existingPkgs) {
                        $pkgDir = $existingPkgs[0].FullName
                        Microsoft.PowerShell.Utility\Write-Verbose "Found existing related package: ${pkgDir}"
                    }
                }
            }
            else {
                # Use specific version directory
                $pkgDir = Microsoft.PowerShell.Management\Join-Path $Destination "$packageLower.$Version"
            }

            if (-not $pkgDir) {
                $pkgDir = Microsoft.PowerShell.Management\Join-Path $Destination "$packageLower.$Version"
            }

            Microsoft.PowerShell.Utility\Write-Verbose "Package directory (local destination): ${pkgDir}"

            # Check if properly installed with validation
            if (Microsoft.PowerShell.Management\Test-Path -LiteralPath $pkgDir) {
                Microsoft.PowerShell.Utility\Write-Verbose "Package directory exists at ${pkgDir}, validating completeness..."

                # For stub-based packages like SQLite, check if assemblies can be found and loaded
                # rather than checking if they exist in the main package directory
                $allAssembliesFound = $true
                $deps = Microsoft.PowerShell.Management\Get-ChildItem $Destination -Directory -ErrorAction SilentlyContinue |
                    Microsoft.PowerShell.Core\Where-Object { $_.Name -match '\.[\d\.]+$' }
                if (-not $deps) { $deps = @() }

                foreach ($asm in $Assemblies) {
                    $found = $false

                    # Check main package
                    $directPath = Microsoft.PowerShell.Management\Join-Path $pkgDir $asm
                    if (Microsoft.PowerShell.Management\Test-Path -LiteralPath $directPath) {
                        $found = $true
                        continue
                    }

                    # Check in lib subdirectories of main package
                    $libDir = Microsoft.PowerShell.Management\Join-Path $pkgDir "lib"
                    if (Microsoft.PowerShell.Management\Test-Path -LiteralPath $libDir) {
                        $libSubDirs = Microsoft.PowerShell.Management\Get-ChildItem $libDir -Directory -ErrorAction SilentlyContinue
                        foreach ($subDir in $libSubDirs) {
                            $asmPath = Microsoft.PowerShell.Management\Join-Path $subDir.FullName $asm
                            if (Microsoft.PowerShell.Management\Test-Path -LiteralPath $asmPath) {
                                $found = $true
                                break
                            }
                        }
                    }

                    # Check in dependencies/stub packages
                    if (-not $found) {
                        foreach ($dep in $deps) {
                            $depAsm = Microsoft.PowerShell.Management\Get-ChildItem $dep.FullName -Recurse -Filter $asm.Split('/')[-1] -ErrorAction SilentlyContinue |
                                Microsoft.PowerShell.Utility\Select-Object -First 1
                            if ($depAsm) {
                                $found = $true
                                Microsoft.PowerShell.Utility\Write-Verbose "Assembly ${asm} found in dependency ${dep.Name}"
                                break
                            }
                        }
                    }

                    if (-not $found) {
                        Microsoft.PowerShell.Utility\Write-Verbose "Assembly ${asm} not found in package or dependencies"
                        $allAssembliesFound = $false
                        break
                    }
                }

                if ($allAssembliesFound) {
                    $installed = $true
                    Microsoft.PowerShell.Utility\Write-Verbose "Package validation successful - all assemblies found"
                }
                else {
                    Microsoft.PowerShell.Utility\Write-Verbose "Package validation failed - missing assemblies"
                }
            }
            else {
                Microsoft.PowerShell.Utility\Write-Verbose "Package directory does not exist; proceeding to install"
            }            # Lazy check if type already loaded
            if ($TypeName -and ($TypeName -as [type])) {
                Microsoft.PowerShell.Utility\Write-Verbose "${TypeName} already loaded; skipping"
                return
            }
            else {
                if ($TypeName) {
                    Microsoft.PowerShell.Utility\Write-Verbose "${TypeName} not loaded; proceeding"
                }
            }

            if (-not $installed) {
                # Request consent for NuGet package installation using embedded consent logic
                $packageDescription = if ($Description) { $Description } else { "Required .NET assembly for PowerShell module functionality" }
                $packagePublisher = if ($Publisher) { $Publisher } elseif ($pkgConfig -and $pkgConfig.Publisher) { $pkgConfig.Publisher } else { "NuGet Package Author" }

                # Use Copy-IdenticalParamValues to pass parameters to Confirm-InstallationConsent
                $consentParams = GenXdev\Copy-IdenticalParamValues `
                    -BoundParameters $PSBoundParameters `
                    -FunctionName 'GenXdev\Confirm-InstallationConsent' `
                    -DefaultValues (Microsoft.PowerShell.Utility\Get-Variable -Scope Local -ErrorAction SilentlyContinue)

                # Map PackageKey to ApplicationName and set fixed Source
                $consentParams['ApplicationName'] = $PackageId
                $consentParams['Source'] = 'NuGet'
                $consentParams['Description'] = $packageDescription
                $consentParams['Publisher'] = $packagePublisher

                $consentResult = GenXdev\Confirm-InstallationConsent @consentParams

                if (-not $consentResult) {
                    throw "Installation consent denied for package ${PackageId}. Cannot load required assemblies without this package."
                }

                Microsoft.PowerShell.Utility\Write-Host "One-time only just-in-time Installation of ${PackageId}, started, one moment please..." -ForegroundColor Cyan
                Microsoft.PowerShell.Utility\Write-Host "Installing ${PackageId} ${Version}..."

                # Install using dotnet CLI
                $tempDir = Microsoft.PowerShell.Management\Join-Path ([System.IO.Path]::GetTempPath()) ([Guid]::NewGuid())
                Microsoft.PowerShell.Utility\Write-Verbose "Creating temporary directory for dotnet installation: ${tempDir}"
                Microsoft.PowerShell.Management\New-Item -Path $tempDir -ItemType Directory -Force | Microsoft.PowerShell.Core\Out-Null
                Microsoft.PowerShell.Utility\Write-Verbose "Pushing location to ${tempDir}"
                Microsoft.PowerShell.Management\Push-Location -LiteralPath $tempDir
                try {
                    Microsoft.PowerShell.Utility\Write-Verbose "Invoking dotnet new classlib -n dummy --force"
                    & dotnet new classlib -n dummy --force | Microsoft.PowerShell.Core\Out-Null
                    Microsoft.PowerShell.Management\Set-Location dummy

                    $actualVersion = $Version
                    if ($Version -eq "latest") {
                        $addCmd = "dotnet add package $PackageId"
                        Microsoft.PowerShell.Utility\Write-Verbose "Invoking ${addCmd}"
                        & dotnet add package $PackageId | Microsoft.PowerShell.Core\Out-Null
                    }
                    else {
                        $addCmd = "dotnet add package $PackageId --version $Version"
                        Microsoft.PowerShell.Utility\Write-Verbose "Invoking ${addCmd}"
                        & dotnet add package $PackageId --version $Version | Microsoft.PowerShell.Core\Out-Null
                    }
                    # Always discover the actual installed version from project.assets.json
                    $objDir = Microsoft.PowerShell.Management\Join-Path (Microsoft.PowerShell.Management\Get-Location) "obj"
                    $assetsFile = Microsoft.PowerShell.Management\Join-Path $objDir "project.assets.json"
                    if (Microsoft.PowerShell.Management\Test-Path -LiteralPath $assetsFile) {
                        $assets = Microsoft.PowerShell.Management\Get-Content -LiteralPath $assetsFile | Microsoft.PowerShell.Utility\ConvertFrom-Json
                        if ($assets.libraries) {
                            foreach ($libName in $assets.libraries.PSObject.Properties.Name) {
                                $parts = $libName -split '/'
                                if ($parts.Length -eq 2 -and $parts[0].ToLower() -eq $packageLower) {
                                    $rawVersion = $parts[1]
                                    $actualVersion = $rawVersion
                                    Microsoft.PowerShell.Utility\Write-Verbose "Discovered installed version: ${actualVersion}"
                                    break
                                }
                            }
                        }
                    }
                    if (-not $actualVersion -or $actualVersion -eq "latest") {
                        throw "Could not determine actual version installed for ${PackageId}"
                    }

                    Microsoft.PowerShell.Utility\Write-Verbose "Invoking dotnet restore"
                    & dotnet restore | Microsoft.PowerShell.Core\Out-Null

                    # Copy main package and all dependencies from global cache to local destination
                    $cacheDir = Microsoft.PowerShell.Management\Join-Path $globalCache "$packageLower\$actualVersion"
                    Microsoft.PowerShell.Utility\Write-Verbose "Checking main package cache directory: ${cacheDir}"

                    if (-not (Microsoft.PowerShell.Management\Test-Path -LiteralPath $cacheDir)) {
                        throw "Package not found in global cache at: ${cacheDir}"
                    }
                    if ($cacheDir) {
                        # Calculate the correct target directory name using actual version
                        $targetPkgDir = Microsoft.PowerShell.Management\Join-Path $Destination "$packageLower.$actualVersion"

                        # Remove target directory if it exists to avoid nested structure
                        if (Microsoft.PowerShell.Management\Test-Path -LiteralPath $targetPkgDir) {
                            Microsoft.PowerShell.Management\Remove-Item -LiteralPath $targetPkgDir -Recurse -Force -ErrorAction SilentlyContinue
                        }

                        Microsoft.PowerShell.Utility\Write-Verbose "Copying main package from ${cacheDir} to ${targetPkgDir}"
                        Microsoft.PowerShell.Management\Copy-Item $cacheDir -Destination $targetPkgDir -Recurse -Force
                        Microsoft.PowerShell.Utility\Write-Verbose "Main package copied to ${targetPkgDir}"

                        # Update pkgDir to the actual location after copying
                        $pkgDir = $targetPkgDir                        # Also copy dependencies by parsing the project assets
                        if (Microsoft.PowerShell.Management\Test-Path -LiteralPath $assetsFile) {
                            Microsoft.PowerShell.Utility\Write-Verbose "Reading project assets for dependencies: ${assetsFile}"
                            $assets = Microsoft.PowerShell.Management\Get-Content -LiteralPath $assetsFile | Microsoft.PowerShell.Utility\ConvertFrom-Json
                            if ($assets.libraries) {
                                foreach ($libName in $assets.libraries.PSObject.Properties.Name) {
                                    if ($libName -ne "$packageLower/$actualVersion") {
                                        $parts = $libName -split '/'
                                        if ($parts.Length -eq 2) {
                                            $depName = $parts[0].ToLower()
                                            $depVersion = $parts[1]

                                            $depCacheDir = Microsoft.PowerShell.Management\Join-Path $globalCache "$depName\$depVersion"
                                            $depDestDir = Microsoft.PowerShell.Management\Join-Path $Destination "$depName.$depVersion"

                                            if ((Microsoft.PowerShell.Management\Test-Path -LiteralPath $depCacheDir) -and (-not (Microsoft.PowerShell.Management\Test-Path -LiteralPath $depDestDir))) {
                                                Microsoft.PowerShell.Utility\Write-Verbose "Copying dependency ${depName} ${depVersion} from cache"
                                                Microsoft.PowerShell.Management\Copy-Item $depCacheDir -Destination $Destination -Recurse -Force
                                                $copiedDepDir = Microsoft.PowerShell.Management\Join-Path $Destination (Microsoft.PowerShell.Management\Split-Path $depCacheDir -Leaf)
                                                if (Microsoft.PowerShell.Management\Test-Path -LiteralPath $copiedDepDir) {
                                                    Microsoft.PowerShell.Management\Rename-Item $copiedDepDir $depDestDir -Force -ErrorAction SilentlyContinue
                                                }
                                            }
                                        }
                                    }
                                }
                            }
                        }
                    }
                    else {
                        throw "Cache directory not found: ${cacheDir}"
                    }
                }
                finally {
                    # Store assets file content before cleaning up temp directory
                    Microsoft.PowerShell.Management\Pop-Location
                    Microsoft.PowerShell.Utility\Write-Verbose "Cleaning up temp directory: ${tempDir}"
                    Microsoft.PowerShell.Management\Remove-Item $tempDir -Recurse -Force -ErrorAction SilentlyContinue
                }

                if (-not (Microsoft.PowerShell.Management\Test-Path -LiteralPath $pkgDir)) {
                    throw "Package not found at ${pkgDir}"
                }
                else {
                    Microsoft.PowerShell.Utility\Write-Verbose "Package confirmed at ${pkgDir}"
                }
            }

            # Parse .nuspec for files (medium priority, after install)
            $nuspecPath = Microsoft.PowerShell.Management\Join-Path $pkgDir "$PackageId.nuspec"
            Microsoft.PowerShell.Utility\Write-Verbose "Checking for .nuspec at ${nuspecPath}"
            $nuspecFiles = @()
            if (Microsoft.PowerShell.Management\Test-Path -LiteralPath $nuspecPath) {
                Microsoft.PowerShell.Utility\Write-Verbose "Loading .nuspec XML"
                $nuspecXml = [xml](Microsoft.PowerShell.Management\Get-Content -LiteralPath $nuspecPath)
                $nuspecFiles = $nuspecXml.package.files.file | Microsoft.PowerShell.Utility\Select-Object -ExpandProperty target
                Microsoft.PowerShell.Utility\Write-Verbose "Extracted $($nuspecFiles.Count) file targets from .nuspec"
            }
            else {
                Microsoft.PowerShell.Utility\Write-Verbose "No .nuspec found"
            }

            # Get deps for stub search - look in local destination
            Microsoft.PowerShell.Utility\Write-Verbose "Searching for dependent packages in local destination: ${Destination}"
            try {
                $allPkgs = Microsoft.PowerShell.Management\Get-ChildItem $Destination -Directory -ErrorAction SilentlyContinue |
                    Microsoft.PowerShell.Core\Where-Object { $_.Name -match '\.[\d\.]+$' }
                if (-not $allPkgs) { $allPkgs = @() }
            }
            catch {
                Microsoft.PowerShell.Utility\Write-Verbose "Failed to get dependent packages: $($_.Exception.Message)"
                $allPkgs = @()
            }
            Microsoft.PowerShell.Utility\Write-Verbose "Found $($allPkgs.Count) dependent packages"            # Skip AssemblyResolve handler to prevent stack overflow issues
            # Will be re-enabled once recursion issues are fully resolved
            Microsoft.PowerShell.Utility\Write-Verbose "Skipping AssemblyResolve event handler to prevent recursion"

            # Load assemblies
            $script:resolveDirs = @()
            foreach ($asm in $Assemblies) {
                $asmPath = $null
                $searched = @()

                # JSON relative path
                $asmFullPath = Microsoft.PowerShell.Management\Join-Path $pkgDir $asm
                Microsoft.PowerShell.Utility\Write-Verbose "Checking JSON relative path for ${asm}: ${asmFullPath}"
                if (Microsoft.PowerShell.Management\Test-Path -LiteralPath $asmFullPath) {
                    $asmPath = $asmFullPath
                    Microsoft.PowerShell.Utility\Write-Verbose "Found at JSON relative path"
                }
                else {
                    # Auto TFM scan
                    foreach ($fw in $frameworkPreference + $frameworkFallback) {
                        $libPath = Microsoft.PowerShell.Management\Join-Path $pkgDir "lib\$fw"
                        $searched += $libPath
                        Microsoft.PowerShell.Utility\Write-Verbose "Scanning TFM path: ${libPath}"
                        if (Microsoft.PowerShell.Management\Test-Path -LiteralPath $libPath) {
                            $foundAsm = Microsoft.PowerShell.Management\Get-ChildItem $libPath -Filter $asm.Split('/')[-1] -Recurse |
                                Microsoft.PowerShell.Utility\Select-Object -First 1
                            if ($foundAsm) {
                                $asmPath = $foundAsm.FullName
                                Microsoft.PowerShell.Utility\Write-Verbose "Found in TFM ${fw} at ${asmPath}"
                                break
                            }
                        }
                    }

                    # Fallback recursive (as in old)
                    if (-not $asmPath) {
                        Microsoft.PowerShell.Utility\Write-Verbose "Performing recursive search in ${pkgDir} for ${asm.Split('/')[-1]}"
                        $asmPath = Microsoft.PowerShell.Management\Get-ChildItem $pkgDir -Recurse -Filter $asm.Split('/')[-1] |
                            Microsoft.PowerShell.Utility\Select-Object -First 1
                        if ($asmPath) {
                            $searched += "recursive in ${pkgDir}"
                            Microsoft.PowerShell.Utility\Write-Verbose "Found in recursive search at ${asmPath.FullName}"
                        }
                    }

                    # Search deps/stubs in local destination
                    if (-not $asmPath) {
                        Microsoft.PowerShell.Utility\Write-Verbose "Searching dependencies for ${asm.Split('/')[-1]}"
                        foreach ($dep in $allPkgs) {
                            $depAsm = Microsoft.PowerShell.Management\Get-ChildItem $dep.FullName -Recurse -Filter $asm.Split('/')[-1] |
                                Microsoft.PowerShell.Utility\Select-Object -First 1
                            if ($depAsm) {
                                $asmPath = $depAsm.FullName
                                Microsoft.PowerShell.Utility\Write-Verbose "Found in dependency ${dep.Name} at ${asmPath}"
                                break
                            }
                            $searched += "dep ${dep.Name}"
                        }
                    }
                }

                if ($asmPath) {
                    try {
                        Microsoft.PowerShell.Utility\Write-Verbose "Loading assembly with Add-Type -Path ${asmPath}"
                        Microsoft.PowerShell.Utility\Add-Type -Path $asmPath
                        $script:resolveDirs += Microsoft.PowerShell.Management\Split-Path $asmPath -Parent
                        $loadedAssemblies += $asmPath
                        Microsoft.PowerShell.Utility\Write-Verbose "Loaded $asm from ${asmPath}"
                    }
                    catch {
                        throw "Load failed for ${asm}: $($_.Exception.Message). Searched: $($searched -join ', ')"
                    }
                }
                else {
                    throw "Assembly $asm not found. Searched: $($searched -join ', ')"
                }
            }

            # Native handling - copy native dependencies to managed assembly directories AFTER loading assemblies
            # Collect all directories where managed assemblies are loaded
            $managedAssemblyDirs = @()
            foreach ($asmPath in $loadedAssemblies) {
                $asmDir = Microsoft.PowerShell.Management\Split-Path $asmPath -Parent
                if ($managedAssemblyDirs -notcontains $asmDir) {
                    $managedAssemblyDirs += $asmDir
                }
            }

            # If no managed assemblies loaded, fall back to script directory
            if ($managedAssemblyDirs.Count -eq 0) {
                $managedAssemblyDirs = @($MyInvocation.MyCommand.Module.ModuleBase)
            }

            # Collect all native files we need to deploy
            $nativeFileSources = @()

            # Check main package for native files
            $nativeDir = Microsoft.PowerShell.Management\Join-Path $pkgDir "runtimes\$rid\native"
            if (Microsoft.PowerShell.Management\Test-Path -LiteralPath $nativeDir) {
                $nativeFiles = Microsoft.PowerShell.Management\Get-ChildItem $nativeDir -File
                foreach ($nativeFile in $nativeFiles) {
                    $nativeFileSources += @{
                        SourcePath = $nativeFile.FullName
                        FileName   = $nativeFile.Name
                        Source     = "main package"
                    }
                }
            }

            # Check stub packages for native files
            $stubPattern = "stub.$($packageLower)*"
            $stubPkgs = Microsoft.PowerShell.Management\Get-ChildItem $Destination -Directory |
                Microsoft.PowerShell.Core\Where-Object { $_.Name -like $stubPattern }

            foreach ($stubPkg in $stubPkgs) {
                $stubNativeDir = Microsoft.PowerShell.Management\Join-Path $stubPkg.FullName "runtimes\$rid\native"
                if (Microsoft.PowerShell.Management\Test-Path -LiteralPath $stubNativeDir) {
                    $nativeFiles = Microsoft.PowerShell.Management\Get-ChildItem $stubNativeDir -File
                    foreach ($nativeFile in $nativeFiles) {
                        $nativeFileSources += @{
                            SourcePath = $nativeFile.FullName
                            FileName   = $nativeFile.Name
                            Source     = "stub package $($stubPkg.Name)"
                        }
                    }
                }
            }

            # Check dependencies for native files
            foreach ($dep in $allPkgs) {
                $depNativeDir = Microsoft.PowerShell.Management\Join-Path $dep.FullName "runtimes\$rid\native"
                if (Microsoft.PowerShell.Management\Test-Path -LiteralPath $depNativeDir) {
                    $nativeFiles = Microsoft.PowerShell.Management\Get-ChildItem $depNativeDir -File
                    foreach ($nativeFile in $nativeFiles) {
                        $nativeFileSources += @{
                            SourcePath = $nativeFile.FullName
                            FileName   = $nativeFile.Name
                            Source     = "dependency $($dep.Name)"
                        }
                    }
                }
            }

            # Deploy native files to all managed assembly directories
            if ($nativeFileSources.Count -gt 0) {
                Microsoft.PowerShell.Utility\Write-Verbose "Found $($nativeFileSources.Count) native files to deploy"

                foreach ($targetDir in $managedAssemblyDirs) {
                    Microsoft.PowerShell.Utility\Write-Verbose "Deploying native dependencies to managed assembly directory: ${targetDir}"

                    foreach ($nativeSource in $nativeFileSources) {
                        $targetPath = Microsoft.PowerShell.Management\Join-Path $targetDir $nativeSource.FileName

                        # Only copy if target doesn't exist or source is newer
                        $shouldCopy = $true
                        if (Microsoft.PowerShell.Management\Test-Path -LiteralPath $targetPath) {
                            $sourceLastWrite = (Microsoft.PowerShell.Management\Get-Item $nativeSource.SourcePath).LastWriteTime
                            $targetLastWrite = (Microsoft.PowerShell.Management\Get-Item $targetPath).LastWriteTime
                            $shouldCopy = $sourceLastWrite -gt $targetLastWrite
                        }

                        if ($shouldCopy) {
                            Microsoft.PowerShell.Utility\Write-Verbose "Copying $($nativeSource.FileName) from $($nativeSource.Source) to ${targetDir}"
                            Microsoft.PowerShell.Management\Copy-Item $nativeSource.SourcePath $targetPath -Force
                        }
                        else {
                            Microsoft.PowerShell.Utility\Write-Verbose "Skipping $($nativeSource.FileName) - already up to date in ${targetDir}"
                        }
                    }
                }
            }
            else {
                Microsoft.PowerShell.Utility\Write-Verbose "No native dependencies required"
            }

            # Verify type
            if ($TypeName -and -not ($TypeName -as [type])) {
                throw "${TypeName} not loaded"
            }
            elseif ($TypeName) {
                Microsoft.PowerShell.Utility\Write-Verbose "${TypeName} verified as loaded"
            }
        }
        catch {
            Microsoft.PowerShell.Utility\Write-Warning "Failure; preserving ${pkgDir} for debug"
            throw
        }
    }
    end {
        Microsoft.PowerShell.Utility\Write-Verbose "Ensured ${PackageKey} with $($loadedAssemblies.Count) assemblies"
    }
}
<##############################################################################
Part of PowerShell module : GenXdev.Helpers
Original cmdlet filename  : GenerateMasonryLayoutHtml.ps1
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
Generates a responsive masonry layout HTML gallery from image data.

.DESCRIPTION
Creates an interactive HTML gallery with responsive masonry grid layout for
displaying images. Features include:
- Responsive grid layout that adapts to screen size
- Image tooltips showing descriptions and keywords
- Click-to-copy image path functionality
- Clean modern styling with hover effects

.PARAMETER Images
Array of image objects containing metadata. Each object requires:
- path: String with full filesystem path to image
- keywords: String array of descriptive tags
- description: Object containing short_description and long_description

.PARAMETER FilePath
Optional output path for the HTML file. If omitted, returns HTML as string.

.EXAMPLE
Create gallery from image array and save to file
$images = @(
    @{
        path = "C:\photos\sunset.jpg"
        keywords = @("nature", "sunset", "landscape")
        description = @{
            short_description = "Mountain sunset"
            long_description = "Beautiful sunset over mountain range"
        }
    }
)
GenerateMasonryLayoutHtml -Images $images -FilePath "C:\output\gallery.html"

.EXAMPLE
Generate HTML string without saving
$html = GenerateMasonryLayoutHtml $images
#>
function GenerateMasonryLayoutHtml {

    [CmdletBinding()]
    [OutputType([System.String])]
    param (
        [Parameter(
            Mandatory = $true,
            Position = 0,
            ValueFromPipeline = $true,
            HelpMessage = 'Array of image objects with path, keywords and description'
        )]
        [System.Collections.Generic.IEnumerable[GenXdev.Helpers.ImageSearchResult]] $Images,
        [Parameter(
            Mandatory = $false,
            Position = 1,
            HelpMessage = 'Output path for the generated HTML file'
        )]
        [string]$FilePath = $null,
        [Parameter(
            Mandatory = $false,
            HelpMessage = 'Title for the gallery'
        )]
        [string]$Title = 'Photo Gallery',
        [Parameter(
            Mandatory = $false,
            HelpMessage = 'Description for the gallery'
        )]
        [string]$Description = 'Hover over images to see face recognition, object detection, and scene classification data',
        [Parameter(
            Mandatory = $false,
            HelpMessage = 'Whether editing is enabled'
        )]
        [Switch]$CanEdit = $false,
        [Parameter(
            Mandatory = $false,
            HelpMessage = 'Whether deletion is enabled'
        )]
        [Switch]$CanDelete = $false,
        [Parameter(
            Mandatory = $false,
            HelpMessage = 'Embed images as base64 data URLs instead of file:// URLs for better portability'
        )]
        [Switch]$EmbedImages = $false,
        [Parameter(
            Mandatory = $false,
            HelpMessage = 'Show only pictures in a rounded rectangle, no text below.'
        )]
        [Alias('NoMetadata', 'OnlyPictures')]
        [switch] $ShowOnlyPictures,
        [Parameter(
            Mandatory = $false,
            HelpMessage = 'Auto-scroll the page by this many pixels per second (null to disable)'
        )]
        [int]$AutoScrollPixelsPerSecond = $null,
        [Parameter(
            Mandatory = $false,
            HelpMessage = 'Animate rectangles (objects/faces) in visible range, cycling every 300ms'
        )]
        [switch]$AutoAnimateRectangles,
        [Parameter(
            Mandatory = $false,
            HelpMessage = 'Force single column layout (centered, 1/3 screen width)'
        )]
        [switch]$SingleColumnMode = $false,
        [Parameter(
            Mandatory = $false,
            HelpMessage = 'Prefix to prepend to each image path (e.g. for remote URLs)'
        )]
        [string]$ImageUrlPrefix = '',
        [Parameter(
            Mandatory = $false,
            HelpMessage = 'Number of images to load per page (for dynamic loading)'
        )]
        [int]$PageSize = 20,
        [Parameter(
            Mandatory = $false,
            HelpMessage = 'Maximum number of images to load for print mode'
        )]
        [int]$MaxPrintImages = 50,
        [Parameter(
            Mandatory = $false,
            HelpMessage = 'IntersectionObserver rootMargin for infinite scroll trigger (e.g. "1200px")'
        )]
        [string]$RootMargin = '1200px',
        [Parameter(
            Mandatory = $false,
            HelpMessage = 'IntersectionObserver threshold for infinite scroll trigger'
        )]
        [double]$Threshold = 0.1
    )

    begin {
        $templatePath = "$($MyInvocation.MyCommand.Module.ModuleBase)\masonary.html"

        # Load System.Web for HTML encoding
        Microsoft.PowerShell.Utility\Add-Type -AssemblyName System.Web

        Microsoft.PowerShell.Utility\Write-Verbose "Starting HTML generation for $($Images.Count) images using template: $templatePath"

        # Verify template file exists
        if (-not (Microsoft.PowerShell.Management\Test-Path -LiteralPath $templatePath)) {

            throw "Template file not found: $templatePath"
        }

        # Helper function to convert image to base64 data URL
        function ConvertTo-Base64DataUrl {
            param(
                [Parameter(Mandatory = $true)]
                [string]$ImagePath
            )

            try {
                # Check if file exists
                if (-not (Microsoft.PowerShell.Management\Test-Path -LiteralPath $ImagePath)) {

                    Microsoft.PowerShell.Utility\Write-Verbose "Image file not found: $ImagePath"
                    return $null
                }

                # Determine MIME type based on file extension
                $extension = [System.IO.Path]::GetExtension($ImagePath).ToLower()
                $mimeType = switch ($extension) {
                    '.jpg'  { 'image/jpeg' }
                    '.gif'  { 'image/gif' }
                    '.jpeg' { 'image/jpeg' }
                    '.png'  { 'image/png' }
                    '.bmp'   { 'image/bmp' }
                    '.webp'  { 'image/webp' }
                    '.tiff'  { 'image/tiff' }
                    '.tif'   { 'image/tiff' }
                    default {
                        Microsoft.PowerShell.Utility\Write-Verbose "Unsupported image format: $extension"
                        return $null
                    }
                }

                # Read image file and convert to base64
                $imageBytes = [System.IO.File]::ReadAllBytes($ImagePath)
                $base64String = [System.Convert]::ToBase64String($imageBytes)

                # Create data URL
                $dataUrl = "data:$mimeType;base64,$base64String"

                Microsoft.PowerShell.Utility\Write-Verbose "Converted image to base64 data URL: $ImagePath ($(($imageBytes.Length / 1KB).ToString('F1')) KB)"

                return $dataUrl
            }
            catch {
                Microsoft.PowerShell.Utility\Write-Verbose "Failed to convert image to base64: $ImagePath - $_"
                return $null
            }
        }
    }

    process {
        # Read the HTML template
        Microsoft.PowerShell.Utility\Write-Verbose "Reading HTML template from: $templatePath"
        $html = Microsoft.PowerShell.Management\Get-Content -LiteralPath $templatePath -Raw -Encoding UTF8

        # Convert image paths for browser compatibility
        if ($EmbedImages) {
            Microsoft.PowerShell.Utility\Write-Verbose 'Converting image paths to base64 data URLs'
        } else {
            Microsoft.PowerShell.Utility\Write-Verbose 'Converting image paths to file:// URLs'
        }

        [System.Collections.Generic.List[GenXdev.Helpers.ImageSearchResult]] $processedImages = @()
        foreach ($image in $Images) {
            $imageCopy = $image.PSObject.Copy()
            if ($imageCopy.path) {
                # Store original path for copy functionality
                $imageCopy | Microsoft.PowerShell.Utility\Add-Member -MemberType NoteProperty -Name 'originalPath' -Value $imageCopy.path -Force

                # If ImageUrlPrefix is provided, always use it + filename (with forward slashes)
                if ($ImageUrlPrefix) {
                    $prefix = $ImageUrlPrefix
                    if ($prefix[-1] -ne '/') { $prefix += '/' }
                    $filename = [System.IO.Path]::GetFileName($imageCopy.path)
                    $imageCopy.path = ($prefix + $filename) -replace '\\', '/'
                }
                # else, just normalize slashes
                else {
                    $imageCopy.path = $imageCopy.path -replace '\\', '/'
                }

                if ($EmbedImages) {
                    # Convert to base64 data URL for embedded display
                    $dataUrl = ConvertTo-Base64DataUrl -ImagePath $imageCopy.path
                    if ($null -ne $dataUrl) {
                        $imageCopy.path = $dataUrl
                    }
                }
            }
            $processedImages.Add($imageCopy)
        }

        # Convert images array to JSON with proper escaping
        Microsoft.PowerShell.Utility\Write-Verbose "Converting $($processedImages.Count) images to JSON"

        $imagesJson = [GenXdev.Helpers.ImageSearchResultSerialize]::ToJson(($processedImages))

        if ([string]::IsNullOrWhiteSpace($imagesJson) -or $imagesJson.Substring(0, 1) -ne '[') {

            # If the JSON does not start with an array, wrap it in an array
            $imagesJson = "[$imagesJson]"
        }

        # Escape the JSON for JavaScript string literal
        $escapedJson = $imagesJson | Microsoft.PowerShell.Utility\ConvertTo-Json -Compress
        # Replace the placeholder with actual image data
        Microsoft.PowerShell.Utility\Write-Verbose "Replacing placeholder JSON.parse(`"[]`") with actual image data"
        $html = "$html".Replace('images: JSON.parse("[]")', "images: JSON.parse($escapedJson)")

        # Replace other template variables if they exist
        if (-not [String]::IsNullOrWhiteSpace($Title)) {
            $escapedTitle = $Title | Microsoft.PowerShell.Utility\ConvertTo-Json
            # Replace JS property (mydata.title)
            $html = $html -replace '(title\s*:\s*)"[^"]*"', "`$1$escapedTitle"
            # Replace <title> tag
            $html = $html -replace '(<title>)(.*?)(</title>)', "`$1$Title`$3"
            Microsoft.PowerShell.Utility\Write-Verbose "Updated title to: $Title"
        }
        if (-not [String]::IsNullOrWhiteSpace($Description)) {
            $escapedDescription = $Description | Microsoft.PowerShell.Utility\ConvertTo-Json
            # Replace JS property (mydata.description)
            $html = $html -replace '(description\s*:\s*)"[^"]*"', "`$1$escapedDescription"
            # Replace meta description
            $html = $html -replace '(<meta name="description" content=")(.*?)(")', "`$1$Description`$3"
            Microsoft.PowerShell.Utility\Write-Verbose "Updated description to: $Description"
        }
        if ($CanEdit) {
            $html = "$html".Replace('canEdit: false', 'canEdit: true')
            Microsoft.PowerShell.Utility\Write-Verbose "Updated canEdit to: $CanEdit"
        }
        if ($CanDelete) {
            $html = "$html".Replace('canDelete: false', 'canDelete: true')
            Microsoft.PowerShell.Utility\Write-Verbose "Updated canDelete to: $CanDelete"
        }
        if ($ShowOnlyPictures) {
            $html = "$html".Replace('showOnlyPictures: false,', 'showOnlyPictures: true,')
            Microsoft.PowerShell.Utility\Write-Verbose "Updated showOnlyPictures to: $ShowOnlyPictures"
        }

        # Inject new mydata properties for dynamic loading
        $html = "$html".Replace('pageSize: 20', "pageSize: $PageSize")
        $html = "$html".Replace('maxPrintImages: 50', "maxPrintImages: $MaxPrintImages")
        $html = "$html".Replace('rootMargin: "1200px"', "rootMargin: `"$RootMargin`"")
        $html = "$html".Replace('threshold: 0.1', "threshold: $Threshold")

        # Inject new mydata properties
        if ($null -ne $AutoScrollPixelsPerSecond) {
            $autoScrollValue = if ($null -ne $AutoScrollPixelsPerSecond) { $AutoScrollPixelsPerSecond } else { 'null' }
            $html = "$html".replace('AutoScrollPixelsPerSecond: null', "AutoScrollPixelsPerSecond: $autoScrollValue")
        }
        if ($AutoAnimateRectangles) {
            $autoAnimateValue = if ($AutoAnimateRectangles) { 'true' } else { 'false' }
            $html = "$html".replace('AutoAnimateRectangles: false', "AutoAnimateRectangles: $autoAnimateValue")
        }
        # Inject SingleColumnMode property
        $singleColumnValue = if ($SingleColumnMode) { 'true' } else { 'false' }
        $html = "$html".replace('SingleColumnMode: false', "SingleColumnMode: $singleColumnValue")
    }

    end {
        # Either return HTML string or save to file based on parameters
        if ([string]::IsNullOrWhiteSpace($FilePath)) {
            Microsoft.PowerShell.Utility\Write-Verbose 'Returning HTML as string output'
            return $html
        }
        else {
            Microsoft.PowerShell.Utility\Write-Verbose "Saving HTML gallery to: $FilePath"
            $html | Microsoft.PowerShell.Utility\Out-File  (GenXdev\Expand-Path $FilePath -CreateDirectory) -Encoding utf8
        }
    }
}
<##############################################################################
Part of PowerShell module : GenXdev.Helpers
Original cmdlet filename  : Get-AIDefaultLLMSettings.ps1
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
Gets all available default LLM settings configurations for AI operations in
GenXdev.AI.

.DESCRIPTION
Retrieves the complete set of default Large Language Model (LLM) settings
configured for AI operations. Results can be filtered by query type, model
identifier, API endpoint, or API key. Supports both session-based and
persistent preference-based retrieval, with options to clear session state
or bypass it entirely to read directly from stored preferences.

.PARAMETER LLMQueryType
The type of LLM query to get settings for. This determines which default
settings to use when no custom settings are found. Valid values include
SimpleIntelligence, Knowledge, Pictures, TextTranslation, Coding, and ToolUse.

.PARAMETER Model
Filter configurations by model identifier or pattern.

.PARAMETER ApiEndpoint
Filter configurations by API endpoint URL.

.PARAMETER ApiKey
Filter configurations by API key.

.PARAMETER PreferencesDatabasePath
Database path for preference data files.

.PARAMETER SessionOnly
Use alternative settings stored in session for AI preferences like Language,
Image collections, etc.

.PARAMETER ClearSession
Clear the session setting (Global variable) before retrieving.

.PARAMETER SkipSession
When specified, skips session settings and retrieves only from persistent
preferences or defaults.

.EXAMPLE
Get-AIDefaultLLMSettings -LLMQueryType "Coding"

Gets all available default configurations for Coding query type.


#>
function Get-AIDefaultLLMSettings {

    [CmdletBinding()]
    [Diagnostics.CodeAnalysis.SuppressMessageAttribute('PSUseSingularNouns', '')]
    [OutputType([hashtable[]])]
    [Diagnostics.CodeAnalysis.SuppressMessageAttribute('PSAvoidGlobalVars', '')]
    [Diagnostics.CodeAnalysis.SuppressMessageAttribute('PSUseDeclaredVarsMoreThanAssignments', '')]

    param(
        [Parameter(
            Position = 0,
            Mandatory = $false,
            HelpMessage = 'The type of LLM query to get settings for'
        )]
        [ValidateSet(
            'SimpleIntelligence',
            'Knowledge',
            'Pictures',
            'TextTranslation',
            'Coding',
            'ToolUse'
        )]
        [string] $LLMQueryType = 'SimpleIntelligence',
        [Parameter(
            Mandatory = $false,
            HelpMessage = 'Filter configurations by model identifier or pattern'
        )]
        [string] $Model,
        [Parameter(
            Mandatory = $false,
            HelpMessage = 'Filter configurations by API endpoint URL'
        )]
        [string] $ApiEndpoint,
        [Parameter(
            Mandatory = $false,
            HelpMessage = 'Filter configurations by API key'
        )]
        [string] $ApiKey,
        [Parameter(
            Mandatory = $false,
            HelpMessage = 'Indicates that LLM has no support for JSON schemas'
        )]
        [string] $NoSupportForJsonSchema,
        [Parameter(
            Mandatory = $false,
            HelpMessage = ('Use alternative settings stored in session for AI ' +
                'preferences like Language, Image collections, etc')
        )]
        [switch] $SessionOnly,
        [Parameter(
            Mandatory = $false,
            HelpMessage = 'Clear the session setting (Global variable) before retrieving'
        )]
        [switch] $ClearSession,
        [Parameter(
            Mandatory = $false,
            HelpMessage = 'Database path for preference data files'
        )]
        [Alias('DatabasePath')]
        [string] $PreferencesDatabasePath,
        [Parameter(
            Mandatory = $false,
            HelpMessage = ('Skip session settings and get from preferences ' +
                'or defaults only')
        )]
        [Alias('FromPreferences')]
        [switch] $SkipSession
    )

    begin {

        # log provided parameter values for filtering
        $filterParams = @()
        if ($PSBoundParameters.ContainsKey('Model')) { $filterParams += "Model=$Model" }
        if ($PSBoundParameters.ContainsKey('ApiEndpoint')) { $filterParams += "ApiEndpoint=$ApiEndpoint" }
        if ($PSBoundParameters.ContainsKey('ApiKey')) { $filterParams += 'ApiKey=(redacted)' }
        if ($PSBoundParameters.ContainsKey('TimeoutSeconds')) { $filterParams += "TimeoutSeconds=$TimeoutSeconds" }

        if ($filterParams.Count -gt 0) {
            Microsoft.PowerShell.Utility\Write-Verbose "Filter parameters: $($filterParams -join ', ')"
        }
        else {
            Microsoft.PowerShell.Utility\Write-Verbose 'No filter parameters provided'
        }

        # handle clearing session variables first if requested
        if ($ClearSession) {

            Microsoft.PowerShell.Utility\Write-Verbose 'Clearing session variables (ClearSession=true)'
        }
    }

    process {

        try {
            Microsoft.PowerShell.Utility\Write-Verbose 'Loading defaults from JSON configuration...'

            # construct path to default settings JSON file
            $defaultsPath = Microsoft.PowerShell.Management\Join-Path `
                $MyInvocation.MyCommand.Module.ModuleBase 'defaultsettings.json'

            Microsoft.PowerShell.Utility\Write-Verbose "JSON path: $defaultsPath"

            # read and parse JSON content
            $jsonContent = Microsoft.PowerShell.Management\Get-Content `
                -LiteralPath $defaultsPath `
                -Raw `
                -ErrorAction Stop

            # convert JSON to PowerShell object
            $defaultsJson = $jsonContent | `
                    Microsoft.PowerShell.Utility\ConvertFrom-Json `
                    -ErrorAction Stop

            Microsoft.PowerShell.Utility\Write-Verbose 'JSON loaded successfully'

            # extract configurations for the specified query type
            $defaultConfigs = $null
            if ($defaultsJson.PSObject.Properties.Name -contains $LLMQueryType) {

                $defaultConfigs = $defaultsJson.$LLMQueryType
                Microsoft.PowerShell.Utility\Write-Verbose "Found $($defaultConfigs.Count) default configurations for query type: $LLMQueryType"
            }
            else {
                Microsoft.PowerShell.Utility\Write-Verbose "No configurations found for query type: $LLMQueryType"
                return [hashtable[]]@()
            }

            # return empty array if no configurations found
            if ($null -eq $defaultConfigs -or $defaultConfigs.Count -eq 0) {

                Microsoft.PowerShell.Utility\Write-Verbose 'No default configurations available'
                return [hashtable[]]@()
            }

            return ($defaultConfigs | GenXdev\ConvertTo-HashTable)
        }
        catch {
            Microsoft.PowerShell.Utility\Write-Verbose "Error loading default configurations: $($_.Exception.Message)"
            throw "Failed to load default LLM settings: $($_.Exception.Message)"
        }
    }

    end {
    }
}
<##############################################################################
Part of PowerShell module : GenXdev.Helpers
Original cmdlet filename  : Get-JsonExampleFromSchema.ps1
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

<###############################################################################
.SYNOPSIS
Generates a human-readable example JSON string from a JSON Schema definition.

.DESCRIPTION
Converts any JSON Schema (OpenAI json_schema format or raw schema) into a
compact example JSON string suitable for injecting into LLM system
instructions. Handles nested objects, arrays, scalar types, enums, unions,
oneOf/anyOf/allOf compositions, and format hints like date-time and email.

The function builds a PowerShell object tree by recursively walking the
schema, then serializes it to a compact JSON string via ConvertTo-Json.

.PARAMETER Schema
A JSON Schema definition. Accepts either a JSON string or a pre-parsed
PSCustomObject. Supports both the OpenAI json_schema wrapper format
({ json_schema: { schema: ... } }) and raw JSON Schema objects.

.EXAMPLE
$schema = '{ "type": "object", "properties": { "name": { "type": "string" } } }'
Get-JsonExampleFromSchema -Schema $schema

Generates: {"name":"..."}

.EXAMPLE
$openAiSchema = '{ "type": "json_schema", "json_schema": { "name": "response",
"strict": true, "schema": { "type": "object", "properties": {
"items": { "type": "array", "items": { "type": "object", "properties": {
"id": { "type": "integer" }, "label": { "type": "string" } } } } } } } }'
Get-JsonExampleFromSchema -Schema $openAiSchema

Generates: {"items":[{"id":0,"label":"..."}]}
#>
function Get-JsonExampleFromSchema {

    [CmdletBinding()]
    [OutputType([string])]
    [System.Diagnostics.CodeAnalysis.SuppressMessageAttribute(
        'PSUseDeclaredVarsMoreThanAssignments', '')]
    param(
        [Parameter(
            Mandatory = $false,
            Position = 0,
            HelpMessage = 'A JSON Schema definition (JSON string or ' +
                'PSCustomObject). Supports OpenAI json_schema wrapper ' +
                'format and raw JSON Schema objects.'
        )]
        [object] $Schema
    )

    begin {
        Microsoft.PowerShell.Utility\Write-Verbose (
            'Starting JSON Schema to example conversion.')

        # Recursively build an example PowerShell value from a schema node.
        # Returns a PS value: hashtable (object), array, string, int, bool,
        # or $null.
        function BuildExample($node, [int] $depth = 0) {

            # Guard against runaway recursion
            if ($depth -gt 10) {
                return '...'
            }

            # Unwrap PSObject to its base object
            if ($node -is [System.Management.Automation.PSObject]) {
                $node = $node.BaseObject
            }

            # Handle null / empty input
            if ($null -eq $node) {
                return @{ response = '...' }
            }

            # If it's a string, try to parse as JSON
            if ($node -is [string]) {
                $trimmed = $node.Trim()
                if ([string]::IsNullOrWhiteSpace($trimmed)) {
                    return '...'
                }
                try {
                    $node = $trimmed |
                        Microsoft.PowerShell.Utility\ConvertFrom-Json
                }
                catch {
                    return '...'
                }
            }

            # Auto-detect OpenAI json_schema wrapper and unwrap it
            if ($node.json_schema -and $node.json_schema.schema) {
                $node = $node.json_schema.schema
            }

            # ── Type Dispatch ──────────────────────────────────────────

            # 1. enum — use the first enum value
            if ($node.enum) {
                $enums = @($node.enum)
                if ($enums.Count -gt 0) {
                    return $enums[0]
                }
            }

            # 2. const — use the const value directly
            if ($null -ne $node.const) {
                return $node.const
            }

            # 3. oneOf / anyOf — use the first schema option
            if ($node.oneOf) {
                $options = @($node.oneOf)
                if ($options.Count -gt 0) {
                    return BuildExample $options[0] ($depth + 1)
                }
            }
            if ($node.anyOf) {
                $options = @($node.anyOf)
                if ($options.Count -gt 0) {
                    return BuildExample $options[0] ($depth + 1)
                }
            }

            # 4. allOf — merge all sub-schemas into a single object
            if ($node.allOf) {
                $merged = [ordered]@{}
                foreach ($sub in @($node.allOf)) {
                    $subResult = BuildExample $sub ($depth + 1)
                    if ($subResult -is [hashtable]) {
                        foreach ($key in $subResult.Keys) {
                            $merged[$key] = $subResult[$key]
                        }
                    }
                }
                if ($merged.Count -gt 0) {
                    return $merged
                }
                # Fall through if allOf produced nothing
            }

            # 5. Resolve the effective type, handling union type arrays
            #    (e.g. ["string", "null"])
            $effectiveType = $node.type
            if ($effectiveType -is [array] -or
                $effectiveType -is [object[]]) {

                # Pick the first non-null type
                foreach ($t in $effectiveType) {
                    if ($t -ne 'null') {
                        $effectiveType = "$t"
                        break
                    }
                }
                # If all were null, keep it as null
                if ($effectiveType -is [array]) {
                    $effectiveType = 'null'
                }
            }

            # 6. object type (has properties or explicit type).
            # Use a helper to safely detect a real schema properties
            # collection, avoiding false positives from PSObject intrinsic
            # members when the node is a wrapped PSCustomObject.
            $hasRealProperties = _HasSchemaProperties $node
            if ($effectiveType -eq 'object' -or $hasRealProperties) {

                $result = [ordered]@{}
                if ($node.properties) {
                    $props = $node.properties
                    if ($props -is [System.Management.Automation.PSObject]) {
                        $props = $props.PSObject.Properties
                    }
                    if ($props -is [System.Collections.IDictionary]) {
                        foreach ($key in $props.Keys) {
                            $result["$key"] = BuildExample $props[$key] ($depth + 1)
                        }
                    }
                    else {
                        foreach ($prop in $props) {
                            $propName = if ($prop -is
                                [System.Management.Automation.PSPropertyInfo]) {
                                $prop.Name
                            }
                            else {
                                $prop.Key
                            }
                            $propValue = if ($prop -is
                                [System.Management.Automation.PSPropertyInfo]) {
                                $prop.Value
                            }
                            else {
                                $prop.Value
                            }
                            $result["$propName"] = BuildExample $propValue ($depth + 1)
                        }
                    }
                }
                return $result
            }

            # 7. array type
            if ($effectiveType -eq 'array') {
                # Comma prefix prevents PowerShell from unrolling the array
                # during function output. Without it, return @($x) unrolls
                # and the caller gets a single element, not an array.
                if ($node.items) {
                    return , @(BuildExample $node.items ($depth + 1))
                }
                return , @()
            }

            # 8. string type (with optional format hints)
            if ($effectiveType -eq 'string') {
                if ($node.format) {
                    switch -Regex ($node.format) {
                        '^date-time$' {
                            return '2024-01-15T10:30:00Z'
                        }
                        '^date$' {
                            return '2024-01-15'
                        }
                        '^email$' {
                            return 'user@example.com'
                        }
                        '^uri$|^url$' {
                            return 'https://example.com'
                        }
                        '^uuid$' {
                            return '550e8400-e29b-41d4-a716-446655440000'
                        }
                        '^ipv4$' {
                            return '192.168.1.1'
                        }
                        '^ipv6$' {
                            return '::1'
                        }
                        '^hostname$' {
                            return 'example.com'
                        }
                        '^json-pointer$' {
                            return '/path/to/property'
                        }
                        '^regex$' {
                            return '^[a-z]+$'
                        }
                        default {
                            if ($node.description) {
                                return "$($node.description)"
                            }
                            return '...'
                        }
                    }
                }
                if ($node.description) {
                    return "$($node.description)"
                }
                return '...'
            }

            # 9. number / integer
            if ($effectiveType -eq 'number' -or
                $effectiveType -eq 'integer') {

                if ($node.description) {
                    return "$($node.description)"
                }
                return 0
            }

            # 10. boolean
            if ($effectiveType -eq 'boolean') {
                return $true
            }

            # 11. null
            if ($effectiveType -eq 'null') {
                return $null
            }

            # 12. Fallback — unknown or missing type, return a default object
            if ($node.description) {
                return "$($node.description)"
            }
            return @{ response = '...' }
        }

        # Helper: returns $true when $node has a real schema properties
        # collection (a Hashtable with keys), avoiding false positives
        # from PSObject intrinsic ".Properties" member on PSCustomObjects.
        function _HasSchemaProperties($node) {
            if ($null -eq $node) { return $false }
            if ($node -is [System.Management.Automation.PSObject]) {
                $node = $node.BaseObject
            }
            # Only dictionary types can have .properties as a key lookup
            if ($node -isnot [System.Collections.IDictionary]) {
                return $false
            }
            $props = $node['properties']
            return ($props -is [System.Collections.IDictionary]) -and
                ($props.Keys.Count -gt 0)
        }

        # Serializes a schema node to JSON string and writes it to output.
        function ConvertAndEmit($schemaNode) {
            $exampleValue = BuildExample $schemaNode 0

            if ($exampleValue -is [string]) {
                $json = '"' + (
                    $exampleValue -replace '\\', '\\\\' -replace '"', '\\"'
                ) + '"'
            }
            elseif ($null -eq $exampleValue) {
                $json = 'null'
            }
            elseif ($exampleValue -is [bool]) {
                $json = if ($exampleValue) { 'true' } else { 'false' }
            }
            elseif ($exampleValue -is [int] -or
                $exampleValue -is [long] -or
                $exampleValue -is [double]) {
                $json = [string] $exampleValue
            }
            else {
                # Hashtable, array, or PSCustomObject — use ConvertTo-Json
                # with -InputObject to preserve array structure.
                $json = Microsoft.PowerShell.Utility\ConvertTo-Json `
                    -InputObject $exampleValue `
                    -Depth 20 -Compress `
                    -WarningAction SilentlyContinue `
                    -ErrorAction SilentlyContinue

                if ([string]::IsNullOrWhiteSpace($json)) {
                    $json = '{"response":"..."}'
                }
            }

            Microsoft.PowerShell.Utility\Write-Verbose (
                "Generated schema example: $json")
            return $json
        }
    }

    end {
        if ($null -eq $Schema) {
            return '{"response":"..."}'
        }

        # Normalize: unwrap PSObject wrapping
        $schemaNode = $Schema
        if ($schemaNode -is [System.Management.Automation.PSObject]) {
            $base = $schemaNode.BaseObject
            if ($base -is [System.Collections.IDictionary]) {
                $schemaNode = $base
            }
        }

        try {
            ConvertAndEmit $schemaNode
        }
        catch {
            Microsoft.PowerShell.Utility\Write-Verbose (
                "Schema example generation failed: $($_.Exception.Message)")
            '{"response":"..."}'
        }
    }
}
<##############################################################################
Part of PowerShell module : GenXdev.Helpers
Original cmdlet filename  : Get-LLMJsonOutput.ps1
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
Extracts valid JSON from LLM response text using best-effort heuristics.

.DESCRIPTION
Takes raw LLM response text that may contain markdown fences, commentary, or
other non-JSON content and attempts to extract clean, valid JSON from it.
Uses a multi-step strategy: first strips markdown fences, then attempts to
parse the entire string as JSON, and if that fails, uses schema-guided
extraction followed by heuristic fallbacks.

The function handles:
- Markdown code fences (```json ... ```)
- JSON objects ({...}) and arrays ([...])
- Strings, numbers, booleans, and date-time values
- Schema-guided extraction using json_schema type hints

.PARAMETER Text
The raw text to extract JSON from. Typically an LLM response that may contain
markdown fences or surrounding commentary.

.PARAMETER ResponseFormat
Optional JSON schema string (OpenAI json_schema format) used to guide
extraction. When provided, the schema's type field is used to determine
which JSON structure to look for (object, array, string, number, boolean).

.EXAMPLE
Get-LLMJsonOutput -Text '```json
{"result": "hello"}
```'

Extracts: {"result": "hello"}

.EXAMPLE
$schema = '{"type":"json_schema","json_schema":{"name":"r","schema":{"type":"object"}}}'
Get-LLMJsonOutput -Text 'The answer is {"key": "value"}' -ResponseFormat $schema

Extracts: {"key": "value"}
#>
function Get-LLMJsonOutput {

    [CmdletBinding()]
    [OutputType([string])]
    param (
        [Parameter(
            Position = 0,
            Mandatory = $true,
            HelpMessage = 'The raw text to extract JSON from'
        )]
        [ValidateNotNullOrEmpty()]
        [string] $Text,
        [Parameter(
            Position = 1,
            Mandatory = $false,
            HelpMessage = ('Optional JSON schema string to guide ' +
                'extraction (OpenAI json_schema format)')
        )]
        [string] $ResponseFormat
    )

    begin {
        $cleaned = $Text
    }

    process {

        # Strip markdown fences first (```json ... ```)
        $candidate = [regex]::Replace($cleaned,
            '```(?:json)?\s*([\s\S]*?)\s*```', '$1')
        if ($candidate -ne $cleaned) {
            $cleaned = $candidate
        }

        # Step 1: Try parsing the whole string as JSON
        try {
            $null = $cleaned |
                Microsoft.PowerShell.Utility\ConvertFrom-Json `
                    -ErrorAction Stop
            # Success — $cleaned is already valid JSON
        }
        catch {
            # Step 2: If we have a schema, use its type to guide
            # extraction; otherwise try heuristics.
            $extracted = $null
            if ($ResponseFormat) {
                try {
                    $schema = ($ResponseFormat |
                        Microsoft.PowerShell.Utility\ConvertFrom-Json `
                            -ErrorAction Stop).json_schema.schema
                    switch ($schema.type) {
                        'object' {
                            $a = $cleaned.IndexOf('{')
                            $b = $cleaned.LastIndexOf('}')
                            if ($a -ge 0 -and $b -gt $a) {
                                $extracted = $cleaned.Substring(
                                    $a, ($b - $a) + 1)
                            }
                        }
                        'array' {
                            $a = $cleaned.IndexOf('[')
                            $b = $cleaned.LastIndexOf(']')
                            if ($a -ge 0 -and $b -gt $a) {
                                $extracted = $cleaned.Substring(
                                    $a, ($b - $a) + 1)
                            }
                        }
                        'string' {
                            # Check for date/time format hints
                            if ($schema.format -match
                                '^date(-time)?$') {
                                if ($cleaned -match
                                    '(\d{4}-\d{2}-\d{2}(?:T\d{2}:\d{2}:\d{2}(?:\.\d+)?(?:Z|[+-]\d{2}:\d{2})?)?)') {
                                    $extracted = '"' + $matches[1] + '"'
                                }
                            }
                            else {
                                $a = $cleaned.IndexOf('"')
                                $b = $cleaned.LastIndexOf('"')
                                if ($a -ge 0 -and $b -gt $a) {
                                    $extracted = $cleaned.Substring(
                                        $a, ($b - $a) + 1)
                                }
                            }
                        }
                        { $_ -in @('number', 'integer') } {
                            if ($cleaned -match
                                '(-?\d+\.?\d*(?:[eE][+-]?\d+)?)') {
                                $extracted = $matches[1]
                            }
                        }
                        'boolean' {
                            if ($cleaned -match '\b(true|false)\b') {
                                $extracted = $matches[1]
                            }
                        }
                    }
                }
                catch {
                    # Schema parse failed, fall through to heuristics
                }
            }
            # Step 3: No schema or schema didn't help — try
            # { } first, then [ ], then regex for string,
            # then regex for number.
            if (-not $extracted) {
                $a = $cleaned.IndexOf('{')
                $b = $cleaned.LastIndexOf('}')
                if ($a -ge 0 -and $b -gt $a) {
                    $extracted = $cleaned.Substring(
                        $a, ($b - $a) + 1)
                }
                else {
                    $a = $cleaned.IndexOf('[')
                    $b = $cleaned.LastIndexOf(']')
                    if ($a -ge 0 -and $b -gt $a) {
                        $extracted = $cleaned.Substring(
                            $a, ($b - $a) + 1)
                    }
                    elseif ($cleaned -match
                        '"((?:[^"\\]|\\.)*)"') {
                        $extracted = $matches[0]
                    }
                    elseif ($cleaned -match
                        '(\d{4}-\d{2}-\d{2}(?:T\d{2}:\d{2}:\d{2}(?:\.\d+)?(?:Z|[+-]\d{2}:\d{2})?)?)') {
                        $extracted = '"' + $matches[1] + '"'
                    }
                    elseif ($cleaned -match
                        '(-?\d+\.?\d*(?:[eE][+-]?\d+)?)') {
                        $extracted = $matches[1]
                    }
                    elseif ($cleaned -match
                        '\b(true|false)\b') {
                        $extracted = $matches[1]
                    }
                }
            }
            # Validate the extracted candidate
            if ($extracted) {
                try {
                    $null = $extracted |
                        Microsoft.PowerShell.Utility\ConvertFrom-Json `
                            -ErrorAction Stop
                    $cleaned = $extracted
                }
                catch {
                    # Not valid, keep original $cleaned
                }
            }
        }

        # Return the cleaned JSON string
        Microsoft.PowerShell.Utility\Write-Output $cleaned
    }

    end {
    }
}
<##############################################################################
Part of PowerShell module : GenXdev.Helpers
Original cmdlet filename  : Get-PowerShellRoot.ps1
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

function Get-PowerShellRoot {

    GenXdev\Expand-Path "$($MyInvocation.MyCommand.Module.ModuleBase)\..\..\..\"
}
<##############################################################################
Part of PowerShell module : GenXdev.Helpers
Original cmdlet filename  : Import-GenXdevModules.ps1
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
Imports all GenXdev PowerShell modules into the global scope.

.DESCRIPTION
Scans the parent directory for GenXdev modules and imports each one into the
global scope. Uses location stack management to preserve the working directory
and provides visual feedback for successful and failed imports. Tracks function
count changes during the import process.

.PARAMETER DebugFailedModuleDefinitions
When enabled, provides detailed debug output for modules that fail to import.

.EXAMPLE
Import-GenXdevModules -DebugFailedModuleDefinitions
Imports modules with debug output for failures

.EXAMPLE
reloadgenxdev
Imports all modules using the alias
#>
function Import-GenXdevModules {

    [CmdletBinding()]
    [System.Diagnostics.CodeAnalysis.SuppressMessageAttribute(
        'PSUseSingularNouns', ''
    )]
    [Alias('reloadgenxdev')]
    param(
        [Parameter(
            Mandatory = $false,
            HelpMessage = 'Enable debug output for failed module definitions'
        )]
        [Switch] $DebugFailedModuleDefinitions
    )

    begin {

        # store current location for later restoration
        Microsoft.PowerShell.Utility\Write-Verbose 'Saving current location to location stack'
        Microsoft.PowerShell.Management\Push-Location

        # prepare console output variables
        $esc = [char]0x1b
        Microsoft.PowerShell.Utility\Write-Output (
            "$esc[36m$('Reloading genXdev..'.PadRight([Console]::WindowWidth - 1, ' '))" +
            "$esc[0m"
        )
    }


    process {

        try {
            # navigate to modules parent directory
            Microsoft.PowerShell.Utility\Write-Verbose 'Changing to parent module directory'
            Microsoft.PowerShell.Management\Set-Location -LiteralPath "$($MyInvocation.MyCommand.Module.ModuleBase)\..\.."

            # find and process each genxdev module
            Microsoft.PowerShell.Utility\Write-Verbose 'Scanning for GenXdev modules'
            Microsoft.PowerShell.Management\Get-ChildItem -LiteralPath '.\' -Filter "GenXdev*" -dir |
                Microsoft.PowerShell.Core\ForEach-Object {

                    $name = $PSItem.Name
                    try {
                        # attempt module import
                        Microsoft.PowerShell.Utility\Write-Verbose "Importing module: $name"
                        $importError = $null

                        $null = Microsoft.PowerShell.Core\Import-Module -Name $name `
                            -Scope Global `
                            -ErrorVariable ImportError `
                            -Force

                        if (($null -ne $importError) -and ($importError.Length -gt 0)) {
                            throw ($ImportError | Microsoft.PowerShell.Utility\ConvertTo-Json -Depth 4 -ErrorAction SilentlyContinue -WarningAction SilentlyContinue)
                        }

                        # show success message
                        Microsoft.PowerShell.Utility\Write-Output (
                            "$esc[32m$("- 🗹 $name".PadRight([Console]::WindowWidth - 1, ' '))" +
                            "$esc[0m"
                        )
                    }
                    catch {
                        if ($DebugFailedModuleDefinitions) {
                            # debug mode: validate and retry import
                            GenXdev\Assert-ModuleDefinition -ModuleName $name
                            $importError = $null

                            $null = Microsoft.PowerShell.Core\Import-Module $name `
                                -Scope Global `
                                -ErrorVariable ImportError `
                                -Force

                            if (($null -ne $importError) -and ($importError.Length -gt 0)) {
                                Microsoft.PowerShell.Utility\Write-Output (
                                    "$esc[91m$("- ☒ $importError".PadRight(
                                [Console]::WindowWidth - 1, ' '
                            ))$esc[0m"
                                )
                            }
                        }
                        else {
                            # show failure message
                            Microsoft.PowerShell.Utility\Write-Verbose "Failed to import module: $name"
                            Microsoft.PowerShell.Utility\Write-Output (
                                "$esc[91m$("- ☒ $name".PadRight(
                            [Console]::WindowWidth - 1, ' '
                        ))$esc[0m"
                            )
                        }
                    }
                }
        }
        finally {
            # restore original location
            Microsoft.PowerShell.Utility\Write-Verbose 'Restoring original location'
            Microsoft.PowerShell.Management\Pop-Location
        }
    }

    end {

        Microsoft.PowerShell.Utility\Write-Output (
            "$esc[36m$("Reloaded genXdev$text".PadRight(
                [Console]::WindowWidth - 1, ' '
            ))$esc[0m"
        )
    }
}
<##############################################################################
Part of PowerShell module : GenXdev.Helpers
Original cmdlet filename  : Invoke-CommandFromToolCall.ps1
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
Executes a tool call function with validation and parameter filtering.

.DESCRIPTION
This function processes tool calls by validating arguments, filtering parameters,
and executing callbacks with proper confirmation handling. It supports both script
block and command info callbacks.

.PARAMETER ToolCall
A hashtable containing the function details and arguments to be executed.

.PARAMETER Functions
Array of function definitions that can be called as tools.

.PARAMETER ExposedCmdLets
Array of PowerShell command definitions available as tools.

.PARAMETER NoConfirmationToolFunctionNames
Array of command names that can execute without user confirmation.

.PARAMETER ForceAsText
Forces the output to be formatted as text.

.EXAMPLE
Invoke-CommandFromToolCall -ToolCall $toolCall -Functions $functions `
    -ExposedCmdLets $exposedCmdlets

.EXAMPLE
$result = Invoke-CommandFromToolCall $toolCall $functions -ForceAsText
#>
function Invoke-CommandFromToolCall {

    [CmdletBinding()]
    param(
        [Parameter(
            Mandatory = $true,
            Position = 0,
            HelpMessage = 'Tool call object containing function details and args'
        )]
        [ValidateNotNull()]
        [hashtable]
        $ToolCall,
        [Parameter(
            Mandatory = $false,
            HelpMessage = 'Array of function definitions'
        )]
        [hashtable[]]
        $Functions = @(),
        [Parameter(
            Mandatory = $false,
            HelpMessage = 'Array of PowerShell command definitions to use as tools'
        )]
        [GenXdev.Helpers.ExposedCmdletDefinition[]]
        $ExposedCmdLets = @(),
        [Parameter(
            Mandatory = $false,
            HelpMessage = "Array of command names that don't require confirmation"
        )]
        [Alias('NoConfirmationFor')]
        [string[]]
        $NoConfirmationToolFunctionNames = @(),
        [Parameter(
            Mandatory = $false,
            HelpMessage = 'Force output as text'
        )]
        [switch]
        $ForceAsText
    )

    begin {
        # initialize the result object with default values
        $result = [GenXdev.Helpers.ExposedToolCallInvocationResult] @{}
        $result.CommandExposed = $false
        $result.Reason = 'Function not found, check spelling and availability'
        $result.Output = $null
        $result.OutputType = $null
        $result.FullName = $null

        # extract and convert arguments from the tool call
        $result.UnfilteredArguments = $ToolCall.function.arguments |
            Microsoft.PowerShell.Utility\ConvertFrom-Json -ErrorAction SilentlyContinue |
            GenXdev\ConvertTo-HashTable |
            Microsoft.PowerShell.Utility\Select-Object -First 1

        Microsoft.PowerShell.Utility\Write-Verbose "Processing tool call: $($ToolCall.function.name)"
        Microsoft.PowerShell.Utility\Write-Verbose "Unfiltered arguments: $($result.UnfilteredArguments |
            Microsoft.PowerShell.Utility\ConvertTo-Json)"

        $result.FilteredArguments = [hashtable] @{}
        $result.ExposedCmdLet = $null
        $result.Error = $null
    }


    process {

        $fullToolFunction = $ToolCall.function.name
        $toolFunction = $fullToolFunction.Split('\')[1];

        # find all exising predefined function definitions that match the tool call
        $matchedFunctions = @(
            $Functions.function | Microsoft.PowerShell.Core\ForEach-Object {

                $fullFunction = $PSItem.Name
                $function = $fullFunction.Split('\')[1];
                if ([string]::IsNullOrWhiteSpace($function) -or [string]::IsNullOrWhiteSpace($toolFunction)) {

                    if ([string]::IsNullOrWhiteSpace($function) -and [string]::IsNullOrWhiteSpace($toolFunction)) {

                        if ($fullFunction -eq $fullToolFunction) {

                            $PSItem
                        }
                    }
                    elseif ([string]::IsNullOrWhiteSpace($toolFunction)) {

                        if ($function -eq $fullToolFunction) {

                            $PSItem
                        }
                    }
                    else {

                        if ($fullFunction -eq $toolFunction) {

                            $PSItem
                        }
                    }
                }
                else {

                    if ($function -eq $toolFunction) {

                        $PSItem
                    }
                }
            }
        )

        # process each matched function
        foreach ($matchedFunction in $matchedFunctions) {

            # start optimistic
            $result.CommandExposed = $true

            # start by checking if all required parameters are present
            $matchedFunction.parameters.required | Microsoft.PowerShell.Core\ForEach-Object {

                # reference next required parameter's name
                $definedParamName = $_

                $foundArguments = @(
                    $result.UnfilteredArguments.GetEnumerator() | Microsoft.PowerShell.Core\ForEach-Object {
                        if ($PSItem.Name -EQ $definedParamName) { $PSItem } }
                );

                if ($foundArguments.Count -eq 0) {

                    $result.CommandExposed = $false
                    $result.Reason = "Missing required parameter: $definedParamName"
                    $result.Output = $null
                    $result.OutputType = $null
                    $result.FullName = $null
                    $result.UnfilteredArguments = $ToolCall.function.arguments | Microsoft.PowerShell.Utility\ConvertFrom-Json -ErrorAction SilentlyContinue | GenXdev\ConvertTo-HashTable | Microsoft.PowerShell.Utility\Select-Object -First 1
                    $result.FilteredArguments = [hashtable] @{}
                    $result.ExposedCmdLet = $null
                    $result.Error = $null

                    # maybe there is another function that matches
                    break;
                }
            }

            if (-not $result.CommandExposed) {

                # maybe there is another function that matches
                break;
            }

            # check if all parameters are valid
            [Hashtable] $properies = $matchedFunction.parameters.properties

            foreach ($unfilteredArgument in $result.UnfilteredArguments.GetEnumerator()) {

                $unfilteredArgumentName = $unfilteredArgument.Name

                if ($unfilteredArgumentName -notin $properies.Keys) {

                    $result.CommandExposed = $false
                    $result.Reason = "Function found, but provided argument with name $unfilteredArgumentName not found in advertised tool function parameters"
                    $result.Output = $null
                    $result.OutputType = $null
                    $result.FullName = $null
                    $result.UnfilteredArguments = $ToolCall.function.arguments | Microsoft.PowerShell.Utility\ConvertFrom-Json -ErrorAction SilentlyContinue | GenXdev\ConvertTo-HashTable | Microsoft.PowerShell.Utility\Select-Object -First 1
                    $result.FilteredArguments = [hashtable] @{}
                    $result.ExposedCmdLet = $null
                    $result.Error = $null

                    # maybe there is another function that matches
                    break;
                }
            }

            if (-not $result.CommandExposed) {

                # maybe there is another function that matches
                break;
            }

            # add all properties and their values from the unfiltered to the filtered arguments
            $result.FilteredArguments = [hashtable] @{}
            foreach ($unfilteredArgument in $result.UnfilteredArguments.GetEnumerator()) {

                $unfilteredArgumentName = $unfilteredArgument.Name

                $result.FilteredArguments."$unfilteredArgumentName" = $unfilteredArgument.Value
            }

            # check if there are any forced parameters
            $foundCmdlets = @(
                $ExposedCmdLets |
                    Microsoft.PowerShell.Utility\Sort-Object -Property Name -Descending |
                    Microsoft.PowerShell.Core\ForEach-Object {
                        if (
                        ($_.Name -EQ ($matchedFunction.name)) -or
                        ($_.Name -like "*\$($matchedFunction.name)") -or
                        ($matchedFunction.name -like "*\$($_.Name)")
                        ) { $_ }
                    }
            );

            foreach ($exposedCmdLet in $foundCmdlets) {

                $exposedCmdLetParamNames = @($exposedCmdLet.AllowedParams | Microsoft.PowerShell.Core\ForEach-Object { "$_".Split('=')[0] }) + @($exposedCmdLet.ForcedParams)

                $foundUnmatchingParam = $false;
                foreach ($filteredArgument in $result.FilteredArguments.GetEnumerator()) {

                    $filteredArgumentName = $filteredArgument.Name;

                    if ($filteredArgumentName -notin $exposedCmdLetParamNames) {

                        $foundUnmatchingParam = $true
                        break;
                    }
                }

                if ($foundUnmatchingParam) {

                    $result.CommandExposed = $false
                    $result.Reason = "Function found, but provided argument with name $filteredArgument. Name not found in advertised tool function parameters"
                    $result.Output = $null
                    $result.OutputType = $null
                    $result.FullName = $null
                    $result.UnfilteredArguments = $ToolCall.function.arguments | Microsoft.PowerShell.Utility\ConvertFrom-Json -ErrorAction SilentlyContinue | GenXdev\ConvertTo-HashTable | Microsoft.PowerShell.Utility\Select-Object -First 1
                    $result.FilteredArguments = [hashtable] @{}
                    $result.ExposedCmdLet = $null
                    $result.Error = $null

                    # maybe there is another function that matches
                    continue
                }

                foreach ($forcedParam in $exposedCmdLet.ForcedParams) {

                    $result.FilteredArguments."$($forcedParam.Name)" = $forcedParam.Value
                }

                $result.ExposedCmdLet = $exposedCmdLet
            }

            if (-not $result.CommandExposed) {

                # maybe there is another function that matches
                break;
            }

            $result.Reason = $null
            $result.Output = $null
            $result.FullName = $ToolCall.function.name

            $cb = $matchedFunction.callback;
            if ($cb -isnot [System.Management.Automation.ScriptBlock] -and
                $cb -isnot [System.Management.Automation.CommandInfo]) {

                throw "Callback is not a script block or command info, type: $(($cb.GetType().FullName))"
            }

            $tmpResult = $null

            try {
                # Execute callback
                # Add confirmation prompt for tool functions that require it
                if (($NoConfirmationToolFunctionNames -and $NoConfirmationToolFunctionNames.IndexOf($toolCall.function.name) -ge 0) -or
                    ($result.ExposedCmdLet -and (-not $result.ExposedCmdLet.Confirm))) {

                    $filteredArguments = $result.FilteredArguments;
                    $tmpResult = &$cb @filteredArguments
                }
                else {

                    $location = (Microsoft.PowerShell.Management\Get-Location).Path
                    $functionName = $toolCall.function.Name
                    $filteredArguments = $result.FilteredArguments;
                    $parametersLine = $filteredArguments.GetEnumerator() | Microsoft.PowerShell.Core\ForEach-Object {

                        $skip = $false;
                        $filteredArgumentName = $_.Name

                        if ($result.ExposedCmdlet) {

                            foreach ($name in $result.ExposedCmdLet.DontShowDuringConfirmationParamNames) {

                                if ($filteredArgumentName -like $name) {

                                    $skip = $true;
                                    break;
                                }
                            }
                        }

                        if (-not $skip) {

                            "-$($_.Name) ($($_.Value | Microsoft.PowerShell.Utility\ConvertTo-Json -Compress -Depth 10 -WarningAction SilentlyContinue))"
                        }
                        else {

                            "-$($_.Name) [value]"
                        }
                    } | Microsoft.PowerShell.Core\ForEach-Object {

                        $_ -join ' '
                    }

                    # Add confirmation prompt for tool functions that require it
                    switch ($host.ui.PromptForChoice(
                            'Confirm',
                            "Are you sure you want to ALLOW the LLM to execute: `r`nPS $location> $functionName $parametersLine",
                            @(
                                '&Allow',
                                '&Disallow, reject'), 0)) {
                        0 {
                            # Create a string builder to capture verbose output (warnings)
                            $verboseOutput = [System.Text.StringBuilder]::new()
                            $errorOutput = [System.Text.StringBuilder]::new()
                            $warningOutput = [System.Text.StringBuilder]::new()

                            # Create a scriptblocks
                            $verboseScriptBlock = {
                                param($Message)
                                $null = $verboseOutput.AppendLine($Message)
                            }
                            $errorScriptBlock = {
                                param($Message)
                                $null = $errorOutput.AppendLine($Message)
                            }
                            $warningScriptBlock = {
                                param($Message)
                                $null = $warningOutput.AppendLine($Message)
                            }

                            # Save the current VerbosePreference and register the temporary handler
                            $oldVerbosePreference = $VerbosePreference
                            $oldErrorActionPreference = $ErrorActionPreference
                            $oldWarningPreference = $WarningPreference
                            $VerbosePreference = 'Continue'
                            $null = Microsoft.PowerShell.Utility\Register-EngineEvent -SourceIdentifier 'Verbose' -Action $verboseScriptBlock
                            $null = Microsoft.PowerShell.Utility\Register-EngineEvent -SourceIdentifier 'Error' -Action $errorScriptBlock
                            $null = Microsoft.PowerShell.Utility\Register-EngineEvent -SourceIdentifier 'Warning' -Action $warningScriptBlock

                            try {
                                $tmpResult = &$cb @filteredArguments
                            }
                            catch {
                                $result.ExecutionErrors = $_.Exception.Message
                                $tmpResult = $null
                            }
                            finally {
                                $null = Microsoft.PowerShell.Utility\Unregister-Event -SourceIdentifier 'Verbose' -ErrorAction SilentlyContinue
                                $null = Microsoft.PowerShell.Utility\Unregister-Event -SourceIdentifier 'Error' -ErrorAction SilentlyContinue
                                $null = Microsoft.PowerShell.Utility\Unregister-Event -SourceIdentifier 'Warning' -ErrorAction SilentlyContinue
                                $VerbosePreference = $oldVerbosePreference
                                $ErrorActionPreference = $oldErrorActionPreference
                                $WarningPreference = $oldWarningPreference
                            }

                            if ($verboseOutput.Length -gt 0) {

                                $warnings = $verboseOutput.ToString().Trim().Split("`n")
                                $result.Warnings = $warnings
                            }

                            if (!!$result.ExecutionErrors) {

                                $errorOutput.Append($result.ExecutionErrors)
                            }

                            if ($errorOutput.Length -gt 0) {
                                $errors = $errorOutput.ToString().Trim().Split("`n")
                                $result.Errors = $errors
                            }

                            if ($warningOutput.Length -gt 0) {
                                $warnings = $warningOutput.ToString().Trim().Split("`n")
                                $result.Warnings = $warnings
                            }

                            break;
                        }

                        1 {
                            throw 'User cancelled execution'
                            break;
                        }
                    }
                }

                if ($null -eq $tmpResult) {

                    if ($result.Errors -and $result.Errors.Count -gt 0) {

                        $tmpResult = @{
                            success  = $false
                            errors   = $result.Errors
                            warnings = $result.Warnings
                            verbose  = $result.Verbose
                        }
                    }
                    else {
                        $tmpResult = 'null # No output (success, void return)'
                    }
                }
                else {

                    # check if the tmpResult is already a valid JSON string
                    # this can happen if the callback already converts to JSON
                    $isAlreadyJson = $false
                    try {
                        if ($tmpResult -is [string]) {
                            $jsonTest = $tmpResult |
                                Microsoft.PowerShell.Utility\ConvertFrom-Json -ErrorAction Stop
                            if ($jsonTest) {
                                $isAlreadyJson = $true
                                $result.OutputType = 'application/json'
                            }
                        }
                    }
                    catch {
                        # not valid JSON, continue with normal processing
                        $isAlreadyJson = $false
                    }

                    if ($isAlreadyJson) {
                        # already JSON, use it as is
                        $result.Output = $tmpResult
                    }
                    else {
                        # handle non-JSON output
                        $result.OutputType = 'string'

                        if ($tmpResult -isnot [string]) {

                            $result.OutputType = 'application/json'
                            $jsonDepth = 2;
                            if ($result.ExposedCmdLet -and $result.ExposedCmdLet.JsonDepth) {

                                $jsonDepth = $result.ExposedCmdLet.JsonDepth;
                            }
                            $asText = $ForceAsText -or
                                ($result.ExposedCmdLet -and
                                ($result.ExposedCmdLet.OutputText -eq $true));
                            if ($asText) {

                                $tmpResult = (@($tmpResult) |
                                        Microsoft.PowerShell.Core\ForEach-Object { $_ | Microsoft.PowerShell.Utility\Out-String }) |
                                        Microsoft.PowerShell.Utility\ConvertTo-Json -Depth $jsonDepth `
                                            -WarningAction SilentlyContinue
                            }
                            else {

                                # Convert to JSON directly with error handling
                                try {
                                    $tmpResult = $tmpResult |
                                        Microsoft.PowerShell.Utility\ConvertTo-Json -Depth $jsonDepth `
                                            -WarningAction SilentlyContinue
                                }
                                catch {
                                    # If JSON conversion fails, try to create a simplified representation
                                    Microsoft.PowerShell.Utility\Write-Verbose "JSON conversion failed for $($tmpResult.GetType().Name): $($_.Exception.Message)"

                                    # Special handling for web response objects
                                    if ($tmpResult -is [Microsoft.PowerShell.Commands.WebResponseObject]) {
                                        $simplifiedWebResponse = @{
                                            StatusCode = $tmpResult.StatusCode
                                            StatusDescription = $tmpResult.StatusDescription
                                            Headers = @{}
                                            Content = if ($tmpResult.Content) { $tmpResult.Content.ToString() } else { "" }
                                            RawContentLength = $tmpResult.RawContentLength
                                        }

                                        # Add headers safely
                                        foreach ($header in $tmpResult.Headers.GetEnumerator()) {
                                            try {
                                                $simplifiedWebResponse.Headers[$header.Name] = $header.Value -join ", "
                                            }
                                            catch {
                                                $simplifiedWebResponse.Headers[$header.Name] = "[Could not serialize header value]"
                                            }
                                        }

                                        $tmpResult = $simplifiedWebResponse | Microsoft.PowerShell.Utility\ConvertTo-Json -Depth $jsonDepth
                                    }
                                    else {
                                        # For other types, fall back to string representation
                                        $tmpResult = $tmpResult | Microsoft.PowerShell.Utility\Out-String
                                    }
                                }
                            }
                        }

                        $result.Output = $tmpResult
                    }
                }
            }
            catch {
                $result.Error = [PSCustomObject]@{
                    error           = $_.Exception.Message
                    exceptionThrown = $true
                    exceptionClass  = $_.Exception.GetType().FullName
                } | Microsoft.PowerShell.Utility\ConvertTo-Json -Compress -Depth 3 -WarningAction SilentlyContinue
            }

            # we only execute the first matching function
            break;
        }
    }

    end {

        Microsoft.PowerShell.Utility\Write-Output $result
    }
}
<##############################################################################
Part of PowerShell module : GenXdev.Helpers
Original cmdlet filename  : Invoke-OnEachGenXdevModule.ps1
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
Executes a script block on each GenXdev module in the workspace.

.DESCRIPTION
This function iterates through GenXdev modules in the workspace and executes
a provided script block against each module. It can filter modules by name
pattern, exclude local modules, include only published modules, or process
scripts instead of modules. The function automatically navigates to the
correct module directory before executing the script block.

.PARAMETER Script
The script block to execute for each GenXdev module. The module object is
passed as an argument to the script block.

.PARAMETER ModuleName
Filter to apply to module names. Supports wildcards and multiple patterns.
Defaults to 'GenXdev*' to include all GenXdev modules.

.PARAMETER NoLocal
Excludes local development modules from processing.

.PARAMETER OnlyPublished
Includes only published modules that have LICENSE and README.md files.

.PARAMETER FromScripts
Process scripts directory instead of module directories.

.PARAMETER IncludeScripts
Includes the scripts directory in addition to regular modules.

.PARAMETER IncludeGenXdevMainModule
Includes the main GenXdev module in addition to sub-modules.

.EXAMPLE
Invoke-OnEachGenXdevModule -Script { Write-Host $args[0].Name }

Lists all GenXdev module names.

.EXAMPLE
foreach-genxdev-module-do {
    param($ModuleObj, $isScriptsFolder, $isSubModule, $subModuleName)
    Get-ChildItem
} -ModuleName "GenXdev.AI"

Uses alias to list contents of the GenXdev.AI module directory.
#>
function Invoke-OnEachGenXdevModule {

    [CmdletBinding()]
    [Alias('foreach-genxdev-module-do')]

    param(
        [Parameter(
            Mandatory = $true,
            Position = 0,
            HelpMessage = ('The script block to execute for each ' +
                'GenXdev module')
        )]
        [Alias('ScriptBlock')]
        [scriptblock] $Script,
        [Parameter(
            Mandatory = $false,
            Position = 1,
            HelpMessage = 'Filter to apply to module names'
        )]
        [ValidateNotNullOrEmpty()]
        [Alias('Module', 'BaseModuleName', 'SubModuleName')]
        [ValidatePattern('^(GenXdev|GenXde[v]\*|GenXdev(\.[\w\*\[\]\?]*)+)+$')]
        [SupportsWildcards()]
        [string[]] $ModuleName = @('GenXdev*'),
        [Parameter(
            Mandatory = $false,
            HelpMessage = 'Excludes local development modules from processing'
        )]
        [switch] $NoLocal,
        [Parameter(
            Mandatory = $false,
            HelpMessage = ('Includes only published modules that have LICENSE ' +
                'and README.md files')
        )]
        [switch] $OnlyPublished,
        [Parameter(
            Mandatory = $false,
            HelpMessage = 'Process scripts directory instead of module directories'
        )]
        [switch] $FromScripts,
        [Parameter(
            Mandatory = $false,
            HelpMessage = ('Includes the scripts directory in addition to ' +
                'regular modules')
        )]
        [switch] $IncludeScripts
    )

    begin {

        # resolve the scripts directory path relative to current module
        $scriptsPath = [IO.Path]::GetFullPath("$($MyInvocation.MyCommand.Module.ModuleBase)\..\..\..\Scripts")

        if (-not [IO.Directory]::Exists($scriptsPath)) {

            mkdir $scriptsPath
        }

        # resolve the modules directory path relative to current module
        $modulesPath = [IO.Path]::GetFullPath("$($MyInvocation.MyCommand.Module.ModuleBase)\..\..")

        if (-not [IO.Directory]::Exists($modulesPath)) {

            mkdir $modulesPath
        }

        # override module name filter when processing scripts only
        if ($FromScripts) {

            $ModuleName = @('GenXdev.Scripts')
        }

        $allGenXdevModules = @(Microsoft.PowerShell.Management\Get-ChildItem "$modulesPath\GenXdev*.psd1" -Recurse | Microsoft.PowerShell.Core\Where-Object { $_.FullName -like "*\3.26.2026\GenXdev*" } | Microsoft.PowerShell.Core\ForEach-Object { [IO.Path]::GetFileNameWithoutExtension($_.FullName) }) +
        @("GenXdev.Scripts")

        $genXdevModules = $allGenXdevModules

        if ($ModuleName.Count -eq 1 -and $ModuleName[0] -eq 'GenXdev*') {

            $genXdevModules = @($allGenXdevModules | Microsoft.PowerShell.Core\ForEach-Object {

                    if ((-not ($IncludeScripts -or $FromScripts)) -and ($_ -like "GenXdev.Scripts")) {

                        return;
                    }

                    $_
                })
        }
    }

    process {
    }

    end {

        # iterate through each specified module name pattern
        $uniqueModulesNames = @($ModuleName | Microsoft.PowerShell.Core\ForEach-Object {

                $moduleToFind = $_

                foreach ($module in $genXdevModules) {

                    if ($module -like $moduleToFind) {

                        if (($module -like "GenXdev.Scripts") -and ($includeScripts)) {

                            $module
                            continue
                        }

                        if ([IO.File]::Exists(([IO.Path]::GetFullPath("$($MyInvocation.MyCommand.Module.ModuleBase)\..\..\$module\3.26.2026\$module.psd1")))) {

                            $module

                        }
                    }
                    elseif (@(GenXdev\Find-Item "$($MyInvocation.MyCommand.Module.ModuleBase)\..\..\$module\3.26.2026\$moduleToFind.psm1" | Microsoft.PowerShell.Utility\Select-Object -first 1).length -ge 1) {

                        $module
                    }
                }
            } |
                Microsoft.PowerShell.Utility\Select-Object -Unique |
                Microsoft.PowerShell.Utility\Sort-Object {

                    $_.Length.ToString().PadLeft(5, '0') + "_" + $_.ToLower()
                })

        foreach ($nextModule in $uniqueModulesNames) {

            # split module name into parts for pattern matching
            $partsObj = $nextModule.Split(".")

            # output current module pattern being processed
            Microsoft.PowerShell.Utility\Write-Verbose (
                "Processing module pattern: $nextModule")

            # define internal function to process individual modules
            function processModule {

                param($ModuleObj, $parts)

                # construct expected license file path for published modules
                $licenseFilePath = (
                    "$($ModuleObj.FullName)\3.26.2026\LICENSE")

                # construct expected readme file path for published modules
                $readmeFilePath = (
                    "$($ModuleObj.FullName)\3.26.2026\README.md")

                # skip license and readme checks for scripts directory
                if ($ModuleObj.FullName -eq $scriptsPath) {

                    $licenseFilePath = $null
                    $readmeFilePath = $null
                }

                # determine if module should be processed based on all filters
                $shouldProcess = (
                    (($ModuleObj.Name -like 'GenXdev') -or ($includeScripts -and ($ModuleObj.Name -like 'GenXdev.Scripts')) -or ((-not $OnlyPublished) -and (-not $NoLocal) -and ($ModuleObj.Name -like 'GenXdev.Local*'))) -and
                    ((-not $OnlyPublished) -or (
                        [IO.File]::Exists($licenseFilePath) -and
                        [IO.File]::Exists($readmeFilePath))))

                # process module if it passes all filters
                if ($shouldProcess) {

                    # output module name being processed
                    Microsoft.PowerShell.Utility\Write-Verbose (
                        "Processing module: $($ModuleObj.Name)")

                    # save current location to restore after processing
                    $originalLocation = (
                        Microsoft.PowerShell.Management\Get-Location).Path

                    try {

                        # handle scripts directory with special logic
                        if ($ModuleObj.Name -like 'GenXdev.Scripts') {

                            # navigate directly to scripts directory
                            Microsoft.PowerShell.Management\Set-Location `
                                -LiteralPath $scriptsPath
                        }
                        else {

                            # initialize version variable for parsing
                            [version] $version = $null

                            # navigate to module root directory first
                            Microsoft.PowerShell.Management\Set-Location `
                                -LiteralPath "$($ModuleObj.FullName)"

                            # find the latest version directory for the module
                            $versionDirectory = (
                                Microsoft.PowerShell.Management\Get-ChildItem `
                                    -LiteralPath '.\' `
                                    -Filter "*.*.*" `
                                    -Directory `
                                    -ErrorAction SilentlyContinue |
                                    Microsoft.PowerShell.Core\Where-Object {
                                        [Version]::TryParse($_.Name, [ref]$version)
                                    } |
                                    Microsoft.PowerShell.Utility\Sort-Object {
                                        [Version]::new($_.Name)
                                    } -Descending |
                                    Microsoft.PowerShell.Utility\Select-Object `
                                        -First 1 |
                                    Microsoft.PowerShell.Core\ForEach-Object {
                                        $_.FullName
                                    })

                            # skip module if no valid version directory found
                            if ($null -eq $versionDirectory) {

                                # output warning for modules without version dirs
                                Microsoft.PowerShell.Utility\Write-Verbose (
                                    "No version directory found for " +
                                    "$($ModuleObj.Name)")

                                return
                            }

                            # navigate to the specific version directory
                            Microsoft.PowerShell.Management\Set-Location `
                                -LiteralPath $versionDirectory

                            # output current working directory for debugging
                            Microsoft.PowerShell.Utility\Write-Verbose (
                                "Changed to directory: $versionDirectory")
                        }

                        # execute the user script with module context parameters
                        Microsoft.PowerShell.Core\Invoke-Command `
                            -ScriptBlock $Script `
                            -ArgumentList @(
                            ($ModuleObj | Microsoft.PowerShell.Utility\ConvertTo-Json | Microsoft.PowerShell.Utility\ConvertFrom-Json),
                            ($ModuleObj.Name -eq "GenXdev.Scripts"),
                            ($parts.Length -gt 2),
                            ($parts -join '.')) `
                            -NoNewScope
                    }
                    finally {

                        # always restore original working directory
                        Microsoft.PowerShell.Management\Set-Location `
                            -LiteralPath $originalLocation
                    }
                }
                else {

                    # output information about skipped modules
                    Microsoft.PowerShell.Utility\Write-Verbose (
                        "Skipping module: $($ModuleObj.Name) (filtered out)")
                }
            }

            # handle scripts directory as a special case
            if ($nextModule -like 'GenXdev.Scripts') {

                # create mock module object for scripts directory
                processModule -parts $partsObj -ModuleObj @{
                    Name     = 'GenXdev.Scripts'
                    FullName = $scriptsPath
                }

                continue
            }

            try {

                # process the matching module
                processModule -parts $partsObj -ModuleObj @{
                    Name     = ($partsObj.Length -lt 2 ? $partsObj[0] : ($partsObj[0] + "." + $partsObj[1]))
                    FullName = "$modulesPath\$($partsObj.Length -lt 2 ? $partsObj[0] : ($partsObj[0]+"."+$partsObj[1]))"
                }
            }
            catch {

                # output any errors encountered during processing
                Microsoft.PowerShell.Utility\Write-Error `
                    $_.Exception.Message
            }
        }
    }
}
<##############################################################################
Part of PowerShell module : GenXdev.Helpers
Original cmdlet filename  : resetdefaultmonitor.ps1
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
Restores default secondary monitor configuration.

.DESCRIPTION
This script restores the default secondary monitor configuration for the system,
setting the secondary monitor to the original default value.
This is useful for users who want to revert to their previous multi-monitor setup after using side-by-side configurations.
See also: 'sidebyside' function to switch to side-by-side mode for new windows.

.EXAMPLE
secondscreen

Restores the default secondary monitor configuration for the system.
#>
function resetdefaultmonitor {

    [CmdletBinding()]
    [System.Diagnostics.CodeAnalysis.SuppressMessageAttribute("PSAvoidGlobalVars", "")]
    param()


    begin {

        Microsoft.PowerShell.Utility\Write-Verbose `
            'Setting default secondary monitor configuration'
    }


    process {

        $Global:DefaultSecondaryMonitor = $null -ne $Global:LastOriginalDefaultSecondaryMonitor ?
            $Global:OriginalDefaultSecondaryMonitor : $Global:DefaultSecondaryMonitor

        $Global:LastOriginalDefaultSecondaryMonitor = $null;

        Microsoft.PowerShell.Utility\Write-Verbose `
            "Secondary monitor set to: ${Global:DefaultSecondaryMonitor}"
    }


    end {

        Microsoft.PowerShell.Utility\Write-Verbose `
            'Secondary monitor configuration completed'
    }
}
<##############################################################################
Part of PowerShell module : GenXdev.Helpers
Original cmdlet filename  : ResolveInputObjectFileNames.ps1
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
Expands input objects into file and directory names, supporting various
filters and output options.

.DESCRIPTION
This function processes input objects (files, directories, or collections)
and expands them into file and directory names. It supports filtering,
pattern matching, and can output results as objects. The function is
designed to work with pipeline input and provides options for recursion,
alternate data streams, and more.

.PARAMETER Input
Input object containing file names or directories. Accepts pipeline input.

.PARAMETER File
Return only files in the output.

.PARAMETER Pattern
Regular expression pattern to search within content.

.PARAMETER RelativeBasePath
Base path for resolving relative paths in output.

.PARAMETER AllDrives
Search across all available drives.

.PARAMETER Directory
Search for directories only.

.PARAMETER FilesAndDirectories
Include both files and directories in the output.

.PARAMETER PassThru
Output matched items as objects.

.PARAMETER IncludeAlternateFileStreams
Include alternate data streams in search results.

.PARAMETER NoRecurse
Do not recurse into subdirectories.

.EXAMPLE
ResolveInputObjectFileNames -Input "C:\Temp" -File

#>
function ResolveInputObjectFileNames  {


    [CmdletBinding(DefaultParameterSetName = 'Default')]


    param(

        [parameter(
            Position = 0,
            Mandatory = $false,
            HelpMessage = 'Input object containing file names or directories',
            ValueFromPipeline = $true,
            ValueFromPipelineByPropertyName = $true
        )]
    [Alias('Path', 'FilePath', 'Input')]
    [Object]$InputObject,

        [parameter(
            Mandatory = $false,
            HelpMessage = 'Return only files'
        )]
        [switch]$File,

        [Parameter(
            Position = 1,
            Mandatory = $false,
            ParameterSetName = 'WithPattern',
            HelpMessage = 'Regular expression pattern to search within content'
        )]
        [Alias('mc', 'matchcontent')]
        [ValidateNotNull()]
        [SupportsWildcards()]
        [string] $Pattern,

        [Parameter(
            Position = 2,
            Mandatory = $false,
            HelpMessage = 'Base path for resolving relative paths in output'
        )]
        [Alias('base')]
        [ValidateNotNullOrEmpty()]
        [string] $RelativeBasePath,

        [Parameter(
            Mandatory = $false,
            HelpMessage = 'Search across all available drives'
        )]

        [switch] $AllDrives,

        [Parameter(
            Mandatory = $false,
            ParameterSetName = 'DirectoriesOnly',
            HelpMessage = 'Search for directories only'
        )]
        [Alias('dir')]
        [switch] $Directory,

        [Parameter(
            Mandatory = $false,
            ParameterSetName = 'DirectoriesOnly',
            HelpMessage = 'Include both files and directories'
        )]
        [Alias('both')]
        [switch] $FilesAndDirectories,

        [Parameter(
            Mandatory = $false,
            HelpMessage = 'Output matched items as objects'
        )]
        [Alias('pt')]
        [switch]$PassThru,

        [Parameter(
            Mandatory = $false,
            HelpMessage = 'Include alternate data streams in search results'
        )]
        [Alias('ads')]
        [switch] $IncludeAlternateFileStreams,

        [Parameter(
            Mandatory = $false,
            HelpMessage = 'Do not recurse into subdirectories'
        )]
        [switch] $NoRecurse
    )

    begin {

    }

    process {

        # return if input is null
        if ($null -eq $InputObject) {
            return;
        }

        # handle input as FileInfo object
    if ($InputObject -is [System.IO.FileInfo]) {

            # copy parameters for Find-Item call
            $findParams = GenXdev\Copy-IdenticalParamValues `
                -BoundParameters $PSBoundParameters `
                -FunctionName 'GenXdev\Find-Item' `
                -DefaultValues (Microsoft.PowerShell.Utility\Get-Variable -Scope Local -ErrorAction SilentlyContinue)

            # find the item using Find-Item
            $item = GenXdev\Find-Item -SearchMask ("$($InputObject.FullName)") `
                @findParams -NoRecurse -File |
                Microsoft.PowerShell.Utility\Select-Object -First 1

            # output item if found, otherwise verbose skip
            if ($item) {
                Microsoft.PowerShell.Utility\Write-Verbose (
                    "Item $($InputObject.FullName) included"
                )
                Microsoft.PowerShell.Utility\Write-Output $item
            }
            else {
                Microsoft.PowerShell.Utility\Write-Verbose (
                    "Item $($InputObject.FullName) skipped due to filters"
                )
            }

            return;
        }

        # handle input as DirectoryInfo object
    if ($InputObject -is [System.IO.DirectoryInfo]) {

            # if filter is present, process each filter value
            if ($Filter) {
                # if multiple filters, use Find-Item for each
                if ($Filter.Count -gt 1) {
                    foreach ($f in $Filter) {
                        # copy parameters for Find-Item call
                        $params = GenXdev\Copy-IdenticalParamValues `
                            -BoundParameters $PSBoundParameters `
                            -FunctionName 'GenXdev\Find-Item' `
                            -DefaultValues (Microsoft.PowerShell.Utility\Get-Variable -Scope Local -ErrorAction SilentlyContinue)

                        # enumerate items for each filter
                        GenXdev\Find-Item -SearchMask ("$($InputObject.FullName)\$f") `
                            @params |
                            Microsoft.PowerShell.Core\ForEach-Object {

                                # copy parameters for recursive expansion
                                $expandParams = GenXdev\Copy-IdenticalParamValues `
                                    -BoundParameters $PSBoundParameters `
                                    -FunctionName 'GenXdev\ResolveInputObjectFileNames' `
                                    -DefaultValues (Microsoft.PowerShell.Utility\Get-Variable -Scope Local -ErrorAction SilentlyContinue);

                                $expandParams.InputObject = "$($InputObject.FullName)\$_"
                                GenXdev\ResolveInputObjectFileNames @expandParams |
                                    Microsoft.PowerShell.Core\ForEach-Object {
                                        Microsoft.PowerShell.Utility\Write-Output $_
                                    }
                            }
                    }
                    return;
                }
            }

            # copy parameters for Find-Item call
            $params = GenXdev\Copy-IdenticalParamValues `
                    -BoundParameters $PSBoundParameters `
                    -FunctionName 'GenXdev\Find-Item' `
                    -DefaultValues (Microsoft.PowerShell.Utility\Get-Variable -Scope Local -ErrorAction SilentlyContinue)

            # enumerate items found by Find-Item
            GenXdev\Find-Item -SearchMask "$($InputObject.FullName)\*" -NoRecurse @params |
                Microsoft.PowerShell.Core\ForEach-Object {

                    # skip directories if -File is specified
                    if (($_ -is [System.IO.DirectoryInfo]) -and ($File)) { return }
                    # skip string paths that are directories if -File is specified
                    if (($_ -is [string]) -and [System.IO.Directory]::Exists((GenXdev\Expand-Path $_)) -and ($File)) { return }

                    Microsoft.PowerShell.Utility\Write-Output $_
                }

            return;
        }

        # handle input as enumerable collection
    if (($InputObject -isnot [string]) -and ($InputObject -is [System.Collections.IEnumerable])) {

            # expand each item in the collection
            $InputObject | Microsoft.PowerShell.Core\ForEach-Object {

                $a = $_
                # Handle objects with Key/Value properties (e.g., DictionaryEntry, hashtable, PSCustomObject)
                if ($a -is [System.Collections.DictionaryEntry]) {
                    $a = $a.Value
                } elseif ($a -is [hashtable]) {
                    $a = $a.Values
                } elseif ($a.PSObject.Properties.Match('Key').Count -gt 0 -and $a.PSObject.Properties.Match('Value').Count -gt 0) {
                    $a = $a.Value
                }
                $a | Microsoft.PowerShell.Core\ForEach-Object {

                    $expandParams = GenXdev\Copy-IdenticalParamValues `
                        -BoundParameters $PSBoundParameters `
                        -FunctionName 'GenXdev\ResolveInputObjectFileNames' `
                        -DefaultValues (Microsoft.PowerShell.Utility\Get-Variable -Scope Local -ErrorAction SilentlyContinue);

                    @(GenXdev\ResolveInputObjectFileNames @expandParams -InputObject $PSItem) |
                        Microsoft.PowerShell.Core\ForEach-Object {
                            Microsoft.PowerShell.Utility\Write-Output $_
                        }
                }
            }
            return;
        }

        # return if input is not a string or is empty/whitespace
        if ((-not ($InputObject -is [string])) -or [string]::IsNullOrWhiteSpace($InputObject)) {
            return;
        }

        # copy parameters for Find-Item call
        $params = GenXdev\Copy-IdenticalParamValues `
                -BoundParameters $PSBoundParameters `
                -FunctionName 'GenXdev\Find-Item' `
                -DefaultValues (Microsoft.PowerShell.Utility\Get-Variable -Scope Local -ErrorAction SilentlyContinue)

        # enumerate items found by Find-Item
        GenXdev\Find-Item -SearchMask $InputObject @params |
            Microsoft.PowerShell.Core\ForEach-Object {

                # skip directories if -File is specified
                if (($_ -is [System.IO.DirectoryInfo]) -and ($File)) { return }
                # skip string paths that are directories if -File is specified
                if (($_ -is [string]) -and [System.IO.Directory]::Exists((GenXdev\Expand-Path $_)) -and ($File)) { return }

                Microsoft.PowerShell.Utility\Write-Output $_
            }
    }

    end {

    }
}

<##############################################################################
Part of PowerShell module : GenXdev.Helpers
Original cmdlet filename  : Show-Verb.ps1
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
Shows a short alphabetical list of all PowerShell verbs.

.DESCRIPTION
Displays PowerShell approved verbs in a comma-separated list. If specific verbs
are provided as input, only matching verbs will be shown. Supports wildcards.

.PARAMETER Verb
One or more verb patterns to filter the output. Supports wildcards.
If omitted, all approved verbs are shown.

.EXAMPLE
Show-Verb
Shows all approved PowerShell verbs

.EXAMPLE
Show-Verb -Verb "Get*"
Shows all approved verbs starting with "Get"

.EXAMPLE
showverbs "Set*", "Get*"
Shows all approved verbs starting with "Set" or "Get" using the alias
#>
function Show-Verb {

    [CmdletBinding()]
    [Alias('showverbs')]
    param(
        [parameter(
            Position = 0,
            ValueFromPipeline,
            ValueFromPipelineByPropertyName,
            HelpMessage = 'One or more verb patterns to filter (supports wildcards)',
            Mandatory = $False
        )]
        [SupportsWildcards()]
        [string[]] $Verb = @()
    )

    # dont remove this line [dontrefactor]

    begin {
        Microsoft.PowerShell.Utility\Write-Verbose "Starting Show-Verb with filter patterns: $($Verb -join ', ')"
    }


    process {

        # if no specific verbs requested, get all approved verbs
        if ($Verb.Length -eq 0) {

            $verbs = Microsoft.PowerShell.Utility\Get-Verb
        }
        else {
            # filter verbs based on provided patterns
            $verbs = Microsoft.PowerShell.Utility\Get-Verb |
                Microsoft.PowerShell.Core\ForEach-Object -ErrorAction SilentlyContinue {

                    $existingVerb = $PSItem

                    foreach ($verb in $Verb) {

                        if ($existingVerb.Verb -like $verb) {

                            $existingVerb
                        }
                    }
                }
        }

        # sort verbs alphabetically and return as comma-separated string
        ($verbs |
            Microsoft.PowerShell.Utility\Sort-Object { $PSItem.Verb } |
            Microsoft.PowerShell.Core\ForEach-Object Verb -ErrorAction SilentlyContinue) -Join ', '
    }

    end {
    }
}
<##############################################################################
Part of PowerShell module : GenXdev.Helpers
Original cmdlet filename  : Test-RefactorLLMSelection.ps1
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
Evaluates source files for refactoring eligibility using LLM analysis.

.DESCRIPTION
Uses Language Learning Model (LLM) analysis to determine if a source code file
should be selected for refactoring based on specified criteria. The function
processes the file content through an LLM query and returns a boolean response.

.PARAMETER RefactorDefinition
A RefactorDefinition object containing the LLM configuration and selection
criteria settings used to evaluate the source file.

.PARAMETER Path
The full filesystem path to the source code file that needs to be evaluated
for potential refactoring.

.EXAMPLE
Test-RefactorLLMSelection -RefactorDefinition $refDef -Path "C:\source.ps1"

.EXAMPLE
$def | Test-RefactorLLMSelection -Path source.ps1
#>
function Test-RefactorLLMSelection {

    [CmdletBinding()]
    param(
        [Parameter(
            Mandatory = $true,
            Position = 0,
            HelpMessage = 'The refactor definition containing LLM settings'
        )]
        [ValidateNotNull()]
        [GenXdev.Helpers.RefactorDefinition] $RefactorDefinition,
        [Parameter(
            Mandatory = $true,
            Position = 1,
            HelpMessage = 'The path to the source file to evaluate'
        )]
        [ValidateNotNullOrEmpty()]
        [Alias('FullName')]
        [string] $Path
    )

    begin {

        Microsoft.PowerShell.Utility\Write-Verbose "Starting refactor selection analysis for: $Path"

        # extract the selection criteria prompt from the refactor settings
        $prompt = $RefactorDefinition.SelectionSettings.LLM.Prompt
    }


    process {

        # validate that the target file exists before processing
        if (-not [System.IO.File]::Exists($Path)) {
            throw "The file '$Path' does not exist"
        }

        # ensure we have valid selection criteria
        if ([string]::IsNullOrWhiteSpace($prompt)) {
            throw 'The prompt is empty'
        }

        # prepare the llm query parameters by matching available parameters
        $invocationParams = GenXdev\Copy-IdenticalParamValues `
            -BoundParameters ($RefactorDefinition.SelectionSettings.LLM | GenXdev\ConvertTo-HashTable) `
            -FunctionName 'GenXdev\Invoke-LLMBooleanEvaluation' `
            -DefaultValues (Microsoft.PowerShell.Utility\Get-Variable -Scope Local -Name * `
                -ErrorAction SilentlyContinue)

        # construct the complete instruction set for the llm query
        $invocationParams.Instructions = @"
You are a helpfull assistant, the user wants your help to find a true or false answer.
The answer is wheter to select the source code file provided for refactoring.
The user will provide the criteria for the selection.
Your job is to judge the source code file based on the criteria
and return the answer as a boolean value.

The source code file's content will now follow:

$([System.IO.File]::ReadAllText($Path))
"@

        # configure the remaining required llm query parameters
        $invocationParams.Text = $prompt

        Microsoft.PowerShell.Utility\Write-Verbose 'Invoking LLM analysis with selection criteria'

        # execute the llm query and convert response to boolean
        return (GenXdev\Invoke-LLMBooleanEvaluation @invocationParams -ErrorAction SilentlyContinue -TTLSeconds 120 -LLMQueryType Coding)
    }

    end {
    }
}
<##############################################################################
Part of PowerShell module : GenXdev.Helpers
Original cmdlet filename  : WriteFileOutput.ps1
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
Outputs file information with hyperlinked display names for enhanced user
experience.

.DESCRIPTION
This function processes file input objects and outputs them in a user-friendly
format with hyperlinked file names when displayed in the console. It handles
different input types including strings, FileInfo objects, and other object
types. The function automatically detects if output is being redirected or
captured in a pipeline and adjusts its behavior accordingly.

.PARAMETER CallerInvocation
The invocation information from the calling function, used to detect pipeline
context and output redirection status.

.PARAMETER Input
The input object to process, which can be a file path string, FileInfo object,
or any other object type that should be passed through.

.PARAMETER RelativeBasePath
Optional base path for generating relative file paths in the output display.

.PARAMETER FullPaths
When specified, forces the output to use full absolute paths instead of
relative paths for file display.

.PARAMETER Prefix
An optional string prefix to prepend to the output display for additional
context.

.EXAMPLE
WriteFileOutput -CallerInvocation $MyInvocation -Input "C:\temp\file.txt"

.EXAMPLE
Get-ChildItem | WriteFileOutput -CallerInvocation $MyInvocation -Input $_
#>
function WriteFileOutput {

    param(
        [Parameter(
            Mandatory = $true,
            Position = 0,
            ValueFromPipeline = $true,
            HelpMessage = ("The invocation information from the calling " +
                          "function")
        )]
        [object] $CallerInvocation,
        [Parameter(
            Mandatory = $true,
            Position = 1,
            ValueFromPipeline = $true,
            HelpMessage = ("The input object to process, which can be a " +
                          "file path or object")
        )]
        [object] $Input,
        [Parameter(
            Mandatory = $false,
            HelpMessage = ("An optional string prefix to prepend to the " +
                          "output display for additional context")
        )]
        [string] $Prefix,
        [Parameter(
            Mandatory = $false,
            HelpMessage = ("Base path for generating relative file paths " +
                          "in output")
        )]
        [string] $RelativeBasePath,
        [Parameter(
            Mandatory = $false,
            HelpMessage = ("Forces output to use full absolute paths " +
                          "instead of relative paths")
        )]
        [switch] $FullPaths
    )

    begin {

        # determine if pipeline output is captured or redirected to detect
        # the appropriate output behavior
        $unattendedMode = GenXdev\Test-UnattendedMode -CallersInvocation $CallerInvocation

        # output verbose information about redirection detection
        Microsoft.PowerShell.Utility\Write-Verbose (
            "UnattendedMode: ${unattendedMode}"
        )
    }

    process {
        try {

            # return early if input is null to avoid processing empty values
            if ($null -eq $Input) {
                return
            }

            # helper function to output with optional prefix
            function OutputWithPrefix($content) {
                if ($Prefix) {
                    Microsoft.PowerShell.Utility\Write-Output ("${Prefix}${content}")
                } else {
                    Microsoft.PowerShell.Utility\Write-Output $content
                }
            }

            # helper function to create hyperlinked output for console display
            function OutputHyperlink($displayText, $targetPath) {
                $PSStyle.FormatHyperlink($displayText, $targetPath) | Microsoft.PowerShell.Core\Out-Host
            }

            # helper function to get FileInfo object, reusing existing if available
            function GetFileInfo($path, $inputObject) {
                if ($inputObject -is [System.IO.FileInfo]) {
                    return $inputObject
                }
                return Microsoft.PowerShell.Management\Get-Item -LiteralPath $path
            }

            # initialize filepath variable with the input object
            $filePath = $Input

            # convert string input to expanded file path using filesystem module
            if ($Input -is [string]) {
                $filePath = GenXdev\Expand-Path $Input
            }
            # extract full name from fileinfo objects for consistent processing
            elseif ($Input -is [System.IO.FileInfo]) {
                $filePath = $Input.FullName
            }
            # pass through non-file objects unchanged to the pipeline
            else {
                OutputWithPrefix $Input
                return
            }

            # verify that the file path exists as a file before processing
            if (-not (Microsoft.PowerShell.Management\Test-Path -LiteralPath $filePath -PathType Leaf)) {
                # output the filepath directly if it doesn't exist as a file
                OutputWithPrefix $filePath
                return
            }

            # get FileInfo object once for reuse
            $fileInfo = GetFileInfo $filePath $Input

            # handle full paths mode
            if ($FullPaths) {
                Microsoft.PowerShell.Utility\Write-Output $fileInfo
                return
            }

            # calculate relative path
            $relativePath = if (-not [string]::IsNullOrWhiteSpace($RelativeBasePath)) {
                # convert to relative path if a base path is provided
                GenXdev\Find-Item $filePath -NoRecurse -RelativeBasePath $RelativeBasePath
            } else {
                GenXdev\Find-Item $filePath -NoRecurse
            }

            # prepare display text with optional prefix
            $displayText = if ($Prefix) { "${Prefix}${relativePath}" } else { $relativePath }

            # handle output redirection
            if ($unattendedMode) {
                OutputHyperlink $displayText $fileInfo.FullName
            } else {
                # output fileinfo object to pipeline for programmatic use
                Microsoft.PowerShell.Utility\Write-Output $fileInfo
                # create hyperlinked output for console display
                OutputHyperlink $displayText $fileInfo.FullName
            }
        }
        catch {
            # output any errors that occur during file processing
            Microsoft.PowerShell.Utility\Write-Error $_
        }
    }

    end {
    }
}


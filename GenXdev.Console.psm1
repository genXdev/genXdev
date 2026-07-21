<##############################################################################
Part of PowerShell module : GenXdev.Console
Original cmdlet filename  : New-MicrosoftShellTab.ps1
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
Creates a new Windows Terminal tab running PowerShell.

.DESCRIPTION
Opens a new Windows Terminal tab by simulating the keyboard shortcut Ctrl+Shift+T.
The function brings the PowerShell window to the foreground, sends the keystroke
combination, and optionally closes the current tab after a delay.

.PARAMETER DontCloseThisTab
When specified, prevents the current tab from being closed after creating the new
tab. By default, the current tab will close after 3 seconds.

.PARAMETER WhatIf
Shows what would happen if the cmdlet runs. The cmdlet is not run.

.PARAMETER Confirm
Prompts you for confirmation before running the cmdlet.

.EXAMPLE
New-MicrosoftShellTab -DontCloseThisTab
Creates a new terminal tab while keeping the current tab open.

.EXAMPLE
x
Creates a new terminal tab and closes the current one after 3 seconds.
#>
function New-MicrosoftShellTab {

    [CmdletBinding(SupportsShouldProcess = $true)]
    [Alias('x')]

    param(
        [Parameter(
            HelpMessage = 'Keep current tab open after creating new tab',
            Mandatory = $false
        )]
        [switch] $DontCloseThisTab
    )

    begin {

        $additionalKeystrokes = [System.Collections.Generic.List[string]]::new();

        while ([console]::KeyAvailable) {

            $key = [console]::ReadKey($true);
            $str = $key.KeyChar;
            switch ($key.Key) {
                13 { $str = "{ENTER}}" }
                9 { $str = "{TAB}" }
                8 { $str = "{BACKSPACE}" }
                27 { $str = "{ESC}" }
                32 { $str = "{SPACE}" }
                112..123 { $str = "{F$($key.Key - 111)}" }
                37 { $str = "{LEFT}" }
                38 { $str = "{UP}" }
                39 { $str = "{RIGHT}" }
                40 { $str = "{DOWN}" }
                36 { $str = "{HOME}" }
                35 { $str = "{END}" }
                33 { $str = "{PGUP}" }
                34 { $str = "{PGDN}" }
                46 { $str = "{DEL}" }
                45 { $str = "{INS}" }

                default { }
            }

            switch ($key.Modifiers) {
                1 { $str = "%$str" }
                2 { $str = "+$str" }
                3 { $str = "+%str" }
                4 { $str = "^$str" }
                5 { $str = "%^$str" }
                6 { $str = "+%$str" }
                7 { $str = "^%$str" }
            }
            $null = $additionalKeystrokes.Add($str);
        }

        # activate the powershell window to enable keyboard input processing
        Microsoft.PowerShell.Utility\Write-Verbose 'Bringing PowerShell window to foreground'
        $w = (GenXdev\Get-PowershellMainWindow);
        if ($w) {
            $null = $w.Focus()
        }

        try {
            # initialize windows script automation object for keyboard simulation
            Microsoft.PowerShell.Utility\Write-Verbose 'Creating WScript.Shell for sending keystrokes'
            $helper = Microsoft.PowerShell.Utility\New-Object -ComObject WScript.Shell

            # check if we should proceed with creating a new tab
            if ($PSCmdlet.ShouldProcess('Windows Terminal', 'Create new tab')) {
                # simulate ctrl+shift+t keystroke to trigger new tab creation
                Microsoft.PowerShell.Utility\Write-Verbose 'Sending Ctrl+Shift+T to create new tab'

                $null = $helper.sendKeys('^+t')
                Microsoft.PowerShell.Utility\Start-Sleep -Milliseconds 2000;

                $additionalKeystrokes | Microsoft.PowerShell.Core\ForEach-Object {

                    $null = $helper.sendKeys($_)
                }

                # handle tab closure if not explicitly prevented
                if ($DontCloseThisTab -ne $true) {

                    Microsoft.PowerShell.Utility\Write-Verbose 'Waiting 3 seconds before closing current tab'
                    Microsoft.PowerShell.Utility\Start-Sleep 3

                    if ($PSCmdlet.ShouldProcess('Current Windows Terminal tab',
                            'Close tab')) {
                        Microsoft.PowerShell.Utility\Write-Verbose 'Exiting current tab'
                        exit
                    }
                }
            }
        }
        catch {
            # suppress any automation-related exceptions
        }
    }


    process {
    }

    end {
    }
}
<##############################################################################
Part of PowerShell module : GenXdev.Console
Original cmdlet filename  : Now.ps1
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
Returns the current system date and time as a DateTime object.

.DESCRIPTION
Provides a simple way to get the current system date and time without any
parameters. Returns a standard .NET DateTime object that can be used for
datetime calculations, formatting, and comparisons.

.EXAMPLE
Now
Returns the current system date and time as a DateTime object

.EXAMPLE
$timestamp = Now
Stores the current date and time in a variable for later use
#>
function Now {

    [CmdletBinding()]
    [OutputType([System.DateTime])]
    param()

    begin {

        # log function start with verbose output
        Microsoft.PowerShell.Utility\Write-Verbose 'Starting Now function to retrieve system date and time'
    }


    process {

        # return the current system datetime using .NET DateTime.Now property
        # this provides high-precision timestamp including date and time
        return [DateTime]::Now
    }

    end {
    }
}
<##############################################################################
Part of PowerShell module : GenXdev.Console
Original cmdlet filename  : SayDate.ps1
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
Speaks the current date using text-to-speech synthesis.

.DESCRIPTION
Converts the current date into a natural language format and announces it using
the system's text-to-speech engine. The date is spoken in the format:
"It is [day of week], [month] [day] [year]"

.EXAMPLE
SayDate
Announces today's date using text-to-speech
#>
function SayDate {

    [CmdletBinding()]
    param()

    begin {

        # format current date into natural speech pattern
        # e.g. "It is Monday, January 1 2024"
        $dateText = 'It is ' + [DateTime]::Now.ToString('dddd, MMMM d yyyy')

        # log the text that will be spoken
        Microsoft.PowerShell.Utility\Write-Verbose "Preparing to speak: $dateText"
    }


    process {

        # use text-to-speech engine to announce the date
        # suppress output by assigning to $null
        $null = GenXdev\Start-TextToSpeech $dateText
    }

    end {
    }
}
<##############################################################################
Part of PowerShell module : GenXdev.Console
Original cmdlet filename  : SayTime.ps1
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
Announces the current time using text-to-speech.

.DESCRIPTION
This function gets the current time and uses the system's text-to-speech engine
to verbally announce it in hours and minutes format. It's useful for
accessibility purposes or when you need an audible time announcement.

.EXAMPLE
SayTime
Speaks the current time, e.g. "The time is 14 hours and 30 minutes"
#>
function SayTime {

    [CmdletBinding()]
    param(
        [switch] $Wait
    )

    begin {

        # get the current system time
        $date = Microsoft.PowerShell.Utility\Get-Date

        # extract hours (0-23) and minutes (0-59) from current time
        $hours = $date.Hour
        $minutes = $date.Minute

        # log the current time for troubleshooting
        Microsoft.PowerShell.Utility\Write-Verbose "Processing time announcement for $hours`:$minutes"
    }


    process {

        # construct the speech text in a clear, consistent format
        $speechText = "The time is $($hours.ToString('0')) hours and " +
        "$($minutes.ToString('0')) minutes"

        # log the text that will be spoken
        Microsoft.PowerShell.Utility\Write-Verbose "Speaking: $speechText"

        # convert the text to speech using system TTS engine
        GenXdev\Start-TextToSpeech $speechText -Wait:$Wait
    }

    end {
    }
}
<##############################################################################
Part of PowerShell module : GenXdev.Console
Original cmdlet filename  : secondscreen.ps1
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
Sets default second-monitor configuration.

.DESCRIPTION
Sets the default behavior for GenXdev window openings to be on the secondary monitor.
This is useful for users with a single monitor or those who prefer side-by-side window layouts.
See also cmdlet 'sidebyside' and 'restoredefaultmonitor'

.EXAMPLE
PS> secondscreen

Sets defaults for GenXdev window openings to be on the secondary monitor

#>
function secondscreen {

    [CmdletBinding()]
    [System.Diagnostics.CodeAnalysis.SuppressMessageAttribute("PSAvoidGlobalVars", "")]

    param()

    begin {

        Microsoft.PowerShell.Utility\Write-Verbose `
            'Initializing default secondary monitor configuration'
    }

    process {

        # establish monitor 0 as the system-wide secondary display designation
        $Global:OriginalDefaultSecondaryMonitor = $Global:LastOriginalDefaultSecondaryMonitor -ne "secondscreen" -and
            $Global:LastOriginalDefaultSecondaryMonitor -ne "sidebyside" ?
            $Global:DefaultSecondaryMonitor :
            $Global:OriginalDefaultSecondaryMonitor;

        $Global:LastOriginalDefaultSecondaryMonitor = "secondscreen"
        $Global:DefaultSecondaryMonitor = -2

        Microsoft.PowerShell.Utility\Write-Verbose `
            "Secondary monitor set to display index: ${Global:DefaultSecondaryMonitor}"
    }

    end {

        Microsoft.PowerShell.Utility\Write-Verbose `
            'Secondary monitor configuration completed successfully'
    }
}
<##############################################################################
Part of PowerShell module : GenXdev.Console
Original cmdlet filename  : sidebyside.ps1
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
Sets default side-by-side configuration.

.DESCRIPTION
Sets the default behavior for GenXdev window openings to be side-by-side with PowerShell.
This is useful for users with a single monitor or those who prefer side-by-side window layouts.
See also cmdlet 'secondscreen' and 'restoredefaultmonitor'

.EXAMPLE
PS> sidebyside

Sets defaults for GenXdev window openings to be side-by-side with PowerShell

#>
function sidebyside {

    [CmdletBinding()]
    [System.Diagnostics.CodeAnalysis.SuppressMessageAttribute("PSAvoidGlobalVars", "")]

    param()

    begin {

        Microsoft.PowerShell.Utility\Write-Verbose `
            'Initializing default side-by-side configuration'
    }

    process {

        # establish monitor 0 as the system-wide secondary display designation
        $Global:OriginalDefaultSecondaryMonitor = $Global:LastOriginalDefaultSecondaryMonitor -ne "secondscreen" -and
            $Global:LastOriginalDefaultSecondaryMonitor -ne "sidebyside" ?
            $Global:DefaultSecondaryMonitor :
            $Global:OriginalDefaultSecondaryMonitor;

        $Global:LastOriginalDefaultSecondaryMonitor = "sidebyside"
        $Global:DefaultSecondaryMonitor = 0

        Microsoft.PowerShell.Utility\Write-Verbose `
            "Secondary monitor set to display index: ${Global:DefaultSecondaryMonitor}"
    }

    end {

        Microsoft.PowerShell.Utility\Write-Verbose `
            'Secondary monitor configuration completed successfully'
    }
}
<##############################################################################
Part of PowerShell module : GenXdev.Console
Original cmdlet filename  : Start-SnakeGame.ps1
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

# filepath: Start-SnakeGame.ps1

<#
.SYNOPSIS
Starts a simple Snake game in the console.

.DESCRIPTION
This function initializes and runs a basic Snake game within the PowerShell
console. The player controls the snake using the arrow keys or WASD keys,
aiming to eat food and grow longer while avoiding collisions with the walls
or itself. The game features dynamic speed adjustment based on available
space and snake length. By default, the console is cleared before starting.

.PARAMETER InitialLength
Sets the initial length of the snake. Valid range is 3-20 segments.
Default is 5 segments.

.PARAMETER Speed
Sets the base game speed in milliseconds between moves. Lower values create
a faster game. Valid range is 50-2000ms. Default is 300ms. Actual speed
adjusts dynamically during gameplay.

.PARAMETER NoClear
Prevents clearing the console before starting the game. By default, the
console is cleared to provide a clean playing field.

.PARAMETER WithMaze
Draws a maze within the playfield using ASCII drawing characters for walls
and lines, similar to the border.

.PARAMETER ShowRoute
Displays the shortest path from the snake's head to the food using small
green centered dots (·). The dots are visual overlays only and do not
affect collision detection.

.PARAMETER MazeWidth
Sets the minimum pathway width for the maze. Valid range is 1-10.
Default is 2. Higher values create wider pathways making the maze easier
to navigate.

.EXAMPLE
Start-SnakeGame

Starts the Snake game with default settings (5 segments, 300ms speed).

.EXAMPLE
Start-SnakeGame -NoClear -InitialLength 3 -Speed 200

Starts the Snake game without clearing console, with shorter snake and faster
speed.

.EXAMPLE
snake -InitialLength 10

Starts the game using the alias with a longer initial snake.

.EXAMPLE
Start-SnakeGame -WithMaze

Starts the Snake game with a maze in the playfield.

.EXAMPLE
Start-SnakeGame -WithMaze -ShowRoute

Starts the Snake game with a maze and displays the shortest path from the
snake to the food with green dots.

.EXAMPLE
Start-SnakeGame -WithMaze -MazeWidth 5

Starts the Snake game with a maze that has wider pathways (minimum 5 spaces)
for easier navigation.
#>

function Start-SnakeGame {

    [CmdletBinding(SupportsShouldProcess)]
    [Alias('snake')]

    param(

        [Parameter(
            Mandatory = $false,
            Position = 0,
            HelpMessage = "Initial length of the snake (default: 5)"
        )]
        [ValidateRange(3, 20)]
        [int] $InitialLength = 5,
        [Parameter(
            Mandatory = $false,
            Position = 1,
            HelpMessage = (
                "Game speed in milliseconds between moves (default: 300)"
            )
        )]
        [ValidateRange(50, 2000)]
        [int] $Speed = 300,
        [Parameter(
            Mandatory = $false,
            HelpMessage = (
                "Prevents clearing the console before starting the game"
            )
        )]
        [switch] $NoClear,
        [Parameter(
            Mandatory = $false,
            HelpMessage = (
                "Draws a maze within the playfield using ASCII drawing " +
                "characters for walls and lines, similar to the border"
            )
        )]
        [switch] $WithMaze,
        [Parameter(
            Mandatory = $false,
            HelpMessage = (
                "Displays the shortest path from the snake's head to the " +
                "food using small green centered dots"
            )
        )]
        [switch] $ShowRoute,
        [Parameter(
            Mandatory = $false,
            HelpMessage = (
                "Minimum pathway width for the maze (1-10, default: 2)"
            )
        )]
        [ValidateRange(1, 10)]
        [int] $MazeWidth = 2
    )

    begin {

        # initialize game state hashtable to store all game variables
        $script:gameState = @{
            # current console window width in characters
            width           = 0
            # current console window height in characters
            height          = 0
            # left boundary of playable area (x coordinate)
            playFieldLeft   = 1
            # top boundary of playable area (y coordinate)
            playFieldTop    = 1
            # right boundary of playable area (x coordinate)
            playFieldRight  = 0
            # bottom boundary of playable area (y coordinate)
            playFieldBottom = 0
            # current player score (food items eaten)
            score           = 0
            # initial length of snake
            snakeLength     = $InitialLength
            # current game speed in milliseconds
            gameSpeed       = $Speed
            # current movement direction
            direction       = 'Right'
            # list of snake segment positions as tuples
            snake           = $null
            # current food position as tuple
            food            = $null
            # array of console lines for collision detection
            screenBuffer    = $null
            # temporary storage for snake placement
            snakePositions  = $null
            # temporary x coordinate variable
            x               = 0
            # temporary y coordinate variable
            y               = 0
            # character to restore when snake moves
            originalChar    = ''
            # flag to enable debug logging
            loggingEnabled  = $false
            # string builder for log messages
            logBuilder      = $null
            # path to log file
            logPath         = ''
            # timestamp of last direction change
            LastMoveTime    = [DateTime]::UtcNow
            # position where last direction change occurred
            LastMoveCoord   = $null
            # list of positions in current route path
            routePath       = $null
        }

        # initialize logging infrastructure for debugging purposes
        $script:gameState.logBuilder = [System.Text.StringBuilder]::new()

        $script:gameState.logPath = [System.IO.Path]::Join(
            $MyInvocation.MyCommand.Module.ModuleBase,
            'snake.log'
        )

        # delete old log file to start fresh
        if ([System.IO.File]::Exists($script:gameState.logPath)) {

            [System.IO.File]::Delete($script:gameState.logPath)
        }

        # internal logging function to write timestamped debug messages
        function Log {

            param([string]$Line)

            if ($script:gameState.loggingEnabled) {

                $timestamp = Microsoft.PowerShell.Utility\Get-Date -Format (
                    'yyyy-MM-dd HH:mm:ss.fff'
                )


                $logEntry = "[$timestamp] $Line"

                $null = $script:gameState.logBuilder.AppendLine($logEntry)
            }
        }

        # start logging game initialization
        Log "Starting Snake Game initialization"

        # capture current console dimensions for playfield calculation
        $script:gameState.width = [Console]::WindowWidth

        $script:gameState.height = [Console]::WindowHeight

        # calculate playfield boundaries avoiding last column and rows
        $script:gameState.playFieldRight = $script:gameState.width - 2

        $script:gameState.playFieldBottom = $script:gameState.height - 3

        Log (
            "Console dimensions: Width=$($script:gameState.width), " +
            "Height=$($script:gameState.height)"
        )

        Log (
            "Playfield boundaries: Left=$($script:gameState.playFieldLeft), " +
            "Top=$($script:gameState.playFieldTop), " +
            "Right=$($script:gameState.playFieldRight), " +
            "Bottom=$($script:gameState.playFieldBottom)"
        )

        # clear console unless user specified not to
        if (-not $NoClear) {

            Clear-Host

            Log "Screen cleared for border drawing"
        }

        # draw border using box drawing characters
        [Console]::SetCursorPosition(0, 0)
        Microsoft.PowerShell.Utility\Write-Host '┌' -NoNewline
        for ($i = 1; $i -lt $script:gameState.width - 1; $i++) {
            Microsoft.PowerShell.Utility\Write-Host '─' -NoNewline
        }
        Microsoft.PowerShell.Utility\Write-Host '┐' -NoNewline

        for ($y = 1; $y -lt $script:gameState.playFieldBottom + 1; $y++) {
            [Console]::SetCursorPosition(0, $y)
            Microsoft.PowerShell.Utility\Write-Host '│' -NoNewline
            [Console]::SetCursorPosition($script:gameState.width - 1, $y)
            Microsoft.PowerShell.Utility\Write-Host '│' -NoNewline
        }

        [Console]::SetCursorPosition(0, $script:gameState.playFieldBottom + 1)
        Microsoft.PowerShell.Utility\Write-Host '└' -NoNewline
        for ($i = 1; $i -lt $script:gameState.width - 1; $i++) {
            Microsoft.PowerShell.Utility\Write-Host '─' -NoNewline
        }
        Microsoft.PowerShell.Utility\Write-Host '┘' -NoNewline

        Log "Border drawn to console"

        # read current screen buffer after drawing border
        Log "Reading screen buffer"

        $script:gameState.screenBuffer = @(
            [GenXdev.Helpers.ConsoleReader]::ReadFromBuffer(
                0,
                0,
                $script:gameState.width,
                $script:gameState.height
            )
        )

        Log (
            "Screen buffer read successfully, lines: " +
            "$($script:gameState.screenBuffer.Count)"
        )

        if ($WithMaze) {

            # define maze dimensions based on playfield, leaving space around
            $mazeLeft = $script:gameState.playFieldLeft + 1
            $mazeTop = $script:gameState.playFieldTop + 1
            $mazeTotalWidth = $script:gameState.playFieldRight - $script:gameState.playFieldLeft - 2
            $mazeTotalHeight = $script:gameState.playFieldBottom - $script:gameState.playFieldTop - 3  # Leave extra space below for snake

            # calculate pathway width based on available size and MazeWidth parameter
            $pathWidth = [math]::Max(
                $MazeWidth,
                [math]::Min(
                    10,
                    [math]::Floor(
                        [math]::Min($mazeTotalWidth, $mazeTotalHeight) / 20
                    )
                )
            )

            Log "Calculated pathway width: $pathWidth (MazeWidth parameter: $MazeWidth)"

            # calculate number of maze cells to fit
            $cellsWidth = [math]::Floor(($mazeTotalWidth - 1) / ($pathWidth + 1))

            $cellsHeight = [math]::Floor(($mazeTotalHeight - 1) / ($pathWidth + 1))

            if ($cellsWidth -lt 1 -or $cellsHeight -lt 1) {

                $pathWidth = 2

                $cellsWidth = [math]::Floor(
                    ($mazeTotalWidth - 1) / ($pathWidth + 1)
                )

                $cellsHeight = [math]::Floor(
                    ($mazeTotalHeight - 1) / ($pathWidth + 1)
                )

                Log "Adjusted pathway width to 2 due to small size"
            }

            Log (
                "Maze cells: Width=$cellsWidth, Height=$cellsHeight"
            )

            if ($cellsWidth -lt 1 -or $cellsHeight -lt 1) {
                Log "Maze dimensions too small, skipping maze generation"
                $WithMaze = $false
            }
            else {

                # create cells with wall properties
                $cells = Microsoft.PowerShell.Utility\New-Object 'psobject[,]' $cellsHeight, $cellsWidth

                for ($i = 0; $i -lt $cellsHeight; $i++) {

                    for ($j = 0; $j -lt $cellsWidth; $j++) {

                        $cells[$i, $j] = [pscustomobject]@{
                            N = $true
                            S = $true
                            E = $true
                            W = $true
                        }
                    }
                }

                # create visited array for maze generation
                $visited = Microsoft.PowerShell.Utility\New-Object 'bool[,]' $cellsHeight, $cellsWidth

                # define function to carve maze paths
                function Carve {

                    param ($x, $y)

                    $visited[$y, $x] = $true

                    $directions = @(
                        [pscustomobject]@{dir = 'N'; dx = 0; dy = -1 },
                        [pscustomobject]@{dir = 'S'; dx = 0; dy = 1 },
                        [pscustomobject]@{dir = 'E'; dx = 1; dy = 0 },
                        [pscustomobject]@{dir = 'W'; dx = -1; dy = 0 }
                    ) | Microsoft.PowerShell.Utility\Get-Random -Count 4

                    foreach ($d in $directions) {

                        $nx = $x + $d.dx

                        $ny = $y + $d.dy

                        if ($nx -ge 0 -and $nx -lt $cellsWidth -and $ny -ge 0 -and (
                                $ny -lt $cellsHeight
                            ) -and -not $visited[$ny, $nx]) {

                            $cells[$y, $x].($d.dir) = $false

                            $opp = switch ($d.dir) {
                                'N' { 'S' }
                                'S' { 'N' }
                                'E' { 'W' }
                                'W' { 'E' }
                            }

                            $cells[$ny, $nx].$opp = $false

                            Carve $nx $ny
                        }
                    }
                }

                # start carving maze from top-left
                Carve 0 0

                # add braiding to create loops for cooler mazes
                $braidProb = 0.3

                for ($y = 0; $y -lt $cellsHeight; $y++) {

                    for ($x = 0; $x -lt $cellsWidth; $x++) {

                        $walls = @('N', 'S', 'E', 'W') | Microsoft.PowerShell.Core\Where-Object {
                            $cells[$y, $x].$_
                        }

                        if ($walls.Count -eq 3 -and (
                                Microsoft.PowerShell.Utility\Get-Random -Maximum 1.0
                            ) -lt $braidProb) {

                            $dir = $walls | Microsoft.PowerShell.Utility\Get-Random

                            $dx, $dy = switch ($dir) {
                                'N' { 0, -1 }
                                'S' { 0, 1 }
                                'E' { 1, 0 }
                                'W' { -1, 0 }
                            }

                            $nx = $x + $dx

                            $ny = $y + $dy

                            if ($nx -ge 0 -and $nx -lt $cellsWidth -and $ny -ge 0 -and (
                                    $ny -lt $cellsHeight
                                )) {

                                $cells[$y, $x].$dir = $false

                                $opp = switch ($dir) {
                                    'N' { 'S' }
                                    'S' { 'N' }
                                    'E' { 'W' }
                                    'W' { 'E' }
                                }

                                $cells[$ny, $nx].$opp = $false
                            }
                        }
                    }
                }

                # create wide opening at the bottom right
                if ($cellsHeight -gt 0 -and $cellsWidth -gt 0) {

                    $exitCellX = $cellsWidth - 1

                    $cells[($cellsHeight - 1), $exitCellX].S = $false

                    if ($cellsWidth -gt 1) {

                        $exitCellX2 = $cellsWidth - 2

                        $cells[($cellsHeight - 1), $exitCellX2].S = $false

                    }

                    if ($cellsWidth -gt 2) {

                        $exitCellX3 = $cellsWidth - 3

                        $cells[($cellsHeight - 1), $exitCellX3].S = $false

                    }

                }

                # define box drawing characters lookup
                $boxChars = @{
                    '0000' = ' '
                    '0001' = '─'
                    '0010' = '─'
                    '0011' = '─'
                    '0100' = '│'
                    '0101' = '┌'
                    '0110' = '┐'
                    '0111' = '┬'
                    '1000' = '│'
                    '1001' = '└'
                    '1010' = '┘'
                    '1011' = '┴'
                    '1100' = '│'
                    '1101' = '├'
                    '1110' = '┤'
                    '1111' = '┼'
                }

                # build maze lines for rendering
                $mazeLines = Microsoft.PowerShell.Utility\New-Object System.Collections.ArrayList

                for ($h = 0; $h -le $cellsHeight; $h++) {

                    $hline = ''

                    for ($k = 0; $k -le $cellsWidth; $k++) {

                        $north = $false

                        $south = $false

                        $left = $false

                        $right = $false

                        if ($h -gt 0) {

                            $north = if ($k -eq 0) {
                                $true
                            }
                            else {
                                $cells[($h - 1), ($k - 1)].E
                            }
                        }

                        if ($h -lt $cellsHeight) {

                            $south = if ($k -eq 0) {
                                $true
                            }
                            else {
                                $cells[$h, ($k - 1)].E
                            }
                        }

                        if ($h -eq 0 -or $h -eq $cellsHeight) {

                            $left = ($k -gt 0)

                            $right = ($k -lt $cellsWidth)
                        }
                        else {

                            $left = ($k -gt 0) -and $cells[($h - 1), ($k - 1)].S

                            $right = ($k -lt $cellsWidth) -and (
                                $cells[($h - 1), $k].S
                            )
                        }

                        $key = [int]$north, [int]$south, [int]$left, [int]$right -join ''

                        $char = $boxChars[$key]

                        if (-not $char) { $char = ' ' }

                        $hline += $char

                        if ($k -lt $cellsWidth) {

                            $hasHorizontal = if ($h -eq 0 -or $h -eq $cellsHeight -or $k -eq $cellsWidth) {
                                $true
                            }
                            else {
                                $cells[($h - 1), $k].S
                            }

                            if ($hasHorizontal) {

                                $hline += ('─' * $pathWidth)
                            }
                            else {

                                $hline += (' ' * $pathWidth)
                            }
                        }
                    }

                    $null = $mazeLines.Add($hline)

                    if ($h -lt $cellsHeight) {

                        $vline = ''

                        for ($k = 0; $k -le $cellsWidth; $k++) {

                            if ($k -eq 0) {

                                $vline += '│'
                            }
                            else {

                                if ($cells[$h, ($k - 1)].E) {

                                    $vline += '│'
                                }
                                else {

                                    $vline += ' '
                                }
                            }

                            if ($k -lt $cellsWidth) {

                                $vline += (' ' * $pathWidth)
                            }
                        }

                        for ($ph = 0; $ph -lt $pathWidth; $ph++) {

                            $null = $mazeLines.Add($vline)
                        }
                    }
                }

                # update screen buffer with maze walls for collision detection
                for ($i = 0; $i -lt $mazeLines.Count; $i++) {

                    if ($mazeTop + $i -ge $script:gameState.screenBuffer.Count) {

                        break
                    }

                    $line = $mazeLines[$i]

                    if ($line.Length -lt $mazeTotalWidth) {

                        $line += ' ' * ($mazeTotalWidth - $line.Length)
                    }

                    $lineChars = $script:gameState.screenBuffer[
                    $mazeTop + $i
                    ].ToCharArray()

                    for ($j = 0; $j -lt $line.Length; $j++) {

                        if ($mazeLeft + $j -lt $lineChars.Length) {

                            $lineChars[$mazeLeft + $j] = $line[$j]
                        }
                    }

                    $script:gameState.screenBuffer[$mazeTop + $i] = -join $lineChars
                }

                Log "Screen buffer updated with polished maze"

                # draw maze to console
                Log "Drawing maze to console"
                for ($i = 0; $i -lt $mazeLines.Count; $i++) {

                    if ($mazeTop + $i -ge $script:gameState.height) { break }

                    [Console]::SetCursorPosition($mazeLeft, $mazeTop + $i)

                    Microsoft.PowerShell.Utility\Write-Host $mazeLines[$i] -NoNewline
                }

                Log "Maze drawn to console"

                # Create opening in bottom-right corner of maze border
                $openingSize = [math]::Min(5, [math]::Max(2, [math]::Floor($mazeTotalWidth / 10)))
                $openingY = $mazeTop + $mazeLines.Count - 1  # Last line of maze
                # Use actual rendered maze line length instead of $mazeTotalWidth
                $actualMazeWidth = $mazeLines[$mazeLines.Count - 1].Length
                $openingStartX = $mazeLeft + $actualMazeWidth - $openingSize

                Log "Creating maze opening: Y=$openingY, StartX=$openingStartX, Size=$openingSize, MazeLines=$($mazeLines.Count), ActualWidth=$actualMazeWidth"

                # Clear the opening in screen buffer and on console
                for ($ox = 0; $ox -lt $openingSize; $ox++) {
                    $clearX = $openingStartX + $ox
                    if ($clearX -ge 0 -and $clearX -lt $script:gameState.width -and $openingY -ge 0 -and $openingY -lt $script:gameState.height) {
                        # Update screen buffer
                        $lineChars = $script:gameState.screenBuffer[$openingY].ToCharArray()
                        if ($clearX -lt $lineChars.Length) {
                            $lineChars[$clearX] = ' '
                        }
                        $script:gameState.screenBuffer[$openingY] = -join $lineChars

                        # Clear on console
                        [Console]::SetCursorPosition($clearX, $openingY)
                        Microsoft.PowerShell.Utility\Write-Host ' ' -NoNewline
                    }
                }

                Log "Maze opening created in bottom-right corner"
            }
        }

        # initialize snake as strongly-typed list of coordinate tuples
        $script:gameState.snake = (
            Microsoft.PowerShell.Utility\New-Object 'System.Collections.Generic.List[System.Tuple[int, int]]'
        )

        Log "Snake object created"

        # internal function to detect if console window has been resized
        function ScreenIsResized {

            return (
                $script:gameState.width -ne [Console]::WindowWidth -or
                $script:gameState.height -ne [Console]::WindowHeight
            )
        }

        # internal function to check if food position is reachable from snake head
        function IsPositionReachable {

            param(
                [Tuple[int, int]]$fromPos,
                [Tuple[int, int]]$toPos
            )

            # use breadth-first search to find if path exists
            $queue = Microsoft.PowerShell.Utility\New-Object 'System.Collections.Generic.Queue[System.Tuple[int, int]]'
            $visited = @{}

            $queue.Enqueue($fromPos)
            $visited["$($fromPos.Item1),$($fromPos.Item2)"] = $true

            $directions = @(
                @{ dx = 0; dy = -1 },  # Up
                @{ dx = 0; dy = 1 },   # Down
                @{ dx = -1; dy = 0 },  # Left
                @{ dx = 1; dy = 0 }    # Right
            )

            $maxIterations = 10000
            $iterations = 0

            while ($queue.Count -gt 0 -and $iterations -lt $maxIterations) {
                $iterations++
                $current = $queue.Dequeue()

                # check if we reached the target
                if ($current.Item1 -eq $toPos.Item1 -and $current.Item2 -eq $toPos.Item2) {
                    Log "Path found to food after $iterations iterations"
                    return $true
                }

                # explore neighbors
                foreach ($dir in $directions) {
                    $newX = $current.Item1 + $dir.dx
                    $newY = $current.Item2 + $dir.dy
                    $key = "$newX,$newY"

                    # skip if already visited
                    if ($visited.ContainsKey($key)) {
                        continue
                    }

                    # check if position is valid and passable
                    if (
                        $newX -ge $script:gameState.playFieldLeft -and
                        $newX -lt $script:gameState.playFieldRight -and
                        $newY -ge $script:gameState.playFieldTop -and
                        $newY -lt $script:gameState.playFieldBottom -and
                        $script:gameState.screenBuffer[$newY][$newX] -eq ' '
                    ) {
                        $newPos = [Tuple]::Create($newX, $newY)

                        # skip if position is on snake body (except we allow target position)
                        if ($newPos -in $script:gameState.snake -and -not (
                                $newPos.Item1 -eq $toPos.Item1 -and $newPos.Item2 -eq $toPos.Item2
                            )) {
                            continue
                        }

                        $visited[$key] = $true
                        $queue.Enqueue($newPos)
                    }
                }
            }

            Log "No path found to food after $iterations iterations"
            return $false
        }

        # internal function to find shortest path and return it as a list
        function FindShortestPath {

            param(
                [Tuple[int, int]]$fromPos,
                [Tuple[int, int]]$toPos
            )

            # use breadth-first search to find shortest path
            $queue = Microsoft.PowerShell.Utility\New-Object 'System.Collections.Generic.Queue[System.Tuple[int, int]]'
            $visited = @{}
            $parent = @{}

            $queue.Enqueue($fromPos)
            $visited["$($fromPos.Item1),$($fromPos.Item2)"] = $true

            $directions = @(
                @{ dx = 0; dy = -1 },  # Up
                @{ dx = 0; dy = 1 },   # Down
                @{ dx = -1; dy = 0 },  # Left
                @{ dx = 1; dy = 0 }    # Right
            )

            $maxIterations = 10000
            $iterations = 0
            $found = $false

            while ($queue.Count -gt 0 -and $iterations -lt $maxIterations) {
                $iterations++
                $current = $queue.Dequeue()

                # check if we reached the target
                if ($current.Item1 -eq $toPos.Item1 -and $current.Item2 -eq $toPos.Item2) {
                    $found = $true
                    Log "Shortest path found after $iterations iterations"
                    break
                }

                # explore neighbors
                foreach ($dir in $directions) {
                    $newX = $current.Item1 + $dir.dx
                    $newY = $current.Item2 + $dir.dy
                    $key = "$newX,$newY"

                    # skip if already visited
                    if ($visited.ContainsKey($key)) {
                        continue
                    }

                    # check if position is valid and passable
                    if (
                        $newX -ge $script:gameState.playFieldLeft -and
                        $newX -lt $script:gameState.playFieldRight -and
                        $newY -ge $script:gameState.playFieldTop -and
                        $newY -lt $script:gameState.playFieldBottom -and
                        $script:gameState.screenBuffer[$newY][$newX] -eq ' '
                    ) {
                        $newPos = [Tuple]::Create($newX, $newY)

                        # skip if position is on snake body (except target)
                        if ($newPos -in $script:gameState.snake -and -not (
                                $newPos.Item1 -eq $toPos.Item1 -and $newPos.Item2 -eq $toPos.Item2
                            )) {
                            continue
                        }

                        $visited[$key] = $true
                        $parent[$key] = $current
                        $queue.Enqueue($newPos)
                    }
                }
            }

            # reconstruct path if found
            if ($found) {
                $path = Microsoft.PowerShell.Utility\New-Object 'System.Collections.Generic.List[System.Tuple[int, int]]'
                $currentPos = $toPos
                $currentKey = "$($toPos.Item1),$($toPos.Item2)"

                while ($parent.ContainsKey($currentKey)) {
                    $path.Insert(0, $currentPos)
                    $currentPos = $parent[$currentKey]
                    $currentKey = "$($currentPos.Item1),$($currentPos.Item2)"
                }

                # don't include the starting position
                Log "Path reconstructed with $($path.Count) positions"
                return $path
            }

            Log "No path could be reconstructed"
            return $null
        }

        # internal function to draw the route path with green centered dot
        function DrawRoutePath {

            Log "DrawRoutePath called, ShowRoute=$ShowRoute"

            # clear old route if exists
            if ($null -ne $script:gameState.routePath -and $script:gameState.routePath.Count -gt 0) {
                Log "Clearing old route with $($script:gameState.routePath.Count) positions"
                foreach ($pos in $script:gameState.routePath) {
                    # skip if position is now part of snake or is food
                    if ($pos -in $script:gameState.snake -or (
                            $pos.Item1 -eq $script:gameState.food.Item1 -and
                            $pos.Item2 -eq $script:gameState.food.Item2
                        )) {
                        continue
                    }

                    # restore original character from screen buffer
                    [Console]::SetCursorPosition($pos.Item1, $pos.Item2)
                    $char = $script:gameState.screenBuffer[$pos.Item2][$pos.Item1]
                    Microsoft.PowerShell.Utility\Write-Host $char -NoNewline
                }
            }

            # find and draw new route if ShowRoute is enabled
            if ($ShowRoute -and $script:gameState.snake.Count -gt 0) {
                $snakeHead = $script:gameState.snake[0]
                Log "Finding path from ($($snakeHead.Item1),$($snakeHead.Item2)) to ($($script:gameState.food.Item1),$($script:gameState.food.Item2))"
                $script:gameState.routePath = FindShortestPath -fromPos $snakeHead -toPos $script:gameState.food

                if ($null -ne $script:gameState.routePath -and $script:gameState.routePath.Count -gt 0) {
                    Log "Drawing route with $($script:gameState.routePath.Count) positions"
                    foreach ($pos in $script:gameState.routePath) {
                        # skip snake head and food positions
                        if ($pos -in $script:gameState.snake -or (
                                $pos.Item1 -eq $script:gameState.food.Item1 -and
                                $pos.Item2 -eq $script:gameState.food.Item2
                            )) {
                            continue
                        }

                        # draw with small green centered dot (·) - does not update screen buffer
                        [Console]::SetCursorPosition($pos.Item1, $pos.Item2)
                        Microsoft.PowerShell.Utility\Write-Host '·' -NoNewline -ForegroundColor Green
                    }
                    Log "Route drawn"
                }
                else {
                    Log "No route path found or path is empty"
                }
            }
            else {
                Log "ShowRoute disabled or no snake"
                $script:gameState.routePath = $null
            }
        }

        # internal function to find unoccupied space for snake or food placement
        function FindUnoccupiedSpace {

            param(
                [int]$requiredLength = 1,
                [switch]$allowVertical = $false,
                [switch]$insideMaze = $false
            )

            Log (
                "FindUnoccupiedSpace called: RequiredLength=$requiredLength, " +
                "AllowVertical=$allowVertical, InsideMaze=$insideMaze"
            )

            # adjust boundaries if insideMaze
            $minX = if ($insideMaze) { $mazeLeft + 1 } else { $script:gameState.playFieldLeft }
            $maxX = if ($insideMaze) { $mazeLeft + $mazeTotalWidth - 1 } else { $script:gameState.playFieldRight - 1 }
            $minY = if ($insideMaze) { $mazeTop + 1 } else { $script:gameState.playFieldTop }
            $maxY = if ($insideMaze) { $mazeTop + $mazeTotalHeight - 1 } else { $script:gameState.playFieldBottom - 1 }

            if ($insideMaze -and ($maxX -lt $minX -or $maxY -lt $minY)) {
                Log "Maze boundaries invalid for placement, returning null"
                return $null
            }

            # calculate maximum attempts based on playfield size
            $maxAttempts = (
                $script:gameState.width * $script:gameState.height * 4
            )

            $attempts = 0

            # attempt to find suitable placement location
            while ($attempts -lt $maxAttempts) {

                # generate random starting coordinates within playfield
                $startX = Microsoft.PowerShell.Utility\Get-Random `
                    -Minimum $minX `
                    -Maximum ($maxX + 1)

                $startY = Microsoft.PowerShell.Utility\Get-Random `
                    -Minimum $minY `
                    -Maximum ($maxY + 1)

                # handle single space placement for food items
                if ($requiredLength -eq 1) {

                    # verify position is within bounds and unoccupied
                    if (
                        $startX -ge $minX -and
                        $startX -le $maxX -and
                        $startY -ge $minY -and
                        $startY -le $maxY -and
                        $script:gameState.screenBuffer[$startY][$startX] -eq (
                            ' '
                        ) -and -not ([Tuple]::Create($startX, $startY) -in $script:gameState.snake)
                    ) {

                        $candidatePos = [Tuple]::Create($startX, $startY)

                        # check if position is reachable from snake head (only if snake exists and WithMaze is enabled)
                        if ($WithMaze -and $script:gameState.snake.Count -gt 0) {
                            $snakeHead = $script:gameState.snake[0]
                            if (-not (IsPositionReachable -fromPos $snakeHead -toPos $candidatePos)) {
                                Log "Food position ($startX, $startY) is not reachable, trying another position"
                                $attempts++
                                continue
                            }
                        }

                        Log (
                            "Found unoccupied space for food at " +
                            "($startX, $startY) after $attempts attempts"
                        )

                        return $candidatePos
                    }

                    $attempts++

                    continue
                }

                # define possible placement directions for multi-segment snake
                $directions = @(
                    @{
                        dx       = -1
                        dy       = 0
                        name     = 'Left'
                        opposite = 'Right'
                    },
                    @{
                        dx       = 1
                        dy       = 0
                        name     = 'Right'
                        opposite = 'Left'
                    },
                    @{
                        dx       = 0
                        dy       = -1
                        name     = 'Up'
                        opposite = 'Down'
                    },
                    @{
                        dx       = 0
                        dy       = 1
                        name     = 'Down'
                        opposite = 'Up'
                    }
                )

                # restrict to horizontal directions if vertical not allowed
                if (-not $allowVertical) {

                    $directions = $directions[0..1]
                }

                # try each direction for snake placement
                foreach ($dir in $directions) {

                    $positions = @()

                    $canPlace = $true

                    # attempt to place all segments in current direction
                    for ($i = 0; $i -lt $requiredLength; $i++) {

                        $checkX = $startX + ($dir.dx * $i)

                        $checkY = $startY + ($dir.dy * $i)

                        # verify each position is valid and unoccupied
                        if (
                            $checkX -lt $minX -or
                            $checkX -gt $maxX -or
                            $checkY -lt $minY -or
                            $checkY -gt $maxY -or
                            $script:gameState.screenBuffer[$checkY][$checkX] -ne (
                                ' '
                            )
                        ) {

                            $canPlace = $false

                            break
                        }

                        $positions += [Tuple]::Create($checkX, $checkY)
                    }

                    # placement successful in this direction
                    if ($canPlace) {

                        # set initial movement direction opposite to placement
                        if ($requiredLength -gt 1) {

                            $script:gameState.direction = $dir.opposite

                            Log (
                                "Snake placed successfully in direction " +
                                "$($dir.name), setting initial direction to " +
                                "$($dir.opposite)"
                            )
                        }

                        Log (
                            "Found unoccupied space for snake " +
                            "($($positions.Count) segments) after " +
                            "$attempts attempts"
                        )

                        return $positions
                    }

                    # attempt l-shaped placement if linear placement failed
                    if (-not $canPlace -and $i -gt 0) {

                        $positions = @()

                        $canPlace = $true

                        $placedCount = $i

                        # place segments that fit in original direction
                        for ($j = 0; $j -lt $placedCount; $j++) {

                            $positions += [Tuple]::Create(
                                $startX + ($dir.dx * $j),
                                $startY + ($dir.dy * $j)
                            )
                        }

                        # calculate remaining segments needed
                        $remainingLength = $requiredLength - $placedCount

                        # get alternative directions for remaining segments
                        $otherDirections = $directions |
                            Microsoft.PowerShell.Core\Where-Object {
                                $_.name -ne $dir.name
                            }

                        # try each alternative direction
                        foreach ($otherDir in $otherDirections) {

                            $tempCanPlace = $true

                            # verify remaining segments fit in new direction
                            for ($k = 1; $k -le $remainingLength; $k++) {

                                $checkX = $startX + ($otherDir.dx * $k)

                                $checkY = $startY + ($otherDir.dy * $k)

                                if (
                                    $checkX -lt $minX -or
                                    $checkX -gt $maxX -or
                                    $checkY -lt $minY -or
                                    $checkY -gt $maxY -or
                                    $script:gameState.screenBuffer[
                                    $checkY
                                    ][$checkX] -ne ' '
                                ) {

                                    $tempCanPlace = $false

                                    break
                                }
                            }

                            # add remaining segments if placement valid
                            if ($tempCanPlace) {

                                for ($k = 1; $k -le $remainingLength; $k++) {

                                    $positions += [Tuple]::Create(
                                        $startX + ($otherDir.dx * $k),
                                        $startY + ($otherDir.dy * $k)
                                    )
                                }

                                # determine safe direction for l-shaped snake
                                if ($requiredLength -gt 1) {

                                    $head = $positions[0]

                                    $neck = $positions[1]

                                    # calculate direction from neck to head
                                    $headDirection = ''

                                    if ($head.Item1 -gt $neck.Item1) {

                                        $headDirection = 'Right'
                                    }
                                    elseif ($head.Item1 -lt $neck.Item1) {

                                        $headDirection = 'Left'
                                    }
                                    elseif ($head.Item2 -gt $neck.Item2) {

                                        $headDirection = 'Down'
                                    }
                                    elseif ($head.Item2 -lt $neck.Item2) {

                                        $headDirection = 'Up'
                                    }

                                    # set direction away from neck
                                    $script:gameState.direction = $headDirection

                                    Log (
                                        "L-shaped snake placed, setting " +
                                        "initial direction to $headDirection"
                                    )
                                }

                                Log (
                                    "Found L-shaped placement for snake after " +
                                    "$attempts attempts"
                                )

                                return $positions
                            }
                        }
                    }
                }

                $attempts++
            }

            # use fallback center placement if no valid position found
            Log "Using fallback placement for RequiredLength=$requiredLength"

            if ($requiredLength -eq 1) {

                # return center position for single space
                return [Tuple]::Create(
                    (
                        ($script:gameState.playFieldRight - (
                            $script:gameState.playFieldLeft
                        )) / 2 + $script:gameState.playFieldLeft
                    ),
                    (
                        ($script:gameState.playFieldBottom - (
                            $script:gameState.playFieldTop
                        )) / 2 + $script:gameState.playFieldTop
                    )
                )
            }
            else {

                # create horizontal snake in center for multi-segment
                $fallbackPositions = @()

                $centerX = (
                    ($script:gameState.playFieldRight - (
                        $script:gameState.playFieldLeft
                    )) / 2 + $script:gameState.playFieldLeft
                )

                $centerY = (
                    ($script:gameState.playFieldBottom - (
                        $script:gameState.playFieldTop
                    )) / 2 + $script:gameState.playFieldTop
                )

                for ($i = 0; $i -lt $requiredLength; $i++) {

                    $fallbackPositions += [Tuple]::Create(
                        $centerX - $i,
                        $centerY
                    )
                }

                # set safe direction for fallback horizontal snake
                $script:gameState.direction = 'Right'

                Log "Fallback snake placement, setting direction to Right"

                return $fallbackPositions
            }
        }

        # internal function to draw snake and food on screen
        function DrawInitialScreen {

            Log "Starting to draw initial screen - snake and food"

            $blink = if ($WithMaze) { $PSStyle.Blink } else { '' }

            # draw snake segments
            $isHead = $true
            foreach ($segment in $script:gameState.snake) {
                [Console]::SetCursorPosition($segment.Item1, $segment.Item2)
                if ($isHead) {
                    Microsoft.PowerShell.Utility\Write-Host "${blink}O$($PSStyle.Reset)" -NoNewline -ForegroundColor Green
                    $isHead = $false
                }
                else {
                    Microsoft.PowerShell.Utility\Write-Host "${blink}o$($PSStyle.Reset)" -NoNewline -ForegroundColor Green
                }
            }

            # draw food item
            [Console]::SetCursorPosition($script:gameState.food.Item1, $script:gameState.food.Item2)
            Microsoft.PowerShell.Utility\Write-Host "$($PSStyle.Blink)*$($PSStyle.Reset)" -NoNewline -ForegroundColor Red

            Log (
                "Initial screen drawn - snake ($($script:gameState.snake.Count) segments), " +
                "food at ($($script:gameState.food.Item1), $($script:gameState.food.Item2))"
            )

            if ($WithMaze) {

                # Redraw snake without blink
                $isHead = $true
                foreach ($segment in $script:gameState.snake) {
                    [Console]::SetCursorPosition($segment.Item1, $segment.Item2)
                    if ($isHead) {
                        Microsoft.PowerShell.Utility\Write-Host 'O' -NoNewline -ForegroundColor Green
                        $isHead = $false
                    }
                    else {
                        Microsoft.PowerShell.Utility\Write-Host 'o' -NoNewline -ForegroundColor Green
                    }
                }
                Log "Snake redrawn without blink after pause"
            }

            # draw route path if ShowRoute is enabled
            DrawRoutePath
        }

        # internal function to count consecutive free spaces in a direction
        function CountFreeSpaces {

            param(
                [int]$startX,
                [int]$startY,
                [string]$direction
            )

            # initialize direction vectors for movement calculation
            $dx = 0

            $dy = 0

            # set direction vector based on movement direction
            switch ($direction) {

                'Up' { $dy = -1 }
                'Down' { $dy = 1 }
                'Left' { $dx = -1 }
                'Right' { $dx = 1 }
            }

            $count = 0

            # count spaces until obstacle or boundary encountered
            while ($true) {

                # calculate next position to check
                $checkX = $startX + ($dx * ($count + 1))

                $checkY = $startY + ($dy * ($count + 1))

                # stop if boundary reached
                if (
                    $checkX -lt $script:gameState.playFieldLeft -or
                    $checkX -ge $script:gameState.playFieldRight -or
                    $checkY -lt $script:gameState.playFieldTop -or
                    $checkY -ge $script:gameState.playFieldBottom
                ) {

                    break
                }

                # stop if obstacle found in screen buffer
                if ($script:gameState.screenBuffer[$checkY][$checkX] -ne ' ') {

                    break
                }

                $count++
            }

            return $count
        }

        # internal function to dynamically adjust game speed based on context
        function SetCurrentSpeed {

            Log "SetCurrentSpeed function called"

            # initialize counters for space calculation
            $nrOfFreePositionsInCurrentDirection = 0

            $totalNumberOfFreePositionsSinceLastTurn = 0

            # get current snake head position
            $head = $script:gameState.snake[0]

            $currentX = $head.Item1

            $currentY = $head.Item2

            Log (
                "Snake head position: ($currentX, $currentY), direction: " +
                "$($script:gameState.direction)"
            )

            # count free spaces ahead in current direction
            $nrOfFreePositionsInCurrentDirection = CountFreeSpaces `
                -startX $currentX `
                -startY $currentY `
                -direction $script:gameState.direction

            Log (
                "Free positions in current direction " +
                "($($script:gameState.direction)): " +
                "$nrOfFreePositionsInCurrentDirection"
            )

            # calculate movement since last direction change
            Log (
                "LastMoveCoord available: " +
                "($($script:gameState.LastMoveCoord.Item1), " +
                "$($script:gameState.LastMoveCoord.Item2))"
            )

            # determine movement delta from last turn position
            $deltaX = $head.Item1 - $script:gameState.LastMoveCoord.Item1

            $deltaY = $head.Item2 - $script:gameState.LastMoveCoord.Item2

            Log "Delta from last turn: X=$deltaX, Y=$deltaY"

            # determine primary movement axis since last turn
            $movementDirection = ''

            if ([Math]::Abs($deltaX) -gt [Math]::Abs($deltaY)) {

                # horizontal movement is dominant
                $movementDirection = if ($deltaX -gt 0) { 'Right' } else {
                    'Left'
                }
            }
            else {

                # vertical movement is dominant
                $movementDirection = if ($deltaY -gt 0) { 'Down' } else {
                    'Up'
                }
            }

            Log (
                "Primary movement direction since last turn: " +
                "$movementDirection"
            )

            # count free spaces from last turn position
            $totalNumberOfFreePositionsSinceLastTurn = CountFreeSpaces `
                -startX $script:gameState.LastMoveCoord.Item1 `
                -startY $script:gameState.LastMoveCoord.Item2 `
                -direction $movementDirection

            Log (
                "Free spaces from last turn position in " +
                "$movementDirection direction: " +
                "$totalNumberOfFreePositionsSinceLastTurn"
            )

            Log (
                "Analysis: FreeAhead=$nrOfFreePositionsInCurrentDirection, " +
                "FreeSpacesAtLastTurn=" +
                "$totalNumberOfFreePositionsSinceLastTurn"
            )

            # define speed range boundaries for calculation
            $fastest = 20.0

            $slowest = [Math]::Min([Math]::Max(20.0, $speed), 2000.0)

            $delta = $slowest - $fastest

            $fastestLength = 30.0

            Log (
                "Speed calculation parameters: fastest=$fastest, " +
                "slowest=$slowest, delta=$delta, " +
                "fastestLength=$fastestLength"
            )

            # calculate ratio based on snake length
            $ratioSnakeLength = 1.0 - [Math]::Min(
                1.0,
                ($script:gameState.snake.Count / $fastestLength)
            )

            Log (
                "Snake length ratio: 1.0 - " +
                "$($script:gameState.snake.Count)/$fastestLength = " +
                "$ratioSnakeLength"
            )

            # calculate ratio based on remaining free space
            $ratioFreeSpaceLeft = 1.0 - [Math]::Min(
                1.0,
                (
                    $nrOfFreePositionsInCurrentDirection / [Math]::Max(
                        1.0,
                        $totalNumberOfFreePositionsSinceLastTurn
                    )
                )
            )

            Log (
                "Free space ratio: 1.0 - " +
                "$nrOfFreePositionsInCurrentDirection/" +
                "[Math]::Max(1.0, $totalNumberOfFreePositionsSinceLastTurn) " +
                "= $ratioFreeSpaceLeft"
            )

            # calculate distance from center of free space
            $ratioAwayFromCenterOfFreeSpace = (
                [Math]::Abs(0.5 - $ratioFreeSpaceLeft) * 2.0
            )

            Log (
                "Away from center ratio: [Math]::Abs(0.5 - " +
                "$ratioFreeSpaceLeft) * 2.0 = " +
                "$ratioAwayFromCenterOfFreeSpace"
            )

            # calculate console aspect ratio for speed adjustment
            $expectRatio = (
                [double] $script:gameState.width /
                [double] $script:gameState.height
            )

            Log "Console aspect ratio: $expectRatio (Width/Height)"

            # adjust ratio based on movement direction and aspect ratio
            $ratioDirection = if (
                $script:gameState.direction -in @('Left', 'Right')
            ) {
                # horizontal movement speed adjustment
                if ($expectRatio -lt 1) {
                    # landscape orientation
                    (
                        [double] $script:gameState.width /
                        [double] $script:gameState.height
                    )
                }
                else {
                    # portrait orientation
                    (
                        [double] $script:gameState.height /
                        [double] $script:gameState.width
                    )
                }
            }
            else {
                # vertical movement speed adjustment
                if ($expectRatio -lt 1) {
                    # landscape orientation
                    (
                        [double] $script:gameState.height /
                        [double] $script:gameState.width
                    )
                }
                else {
                    # portrait orientation
                    (
                        [double] $script:gameState.width /
                        [double] $script:gameState.height
                    )
                }
            }

            Log (
                "Direction ratio based on movement direction " +
                "($($script:gameState.direction)): $ratioDirection"
            )

            Log (
                "$fastest + ($delta * $ratioSnakeLength * " +
                "$ratioAwayFromCenterOfFreeSpace * $ratioDirection)"
            )

            # calculate final game speed using all ratios
            $script:gameState.gameSpeed = [int] [Math]::Round(
                [Math]::Min(
                    $slowest,
                    $fastest + (
                        $delta * $ratioDirection * (
                            $ratioAwayFromCenterOfFreeSpace +
                            $ratioSnakeLength
                        ) / 2.0
                    )
                ),
                0
            )

            Log "Final game speed: $($script:gameState.gameSpeed)"

            return $script:gameState.gameSpeed
        }

        # internal function to update snake position and handle collisions
        function UpdateSnake {

            param(
                [string]$direction
            )

            Log "UpdateSnake called with direction: $direction"

            # declare strongly-typed variables for snake movement
            [Tuple[int, int]] $previousTail = $null

            [Tuple[int, int]] $head = $null

            [int] $newX = 0

            [int] $newY = 0

            [Tuple[int, int]] $newHead = $null

            [bool] $ateFood = $false

            [bool] $collision = $false

            # store tail position before movement for potential restoration
            $previousTail = $script:gameState.snake[
            $script:gameState.snake.Count - 1
            ]

            Log (
                "Previous tail at: ($($previousTail.Item1), " +
                "$($previousTail.Item2))"
            )

            # get current head position
            $head = $script:gameState.snake[0]

            $newX = $head.Item1

            $newY = $head.Item2

            Log "Current head at: ($($head.Item1), $($head.Item2))"

            # calculate new head position based on movement direction
            switch ($direction) {

                'Up' { $newY = $head.Item2 - 1 }
                'Down' { $newY = $head.Item2 + 1 }
                'Left' { $newX = $head.Item1 - 1 }
                'Right' { $newX = $head.Item1 + 1 }
            }

            $newHead = [Tuple]::Create($newX, $newY)

            Log "New head position: ($newX, $newY)"

            # check for boundary collisions
            if (
                $newX -lt $script:gameState.playFieldLeft -or
                $newX -ge $script:gameState.playFieldRight -or
                $newY -lt $script:gameState.playFieldTop -or
                $newY -ge $script:gameState.playFieldBottom
            ) {

                $collision = $true

                Log "COLLISION: Boundary collision detected at ($newX, $newY)"
            }
            elseif (
                $script:gameState.screenBuffer[$newY][$newX] -ne ' '
            ) {

                # check for screen buffer content collisions
                $collision = $true

                Log (
                    "COLLISION: Screen buffer collision detected at " +
                    "($newX, $newY), char: " +
                    "'$($script:gameState.screenBuffer[$newY][$newX])'"
                )
            }
            elseif ($newHead -in $script:gameState.snake) {

                # check for self-collision with snake body
                $collision = $true

                Log "COLLISION: Self collision detected at ($newX, $newY)"
            }

            # return immediately if any collision detected
            if ($collision) {

                Log "UpdateSnake returning false due to collision"

                return $false
            }

            # determine if food was eaten at new position
            $ateFood = (
                $newHead.Item1 -eq $script:gameState.food.Item1 -and
                $newHead.Item2 -eq $script:gameState.food.Item2
            )

            Log (
                "Food eaten: $ateFood (food at: " +
                "$($script:gameState.food.Item1), " +
                "$($script:gameState.food.Item2))"
            )

            # add new head segment to front of snake
            $script:gameState.snake.Insert(0, $newHead)

            Log (
                "New head added to snake, snake length now: " +
                "$($script:gameState.snake.Count)"
            )

            # remove tail if food not eaten to maintain length
            if (-not $ateFood) {

                # restore original character at previous tail position
                [Console]::SetCursorPosition(
                    $previousTail.Item1,
                    $previousTail.Item2
                )

                $originalChar = $script:gameState.screenBuffer[
                $previousTail.Item2
                ][$previousTail.Item1]

                Microsoft.PowerShell.Utility\Write-Host $originalChar -NoNewline

                # remove tail segment from snake
                $script:gameState.snake.RemoveAt(
                    $script:gameState.snake.Count - 1
                )

                Log (
                    "Tail removed, restored char '$originalChar' at " +
                    "($($previousTail.Item1), $($previousTail.Item2))"
                )
            }

            # render new head position on screen
            [Console]::SetCursorPosition($newHead.Item1, $newHead.Item2)

            Microsoft.PowerShell.Utility\Write-Host 'O' -NoNewline `
                -ForegroundColor Green

            Log "New head drawn at ($($newHead.Item1), $($newHead.Item2))"

            # update previous head to body segment character
            if ($script:gameState.snake.Count -gt 1) {

                [Console]::SetCursorPosition(
                    $script:gameState.snake[1].Item1,
                    $script:gameState.snake[1].Item2
                )

                Microsoft.PowerShell.Utility\Write-Host 'o' -NoNewline `
                    -ForegroundColor Green

                Log (
                    "Previous head updated to body segment at " +
                    "($($script:gameState.snake[1].Item1), " +
                    "$($script:gameState.snake[1].Item2))"
                )
            }

            # handle food consumption and new food placement
            if ($ateFood) {

                # increment player score
                $script:gameState.score++

                Log "Score increased to: $($script:gameState.score)"

                $oldFood = $script:gameState.food

                Log (
                    "Attempting to place new food after eating food at: " +
                    "($($oldFood.Item1), $($oldFood.Item2))"
                )

                # find new unoccupied position for food
                $script:gameState.food = FindUnoccupiedSpace -requiredLength 1 -insideMaze:$WithMaze

                # validate new food placement succeeded
                if ($null -eq $script:gameState.food) {

                    Log (
                        "ERROR: Failed to place new food - " +
                        "FindUnoccupiedSpace returned null"
                    )

                    # use emergency fallback center position
                    $script:gameState.food = [Tuple]::Create(
                        (
                            ($script:gameState.playFieldRight - (
                                $script:gameState.playFieldLeft
                            )) / 2 + $script:gameState.playFieldLeft
                        ),
                        (
                            ($script:gameState.playFieldBottom - (
                                $script:gameState.playFieldTop
                            )) / 2 + $script:gameState.playFieldTop
                        )
                    )

                    Log (
                        "Emergency food placement at center: " +
                        "($($script:gameState.food.Item1), " +
                        "$($script:gameState.food.Item2))"
                    )
                }
                elseif (
                    $script:gameState.food.Item1 -eq $oldFood.Item1 -and
                    $script:gameState.food.Item2 -eq $oldFood.Item2
                ) {

                    Log (
                        "WARNING: New food placed at same location as old " +
                        "food: ($($script:gameState.food.Item1), " +
                        "$($script:gameState.food.Item2))"
                    )
                }
                else {

                    Log (
                        "New food placed successfully at: " +
                        "($($script:gameState.food.Item1), " +
                        "$($script:gameState.food.Item2)) (was at: " +
                        "($($oldFood.Item1), $($oldFood.Item2)))"
                    )
                }

                # perform additional validation of new food position
                if (
                    $script:gameState.food.Item1 -lt (
                        $script:gameState.playFieldLeft
                    ) -or $script:gameState.food.Item1 -ge (
                        $script:gameState.playFieldRight
                    ) -or $script:gameState.food.Item2 -lt (
                        $script:gameState.playFieldTop
                    ) -or $script:gameState.food.Item2 -ge (
                        $script:gameState.playFieldBottom
                    )
                ) {

                    Log (
                        "ERROR: New food placed outside playfield boundaries " +
                        "at ($($script:gameState.food.Item1), " +
                        "$($script:gameState.food.Item2))"
                    )
                }
                elseif ($script:gameState.food -in $script:gameState.snake) {

                    Log (
                        "ERROR: New food placed on snake body at " +
                        "($($script:gameState.food.Item1), " +
                        "$($script:gameState.food.Item2))"
                    )
                }
                else {

                    Log (
                        "Food position validation passed: " +
                        "($($script:gameState.food.Item1), " +
                        "$($script:gameState.food.Item2)) is within bounds " +
                        "and not on snake"
                    )
                }

                # render new food on screen
                [Console]::SetCursorPosition(
                    $script:gameState.food.Item1,
                    $script:gameState.food.Item2
                )

                Microsoft.PowerShell.Utility\Write-Host (
                    "$($PSStyle.Blink)*$($PSStyle.Reset)"
                ) -NoNewline -ForegroundColor Red

                Log (
                    "New food drawn at: ($($script:gameState.food.Item1), " +
                    "$($script:gameState.food.Item2))"
                )

                # update route path after food placement
                DrawRoutePath
            }

            Log "UpdateSnake completed successfully"

            # return success if no collision occurred
            return $true
        }

        # internal function to find row with fewest snake segments
        function getRowWithLeastSnake {

            # count snake segments per row
            $rowCounts = @{}

            foreach ($segment in $script:gameState.snake) {

                if ($rowCounts.ContainsKey($segment.Item2)) {

                    $rowCounts[$segment.Item2]++
                }
                else {

                    $rowCounts[$segment.Item2] = 1
                }
            }

            # find row with minimum segment count
            $minCount = [int]::MaxValue

            $bestRow = -1

            foreach ($row in $rowCounts.Keys) {

                if ($rowCounts[$row] -lt $minCount) {

                    $minCount = $rowCounts[$row]

                    $bestRow = $row
                }
            }

            return $bestRow
        }

        # find suitable positions for initial snake placement
        Log "Starting snake initialization"

        if ($WithMaze) {
            # Calculate maze bottom y
            $totalMazeRows = [int](($cellsHeight + 1) + $cellsHeight * $pathWidth)
            $mazeBottom = [int]($mazeTop + $totalMazeRows - 1)

            # Place snake below maze left corner, moving right
            $startY = [int]($mazeBottom + 1)
            if ($startY -gt $script:gameState.playFieldBottom) {
                $startY = $script:gameState.playFieldBottom
            }
            $startX = [int]($script:gameState.playFieldLeft + $script:gameState.snakeLength - 1)  # Head at rightmost of snake
            $script:gameState.snakePositions = @()
            $canPlace = $true

            for ($i = 0; $i -lt $script:gameState.snakeLength; $i++) {
                $checkX = $startX - $i
                $checkY = $startY

                if (
                    $checkX -lt $script:gameState.playFieldLeft -or
                    $checkX -ge $script:gameState.playFieldRight -or
                    $checkY -lt $script:gameState.playFieldTop -or
                    $checkY -ge $script:gameState.playFieldBottom -or
                    $script:gameState.screenBuffer[$checkY][$checkX] -ne ' '
                ) {
                    $canPlace = $false
                    break
                }

                $script:gameState.snakePositions += [Tuple]::Create($checkX, $checkY)
            }

            if (-not $canPlace) {
                Log "Could not place snake below maze left corner, using random placement"
                $script:gameState.snakePositions = FindUnoccupiedSpace `
                    -requiredLength $script:gameState.snakeLength `
                    -allowVertical
            }
            else {
                $script:gameState.direction = 'Right'
                Log "Snake placed below maze left corner moving right"
            }

            # Place initial food inside maze
            Log "Placing initial food inside maze"
            $script:gameState.food = FindUnoccupiedSpace -requiredLength 1 -insideMaze
            if ($null -eq $script:gameState.food) {
                Log "Could not place food inside maze, using regular placement"
                $script:gameState.food = FindUnoccupiedSpace -requiredLength 1
            }
        }
        else {
            $script:gameState.snakePositions = FindUnoccupiedSpace `
                -requiredLength $script:gameState.snakeLength `
                -allowVertical

            $script:gameState.food = FindUnoccupiedSpace -requiredLength 1
        }

        Log (
            "Snake positions found: " +
            "$($script:gameState.snakePositions.Count) segments"
        )

        # add all positions to snake list at once
        $script:gameState.snake.AddRange(
            [System.Tuple[int, int][]]$script:gameState.snakePositions
        )

        Log (
            "Snake initialized with $($script:gameState.snake.Count) " +
            "segments"
        )

        Log (
            "Food placed at: ($($script:gameState.food.Item1), " +
            "$($script:gameState.food.Item2))"
        )

        # store initial position for speed calculation
        $script:gameState.LastMoveCoord = $script:gameState.snake[0]

        # render initial game screen
        Log "Drawing initial screen"

        DrawInitialScreen

        Log (
            "Begin block completed, current direction: " +
            "$($script:gameState.direction)"
        )
    }

    process {

        Log "Entering main game loop"

        if ($PSCmdlet.ShouldProcess("Start Snake Game", "Modify console state")) {

            # main game loop continues until game over
            while ($true) {

                Log (
                    "Game loop iteration started, direction: " +
                    "$($script:gameState.direction)"
                )

                # check if console window has been resized
                if (ScreenIsResized) {

                    Log "Screen resize detected, ending game"

                    # update dimensions for final message
                    $script:gameState.height = [Console]::WindowHeight

                    $script:gameState.width = [Console]::WindowWidth

                    Clear-Host

                    # display final score message
                    Microsoft.PowerShell.Utility\Write-Host (
                        "`e[93;44m" +
                        (
                            "Screen resized. Game over! Final Score: " +
                            "$($script:gameState.score)"
                        ).PadRight($script:gameState.width - 1, ' ') +
                        "`e[0m"
                    ) -NoNewline

                    break
                }

                # process keyboard input if available
                if ([Console]::KeyAvailable) {

                    $key = [Console]::ReadKey($true)

                    Log (
                        "Key pressed: $($key.Key) (KeyChar: '$($key.KeyChar)')"
                    )

                    # define mappings for both arrow keys and wasd controls
                    $keyMappings = @{
                        [ConsoleKey]::UpArrow    = @{
                            direction = 'Up'
                            opposite  = 'Down'
                            wasd      = $false
                        }
                        [ConsoleKey]::DownArrow  = @{
                            direction = 'Down'
                            opposite  = 'Up'
                            wasd      = $false
                        }
                        [ConsoleKey]::LeftArrow  = @{
                            direction = 'Left'
                            opposite  = 'Right'
                            wasd      = $false
                        }
                        [ConsoleKey]::RightArrow = @{
                            direction = 'Right'
                            opposite  = 'Left'
                            wasd      = $false
                        }
                        [ConsoleKey]::W          = @{
                            direction = 'Up'
                            opposite  = 'Down'
                            wasd      = $true
                        }
                        [ConsoleKey]::A          = @{
                            direction = 'Left'
                            opposite  = 'Right'
                            wasd      = $true
                        }
                        [ConsoleKey]::S          = @{
                            direction = 'Down'
                            opposite  = 'Up'
                            wasd      = $true
                        }
                        [ConsoleKey]::D          = @{
                            direction = 'Right'
                            opposite  = 'Left'
                            wasd      = $true
                        }
                    }

                    # process direction change if valid key pressed
                    if ($keyMappings.ContainsKey($key.Key)) {

                        $mapping = $keyMappings[$key.Key]

                        Log (
                            "Found mapping for key $($key.Key): direction=" +
                            "$($mapping.direction), opposite=" +
                            "$($mapping.opposite)"
                        )

                        # prevent 180-degree turns into snake body
                        if (
                            $script:gameState.direction -ne $mapping.opposite
                        ) {

                            # store position where direction changed
                            $script:gameState.LastMoveCoord = (
                                $script:gameState.snake[0]
                            )

                            # update movement direction
                            $script:gameState.direction = $mapping.direction

                            # record time of direction change
                            $script:gameState.LastMoveTime = (
                                [DateTime]::UtcNow
                            )

                            # identify control type for logging
                            $controlType = if ($mapping.wasd) { ' (WASD)' } else {
                                ''
                            }

                            Log (
                                "Direction changed to: " +
                                "$($mapping.direction)$controlType"
                            )
                        }
                        else {

                            Log (
                                "Direction change blocked: current=" +
                                "$($script:gameState.direction), trying " +
                                "opposite=$($mapping.opposite)"
                            )
                        }
                    }
                    elseif ($key.Key -eq 'Escape') {

                        # exit game when escape key pressed
                        Log "Escape key pressed, exiting game"

                        [Console]::SetCursorPosition(
                            0,
                            $script:gameState.height - 2
                        )

                        Microsoft.PowerShell.Utility\Write-Host (
                            "`e[93;44m" +
                            (
                                "Game exited. Final Score: " +
                                "$($script:gameState.score)"
                            ).PadRight($script:gameState.width - 1, ' ') +
                            "`e[0m"
                        ) -NoNewline

                        return
                    }
                    else {

                        Log "Unhandled key: $($key.Key)"
                    }
                }

                # update snake position and check for collisions
                Log (
                    "Calling UpdateSnake with direction: " +
                    "$($script:gameState.direction)"
                )

                $result = UpdateSnake -direction $script:gameState.direction

                Log "UpdateSnake returned: $result"

                # handle collision game over
                if (-not $result) {

                    Log "Game over due to collision"

                    [Console]::SetCursorPosition(
                        0,
                        $script:gameState.height - 2
                    )

                    Microsoft.PowerShell.Utility\Write-Host (
                        "`e[93;44m" +
                        (
                            "Collision detected! Game over! Final Score: " +
                            "$($script:gameState.score)"
                        ).PadRight($script:gameState.width - 1, ' ') +
                        "`e[0m"
                    ) -NoNewline

                    break
                }

                # calculate and apply dynamic game speed
                $script:gameState.gameSpeed = SetCurrentSpeed

                Log "Sleeping for $($script:gameState.gameSpeed) milliseconds"

                # position cursor at bottom for status display
                [Console]::SetCursorPosition(0, $script:gameState.height - 1)

                Microsoft.PowerShell.Utility\Start-Sleep `
                    -Milliseconds $script:gameState.gameSpeed
            }

            Log "Game loop ended"
        }
    }

    end {

        Log (
            "Snake game ended, final score: $($script:gameState.score)"
        )

        # save debug log if logging enabled
        if ($script:gameState.loggingEnabled) {

            try {

                $logContent = $script:gameState.logBuilder.ToString()

                [System.IO.File]::WriteAllText(
                    $script:gameState.logPath,
                    $logContent,
                    [System.Text.Encoding]::UTF8
                )
            }
            catch {

                Microsoft.PowerShell.Utility\Write-Warning "Failed to save log file: $_"
            }
        }
    }
}
<##############################################################################
Part of PowerShell module : GenXdev.Console
Original cmdlet filename  : Start-TextToSpeech.ps1
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
Converts text to speech using Microsoft Edge's neural TTS engine.

.DESCRIPTION
Uses Microsoft Edge's neural TTS engine (via EdgeTTS.DotNet) to convert text
to speech with natural-sounding voices. This function provides flexible
text-to-speech capabilities with support for different voices, locales,
prosody adjustments (rate, volume, pitch), and synchronous/asynchronous
playback options. It can handle both single strings and arrays of text.

.PARAMETER Lines
The text to be spoken. Accepts single string or array of strings. Each line
will be processed sequentially for speech synthesis.

.PARAMETER Locale
The language locale ID to use (e.g., 'en-US', 'es-ES'). When specified, the
function will attempt to use a voice matching this locale.

.PARAMETER VoiceName
The specific voice name to use for speech synthesis. If specified, the
function will attempt to find and use a matching voice from available
Edge TTS voices.

.PARAMETER Rate
The speech rate as a relative value (e.g. "+0%", "-20%", "+50%"). Positive
values speed up speech, negative values slow it down. Default is "+0%".

.PARAMETER Volume
The volume level as a relative value (e.g. "+0%", "-25%", "+100%").
Positive values increase volume, negative values decrease it.
Default is "+0%".

.PARAMETER Pitch
The pitch shift in Hz (e.g. "+0Hz", "-10Hz", "+20Hz"). Positive values
raise the pitch, negative values lower it. Default is "+0Hz".

.PARAMETER PassThru
When specified, outputs the text being spoken to the pipeline, allowing for
text processing while speaking.

.PARAMETER Wait
When specified, waits for speech to complete before continuing execution.
Useful for synchronous operations.

.EXAMPLE
Start-TextToSpeech -Lines "Hello World" -Locale "en-US" -Wait

.EXAMPLE
"Hello World" | say

.EXAMPLE
say "Hello World" -Rate "+50%" -Pitch "-5Hz"
#>
function Start-TextToSpeech {

    [CmdletBinding(SupportsShouldProcess = $true)]
    [Alias('say')]
    param(
        [Parameter(
            Mandatory = $true,
            Position = 0,
            ValueFromPipeline = $true,
            ValueFromRemainingArguments = $false,
            ParameterSetName = 'strings',
            HelpMessage = 'Text to be spoken'
        )]
        [string[]] $Lines,

        [ValidateSet(
            'af-ZA-AdriNeural',
            'af-ZA-WillemNeural',
            'am-ET-AmehaNeural',
            'am-ET-MekdesNeural',
            'ar-AE-FatimaNeural',
            'ar-AE-HamdanNeural',
            'ar-BH-AliNeural',
            'ar-BH-LailaNeural',
            'ar-DZ-AminaNeural',
            'ar-DZ-IsmaelNeural',
            'ar-EG-SalmaNeural',
            'ar-EG-ShakirNeural',
            'ar-IQ-BasselNeural',
            'ar-IQ-RanaNeural',
            'ar-JO-SanaNeural',
            'ar-JO-TaimNeural',
            'ar-KW-FahedNeural',
            'ar-KW-NouraNeural',
            'ar-LB-LaylaNeural',
            'ar-LB-RamiNeural',
            'ar-LY-ImanNeural',
            'ar-LY-OmarNeural',
            'ar-MA-JamalNeural',
            'ar-MA-MounaNeural',
            'ar-OM-AbdullahNeural',
            'ar-OM-AyshaNeural',
            'ar-QA-AmalNeural',
            'ar-QA-MoazNeural',
            'ar-SA-HamedNeural',
            'ar-SA-ZariyahNeural',
            'ar-SY-AmanyNeural',
            'ar-SY-LaithNeural',
            'ar-TN-HediNeural',
            'ar-TN-ReemNeural',
            'ar-YE-MaryamNeural',
            'ar-YE-SalehNeural',
            'az-AZ-BabekNeural',
            'az-AZ-BanuNeural',
            'bg-BG-BorislavNeural',
            'bg-BG-KalinaNeural',
            'bn-BD-NabanitaNeural',
            'bn-BD-PradeepNeural',
            'bn-IN-BashkarNeural',
            'bn-IN-TanishaaNeural',
            'bs-BA-GoranNeural',
            'bs-BA-VesnaNeural',
            'ca-ES-EnricNeural',
            'ca-ES-JoanaNeural',
            'cs-CZ-AntoninNeural',
            'cs-CZ-VlastaNeural',
            'cy-GB-AledNeural',
            'cy-GB-NiaNeural',
            'da-DK-ChristelNeural',
            'da-DK-JeppeNeural',
            'de-AT-IngridNeural',
            'de-AT-JonasNeural',
            'de-CH-JanNeural',
            'de-CH-LeniNeural',
            'de-DE-AmalaNeural',
            'de-DE-ConradNeural',
            'de-DE-FlorianMultilingualNeural',
            'de-DE-KatjaNeural',
            'de-DE-KillianNeural',
            'de-DE-SeraphinaMultilingualNeural',
            'el-GR-AthinaNeural',
            'el-GR-NestorasNeural',
            'en-AU-NatashaNeural',
            'en-AU-WilliamMultilingualNeural',
            'en-CA-ClaraNeural',
            'en-CA-LiamNeural',
            'en-GB-LibbyNeural',
            'en-GB-MaisieNeural',
            'en-GB-RyanNeural',
            'en-GB-SoniaNeural',
            'en-GB-ThomasNeural',
            'en-HK-SamNeural',
            'en-HK-YanNeural',
            'en-IE-ConnorNeural',
            'en-IE-EmilyNeural',
            'en-IN-NeerjaExpressiveNeural',
            'en-IN-NeerjaNeural',
            'en-IN-PrabhatNeural',
            'en-KE-AsiliaNeural',
            'en-KE-ChilembaNeural',
            'en-NG-AbeoNeural',
            'en-NG-EzinneNeural',
            'en-NZ-MitchellNeural',
            'en-NZ-MollyNeural',
            'en-PH-JamesNeural',
            'en-PH-RosaNeural',
            'en-SG-LunaNeural',
            'en-SG-WayneNeural',
            'en-TZ-ElimuNeural',
            'en-TZ-ImaniNeural',
            'en-US-AnaNeural',
            'en-US-AndrewMultilingualNeural',
            'en-US-AndrewNeural',
            'en-US-AriaNeural',
            'en-US-AvaMultilingualNeural',
            'en-US-AvaNeural',
            'en-US-BrianMultilingualNeural',
            'en-US-BrianNeural',
            'en-US-ChristopherNeural',
            'en-US-EmmaMultilingualNeural',
            'en-US-EmmaNeural',
            'en-US-EricNeural',
            'en-US-GuyNeural',
            'en-US-JennyNeural',
            'en-US-MichelleNeural',
            'en-US-RogerNeural',
            'en-US-SteffanNeural',
            'en-ZA-LeahNeural',
            'en-ZA-LukeNeural',
            'es-AR-ElenaNeural',
            'es-AR-TomasNeural',
            'es-BO-MarceloNeural',
            'es-BO-SofiaNeural',
            'es-CL-CatalinaNeural',
            'es-CL-LorenzoNeural',
            'es-CO-GonzaloNeural',
            'es-CO-SalomeNeural',
            'es-CR-JuanNeural',
            'es-CR-MariaNeural',
            'es-CU-BelkysNeural',
            'es-CU-ManuelNeural',
            'es-DO-EmilioNeural',
            'es-DO-RamonaNeural',
            'es-EC-AndreaNeural',
            'es-EC-LuisNeural',
            'es-ES-AlvaroNeural',
            'es-ES-ElviraNeural',
            'es-ES-XimenaNeural',
            'es-GQ-JavierNeural',
            'es-GQ-TeresaNeural',
            'es-GT-AndresNeural',
            'es-GT-MartaNeural',
            'es-HN-CarlosNeural',
            'es-HN-KarlaNeural',
            'es-MX-DaliaNeural',
            'es-MX-JorgeNeural',
            'es-NI-FedericoNeural',
            'es-NI-YolandaNeural',
            'es-PA-MargaritaNeural',
            'es-PA-RobertoNeural',
            'es-PE-AlexNeural',
            'es-PE-CamilaNeural',
            'es-PR-KarinaNeural',
            'es-PR-VictorNeural',
            'es-PY-MarioNeural',
            'es-PY-TaniaNeural',
            'es-SV-LorenaNeural',
            'es-SV-RodrigoNeural',
            'es-US-AlonsoNeural',
            'es-US-PalomaNeural',
            'es-UY-MateoNeural',
            'es-UY-ValentinaNeural',
            'es-VE-PaolaNeural',
            'es-VE-SebastianNeural',
            'et-EE-AnuNeural',
            'et-EE-KertNeural',
            'fa-IR-DilaraNeural',
            'fa-IR-FaridNeural',
            'fi-FI-HarriNeural',
            'fi-FI-NooraNeural',
            'fil-PH-AngeloNeural',
            'fil-PH-BlessicaNeural',
            'fr-BE-CharlineNeural',
            'fr-BE-GerardNeural',
            'fr-CA-AntoineNeural',
            'fr-CA-JeanNeural',
            'fr-CA-SylvieNeural',
            'fr-CA-ThierryNeural',
            'fr-CH-ArianeNeural',
            'fr-CH-FabriceNeural',
            'fr-FR-DeniseNeural',
            'fr-FR-EloiseNeural',
            'fr-FR-HenriNeural',
            'fr-FR-RemyMultilingualNeural',
            'fr-FR-VivienneMultilingualNeural',
            'ga-IE-ColmNeural',
            'ga-IE-OrlaNeural',
            'gl-ES-RoiNeural',
            'gl-ES-SabelaNeural',
            'gu-IN-DhwaniNeural',
            'gu-IN-NiranjanNeural',
            'he-IL-AvriNeural',
            'he-IL-HilaNeural',
            'hi-IN-MadhurNeural',
            'hi-IN-SwaraNeural',
            'hr-HR-GabrijelaNeural',
            'hr-HR-SreckoNeural',
            'hu-HU-NoemiNeural',
            'hu-HU-TamasNeural',
            'id-ID-ArdiNeural',
            'id-ID-GadisNeural',
            'is-IS-GudrunNeural',
            'is-IS-GunnarNeural',
            'it-IT-DiegoNeural',
            'it-IT-ElsaNeural',
            'it-IT-GiuseppeMultilingualNeural',
            'it-IT-IsabellaNeural',
            'iu-Cans-CA-SiqiniqNeural',
            'iu-Cans-CA-TaqqiqNeural',
            'iu-Latn-CA-SiqiniqNeural',
            'iu-Latn-CA-TaqqiqNeural',
            'ja-JP-KeitaNeural',
            'ja-JP-NanamiNeural',
            'jv-ID-DimasNeural',
            'jv-ID-SitiNeural',
            'ka-GE-EkaNeural',
            'ka-GE-GiorgiNeural',
            'kk-KZ-AigulNeural',
            'kk-KZ-DauletNeural',
            'km-KH-PisethNeural',
            'km-KH-SreymomNeural',
            'kn-IN-GaganNeural',
            'kn-IN-SapnaNeural',
            'ko-KR-HyunsuMultilingualNeural',
            'ko-KR-InJoonNeural',
            'ko-KR-SunHiNeural',
            'lo-LA-ChanthavongNeural',
            'lo-LA-KeomanyNeural',
            'lt-LT-LeonasNeural',
            'lt-LT-OnaNeural',
            'lv-LV-EveritaNeural',
            'lv-LV-NilsNeural',
            'mk-MK-AleksandarNeural',
            'mk-MK-MarijaNeural',
            'ml-IN-MidhunNeural',
            'ml-IN-SobhanaNeural',
            'mn-MN-BataaNeural',
            'mn-MN-YesuiNeural',
            'mr-IN-AarohiNeural',
            'mr-IN-ManoharNeural',
            'ms-MY-OsmanNeural',
            'ms-MY-YasminNeural',
            'mt-MT-GraceNeural',
            'mt-MT-JosephNeural',
            'my-MM-NilarNeural',
            'my-MM-ThihaNeural',
            'nb-NO-FinnNeural',
            'nb-NO-PernilleNeural',
            'ne-NP-HemkalaNeural',
            'ne-NP-SagarNeural',
            'nl-BE-ArnaudNeural',
            'nl-BE-DenaNeural',
            'nl-NL-ColetteNeural',
            'nl-NL-FennaNeural',
            'nl-NL-MaartenNeural',
            'pl-PL-MarekNeural',
            'pl-PL-ZofiaNeural',
            'ps-AF-GulNawazNeural',
            'ps-AF-LatifaNeural',
            'pt-BR-AntonioNeural',
            'pt-BR-FranciscaNeural',
            'pt-BR-ThalitaMultilingualNeural',
            'pt-PT-DuarteNeural',
            'pt-PT-RaquelNeural',
            'ro-RO-AlinaNeural',
            'ro-RO-EmilNeural',
            'ru-RU-DmitryNeural',
            'ru-RU-SvetlanaNeural',
            'si-LK-SameeraNeural',
            'si-LK-ThiliniNeural',
            'sk-SK-LukasNeural',
            'sk-SK-ViktoriaNeural',
            'sl-SI-PetraNeural',
            'sl-SI-RokNeural',
            'so-SO-MuuseNeural',
            'so-SO-UbaxNeural',
            'sq-AL-AnilaNeural',
            'sq-AL-IlirNeural',
            'sr-RS-NicholasNeural',
            'sr-RS-SophieNeural',
            'su-ID-JajangNeural',
            'su-ID-TutiNeural',
            'sv-SE-MattiasNeural',
            'sv-SE-SofieNeural',
            'sw-KE-RafikiNeural',
            'sw-KE-ZuriNeural',
            'sw-TZ-DaudiNeural',
            'sw-TZ-RehemaNeural',
            'ta-IN-PallaviNeural',
            'ta-IN-ValluvarNeural',
            'ta-LK-KumarNeural',
            'ta-LK-SaranyaNeural',
            'ta-MY-KaniNeural',
            'ta-MY-SuryaNeural',
            'ta-SG-AnbuNeural',
            'ta-SG-VenbaNeural',
            'te-IN-MohanNeural',
            'te-IN-ShrutiNeural',
            'th-TH-NiwatNeural',
            'th-TH-PremwadeeNeural',
            'tr-TR-AhmetNeural',
            'tr-TR-EmelNeural',
            'uk-UA-OstapNeural',
            'uk-UA-PolinaNeural',
            'ur-IN-GulNeural',
            'ur-IN-SalmanNeural',
            'ur-PK-AsadNeural',
            'ur-PK-UzmaNeural',
            'uz-UZ-MadinaNeural',
            'uz-UZ-SardorNeural',
            'vi-VN-HoaiMyNeural',
            'vi-VN-NamMinhNeural',
            'zh-Hans-CN-XiaoxiaoNeural',
            'zh-Hans-CN-XiaoyiNeural',
            'zh-Hans-CN-YunjianNeural',
            'zh-Hans-CN-YunxiNeural',
            'zh-Hans-CN-YunxiaNeural',
            'zh-Hans-CN-YunyangNeural',
            'zh-Hans-CN-liaoning-XiaobeiNeural',
            'zh-Hans-CN-shaanxi-XiaoniNeural',
            'zh-HK-HiuGaaiNeural',
            'zh-HK-HiuMaanNeural',
            'zh-HK-WanLungNeural',
            'zh-TW-HsiaoChenNeural',
            'zh-TW-HsiaoYuNeural',
            'zh-TW-YunJheNeural',
            'zu-ZA-ThandoNeural',
            'zu-ZA-ThembaNeural'
        )]
        [Parameter(
            Mandatory = $false,
            Position = 1,
            HelpMessage = 'Name of the voice to use for speech'
        )]
        [string] $VoiceName = $null,
        [Parameter(
            Mandatory = $false,
            HelpMessage = "The language locale id to use, e.g. 'en-US'"
        )]
        [string] $Locale = $null,
        [Parameter(
            Mandatory = $false,
            HelpMessage = 'Speech rate, e.g. "+0%", "-20%", "+50%"'
        )]
        [string] $Rate = $null,
        [Parameter(
            Mandatory = $false,
            HelpMessage = 'Volume level, e.g. "+0%", "-25%", "+100%"'
        )]
        [string] $Volume = $null,
        [Parameter(
            Mandatory = $false,
            HelpMessage = 'Pitch shift, e.g. "+0Hz", "-10Hz", "+20Hz"'
        )]
        [string] $Pitch = $null,
        [Parameter(
            Mandatory = $false,
            HelpMessage = 'Output the text being spoken to the pipeline'
        )]
        [Alias('pt')]
        [switch]$PassThru,

        [Parameter(
            Mandatory = $false,
            HelpMessage = 'Wait for speech to complete before continuing'
        )]
        [switch] $Wait
    )

    begin {

        Microsoft.PowerShell.Utility\Write-Verbose (
            "Initializing text-to-speech with Locale: $Locale, " +
            "Voice: $VoiceName, Rate: $Rate, Volume: $Volume, " +
            "Pitch: $Pitch")

        # Configure prosody on the customized synthesizer
        if ($Rate) {
            [GenXdev.Helpers.Misc]::SpeechCustomized.SetRate($Rate)
        }
        if ($Volume) {
            [GenXdev.Helpers.Misc]::SpeechCustomized.SetVolume($Volume)
        }
        if ($Pitch) {
            [GenXdev.Helpers.Misc]::SpeechCustomized.SetPitch($Pitch)
        }
    }


    process {

        @($Lines) | Microsoft.PowerShell.Core\ForEach-Object {

            $text = $PSItem

            if ($text -isnot [string]) { $text = "$text" }

            try {
                if ($PassThru) { $text }

                $text = $text.Replace("`r", ' ').Replace("`n", ' ').
                Replace("`t", ' ')
                Microsoft.PowerShell.Utility\Write-Verbose (
                    "Processing text: $text")

                # Resolve voice: locale + voice name matching
                if (-not [string]::IsNullOrWhiteSpace($VoiceName) -or
                    -not [string]::IsNullOrWhiteSpace($Locale)) {

                    $voices = [GenXdev.Helpers.Misc]::SpeechCustomized.
                    GetInstalledVoices()

                    if (-not [string]::IsNullOrWhiteSpace($Locale)) {
                        $voices = $voices |
                            Microsoft.PowerShell.Core\Where-Object {
                                $PSItem.Locale -like "$Locale*"
                            }
                        }

                        if (-not [string]::IsNullOrWhiteSpace($VoiceName)) {
                            $voices = $voices |
                                Microsoft.PowerShell.Core\Where-Object {
                                    $PSItem.Name -like "*$VoiceName*"
                                }
                            }

                            $voice = $voices |
                                Microsoft.PowerShell.Utility\Select-Object -First 1

                                if ($voice) {
                                    [GenXdev.Helpers.Misc]::SpeechCustomized.
                                    SelectVoice($voice)
                                    Microsoft.PowerShell.Utility\Write-Verbose (
                                        "Selected voice: $($voice.Name)")
                                }
                                else {
                                    Microsoft.PowerShell.Utility\Write-Warning (
                                        "No matching voice found for Locale=$Locale" +
                                        " VoiceName=$VoiceName")
                                }
                            }

                            # Speak via the customized synthesizer
                            if ($PSCmdlet.ShouldProcess($text, 'Speak')) {
                                if ($Wait) {
                                    $null = [GenXdev.Helpers.Misc]::SpeechCustomized.
                                    Speak($text)
                                }
                                else {
                                    $null = [GenXdev.Helpers.Misc]::SpeechCustomized.
                                    SpeakAsyncQueued($text)
                                }
                            }
                        }
                        catch {
                            Microsoft.PowerShell.Utility\Write-Error (
                                "Speech synthesis failed: $($PSItem.Exception.Message)")
                        }
                    }
                }

                end {
                }
            }
<##############################################################################
Part of PowerShell module : GenXdev.Console
Original cmdlet filename  : Stop-TextToSpeech.ps1
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
Immediately stops any ongoing text-to-speech output.

.DESCRIPTION
Halts all active and queued speech synthesis by canceling both standard and
customized speech operations. This provides an immediate silence for any ongoing
text-to-speech activities.

.EXAMPLE
PS C:\> Stop-TextToSpeech
Immediately stops any ongoing speech

.EXAMPLE
PS C:\> say "Hello world"; sst
Starts speaking but gets interrupted immediately

.NOTES
This cmdlet is commonly used in conjunction with Start-TextToSpeech (alias: say)
and Skip-TextToSpeech (alias: sstSkip) for speech control.
#>
function Stop-TextToSpeech {

    [CmdletBinding(SupportsShouldProcess = $true)]
    [Alias('sst')]
    param()

    begin {

        Microsoft.PowerShell.Utility\Write-Verbose 'Initiating speech cancellation request'
    }


    process {

        try {
            if ($PSCmdlet.ShouldProcess('Text-to-speech output', 'Stop')) {
                # cancel all pending standard speech operations
                $null = [GenXdev.Helpers.Misc]::Speech.SpeakAsyncCancelAll()

                # cancel all pending customized speech operations
                $null = [GenXdev.Helpers.Misc]::SpeechCustomized.SpeakAsyncCancelAll()

                Microsoft.PowerShell.Utility\Write-Verbose 'Successfully cancelled all speech operations'
            }
        }
        catch {
            # silently handle any speech cancellation errors
            Microsoft.PowerShell.Utility\Write-Verbose 'Error occurred while attempting to cancel speech'
        }
    }

    end {
    }
}
<##############################################################################
Part of PowerShell module : GenXdev.Console
Original cmdlet filename  : UtcNow.ps1
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
Gets the current UTC (Coordinated Universal Time) date and time.

.DESCRIPTION
Returns the current UTC date and time as a System.DateTime object. This function
provides a standardized way to retrieve UTC time across different systems and
time zones. The returned DateTime object can be used for timestamp
 synchronization, logging, and cross-timezone operations.

.EXAMPLE
$currentUtc = UtcNow
Returns the current UTC time as a DateTime object.

.EXAMPLE
$timestamp = (UtcNow).ToString("yyyy-MM-dd HH:mm:ss")
Gets the current UTC time and formats it as a string.
#>
function UtcNow {

    [CmdletBinding()]
    [OutputType([System.DateTime])]
    param()

    begin {

        # log function execution for debugging purposes
        Microsoft.PowerShell.Utility\Write-Verbose 'Starting UtcNow function execution'
    }


    process {

        # retrieve the current utc time using .net datetime for precision
        Microsoft.PowerShell.Utility\Write-Verbose 'Retrieving current UTC datetime'
        [DateTime]::UtcNow
    }

    end {
    }
}


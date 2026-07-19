# Set-GenXdevAICommandNotFoundAction

> **Module:** GenXdev.AI | **Type:** Function | **Aliases:** —

## Synopsis

> 设置自定义命令未找到处理，并集成AI辅助。

## Description

配置 PowerShell 以处理未知命令，方法是导航到目录或使用 AI 解释用户意图。处理程序首先尝试任何现有的命令未找到处理程序，然后检查命令是否为有效的导航路径，最后对未知命令提供 AI 协助。

## Syntax

```powershell
[CmdletBinding(SupportsShouldProcess)]
    param()

    begin {

        Microsoft.PowerShell.Utility\Write-Verbose 'Starting Set-GenXdevAICommandNotFoundAction'

        # store reference to existing handler if it's not already our handler
        $script:originalHandler = $null
        $currentHandler = $ExecutionContext.InvokeCommand.CommandNotFoundAction

        # check if handler is already installed
        if ($null -ne $currentHandler) {

            $handlerString = $currentHandler.ToString()
            if ($handlerString.Contains('Do you want AI to figure out')) {

                Microsoft.PowerShell.Utility\Write-Verbose 'AI Command handler already installed - exiting'
                return
            }

            $script:originalHandler = $currentHandler
            Microsoft.PowerShell.Utility\Write-Verbose 'Stored original command handler for chaining'
        }
    }

    process {

        if (-not $PSCmdlet.ShouldProcess('Command not found handling',
                'Set AI assistance handler')) {
            return
        }

        try {
            # Add flag to prevent recursion
            $script:insideCommandHandler = $false

            Microsoft.PowerShell.Utility\Write-Verbose 'Configuring new CommandNotFoundAction handler'

            # define the command not found action handler
            $ExecutionContext.InvokeCommand.CommandNotFoundAction = {
                param($CommandName, $CommandLookupEventArgs)

                # prevent recursion
                if ($script:insideCommandHandler) {

                    Microsoft.PowerShell.Utility\Write-Debug "Preventing recursive call for command: $CommandName"
                    return
                }

                $script:insideCommandHandler = $true

                $origPSDebugPreference = $PSDebugPreference
                $origErrorActionPreference = $ErrorActionPreference
                $origVerbosePreference = $VerbosePreference
                $origWarningPreference = $WarningPreference

                try {
                    # suppress unnecessary output during handler execution
                    $PSDebugPreference = 'continue'
                    $ErrorActionPreference = 'SilentlyContinue'
                    $VerbosePreference = 'SilentlyContinue'
                    $WarningPreference = 'SilentlyContinue'

                    # skip .NET method calls
                    if ($CommandName -match '^\[.*\]::') {
                        return
                    }

                    # try original handler first
                    if ($null -ne $script:originalHandler) {
                        try {
                            & $script:originalHandler $CommandName $CommandLookupEventArgs

                            if ($CommandLookupEventArgs.StopSearch) {
                                return
                            }
                        }
                        catch {
                            Microsoft.PowerShell.Utility\Write-Debug "Original handler failed: $_"
                        }
                    }
                }
                finally {
                    # restore original preferences
                    $PSDebugPreference = $origPSDebugPreference
                    $ErrorActionPreference = $origErrorActionPreference
                    $VerbosePreference = $origVerbosePreference
                    $WarningPreference = $origWarningPreference
                    $script:insideCommandHandler = $false
                }

                # handle directory navigation
                if (Microsoft.PowerShell.Management\Test-Path -LiteralPath $CommandName -PathType Container) {

                    $CommandLookupEventArgs.CommandScriptBlock = {
                        Microsoft.PowerShell.Management\Set-Location -LiteralPath $CommandName
                        Microsoft.PowerShell.Management\Get-ChildItem
                    }.GetNewClosure()

                    $CommandLookupEventArgs.StopSearch = $true
                    return
                }

                # skip internal and get- commands
                if ($CommandLookupEventArgs.CommandOrigin -eq 'Internal' -or
                    $CommandName -like 'get-*') {
                    return
                }

                if ($CommandName -like '-' -or $CommandName -like "cd -" -or $CommandName -like "Set-Location +") {

                    $CommandLookupEventArgs.CommandScriptBlock = {
                        Microsoft.PowerShell.Management\Set-Location "-"
                    }

                    $CommandLookupEventArgs.StopSearch = $true
                    return
                }

                if ($CommandName -like '+' -or $CommandName -like "cd +" -or $CommandName -like "Set-Location -") {

                    $CommandLookupEventArgs.CommandScriptBlock = {

                        Microsoft.PowerShell.Management\Set-Location "+"
                    }

                    $CommandLookupEventArgs.StopSearch = $true
                    return
                }

                # configure AI assistance
                $CommandLookupEventArgs.CommandScriptBlock = {

                    $userChoice = $host.ui.PromptForChoice(
                        'Command not found',
                        'Do you want AI to figure out what you want?',
                        @('&Nah', '&Yes'),
                        0)

                    if ($userChoice -eq 0) { return }

                    GenXdev\Send-Key ($MyInvocation.line) -Escape

                    Microsoft.PowerShell.Utility\Write-Host -ForegroundColor Yellow 'What did you want to do?'

                    [System.Console]::Write('> ')
                    $userIntent = [System.Console]::ReadLine()
                    Microsoft.PowerShell.Utility\Write-Host -ForegroundColor Green 'Ok, hold on a sec..'

                    # prepare AI hint
                    $aiPrompt = ('Generate a Powershell commandline that would ' +
                        'be what user might have meant, but what triggered the ' +
                        "`$ExecutionContext.InvokeCommand.CommandNotFoundAction " +
                        "with her prompt being: $userIntent")

                    GenXdev\Invoke-AIPowershellCommand $aiPrompt
                }.GetNewClosure()

                $CommandLookupEventArgs.StopSearch = $true
            }
        }
        catch {
            Microsoft.PowerShell.Utility\Write-Error "Failed to set up command not found handler: $_"
        }
    }

    end {
        Microsoft.PowerShell.Utility\Write-Verbose 'Command not found handler configuration completed'
    }
```

## Examples

### Set-GenXdevAICommandNotFoundAction

```powershell
Set-GenXdevAICommandNotFoundAction
```

## Related Links

- [Set-GenXdevAICommandNotFoundAction on GitHub](https://github.com/genXdev/genXdev)

# EnsureCopilotKeyboardShortCut

> **Module:** GenXdev.Coding.PowerShell.Modules | **Type:** Function | **Aliases:** —

## Synopsis

> Visual Studio Code에서 GitHub Copilot Chat 키보드 단축키를 구성합니다.

## Description

이 함수는 GitHub Copilot Chat의 파일 첨부 기능이 Visual Studio Code에서 적절한 키보드 단축키(Ctrl+Shift+Alt+F12)를 가지도록 보장합니다.

기존의 Copilot 첨부 단축키를 모두 제거하고 현재 올바른 명령(github.copilot.chat.attachFile)으로 대체합니다.

또한 최대화된 패널을 전환하기 위해 Alt+` (백틱) 단축키를 추가합니다.

## Syntax

```powershell
[CmdletBinding()]
    param()

    begin {

        # construct the full path to vscode's keybindings configuration file
        $keybindingsPath = @(
            (GenXdev\Expand-Path "$env:APPDATA\Code\User\keybindings.json" -CreateDirectory),
            (GenXdev\Expand-Path "$env:APPDATA\Code - insiders\User\keybindings.json" -CreateDirectory)
        )

        $secondNewKeybinding =
        @{
            'key'     = 'alt+oem_3'
            'command' = 'workbench.action.toggleMaximizedPanel'
        }
    }

    process {

        # ensure the directory for keybindings exists
        foreach ($path in $keybindingsPath) {
            # Define the new keyboard shortcut configuration for copilot chat
            $newKeybinding = @{
                'key'     = 'ctrl+shift+alt+f12'
                'command' = 'workbench.action.chat.attachFile'  # Command for attaching files to Copilot chat
                'when'    = "resourceScheme == 'file' || resourceScheme == 'untitled'" +
                " || resourceScheme == 'vscode-remote' || " +
                "resourceScheme == 'vscode-userdata'"
            }            # load existing keybindings or initialize new array if file doesn't exist
            if (Microsoft.PowerShell.Management\Test-Path -LiteralPath $path) {
                Microsoft.PowerShell.Utility\Write-Verbose 'Loading existing keybindings configuration'
                $keybindingsContent = Microsoft.PowerShell.Management\Get-Content -LiteralPath $path -Raw
                if ([string]::IsNullOrWhiteSpace($keybindingsContent)) {
                    $keybindings = @()
                } else {
                    $keybindings = @(Microsoft.PowerShell.Utility\ConvertFrom-Json -InputObject $keybindingsContent -ErrorAction SilentlyContinue)
                    # Ensure we have an array to work with
                    if ($null -eq $keybindings) {
                        $keybindings = @()
                    }
                }
            }
            else {
                Microsoft.PowerShell.Utility\Write-Verbose 'Initializing new keybindings configuration'
                $keybindings = @()
            }

            # Find and remove any existing Copilot attachment bindings
            $copilotShortcutsExist = $false
            foreach ($binding in $keybindings) {
                if ($binding.command -like 'workbench.action.chat.attachFile') {
                    $copilotShortcutsExist = $true
                    break
                }
            }

            if ($copilotShortcutsExist) {
                Microsoft.PowerShell.Utility\Write-Verbose 'Removing existing Copilot attachment shortcuts'
                $newBindings = @()
                foreach ($binding in $keybindings) {
                    if (-not ($binding.command -like 'workbench.action.chat.attachFile')) {
                        $newBindings += $binding
                    }
                }
                $keybindings = $newBindings
                $modified = $true
            }

            # check if the focus editor shortcut is already configured
            $existsFocus = $keybindings | Microsoft.PowerShell.Core\Where-Object {
                $_.key -eq $secondNewKeybinding.key -and $_.command -eq $secondNewKeybinding.command
            }

            # We'll always add the current correct attachment command
            $modified = $true            # Always add the Copilot chat attachment shortcut
            Microsoft.PowerShell.Utility\Write-Verbose 'Adding/Updating Copilot chat attachment shortcut (Ctrl+Shift+Alt+F12)'
            $keybindings = @($keybindings) + @($newKeybinding)

            if (-not $existsFocus) {
                Microsoft.PowerShell.Utility\Write-Verbose "Adding Panel Toggle keyboard shortcut (Alt+`)"
                $keybindings = @($keybindings) + @($secondNewKeybinding)
                $modified = $true
            }
            else {
                Microsoft.PowerShell.Utility\Write-Verbose 'Panel Toggle keyboard shortcut already exists'
            }

            # Save changes if any modifications were made
            if ($modified) {
                $keybindings |
                    Microsoft.PowerShell.Utility\ConvertTo-Json -Depth 10 |
                    Microsoft.PowerShell.Management\Set-Content -LiteralPath $path
            }
        }
    }

    end {
    }
```

## Examples

### EnsureCopilotKeyboardShortCut

```powershell
EnsureCopilotKeyboardShortCut
```

## Related Links

- [EnsureCopilotKeyboardShortCut on GitHub](https://github.com/genXdev/genXdev)

# EnsureCopilotKeyboardShortCut

> **Module:** GenXdev.Coding.PowerShell.Modules | **Type:** Function | **Aliases:** —

## Synopsis

> Konfigurerar kortkommandon för GitHub Copilot Chat i Visual Studio Code.

## Description

Denna funktion säkerställer att GitHub Copilot Chat's filbilaga-funktion har en korrekt tangentbordsgenväg (Ctrl+Shift+Alt+F12) konfigurerad i Visual Studio Code.

Den kommer att ta bort alla befintliga Copilot-bilagans genvägar och ersätta dem med det aktuella korrekta kommandot (github.copilot.chat.attachFile).

Lägger också till Alt+` (backtick) genväg för att växla den maximerade panelen.

## Syntax

```powershell
EnsureCopilotKeyboardShortCut [<CommonParameters>]
```

## Examples

### EnsureCopilotKeyboardShortCut

```powershell
EnsureCopilotKeyboardShortCut
```

## Related Links

- [Assert-GenXdevCmdlet](https://github.com/genXdev/genXdev/blob/main/Docs/sv-SE/Assert-GenXdevCmdlet.md)
- [Assert-GenXdevCmdletTests](https://github.com/genXdev/genXdev/blob/main/Docs/sv-SE/Assert-GenXdevCmdletTests.md)
- [Assert-GenXdevDependencyUsage](https://github.com/genXdev/genXdev/blob/main/Docs/sv-SE/Assert-GenXdevDependencyUsage.md)
- [Assert-GenXdevTest](https://github.com/genXdev/genXdev/blob/main/Docs/sv-SE/Assert-GenXdevTest.md)
- [Assert-ModuleDefinition](https://github.com/genXdev/genXdev/blob/main/Docs/sv-SE/Assert-ModuleDefinition.md)
- [EnsureDefaultGenXdevRefactors](https://github.com/genXdev/genXdev/blob/main/Docs/sv-SE/EnsureDefaultGenXdevRefactors.md)
- [Get-CmdletMetaData](https://github.com/genXdev/genXdev/blob/main/Docs/sv-SE/Get-CmdletMetaData.md)
- [Get-GenXDevModule](https://github.com/genXdev/genXdev/blob/main/Docs/sv-SE/Get-GenXDevModule.md)
- [Get-GenXDevModuleInfo](https://github.com/genXdev/genXdev/blob/main/Docs/sv-SE/Get-GenXDevModuleInfo.md)
- [Get-GenXDevNewModulesInOrderOfDependency](https://github.com/genXdev/genXdev/blob/main/Docs/sv-SE/Get-GenXDevNewModulesInOrderOfDependency.md)
- [Get-ModuleCmdletMetaData](https://github.com/genXdev/genXdev/blob/main/Docs/sv-SE/Get-ModuleCmdletMetaData.md)
- [Invoke-GenXdevPSFormatter](https://github.com/genXdev/genXdev/blob/main/Docs/sv-SE/Invoke-GenXdevPSFormatter.md)
- [Invoke-GenXdevScriptAnalyzer](https://github.com/genXdev/genXdev/blob/main/Docs/sv-SE/Invoke-GenXdevScriptAnalyzer.md)
- [New-ModuleMarkdownHelp](https://github.com/genXdev/genXdev/blob/main/Docs/sv-SE/New-ModuleMarkdownHelp.md)
- [New-ModuleXmlHelp](https://github.com/genXdev/genXdev/blob/main/Docs/sv-SE/New-ModuleXmlHelp.md)
- [Search-GenXdevCmdlet](https://github.com/genXdev/genXdev/blob/main/Docs/sv-SE/Search-GenXdevCmdlet.md)
- [Show-GenXdevCmdLetInIde](https://github.com/genXdev/genXdev/blob/main/Docs/sv-SE/Show-GenXdevCmdLetInIde.md)

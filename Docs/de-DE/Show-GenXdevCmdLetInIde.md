# Show-GenXdevCmdLetInIde

> **Module:** GenXdev.Coding.PowerShell.Modules | **Type:** Function | **Aliases:** `editcmdlet, `cmdlet

## Synopsis

> Öffnet das angegebene GenXdev-Cmdlet in Visual Studio Code.

## Description

Diese Funktion ruft die Skriptdatei und Zeilennummer für das angegebene GenXdev-Cmdlet ab und öffnet sie in Visual Studio Code. Sie kann entweder die Hauptfunktionsimplementierung oder die zugehörigen Komponententests öffnen, basierend auf dem Parameter UnitTests.

## Syntax

```powershell
Show-GenXdevCmdLetInIde -CmdletName <String> [[-ModuleName] <String[]>] [-ChangedirectoryOnly] [-Code] [-CoPilot] [-EditPrompt] [-FromScripts] [-KeysToSend <String[]>] [-NoLocal] [-OnlyPublished] [-Prompt <String>] [-Search] [-UnitTests] [-VisualStudio] [<CommonParameters>]

Show-GenXdevCmdLetInIde [[-BaseModuleName] <String>] [[-Synopsis] <String>] [[-Description] <String>] [[-CmdletAliases] <String[]>] [-New] [-PromptKey <String>] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-CmdletName` | String | ✅ | — | 0 | — | Suchmuster zum Filtern von Cmdlets 🌐 *Supports wildcards* |
| `-ModuleName` | String[] | — | ✅ (ByValue, ByPropertyName) | 1 | — | GenXdev-Modulnamen zum Suchen 🌐 *Supports wildcards* |
| `-NoLocal` | SwitchParameter | — | — | Named | — | The `-NoLocal` parameter. |
| `-OnlyPublished` | SwitchParameter | — | — | Named | — | The `-OnlyPublished` parameter. |
| `-FromScripts` | SwitchParameter | — | — | Named | — | The `-FromScripts` parameter. |
| `-Code` | SwitchParameter | — | — | Named | — | Die IDE, um die Datei zu öffnen |
| `-VisualStudio` | SwitchParameter | — | — | Named | — | In Visual Studio öffnen |
| `-UnitTests` | SwitchParameter | — | — | Named | — | Show the function's unit-tests instead of the function |
| `-KeysToSend` | String[] | — | — | Named | `@()` | Die zu sendenden Schlüssel |
| `-CoPilot` | SwitchParameter | — | — | Named | — | Add to Co-Pilot edit session |
| `-Search` | SwitchParameter | — | — | Named | — | Auch globale Suche nach dem Cmdlet |
| `-ChangedirectoryOnly` | SwitchParameter | — | — | Named | — | Wenn angegeben, ändert nur den aktuellen PowerShell-Speicherort
in das entsprechende Cmdlet-Verzeichnis |
| `-New` | SwitchParameter | — | — | Named | — | New cmdlet *(Parameter set: )* |
| `-Synopsis` | String | — | — | 3 | `"todo: A brief description of the cmdlet's purpose"` | Eine kurze Beschreibung des Zwecks des Cmdlets *(Parameter set: )* |
| `-Description` | String | — | — | 4 | `'todo: [A detailed description of what the cmdlet does]'` | Eine detaillierte Beschreibung der Funktionen des Cmdlets *(Parameter set: )* |
| `-BaseModuleName` | String | — | — | 2 | — | Integrate the new cmdlet into an existing GenXdev module *(Parameter set: )* |
| `-CmdletAliases` | String[] | — | — | 5 | — | Ein oder mehrere Aliase für das Cmdlet. Akzeptiert ein Array von Zeichenfolgen. *(Parameter set: )* |
| `-PromptKey` | String | — | — | Named | — | Der KI-Prompt-Schlüssel zur Verwendung für die Vorlagenauswahl *(Parameter set: )* |
| `-Prompt` | String | — | — | Named | `"Create a boilerplate GenXdev cmdlet that does what it's name suggests"` | Custom AI prompt text to use for cmdlet generation |
| `-EditPrompt` | SwitchParameter | — | — | Named | — | Only edit the AI prompt without creating the cmdlet |

## Examples

### Show-GenXdevCmdLetInIde -CmdletName "Get-GenXDevModuleInfo" Opens the implementation of Get-GenXDevModuleInfo in VSCode.

```powershell
Show-GenXdevCmdLetInIde -CmdletName "Get-GenXDevModuleInfo"
Opens the implementation of Get-GenXDevModuleInfo in VSCode.
```

### editcmdlet Get-GenXDevModuleInfo -UnitTests Opens the unit tests for Get-GenXDevModuleInfo using the alias.

```powershell
editcmdlet Get-GenXDevModuleInfo -UnitTests
Opens the unit tests for Get-GenXDevModuleInfo using the alias.
```

## Related Links

- [Show-GenXdevCmdLetInIde on GitHub](https://github.com/genXdev/genXdev)

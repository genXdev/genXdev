# Assert-GenXdevCmdlet

> **Module:** GenXdev.Coding.PowerShell.Modules | **Type:** Function | **Aliases:** `improvecmdlet

## Synopsis

> Verbessert die Dokumentation und Implementierung von GenXdev-Cmdlets durch KI-Unterstützung.

## Description

Diese Funktion verbessert GenXdev-Cmdlets, indem sie deren Code durch KI-Prompts analysiert und optimiert. Sie kann Cmdlets in Module integrieren, Dokumentation aktualisieren und die korrekte Implementierung überprüfen. Die Funktion unterstützt benutzerdefinierte Prompt-Vorlagen und kann Dateien in Visual Studio Code oder Visual Studio öffnen.

## Syntax

```powershell
Assert-GenXdevCmdlet [[-CmdletName] <String>] [[-PromptKey] <String>] [[-Prompt] <String>] [-Code] [-FromScripts] [-Integrate] [-ModuleName <String[]>] [-NoLocal] [-OnlyPublished] [-VisualStudio] [<CommonParameters>]

Assert-GenXdevCmdlet [-EditPrompt] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-CmdletName` | String | — | — | 0 | — | Suchmuster zum Filtern von Cmdlets 🌐 *Supports wildcards* |
| `-ModuleName` | String[] | — | ✅ (ByValue, ByPropertyName) | Named | — | GenXdev-Modulnamen zum Suchen 🌐 *Supports wildcards* |
| `-PromptKey` | String | — | — | 1 | `'CheckAllRequirements'` | Der KI-Prompt-Schlüssel zur Verwendung für die Vorlagenauswahl |
| `-Prompt` | String | — | — | 2 | `''` | Custom AI prompt text to use |
| `-NoLocal` | SwitchParameter | — | — | Named | — | Lokale Modulversionen überspringen |
| `-OnlyPublished` | SwitchParameter | — | — | Named | — | Only include published versions |
| `-FromScripts` | SwitchParameter | — | — | Named | — | In Skriptdateien suchen |
| `-Code` | SwitchParameter | — | — | Named | — | In Visual Studio Code öffnen |
| `-VisualStudio` | SwitchParameter | — | — | Named | — | In Visual Studio öffnen |
| `-EditPrompt` | SwitchParameter | — | — | Named | — | You are a helpful assistant designed to output JSON. *(Parameter set: )* |
| `-Integrate` | SwitchParameter | — | — | Named | — | Integriere Cmdlet in Modul |

## Examples

### Assert-GenXdevCmdlet -CmdletName "Get-Something" -PromptKey "CheckDocs" -Code

```powershell
Assert-GenXdevCmdlet -CmdletName "Get-Something" -PromptKey "CheckDocs" -Code
```

### improvecmdlet Get-Something CheckDocs -c

```powershell
improvecmdlet Get-Something CheckDocs -c
```

## Related Links

- [Assert-GenXdevCmdlet on GitHub](https://github.com/genXdev/genXdev)

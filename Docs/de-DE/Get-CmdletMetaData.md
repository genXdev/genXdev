# Get-CmdletMetaData

> **Module:** GenXdev.Coding.PowerShell.Modules | **Type:** Function | **Aliases:** —

## Synopsis

> Ruft Metadaten für ein angegebenes GenXdev-Cmdlet ab und übersetzt optional Hilfetexte in eine andere Sprache.

## Description

Extrahiert und gibt umfassende Metadaten zu einem GenXdev-Cmdlet zurück, einschließlich seiner Zusammenfassung, Beschreibung, Parameter, Beispiele und anderer Hilfsinformationen. Wenn eine Zielsprache über den Parameter -Language angegeben wird, kann der Hilfetext mithilfe KI-gestützter Übersetzungsdienste übersetzt werden. Benutzerdefinierte Übersetzungsanweisungen können bereitgestellt werden, um die Übersetzungsausgabe zu optimieren.

## Syntax

```powershell
Get-CmdletMetaData -Name <String> [[-Language] <String>] [[-TranslationInstructions] <String>] [-SkipTranslation] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-Name` | String | ✅ | — | 0 | — | Der Name des Cmdlets zum Abrufen von Metadaten |
| `-Language` | String | — | — | 1 | — | de-DE |
| `-TranslationInstructions` | String | — | — | 2 | — | You are a helpful assistant designed to output JSON. |
| `-SkipTranslation` | SwitchParameter | — | — | Named | — | Skip LLM-based translation; keep help text in the source language even when -Language is specified. |

## Examples

### Get-CmdletMetaData -Name "Find-Item"

```powershell
Get-CmdletMetaData -Name "Find-Item"
```

Ruft Metadaten für das Cmdlet "Find-Item" in der Standardsprache ab.

### Get-CmdletMetaData -Name "Find-Item" -Language "nl-NL"

```powershell
Get-CmdletMetaData -Name "Find-Item" -Language "nl-NL"
```

Ruft Metadaten für das Find-Item-Cmdlet mit niederländischen Übersetzungen ab.

## Related Links

- [Get-CmdletMetaData on GitHub](https://github.com/genXdev/genXdev)

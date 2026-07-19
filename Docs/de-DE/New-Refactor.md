# New-Refactor

> **Module:** GenXdev.Coding.PowerShell.Modules | **Type:** Function | **Aliases:** `newrefactor

## Synopsis

> Erstellt ein neues Refactoring-Set für Code-Transformationsaufgaben.

## Description

Erstellt und konfiguriert eine neue Refactoring-Definition mit angegebenen Einstellungen für
LLM-basierte Codetransformationen. Die Funktion behandelt:
- Einrichten der Refactoring-Konfiguration
- Konfigurieren von Auswahlkriterien und Eingabeaufforderungen
- Verwalten von LLM-Modelleinstellungen
- Integration mit Entwicklungsumgebungen
- Persistieren von Refactor-Definitionen

## Syntax

```powershell
New-Refactor -Name <String> -PromptKey <String> [[-Prompt] <String>] [[-SelectionScript] <String>] [[-SelectionPrompt] <String>] [[-LLMQueryType] <String>] [-ApiEndpoint <String>] [-ApiKey <String>] [-AutoAddModifiedFiles] [-ClearSession] [-Code] [-ExposedCmdLets <GenXdev.Helpers.ExposedCmdletDefinition[]>] [-FilesToAdd <IO.FileInfo[]>] [-KeysToSend <String[]>] [-Model <String>] [-PreferencesDatabasePath <String>] [-Priority <Int32>] [-SelectByFreeGpuRam] [-SelectByFreeRam] [-SessionOnly] [-SkipSession] [-Temperature <Double>] [-TimeoutSeconds <Int32>] [-VisualStudio] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-Name` | String | ✅ | — | 0 | — | Der Name dieses neuen Refactor-Sets |
| `-PromptKey` | String | ✅ | — | 1 | — | Der Prompt-Schlüssel gibt an, welches Prompt-Skript verwendet werden soll |
| `-Prompt` | String | — | — | 2 | `''` | Custom prompt text to override the template |
| `-SelectionScript` | String | — | — | 3 | — | PowerShell-Skript zum Auswählen von zu refaktorisierenden Elementen |
| `-SelectionPrompt` | String | — | — | 4 | — | LLM-Auswahlleitfaden |
| `-LLMQueryType` | String | — | — | 5 | `'Coding'` | Der Typ der LLM-Abfrage |
| `-Model` | String | — | — | Named | — | Das zu verwendende Modell oder Muster für KI-Operationen |
| `-SelectByFreeRam` | SwitchParameter | — | — | Named | — | Select configuration by available system RAM |
| `-SelectByFreeGpuRam` | SwitchParameter | — | — | Named | — | Konfiguration basierend auf verfügbarem GPU-RAM auswählen |
| `-Temperature` | Double | — | — | Named | `-1` | Temperature for response randomness (0.0-1.0) |
| `-ApiEndpoint` | String | — | — | Named | — | Die API-Endpunkt-URL für KI-Operationen |
| `-ApiKey` | String | — | — | Named | — | Der API-Schlüssel für authentifizierte KI-Operationen |
| `-TimeoutSeconds` | Int32 | — | — | Named | — | Das Zeitlimit in Sekunden für KI-Operationen |
| `-Priority` | Int32 | — | — | Named | `0` | Priorität für diese Umgestaltung festgelegt |
| `-ExposedCmdLets` | GenXdev.Helpers.ExposedCmdletDefinition[] | — | — | Named | `@()` | Array of PowerShell command definitions for LLM tools |
| `-FilesToAdd` | IO.FileInfo[] | — | — | Named | `@()` | Array von Dateien zur Verarbeitung |
| `-PreferencesDatabasePath` | String | — | — | Named | — | Datenbankpfad für Präferenzdatendateien |
| `-AutoAddModifiedFiles` | SwitchParameter | — | — | Named | — | Fügt geänderte Dateien automatisch zur Warteschlange hinzu |
| `-SessionOnly` | SwitchParameter | — | — | Named | — | Use alternative settings stored in session for AI preferences |
| `-ClearSession` | SwitchParameter | — | — | Named | — | In der Sitzung gespeicherte alternative Einstellungen für KI-Präferenzen löschen |
| `-SkipSession` | SwitchParameter | — | — | Named | — | Nur Einstellungen in dauerhaften Präferenzen speichern, ohne die Sitzung zu beeinflussen |
| `-Code` | SwitchParameter | — | — | Named | — | Öffnen Sie Dateien in Visual Studio Code |
| `-VisualStudio` | SwitchParameter | — | — | Named | — | In Visual Studio öffnen |
| `-KeysToSend` | String[] | — | — | Named | `@()` | Nach dem Öffnen von Dateien zu sendende Tastenanschläge |

## Examples

### New-Refactor -Name "UpdateLogging" -PromptKey "LoggingRefactor" `     -SelectionScript "Get-LoggingMethods" -Priority 1 `     -Code

```powershell
New-Refactor -Name "UpdateLogging" -PromptKey "LoggingRefactor" `
    -SelectionScript "Get-LoggingMethods" -Priority 1 `
    -Code
```

### newrefactor UpdateLogging LoggingRefactor -p "Get-LoggingMethods" -c

```powershell
newrefactor UpdateLogging LoggingRefactor -p "Get-LoggingMethods" -c
```

## Related Links

- [New-Refactor on GitHub](https://github.com/genXdev/genXdev)

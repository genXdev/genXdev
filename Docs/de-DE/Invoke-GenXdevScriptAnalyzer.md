# Invoke-GenXdevScriptAnalyzer

> **Module:** GenXdev.Coding.PowerShell.Modules | **Type:** Function | **Aliases:** —

## Synopsis

> *(No synopsis provided)*

## Syntax

```powershell
Invoke-GenXdevScriptAnalyzer -ScriptFilePath <String> [<CommonParameters>]

Invoke-GenXdevScriptAnalyzer -ScriptDefinition <String> [<CommonParameters>]

Invoke-GenXdevScriptAnalyzer [-EnableExit] [-Fix] [-Recurse] [-ReportSummary] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-ScriptFilePath` | String | ✅ | — | 0 | — | Gibt den Pfad zur Skriptdatei an. *(Parameter set: )* |
| `-ScriptDefinition` | String | ✅ | — | Named | — | Gibt die Skriptdefinition als Zeichenfolge an. *(Parameter set: )* |
| `-EnableExit` | SwitchParameter | — | — | Named | — | Gibt an, dass das Tool bei einem Fehler beendet werden soll. |
| `-Fix` | SwitchParameter | — | — | Named | — | Ermöglicht die automatische Behebung von Verstößen. |
| `-Recurse` | SwitchParameter | — | — | Named | — | Dateien rekursiv verarbeiten. |
| `-ReportSummary` | SwitchParameter | — | — | Named | — | Reports a summary after analysis. |

## Related Links

- [Invoke-GenXdevScriptAnalyzer on GitHub](https://github.com/genXdev/genXdev)

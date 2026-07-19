# Invoke-GenXdevScriptAnalyzer

> **Module:** GenXdev.Coding.PowerShell.Modules | **Type:** Function | **Aliases:** —

## Synopsis

> Ruft PowerShell Script Analyzer auf, um PowerShell-Skripte auf Compliance und bewährte Methoden zu analysieren.

## Description

Diese Funktion stellt einen Wrapper um PSScriptAnalyzer bereit, um PowerShell-Skripte auf Compliance-Probleme, Verstöße gegen bewährte Methoden und potenzielle Fehler zu analysieren. Sie unterstützt sowohl dateibasierte Analysen als auch analysen auf Basis von Zeichenfolgen mit anpassbaren Regeln und Einstellungen.

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

## Examples

### Invoke-GenXdevScriptAnalyzer -Path "C:\Scripts\MyScript.ps1"

```powershell
Invoke-GenXdevScriptAnalyzer -Path "C:\Scripts\MyScript.ps1"
```

### Invoke-GenXdevScriptAnalyzer -ScriptDefinition "Get-Process | Where-Object {$_.Name -eq 'notepad'}"

```powershell
Invoke-GenXdevScriptAnalyzer -ScriptDefinition "Get-Process | Where-Object {$_.Name -eq 'notepad'}"
```

### Invoke-GenXdevScriptAnalyzer -Path "C:\Scripts\" -Recurse -Fix

```powershell
Invoke-GenXdevScriptAnalyzer -Path "C:\Scripts\" -Recurse -Fix
```

## Related Links

- [Invoke-GenXdevScriptAnalyzer on GitHub](https://github.com/genXdev/genXdev)

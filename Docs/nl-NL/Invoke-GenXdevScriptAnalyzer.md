# Invoke-GenXdevScriptAnalyzer

> **Module:** GenXdev.Coding.PowerShell.Modules | **Type:** Function | **Aliases:** —

## Synopsis

> Voert PowerShell Script Analyzer uit om PowerShell-scripts te analyseren op naleving en best practices.

## Description

Deze functie biedt een wrapper rond PSScriptAnalyzer voor het analyseren van PowerShell-scripts op nalevingsproblemen, schendingen van best practices en mogelijke bugs. Het ondersteunt zowel bestandsgebaseerde analyse als stringgebaseerde scriptanalyse met aanpasbare regels en instellingen.

## Syntax

```powershell
Invoke-GenXdevScriptAnalyzer -ScriptFilePath <String> [<CommonParameters>]

Invoke-GenXdevScriptAnalyzer -ScriptDefinition <String> [<CommonParameters>]

Invoke-GenXdevScriptAnalyzer [-EnableExit] [-Fix] [-Recurse] [-ReportSummary] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-ScriptFilePath` | String | ✅ | — | 0 | — | Specificeert het pad naar het scriptbestand. *(Parameter set: )* |
| `-ScriptDefinition` | String | ✅ | — | Named | — | Specificeert de scriptdefinitie als een tekenreeks. *(Parameter set: )* |
| `-EnableExit` | SwitchParameter | — | — | Named | — | Geeft aan dat de tool moet stoppen bij een fout. |
| `-Fix` | SwitchParameter | — | — | Named | — | Maakt het automatisch oplossen van overtredingen mogelijk. |
| `-Recurse` | SwitchParameter | — | — | Named | — | Bestanden recursief verwerken. |
| `-ReportSummary` | SwitchParameter | — | — | Named | — | Meldt een samenvatting na analyse. |

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

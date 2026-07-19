# Invoke-GenXdevScriptAnalyzer

> **Module:** GenXdev.Coding.PowerShell.Modules | **Type:** Function | **Aliases:** —

## Synopsis

> Invoke l'analyseur de scripts PowerShell pour analyser les scripts PowerShell afin de vérifier leur conformité et leurs meilleures pratiques.

## Description

Cette fonction fournit un wrapper autour de PSScriptAnalyzer pour analyser les scripts PowerShell afin de détecter les problèmes de conformité, les violations des bonnes pratiques et les bogues potentiels. Elle prend en charge à la fois l'analyse basée sur les fichiers et l'analyse de scripts sous forme de chaînes de caractères avec des règles et des paramètres personnalisables.

## Syntax

```powershell
Invoke-GenXdevScriptAnalyzer -ScriptFilePath <String> [<CommonParameters>]

Invoke-GenXdevScriptAnalyzer -ScriptDefinition <String> [<CommonParameters>]

Invoke-GenXdevScriptAnalyzer [-EnableExit] [-Fix] [-Recurse] [-ReportSummary] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-ScriptFilePath` | String | ✅ | — | 0 | — | Spécifie le chemin d'accès au fichier script. *(Parameter set: )* |
| `-ScriptDefinition` | String | ✅ | — | Named | — | Spécifie la définition du script sous forme de chaîne. *(Parameter set: )* |
| `-EnableExit` | SwitchParameter | — | — | Named | — | Spécifie que l'outil doit quitter en cas d'erreur. |
| `-Fix` | SwitchParameter | — | — | Named | — | Active la correction automatique des violations. |
| `-Recurse` | SwitchParameter | — | — | Named | — | Traiter les fichiers de manière récursive. |
| `-ReportSummary` | SwitchParameter | — | — | Named | — | Rapporte un résumé après analyse. |

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

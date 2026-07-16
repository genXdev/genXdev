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
| `-ScriptFilePath` | String | ✅ | — | 0 | — | Spécifie le chemin d'accès au fichier script. *(Parameter set: )* |
| `-ScriptDefinition` | String | ✅ | — | Named | — | Spécifie la définition du script sous forme de chaîne. *(Parameter set: )* |
| `-EnableExit` | SwitchParameter | — | — | Named | — | Spécifie que l'outil doit quitter en cas d'erreur. |
| `-Fix` | SwitchParameter | — | — | Named | — | Active la correction automatique des violations. |
| `-Recurse` | SwitchParameter | — | — | Named | — | Traiter les fichiers de manière récursive. |
| `-ReportSummary` | SwitchParameter | — | — | Named | — | Rapporte un résumé après analyse. |

## Related Links

- [Invoke-GenXdevScriptAnalyzer on GitHub](https://github.com/genXdev/genXdev)

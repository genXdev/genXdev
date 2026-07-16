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
| `-ScriptFilePath` | String | ✅ | — | 0 | — | Specificeert het pad naar het scriptbestand. *(Parameter set: )* |
| `-ScriptDefinition` | String | ✅ | — | Named | — | Specificeert de scriptdefinitie als een tekenreeks. *(Parameter set: )* |
| `-EnableExit` | SwitchParameter | — | — | Named | — | Geeft aan dat de tool moet stoppen bij een fout. |
| `-Fix` | SwitchParameter | — | — | Named | — | Maakt het automatisch oplossen van overtredingen mogelijk. |
| `-Recurse` | SwitchParameter | — | — | Named | — | Bestanden recursief verwerken. |
| `-ReportSummary` | SwitchParameter | — | — | Named | — | Meldt een samenvatting na analyse. |

## Related Links

- [Invoke-GenXdevScriptAnalyzer on GitHub](https://github.com/genXdev/genXdev)

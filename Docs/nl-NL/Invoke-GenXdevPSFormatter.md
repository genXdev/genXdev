# Invoke-GenXdevPSFormatter

> **Module:** GenXdev.Coding.PowerShell.Modules | **Type:** Function | **Aliases:** —

## Synopsis

> *(No synopsis provided)*

## Syntax

```powershell
Invoke-GenXdevPSFormatter -Path <String> [-Range <Int32[]>] [-Recurse] [-Settings <Object>] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-Path` | String | ✅ | ✅ (ByValue, ByPropertyName) | 0 | — | Geeft het pad naar het scriptbestand om te formatteren. |
| `-Settings` | Object | — | — | Named | — | Een hashtabel met instellingen of een pad naar een PowerShell-gegevensbestand (.psd1) dat de opmaakinstellingen bevat. |
| `-Range` | Int32[] | — | — | Named | — | The range within which formatting should take place as an array of four integers: starting line number, starting column number, ending line number, ending column number. |
| `-Recurse` | SwitchParameter | — | — | Named | — | Recursief bestanden in subdirectory's verwerken. |

## Related Links

- [Invoke-GenXdevPSFormatter on GitHub](https://github.com/genXdev/genXdev)

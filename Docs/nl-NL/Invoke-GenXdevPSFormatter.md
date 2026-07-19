# Invoke-GenXdevPSFormatter

> **Module:** GenXdev.Coding.PowerShell.Modules | **Type:** Function | **Aliases:** —

## Synopsis

> Formatteert PowerShell-scriptbestanden met behulp van opmaakregels van PSScriptAnalyzer.

## Description

Deze functie past PowerShell-opmaakregels toe op scriptbestanden met behulp van de Invoke-Formatter cmdlet van PSScriptAnalyzer. Het kan afzonderlijke bestanden of recursief meerdere bestanden in mappen opmaken. De functie maakt gebruik van aanpasbare opmaakinstellingen en biedt gedetailleerde logboekregistratie van het opmaakproces.

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

## Examples

### Invoke-GenXdevPSFormatter -Path "C:\Scripts\MyScript.ps1"

```powershell
Invoke-GenXdevPSFormatter -Path "C:\Scripts\MyScript.ps1"
```

### Invoke-GenXdevPSFormatter -Path "C:\Scripts" -Recurse

```powershell
Invoke-GenXdevPSFormatter -Path "C:\Scripts" -Recurse
```

### "MyScript.ps1" | Invoke-GenXdevPSFormatter -Settings @{IncludeRules=@('PSUseCorrectCasing')}

```powershell
"MyScript.ps1" | Invoke-GenXdevPSFormatter -Settings @{IncludeRules=@('PSUseCorrectCasing')}
```

## Related Links

- [Invoke-GenXdevPSFormatter on GitHub](https://github.com/genXdev/genXdev)

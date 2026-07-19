# Get-GitChangedFiles

> **Module:** GenXdev.Coding.Git | **Type:** Cmdlet | **Aliases:** `gitchanged

## Synopsis

> Haal de lijst met gewijzigde bestanden in een Git-repository op.

## Description

Deze functie haalt de lijst op van bestanden die zijn gewijzigd in de huidige Git-repository. Het kan worden gebruikt om te identificeren welke bestanden zijn gewijzigd, toegevoegd of verwijderd. Standaard worden relatieve paden met het voorvoegsel .\ geretourneerd. Gebruik -PassThru om FileInfo-objecten te verkrijgen.

## Syntax

```powershell
Get-GitChangedFiles [-PassThru] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-PassThru` | SwitchParameter | — | — | Named | `False` | Retourneert FileInfo-objecten (zoals Get-ChildItem) in plaats van padstrings. |

## Examples

### Example 1

```powershell
Get-GitChangedFiles
```

Geeft relatieve paden terug zoals ".\Modules\GenXdev.AI\3.26.2026\README.md".

### Example 2

```powershell
Get-GitChangedFiles -PassThru
```

Retourneert FileInfo-objecten voor elk gewijzigd bestand.

## Outputs


## Related Links

- [Get-GitChangedFiles on GitHub](https://github.com/genXdev/genXdev)

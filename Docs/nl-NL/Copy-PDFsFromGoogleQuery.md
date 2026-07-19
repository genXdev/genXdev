# Copy-PDFsFromGoogleQuery

> **Module:** GenXdev.Queries.Webbrowser | **Type:** Function | **Aliases:** —

## Synopsis

> Downloads PDF-bestanden die gevonden zijn via Google-zoekresultaten.

## Description

Voert een Google-zoekopdracht uit in het eerder geselecteerde browsertabblad en downloadt alle gevonden PDF-bestanden naar de huidige map. Ondersteunt meerdere zoekopdrachten en taalfiltering.

## Syntax

```powershell
Copy-PDFsFromGoogleQuery -Queries <String[]> [[-Max] <Int32>] [[-Language] <String>] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-Queries` | String[] | ✅ | ✅ (ByValue, ByPropertyName) | 0 | — | De zoektermen om Google te doorzoeken op PDF-bestanden |
| `-Max` | Int32 | — | — | 1 | `200` | Maximum aantal resultaten om op te halen (standaard: 200) |
| `-Language` | String | — | — | 2 | — | Optionele taalfilter voor zoekresultaten |

## Examples

### Open-Webbrowser Select-WebbrowserTab $null = New-Item -ItemType Directory -Name pdfs Set-Location pdfs Copy-PDFsFromGoogleQuery "scientific paper co2" -Max 50 -Language "English"

```powershell
Open-Webbrowser
Select-WebbrowserTab
$null = New-Item -ItemType Directory -Name pdfs
Set-Location pdfs
Copy-PDFsFromGoogleQuery "scientific paper co2" -Max 50 -Language "English"
```

## Related Links

- [Copy-PDFsFromGoogleQuery on GitHub](https://github.com/genXdev/genXdev)

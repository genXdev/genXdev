# Copy-PDFsFromGoogleQuery

> **Module:** GenXdev.Queries.Webbrowser | **Type:** Function | **Aliases:** —

## Synopsis

> Lädt PDF-Dateien herunter, die über Google-Suchergebnisse gefunden wurden.

## Description

Führt eine Google-Suche im zuvor ausgewählten Webbrowser-Tab durch und lädt alle gefundenen PDF-Dateien in das aktuelle Verzeichnis herunter. Unterstützt mehrere Abfragen und Sprachfilterung.

## Syntax

```powershell
Copy-PDFsFromGoogleQuery -Queries <String[]> [[-Max] <Int32>] [[-Language] <String>] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-Queries` | String[] | ✅ | ✅ (ByValue, ByPropertyName) | 0 | — | The search terms to query Google for PDF files |
| `-Max` | Int32 | — | — | 1 | `200` | Maximale Anzahl abzurufender Ergebnisse (Standardwert: 200) |
| `-Language` | String | — | — | 2 | — | Optional language filter for search results |

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

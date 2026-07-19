# Copy-PDFsFromGoogleQuery

> **Module:** GenXdev.Queries.Webbrowser | **Type:** Function | **Aliases:** —

## Synopsis

> Télécharge les fichiers PDF trouvés dans les résultats de recherche Google.

## Description

Effectue une recherche Google dans l'onglet du navigateur précédemment sélectionné et télécharge tous les fichiers PDF trouvés dans le répertoire courant. Prend en charge plusieurs requêtes et le filtrage par langue.

## Syntax

```powershell
Copy-PDFsFromGoogleQuery -Queries <String[]> [[-Max] <Int32>] [[-Language] <String>] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-Queries` | String[] | ✅ | ✅ (ByValue, ByPropertyName) | 0 | — | Les termes de recherche pour interroger Google afin de trouver des fichiers PDF |
| `-Max` | Int32 | — | — | 1 | `200` | Nombre maximal de résultats à récupérer (par défaut: 200) |
| `-Language` | String | — | — | 2 | — | Filtre de langue optionnel pour les résultats de recherche |

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

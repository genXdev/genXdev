# Copy-PDFsFromGoogleQuery

> **Module:** GenXdev.Queries.Webbrowser | **Type:** Function | **Aliases:** —

## Synopsis

> *(No synopsis provided)*

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

## Related Links

- [Copy-PDFsFromGoogleQuery on GitHub](https://github.com/genXdev/genXdev)

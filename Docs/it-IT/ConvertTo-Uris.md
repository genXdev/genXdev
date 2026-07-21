# ConvertTo-Uris

> **Module:** GenXdev.Queries | **Type:** Cmdlet | **Aliases:** —

## Synopsis

> Analizza le stringhe per qualsiasi URI valido.

## Description

* Estrae tutti gli URI validi dal testo di input, supportando schemi URI standard e personalizzati come http:, https:, ftp:, magnet:, about:, ecc.
* Restituisce oggetti Uri per ogni URI valido trovato.

## Syntax

```powershell
ConvertTo-Uris [[-Text] <String[]>] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-Text` | String[] | — | ✅ (ByValue) | 0 | — | Input di testo che può contenere URI |

## Examples

### Example 1

```powershell
ConvertTo-Uris -Text "Check out https://github.com and about:config"
```

Analizza la stringa di testo fornita alla ricerca di URI e restituisce oggetti Uri.

### Example 2

```powershell
"Visit http://example.com" | ConvertTo-Uris
```

Invia una stringa di testo al cmdlet per l'analisi URI.

## Parameter Details

### `-Text <String[]>`

> Input di testo che può contenere URI

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | 0 |
| **Default value** | *(none)* |
| **Accept pipeline input?** | True (ByValue) |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
## Related Links

- [Open-AllPossibleQueries](https://github.com/genXdev/genXdev/blob/main/Docs/it-IT/Open-AllPossibleQueries.md)

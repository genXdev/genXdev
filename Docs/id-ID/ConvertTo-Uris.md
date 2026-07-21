# ConvertTo-Uris

> **Module:** GenXdev.Queries | **Type:** Cmdlet | **Aliases:** —

## Synopsis

> Mem-parsing string untuk URI yang valid.

## Description

* Mengekstrak semua URI yang valid dari teks masukan, mendukung skema URI standar dan kustom seperti http:, https:, ftp:, magnet:, about:, dll.
* Mengembalikan objek Uri untuk setiap URI valid yang ditemukan.

## Syntax

```powershell
ConvertTo-Uris [[-Text] <String[]>] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-Text` | String[] | — | ✅ (ByValue) | 0 | — | Teks input yang mungkin mengandung URI |

## Examples

### Example 1

```powershell
ConvertTo-Uris -Text "Check out https://github.com and about:config"
```

Mengurai string teks yang disediakan untuk URI dan mengembalikan objek Uri.

### Example 2

```powershell
"Visit http://example.com" | ConvertTo-Uris
```

Menyalurkan string teks ke cmdlet untuk penguraian URI.

## Parameter Details

### `-Text <String[]>`

> Teks input yang mungkin mengandung URI

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

- [Open-AllPossibleQueries](https://github.com/genXdev/genXdev/blob/main/Docs/id-ID/Open-AllPossibleQueries.md)

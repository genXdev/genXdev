# ConvertTo-Uris

> **Module:** GenXdev.Queries | **Type:** Cmdlet | **Aliases:** —

## Synopsis

> Geçerli herhangi bir URI için dizeleri ayrıştırır.

## Description

* Tüm geçerli URI'leri girdi metninden çıkarır, http:, https:, ftp:, magnet:, about: gibi standart ve özel URI düzenlerini destekler.
* Bulunan her geçerli URI için Uri nesneleri döndürür.

## Syntax

```powershell
ConvertTo-Uris [[-Text] <String[]>] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-Text` | String[] | — | ✅ (ByValue) | 0 | — | URI'ler içerebilecek metin girdisi |

## Examples

### Example 1

```powershell
ConvertTo-Uris -Text "Check out https://github.com and about:config"
```

Sağlanan metin dizesini URI'ler için ayrıştırır ve Uri nesneleri döndürür.

### Example 2

```powershell
"Visit http://example.com" | ConvertTo-Uris
```

Bir metin dizisini URI ayrıştırması için cmdlet'e gönderir.

## Parameter Details

### `-Text <String[]>`

> URI'ler içerebilecek metin girdisi

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

- [Open-AllPossibleQueries](https://github.com/genXdev/genXdev/blob/main/Docs/tr-TR/Open-AllPossibleQueries.md)

# ConvertTo-Uris

> **Module:** GenXdev.Queries | **Type:** Cmdlet | **Aliases:** —

## Synopsis

> Analizuje ciągi znaków pod kątem dowolnego poprawnego identyfikatora URI.

## Description

* Wyodrębnia wszystkie prawidłowe identyfikatory URI z tekstu wejściowego, obsługując standardowe i niestandardowe schematy URI, takie jak http:, https:, ftp:, magnet:, about:, itp.
* Zwraca obiekty Uri dla każdego znalezionego prawidłowego identyfikatora URI.

## Syntax

```powershell
ConvertTo-Uris [[-Text] <String[]>] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-Text` | String[] | — | ✅ (ByValue) | 0 | — | Tekst wejściowy, który może zawierać identyfikatory URI |

## Examples

### Example 1

```powershell
ConvertTo-Uris -Text "Check out https://github.com and about:config"
```

Analizuje podany ciąg tekstowy w poszukiwaniu identyfikatorów URI i zwraca obiekty Uri.

### Example 2

```powershell
"Visit http://example.com" | ConvertTo-Uris
```

Przekazuje ciąg tekstowy do polecenia cmdlet w celu analizy URI.

## Parameter Details

### `-Text <String[]>`

> Tekst wejściowy, który może zawierać identyfikatory URI

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

- [Open-AllPossibleQueries](https://github.com/genXdev/genXdev/blob/main/Docs/pl-PL/Open-AllPossibleQueries.md)

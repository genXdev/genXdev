# Initialize-KeyValueStores

> **Module:** GenXdev.Data.KeyValueStore | **Type:** Cmdlet | **Aliases:** —

## Synopsis

> Initierar KeyValueStore-katalogstruktur för lokal och OneDrive-lagring.

## Description

Skapar katalogstruktur för JSON-baserade nyckelvärdeslagringar på två platser: lokal dator för omedelbar åtkomst och OneDrive-mapp för molnsynkronisering. Kommandot säkerställer att båda katalogerna finns och är korrekt konfigurerade.

## Syntax

```powershell
Initialize-KeyValueStores [[-DatabasePath] <String>] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-DatabasePath` | String | — | — | 0 | — | Databassökväg för nyckel-värde-lagringsdatafiler |

## Examples

### Example 1

```powershell
Initialize-KeyValueStores
```

Skapar de standard lokala mapparna och OneDrive-mapparna för nyckel-värdelager.

### Example 2

```powershell
Initialize-KeyValueStores -DatabasePath "C:\MyStores"
```

Skapar kataloger för nyckel-värde-lager under den angivna anpassade sökvägen.

## Parameter Details

### `-DatabasePath <String>`

> Databassökväg för nyckel-värde-lagringsdatafiler

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | 0 |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
## Related Links

- [Get-KeyValueStoreNames](https://github.com/genXdev/genXdev/blob/main/Docs/sv-SE/Get-KeyValueStoreNames.md)
- [Get-KeyValueStorePath](https://github.com/genXdev/genXdev/blob/main/Docs/sv-SE/Get-KeyValueStorePath.md)
- [Get-StoreKeys](https://github.com/genXdev/genXdev/blob/main/Docs/sv-SE/Get-StoreKeys.md)
- [Get-ValueByKeyFromStore](https://github.com/genXdev/genXdev/blob/main/Docs/sv-SE/Get-ValueByKeyFromStore.md)
- [Remove-KeyFromStore](https://github.com/genXdev/genXdev/blob/main/Docs/sv-SE/Remove-KeyFromStore.md)
- [Remove-KeyValueStore](https://github.com/genXdev/genXdev/blob/main/Docs/sv-SE/Remove-KeyValueStore.md)
- [Set-ValueByKeyInStore](https://github.com/genXdev/genXdev/blob/main/Docs/sv-SE/Set-ValueByKeyInStore.md)
- [Sync-KeyValueStore](https://github.com/genXdev/genXdev/blob/main/Docs/sv-SE/Sync-KeyValueStore.md)

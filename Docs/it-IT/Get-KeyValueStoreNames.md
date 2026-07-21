# Get-KeyValueStoreNames

> **Module:** GenXdev.Data.KeyValueStore | **Type:** Cmdlet | **Aliases:** `getstorenames`

## Synopsis

> Recupera i nomi degli archivi chiave-valore disponibili.

## Description

* Analizza la directory del key-value store per file JSON ed estrae nomi
  di store univoci in base al pattern di chiave di sincronizzazione specificato.
* Assicura che la directory dello store esista e sincronizza gli store
  non locali, se necessario.

## Syntax

```powershell
Get-KeyValueStoreNames [[-SynchronizationKey] <String>] [-DatabasePath <String>] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-SynchronizationKey` | String | — | — | 0 | — | Chiave per identificare l'ambito di sincronizzazione, il valore predefinito è tutto |
| `-DatabasePath` | String | — | — | Named | — | Percorso del database per i file di dati del key-value store |

## Examples

### Example 1

```powershell
Get-KeyValueStoreNames
```

Recupera tutti i nomi dei negozi dal percorso predefinito.

### Example 2

```powershell
Get-KeyValueStoreNames -SynchronizationKey 'Local'
```

Recupera i nomi dei negozi per l'ambito di sincronizzazione 'Locale'.

### Example 3

```powershell
getstorenames -DatabasePath 'C:\MyStores'
```

Recupera tutti i nomi dei negozi da un percorso di database personalizzato utilizzando l'alias.

## Parameter Details

### `-SynchronizationKey <String>`

> Chiave per identificare l'ambito di sincronizzazione, il valore predefinito è tutto

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | 0 |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-DatabasePath <String>`

> Percorso del database per i file di dati del key-value store

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
## Related Links

- [Get-KeyValueStorePath](https://github.com/genXdev/genXdev/blob/main/Docs/it-IT/Get-KeyValueStorePath.md)
- [Get-StoreKeys](https://github.com/genXdev/genXdev/blob/main/Docs/it-IT/Get-StoreKeys.md)
- [Get-ValueByKeyFromStore](https://github.com/genXdev/genXdev/blob/main/Docs/it-IT/Get-ValueByKeyFromStore.md)
- [Initialize-KeyValueStores](https://github.com/genXdev/genXdev/blob/main/Docs/it-IT/Initialize-KeyValueStores.md)
- [Remove-KeyFromStore](https://github.com/genXdev/genXdev/blob/main/Docs/it-IT/Remove-KeyFromStore.md)
- [Remove-KeyValueStore](https://github.com/genXdev/genXdev/blob/main/Docs/it-IT/Remove-KeyValueStore.md)
- [Set-ValueByKeyInStore](https://github.com/genXdev/genXdev/blob/main/Docs/it-IT/Set-ValueByKeyInStore.md)
- [Sync-KeyValueStore](https://github.com/genXdev/genXdev/blob/main/Docs/it-IT/Sync-KeyValueStore.md)

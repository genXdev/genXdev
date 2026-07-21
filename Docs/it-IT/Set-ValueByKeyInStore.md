# Set-ValueByKeyInStore

> **Module:** GenXdev.Data.KeyValueStore | **Type:** Cmdlet | **Aliases:** `setvalue`

## Synopsis

> Gestisce coppie chiave-valore in un archivio basato su file JSON.

## Description

Fornisce archiviazione persistente per coppie chiave-valore utilizzando file JSON. Gestisce sia l'inserimento di nuove voci che gli aggiornamenti di quelle esistenti. Supporta la sincronizzazione opzionale per archivi non locali. Questa funzione implementa un'operazione di upsert che inserisce nuove coppie chiave-valore o aggiorna quelle esistenti in base alla combinazione di chiave di sincronizzazione, nome dell'archivio e nome della chiave.

## Syntax

```powershell
Set-ValueByKeyInStore -StoreName <String> -KeyName <String> [[-Value] <String>] [[-SynchronizationKey] <String>] [-DatabasePath <String>] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-StoreName` | String | ✅ | — | 0 | — | Nome dell'archivio per la coppia chiave-valore |
| `-KeyName` | String | ✅ | — | 1 | — | Nome della chiave da impostare o aggiornare |
| `-Value` | String | — | — | 2 | — | Valore da archiviare |
| `-SynchronizationKey` | String | — | — | 3 | — | Chiave per identificare l'ambito di sincronizzazione |
| `-DatabasePath` | String | — | — | Named | — | Percorso del database per i file di dati del key-value store |

## Examples

### Example 1

```powershell
Set-ValueByKeyInStore -StoreName "ConfigStore" -KeyName "ApiEndpoint" `
    -Value "https://api.example.com"
```

Imposta un endpoint API in ConfigStore.

### Example 2

```powershell
setvalue ConfigStore ApiEndpoint "https://api.example.com"
```

Usa l'alias per impostare un valore.

## Parameter Details

### `-StoreName <String>`

> Nome dell'archivio per la coppia chiave-valore

| Property | Value |
|:---|:---|
| **Required?** | Yes |
| **Position?** | 0 |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-KeyName <String>`

> Nome della chiave da impostare o aggiornare

| Property | Value |
|:---|:---|
| **Required?** | Yes |
| **Position?** | 1 |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-Value <String>`

> Valore da archiviare

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | 2 |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-SynchronizationKey <String>`

> Chiave per identificare l'ambito di sincronizzazione

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | 3 |
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

- [Get-KeyValueStoreNames](https://github.com/genXdev/genXdev/blob/main/Docs/it-IT/Get-KeyValueStoreNames.md)
- [Get-KeyValueStorePath](https://github.com/genXdev/genXdev/blob/main/Docs/it-IT/Get-KeyValueStorePath.md)
- [Get-StoreKeys](https://github.com/genXdev/genXdev/blob/main/Docs/it-IT/Get-StoreKeys.md)
- [Get-ValueByKeyFromStore](https://github.com/genXdev/genXdev/blob/main/Docs/it-IT/Get-ValueByKeyFromStore.md)
- [Initialize-KeyValueStores](https://github.com/genXdev/genXdev/blob/main/Docs/it-IT/Initialize-KeyValueStores.md)
- [Remove-KeyFromStore](https://github.com/genXdev/genXdev/blob/main/Docs/it-IT/Remove-KeyFromStore.md)
- [Remove-KeyValueStore](https://github.com/genXdev/genXdev/blob/main/Docs/it-IT/Remove-KeyValueStore.md)
- [Sync-KeyValueStore](https://github.com/genXdev/genXdev/blob/main/Docs/it-IT/Sync-KeyValueStore.md)

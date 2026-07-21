# Initialize-KeyValueStores

> **Module:** GenXdev.Data.KeyValueStore | **Type:** Cmdlet | **Aliases:** —

## Synopsis

> Inizializza la struttura di directory di KeyValueStore per l'archiviazione locale e su OneDrive.

## Description

Crea la struttura di directory per archivi di valori-chiave basati su JSON in due posizioni: computer locale per accesso immediato e cartella OneDrive per sincronizzazione cloud. Il cmdlet garantisce che entrambe le directory esistano e siano configurate correttamente.

## Syntax

```powershell
Initialize-KeyValueStores [[-DatabasePath] <String>] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-DatabasePath` | String | — | — | 0 | — | Percorso del database per i file di dati del key-value store |

## Examples

### Example 1

```powershell
Initialize-KeyValueStores
```

Crea le directory locali e OneDrive standard per gli archivi chiave-valore.

### Example 2

```powershell
Initialize-KeyValueStores -DatabasePath "C:\MyStores"
```

Crea directory di archivio chiave-valore nel percorso personalizzato specificato.

## Parameter Details

### `-DatabasePath <String>`

> Percorso del database per i file di dati del key-value store

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

- [Get-KeyValueStoreNames](https://github.com/genXdev/genXdev/blob/main/Docs/it-IT/Get-KeyValueStoreNames.md)
- [Get-KeyValueStorePath](https://github.com/genXdev/genXdev/blob/main/Docs/it-IT/Get-KeyValueStorePath.md)
- [Get-StoreKeys](https://github.com/genXdev/genXdev/blob/main/Docs/it-IT/Get-StoreKeys.md)
- [Get-ValueByKeyFromStore](https://github.com/genXdev/genXdev/blob/main/Docs/it-IT/Get-ValueByKeyFromStore.md)
- [Remove-KeyFromStore](https://github.com/genXdev/genXdev/blob/main/Docs/it-IT/Remove-KeyFromStore.md)
- [Remove-KeyValueStore](https://github.com/genXdev/genXdev/blob/main/Docs/it-IT/Remove-KeyValueStore.md)
- [Set-ValueByKeyInStore](https://github.com/genXdev/genXdev/blob/main/Docs/it-IT/Set-ValueByKeyInStore.md)
- [Sync-KeyValueStore](https://github.com/genXdev/genXdev/blob/main/Docs/it-IT/Sync-KeyValueStore.md)

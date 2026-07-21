# Remove-KeyFromStore

> **Module:** GenXdev.Data.KeyValueStore | **Type:** Cmdlet | **Aliases:** `removekey`

## Synopsis

> Entfernt einen Schlüssel aus einem Schlüssel-Wert-Speicher.

## Description

Diese Funktion entfernt einen angegebenen Schlüssel aus einem benannten Schlüssel-Wert-Speicher. Bei lokalen Speichern wird der Schlüssel dauerhaft gelöscht. Bei synchronisierten Speichern wird der Schlüssel als gelöscht markiert, um die Synchronisation zu ermöglichen.

## Syntax

```powershell
Remove-KeyFromStore -StoreName <String> -KeyName <String> [[-SynchronizationKey] <String>] [-DatabasePath <String>] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-StoreName` | String | ✅ | — | 0 | — | Name des Geschäfts |
| `-KeyName` | String | ✅ | — | 1 | — | Schlüssel, der gelöscht werden soll |
| `-SynchronizationKey` | String | — | — | 2 | — | Schlüssel zur Identifizierung des Synchronisierungsumfangs |
| `-DatabasePath` | String | — | — | Named | — | Datenbankpfad für Schlüssel-Wert-Speicherdatendateien |

## Examples

### Example 1

```powershell
Remove-KeyFromStore -StoreName "MyStore" -KeyName "MyKey"
```

Entfernen Sie den Schlüssel "MyKey" aus dem Speicher "MyStore".

### Example 2

```powershell
removekey "MyStore" "MyKey"
```

Entfernen eines Schlüssels mithilfe des Alias.

## Parameter Details

### `-StoreName <String>`

> Name des Geschäfts

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

> Schlüssel, der gelöscht werden soll

| Property | Value |
|:---|:---|
| **Required?** | Yes |
| **Position?** | 1 |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-SynchronizationKey <String>`

> Schlüssel zur Identifizierung des Synchronisierungsumfangs

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | 2 |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-DatabasePath <String>`

> Datenbankpfad für Schlüssel-Wert-Speicherdatendateien

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

- [Get-KeyValueStoreNames](https://github.com/genXdev/genXdev/blob/main/de-DE/Get-KeyValueStoreNames.md)
- [Get-KeyValueStorePath](https://github.com/genXdev/genXdev/blob/main/de-DE/Get-KeyValueStorePath.md)
- [Get-StoreKeys](https://github.com/genXdev/genXdev/blob/main/de-DE/Get-StoreKeys.md)
- [Get-ValueByKeyFromStore](https://github.com/genXdev/genXdev/blob/main/de-DE/Get-ValueByKeyFromStore.md)
- [Initialize-KeyValueStores](https://github.com/genXdev/genXdev/blob/main/de-DE/Initialize-KeyValueStores.md)
- [Remove-KeyValueStore](https://github.com/genXdev/genXdev/blob/main/de-DE/Remove-KeyValueStore.md)
- [Set-ValueByKeyInStore](https://github.com/genXdev/genXdev/blob/main/de-DE/Set-ValueByKeyInStore.md)
- [Sync-KeyValueStore](https://github.com/genXdev/genXdev/blob/main/de-DE/Sync-KeyValueStore.md)

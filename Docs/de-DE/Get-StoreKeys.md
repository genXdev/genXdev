# Get-StoreKeys

> **Module:** GenXdev.Data.KeyValueStore | **Type:** Cmdlet | **Aliases:** `getkeys`

## Synopsis

> Ruft alle Schlüsselnamen für einen bestimmten Schlüssel-Wert-Speicher ab.

## Description

* Fragt die KeyValueStore-JSON-Datei ab, um alle aktiven (nicht gelöschten)
  Schlüssel für einen angegebenen Store abzurufen.
* Kann optional nach Synchronisierungsumfang filtern.
* Initialisiert automatisch die Verzeichnisstruktur, falls nicht vorhanden, und
  handhabt die Synchronisierung für nicht-lokale Stores.

## Syntax

```powershell
Get-StoreKeys -StoreName <String> [[-SynchronizationKey] <String>] [-DatabasePath <String>] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-StoreName` | String | ✅ | — | 0 | — | Name des Speichers, dessen Schlüssel abgerufen werden sollen |
| `-SynchronizationKey` | String | — | — | 1 | — | Schlüssel zur Identifizierung des Synchronisierungsbereichs, standardmäßig alle |
| `-DatabasePath` | String | — | — | Named | — | Datenbankpfad für Schlüssel-Wert-Speicherdatendateien |

## Examples

### Example 1

```powershell
Get-StoreKeys -StoreName "ApplicationSettings" -SynchronizationKey "Local"
```

Ruft alle Schlüssel aus dem ApplicationSettings-Speicher für den lokalen Bereich ab.

### Example 2

```powershell
getkeys AppSettings
```

Ruft Schlüssel mithilfe des Alias ab.

## Parameter Details

### `-StoreName <String>`

> Name des Speichers, dessen Schlüssel abgerufen werden sollen

| Property | Value |
|:---|:---|
| **Required?** | Yes |
| **Position?** | 0 |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-SynchronizationKey <String>`

> Schlüssel zur Identifizierung des Synchronisierungsbereichs, standardmäßig alle

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | 1 |
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
- [Get-ValueByKeyFromStore](https://github.com/genXdev/genXdev/blob/main/de-DE/Get-ValueByKeyFromStore.md)
- [Initialize-KeyValueStores](https://github.com/genXdev/genXdev/blob/main/de-DE/Initialize-KeyValueStores.md)
- [Remove-KeyFromStore](https://github.com/genXdev/genXdev/blob/main/de-DE/Remove-KeyFromStore.md)
- [Remove-KeyValueStore](https://github.com/genXdev/genXdev/blob/main/de-DE/Remove-KeyValueStore.md)
- [Set-ValueByKeyInStore](https://github.com/genXdev/genXdev/blob/main/de-DE/Set-ValueByKeyInStore.md)
- [Sync-KeyValueStore](https://github.com/genXdev/genXdev/blob/main/de-DE/Sync-KeyValueStore.md)

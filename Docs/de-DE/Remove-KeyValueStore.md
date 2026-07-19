# Remove-KeyValueStore

> **Module:** GenXdev.Data.KeyValueStore | **Type:** Cmdlet | **Aliases:** —

## Synopsis

> Entfernt einen Schlüssel-Wert-Speicher.

## Description

Diese Funktion löscht einen angegebenen Key-Value-Store. Bei lokalen Stores wird die Datei physisch entfernt. Bei synchronisierten Stores werden alle Schlüssel als gelöscht markiert und die Synchronisation wird ausgelöst.

## Syntax

```powershell
Remove-KeyValueStore [-StoreName] <string> [[-SynchronizationKey] <string>] [-DatabasePath <string>] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-StoreName` | String | ✅ | — | 0 | — | Name of the store to delete |
| `-SynchronizationKey` | String | — | — | 1 | — | Schlüssel zur Identifizierung des Synchronisationsbereichs |
| `-DatabasePath` | String | — | — | Named | — | Datenbankpfad für Key-Value-Speicherdatendateien |

## Examples

### Example 1

```powershell
Remove-KeyValueStore -StoreName "MyStore"
```

Lösche einen lokalen Key-Value-Speicher namens "MyStore".

### Example 2

```powershell
Remove-KeyValueStore "MyStore" -SynchronizationKey "Cloud"
```

Entfernen Sie einen synchronisierten Store mit einem bestimmten Synchronisationsschlüssel.

## Related Links

- [Remove-KeyValueStore on GitHub](https://github.com/genXdev/genXdev)

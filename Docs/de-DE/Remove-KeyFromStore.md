# Remove-KeyFromStore

> **Module:** GenXdev.Data.KeyValueStore | **Type:** Cmdlet | **Aliases:** `removekey

## Synopsis

> Entfernt einen Schlüssel aus einem Schlüssel-Wert-Speicher.

## Description

Diese Funktion entfernt einen angegebenen Schlüssel aus einem benannten Schlüssel-Wert-Speicher. Bei lokalen Speichern wird der Schlüssel dauerhaft gelöscht. Bei synchronisierten Speichern wird der Schlüssel als gelöscht markiert, um die Synchronisation zu ermöglichen.

## Syntax

```powershell
Remove-KeyFromStore [-StoreName] <string> [-KeyName] <string> [[-SynchronizationKey] <string>] [-DatabasePath <string>] [-WhatIf] [-Confirm] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-StoreName` | String | ✅ | — | 0 | — | Name of the store |
| `-KeyName` | String | ✅ | — | 1 | — | Key to be deleted |
| `-SynchronizationKey` | String | — | — | 2 | — | Schlüssel zur Identifizierung des Synchronisationsbereichs |
| `-DatabasePath` | String | — | — | Named | — | Datenbankpfad für Key-Value-Speicherdatendateien |

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

Entfernen eines Schlüssels mit dem Alias.

## Related Links

- [Remove-KeyFromStore on GitHub](https://github.com/genXdev/genXdev)

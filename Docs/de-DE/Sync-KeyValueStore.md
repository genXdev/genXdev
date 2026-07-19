# Sync-KeyValueStore

> **Module:** GenXdev.Data.KeyValueStore | **Type:** Cmdlet | **Aliases:** —

## Synopsis

> Synchronisiert lokale und OneDrive-Schlüssel-Wert-Speicher-JSON-Dateien.

## Description

Führt eine bidirektionale Synchronisation zwischen lokalen und OneDrive-Schatten-JSON-Dateien durch, wobei eine Strategie mit dem Zeitstempel der letzten Änderung verwendet wird. Datensätze werden basierend auf ihrer letzten Änderungszeit zusammengeführt, wobei neuere Versionen Vorrang haben.

## Syntax

```powershell
Sync-KeyValueStore [[-SynchronizationKey] <string>] [-DatabasePath <string>] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-SynchronizationKey` | String | — | — | 0 | — | Schlüssel zur Identifizierung des Synchronisationsbereichs |
| `-DatabasePath` | String | — | — | Named | — | Datenbankpfad für Key-Value-Speicherdatendateien |

## Examples

### Example 1

```powershell
Sync-KeyValueStore
```

### Example 2

```powershell
Sync-KeyValueStore -SynchronizationKey "UserSettings"
```

## Related Links

- [Sync-KeyValueStore on GitHub](https://github.com/genXdev/genXdev)

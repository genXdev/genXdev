# Get-KeyValueStorePath

> **Module:** GenXdev.Data.KeyValueStore | **Type:** Cmdlet | **Aliases:** —

## Synopsis

> Ruft den Dateipfad für einen Key-Value-Speicher ab.

## Description

* Erstellt den Dateipfad für einen Schlüssel-Wert-Speicher basierend auf dem Synchronisationsschlüssel, dem Speichernamen und dem Basisverzeichnis.

## Syntax

```powershell
Get-KeyValueStorePath [-SynchronizationKey] <string> [-StoreName] <string> [-BasePath <string>] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-SynchronizationKey` | String | ✅ | — | 0 | — | Der zur Identifizierung des Stores verwendete Synchronisierungsschlüssel |
| `-StoreName` | String | ✅ | — | 1 | — | Der Name des Schlüssel-Wert-Speichers |
| `-BasePath` | String | — | — | Named | — | Der Basispfad für die Speicherdateien |

## Examples

### Example 1

```powershell
Get-KeyValueStorePath -SynchronizationKey "Local" -StoreName "MyStore"
```

Holen Sie den Pfad für einen lokalen Schlüssel-Wert-Speicher.

## Related Links

- [Get-KeyValueStorePath on GitHub](https://github.com/genXdev/genXdev)

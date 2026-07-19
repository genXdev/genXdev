# Get-KeyValueStoreNames

> **Module:** GenXdev.Data.KeyValueStore | **Type:** Cmdlet | **Aliases:** `getstorenames

## Synopsis

> Ruft die Namen der verfügbaren Schlüssel-Wert-Speicher ab.

## Description

* Durchsucht das Schlüssel-Wert-Speicherverzeichnis nach JSON-Dateien und extrahiert eindeutige
  Store-Namen basierend auf dem angegebenen Synchronisationsschlüsselmuster.
* Stellt sicher, dass das Store-Verzeichnis existiert, und synchronisiert bei Bedarf nicht-lokale Stores.

## Syntax

```powershell
Get-KeyValueStoreNames [[-SynchronizationKey] <string>] [-DatabasePath <string>] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-SynchronizationKey` | String | — | — | 0 | — | Schlüssel zur Identifizierung des Synchronisationsbereichs, Standardwert: alle |
| `-DatabasePath` | String | — | — | Named | — | Datenbankpfad für Key-Value-Speicherdatendateien |

## Examples

### Example 1

```powershell
Get-KeyValueStoreNames
```

Ruft alle Store-Namen aus dem Standardpfad ab.

### Example 2

```powershell
Get-KeyValueStoreNames -SynchronizationKey 'Local'
```

Ruft Speichernamen für den Bereich 'Lokale Synchronisierung' ab.

### Example 3

```powershell
getstorenames -DatabasePath 'C:\MyStores'
```

Ruft alle Speichernamen aus einem benutzerdefinierten Datenbankpfad ab, unter Verwendung des Alias.

## Related Links

- [Get-KeyValueStoreNames on GitHub](https://github.com/genXdev/genXdev)

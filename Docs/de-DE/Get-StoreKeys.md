# Get-StoreKeys

> **Module:** GenXdev.Data.KeyValueStore | **Type:** Cmdlet | **Aliases:** `getkeys

## Synopsis

> Ruft alle Schlüsselnamen für einen gegebenen Schlüssel-Wert-Speicher ab.

## Description

* Durchsucht die KeyValueStore-JSON-Datei, um alle aktiven (nicht gelöschten) Schlüssel für einen bestimmten Speicher abzurufen.
* Kann optional nach Synchronisationsbereich filtern.
* Initialisiert automatisch die Verzeichnisstruktur, falls nicht gefunden, und handhabt die Synchronisation für nicht-lokale Speicher.

## Syntax

```powershell
Get-StoreKeys [-StoreName] <string> [[-SynchronizationKey] <string>] [-DatabasePath <string>] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-StoreName` | String | ✅ | — | 0 | — | Name of the store whose keys should be retrieved |
| `-SynchronizationKey` | String | — | — | 1 | — | Schlüssel zur Identifizierung des Synchronisationsbereichs, Standardwert: alle |
| `-DatabasePath` | String | — | — | Named | — | Datenbankpfad für Key-Value-Speicherdatendateien |

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

Ruft Schlüssel unter Verwendung des Alias ab.

## Related Links

- [Get-StoreKeys on GitHub](https://github.com/genXdev/genXdev)

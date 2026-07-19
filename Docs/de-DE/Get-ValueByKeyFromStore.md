# Get-ValueByKeyFromStore

> **Module:** GenXdev.Data.KeyValueStore | **Type:** Cmdlet | **Aliases:** `getvalue

## Synopsis

> Ruft einen Wert aus einem JSON-basierten Schlüssel-Wert-Speicher ab.

## Description

* Ruft einen Wert für einen angegebenen Schlüssel aus einem JSON-basierten Schlüssel-Wert-Speicher ab.
* Unterstützt optionale Standardwerte und Synchronisierung über verschiedene Bereiche hinweg.
* Bietet automatische Verzeichnisinitialisierung und Synchronisierung.

## Syntax

```powershell
Get-ValueByKeyFromStore [-StoreName] <string> [-KeyName] <string> [[-DefaultValue] <string>] [[-SynchronizationKey] <string>] [-DatabasePath <string>] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-StoreName` | String | ✅ | — | 0 | — | Name of the store to retrieve the key from |
| `-KeyName` | String | ✅ | — | 1 | — | Schlüssel zum Abrufen aus dem angegebenen Speicher |
| `-DefaultValue` | String | — | — | 2 | — | Ein optionaler Standardwert |
| `-SynchronizationKey` | String | — | — | 3 | — | Schlüssel zur Identifizierung des Synchronisationsbereichs |
| `-DatabasePath` | String | — | — | Named | — | Datenbankpfad für Key-Value-Speicherdatendateien |

## Examples

### Example 1

```powershell
Get-ValueByKeyFromStore -StoreName "AppSettings" -KeyName "Theme" -DefaultValue "Dark"
```

Ruft den Wert von "Theme" aus "AppSettings" ab und gibt "Dark" zurück, falls nicht gefunden.

### Example 2

```powershell
getvalue AppSettings Theme
```

Verwendet den 'getvalue'-Alias, um einen Wert abzurufen.

## Related Links

- [Get-ValueByKeyFromStore on GitHub](https://github.com/genXdev/genXdev)

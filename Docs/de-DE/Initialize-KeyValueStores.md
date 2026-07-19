# Initialize-KeyValueStores

> **Module:** GenXdev.Data.KeyValueStore | **Type:** Cmdlet | **Aliases:** —

## Synopsis

> Initialisiert die Verzeichnisstruktur von KeyValueStore für lokalen und OneDrive-Speicher.

## Description

Erstellt Verzeichnisstruktur für JSON-basierte Schlüssel-Wert-Speicher an zwei Orten: lokalem Rechner für sofortigen Zugriff und OneDrive-Ordner für Cloudsynchronisation. Das Cmdlet stellt sicher, dass beide Verzeichnisse existieren und korrekt konfiguriert sind.

## Syntax

```powershell
Initialize-KeyValueStores [[-DatabasePath] <string>] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-DatabasePath` | String | — | — | 0 | — | Datenbankpfad für Key-Value-Speicherdatendateien |

## Examples

### Example 1

```powershell
Initialize-KeyValueStores
```

Erstellt die standardmäßigen lokalen und OneDrive-Verzeichnisse für Schlüssel-Wert-Speicher.

### Example 2

```powershell
Initialize-KeyValueStores -DatabasePath "C:\MyStores"
```

Erstellt Key-Value-Store-Verzeichnisse unter dem angegebenen benutzerdefinierten Pfad.

## Related Links

- [Initialize-KeyValueStores on GitHub](https://github.com/genXdev/genXdev)

# Set-ValueByKeyInStore

> **Module:** GenXdev.Data.KeyValueStore | **Type:** Cmdlet | **Aliases:** `setvalue

## Synopsis

> Verwaltet Schlüssel-Wert-Paare in einem JSON-Datei-basierten Speicher.

## Description

Bietet persistenten Speicher für Schlüssel-Wert-Paare unter Verwendung von JSON-Dateien. Handhabt sowohl das Einfügen neuer Einträge als auch das Aktualisieren vorhandener. Unterstützt optionale Synchronisierung für nicht-lokale Stores. Diese Funktion implementiert einen Upsert-Vorgang, der entweder neue Schlüssel-Wert-Paare einfügt oder vorhandene basierend auf der Kombination von Synchronisationsschlüssel, Store-Name und Schlüsselname aktualisiert.

## Syntax

```powershell
Set-ValueByKeyInStore [-StoreName] <string> [-KeyName] <string> [[-Value] <string>] [[-SynchronizationKey] <string>] [-DatabasePath <string>] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-StoreName` | String | ✅ | — | 0 | — | Speichername für das Schlüssel-Wert-Paar |
| `-KeyName` | String | ✅ | — | 1 | — | Name des Schlüssels, der festgelegt oder aktualisiert werden soll |
| `-Value` | String | — | — | 2 | — | Value to be stored |
| `-SynchronizationKey` | String | — | — | 3 | — | Schlüssel zur Identifizierung des Synchronisationsbereichs |
| `-DatabasePath` | String | — | — | Named | — | Datenbankpfad für Key-Value-Speicherdatendateien |

## Examples

### Example 1

```powershell
Set-ValueByKeyInStore -StoreName "ConfigStore" -KeyName "ApiEndpoint" `
    -Value "https://api.example.com"
```

Lege einen API-Endpunkt im ConfigStore fest.

### Example 2

```powershell
setvalue ConfigStore ApiEndpoint "https://api.example.com"
```

Verwende den Alias, um einen Wert festzulegen.

## Related Links

- [Set-ValueByKeyInStore on GitHub](https://github.com/genXdev/genXdev)

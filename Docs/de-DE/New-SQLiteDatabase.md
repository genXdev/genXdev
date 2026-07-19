# New-SQLiteDatabase

> **Module:** GenXdev.Data.SQLite | **Type:** Function | **Aliases:** `nsqldb

## Synopsis

> Erstellt eine neue SQLite-Datenbankdatei.

## Description

Erstellt eine neue SQLite-Datenbankdatei am angegebenen Pfad, falls diese noch nicht existiert. Die Funktion stellt sicher, dass das Zielverzeichnis vorhanden ist, und erstellt eine gültige SQLite-Datenbank, indem sie eine Verbindung herstellt und schließt.

## Syntax

```powershell
New-SQLiteDatabase -DatabaseFilePath <String> [-ConsentToThirdPartySoftwareInstallation] [-ForceConsent] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-DatabaseFilePath` | String | ✅ | — | 0 | — | Der Pfad zur SQLite-Datenbankdatei |
| `-ForceConsent` | SwitchParameter | — | — | Named | — | Erzwinge eine Zustimmungsaufforderung, auch wenn eine Präferenz für die SQLite-Paketinstallation festgelegt ist. |
| `-ConsentToThirdPartySoftwareInstallation` | SwitchParameter | — | — | Named | — | Automatisch der Installation von Drittanbieter-Software zustimmen und persistentes Flag für SQLite-Paket setzen. |

## Examples

### New-SQLiteDatabase -DatabaseFilePath "C:\Databases\MyNewDb.sqlite"

```powershell
New-SQLiteDatabase -DatabaseFilePath "C:\Databases\MyNewDb.sqlite"
```

### nsqldb "C:\Databases\MyNewDb.sqlite"

```powershell
nsqldb "C:\Databases\MyNewDb.sqlite"
```

### New-SQLiteDatabase -DatabaseFilePath "C:\Databases\MyNewDb.sqlite" -ConsentToThirdPartySoftwareInstallation

```powershell
New-SQLiteDatabase -DatabaseFilePath "C:\Databases\MyNewDb.sqlite" -ConsentToThirdPartySoftwareInstallation
```

## Related Links

- [New-SQLiteDatabase on GitHub](https://github.com/genXdev/genXdev)

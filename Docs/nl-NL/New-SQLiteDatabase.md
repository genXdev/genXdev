# New-SQLiteDatabase

> **Module:** GenXdev.Data.SQLite | **Type:** Function | **Aliases:** `nsqldb

## Synopsis

> Maakt een nieuw SQLite-databasebestand aan.

## Description

Maakt een nieuw SQLite-databasebestand aan op het opgegeven pad als het nog niet bestaat. De functie zorgt ervoor dat de doelmap bestaat en maakt een geldige SQLite-database aan door een verbinding tot stand te brengen en te sluiten.

## Syntax

```powershell
New-SQLiteDatabase -DatabaseFilePath <String> [-ConsentToThirdPartySoftwareInstallation] [-ForceConsent] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-DatabaseFilePath` | String | ✅ | — | 0 | — | Het pad naar het SQLite-databasebestand |
| `-ForceConsent` | SwitchParameter | — | — | Named | — | Forceer een toestemmingsprompt, zelfs als voorkeur is ingesteld voor SQLite-pakketinstallatie. |
| `-ConsentToThirdPartySoftwareInstallation` | SwitchParameter | — | — | Named | — | Automatisch instemmen met installatie van software van derden en persistente vlag instellen voor SQLite-pakket. |

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

# New-SQLiteDatabase

> **Module:** GenXdev.Data.SQLite | **Type:** Function | **Aliases:** `nsqldb

## Synopsis

> *(No synopsis provided)*

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

## Related Links

- [New-SQLiteDatabase on GitHub](https://github.com/genXdev/genXdev)

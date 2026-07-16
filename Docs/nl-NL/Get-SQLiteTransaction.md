# Get-SQLiteTransaction

> **Module:** GenXdev.Data.SQLite | **Type:** Function | **Aliases:** `getsqltx, `newsqltx

## Synopsis

> *(No synopsis provided)*

## Syntax

```powershell
Get-SQLiteTransaction -ConnectionString <String> [<CommonParameters>]

Get-SQLiteTransaction -DatabaseFilePath <String> [<CommonParameters>]

Get-SQLiteTransaction [-ConsentToThirdPartySoftwareInstallation] [-CreateDatabaseIfNotExists <Boolean>] [-ForceConsent] [-IsolationLevel <String>] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-ConnectionString` | String | ✅ | — | 0 | — | De verbindingsreeks naar de SQLite-database. *(Parameter set: )* |
| `-DatabaseFilePath` | String | ✅ | — | 0 | — | Het pad naar het SQLite-databasebestand. *(Parameter set: )* |
| `-IsolationLevel` | String | — | — | Named | `"ReadCommitted"` | Transaction isolation level. |
| `-CreateDatabaseIfNotExists` | Boolean | — | — | Named | `$true` | Of het databasebestand moet worden aangemaakt als het nog niet bestaat. |
| `-ForceConsent` | SwitchParameter | — | — | Named | — | Forceer een toestemmingsprompt, zelfs als voorkeur is ingesteld voor SQLite-pakketinstallatie. |
| `-ConsentToThirdPartySoftwareInstallation` | SwitchParameter | — | — | Named | — | Automatisch instemmen met installatie van software van derden en persistente vlag instellen voor SQLite-pakket. |

## Related Links

- [Get-SQLiteTransaction on GitHub](https://github.com/genXdev/genXdev)

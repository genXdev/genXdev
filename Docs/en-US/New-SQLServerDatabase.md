# New-SQLServerDatabase

> **Module:** GenXdev.Data.SqlServer | **Type:** Function | **Aliases:** `nsqldb

## Synopsis

> *(No synopsis provided)*

## Syntax

```powershell
New-SQLServerDatabase -DatabaseName <String> [[-Server] <String>] [-DataFilePath <String>] [-DetachAfterCreation] [-LogFilePath <String>] [<CommonParameters>]

New-SQLServerDatabase -ConnectionString <String> [<CommonParameters>]

New-SQLServerDatabase [-ConsentToThirdPartySoftwareInstallation] [-ForceConsent] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-DatabaseName` | String | ✅ | — | 0 | — | The name of the SQL Server database to create *(Parameter set: )* |
| `-Server` | String | — | — | 1 | `'.'` | The SQL Server instance name *(Parameter set: )* |
| `-ConnectionString` | String | ✅ | — | 0 | — | The connection string to connect to SQL Server *(Parameter set: )* |
| `-ForceConsent` | SwitchParameter | — | — | Named | — | Force a consent prompt even if preference is set for SQL Server package installation. |
| `-ConsentToThirdPartySoftwareInstallation` | SwitchParameter | — | — | Named | — | Automatically consent to third-party software installation and set persistent flag for SQL Server package. |
| `-DataFilePath` | String | — | — | Named | — | Optional data file path (.mdf) for file-based database creation. *(Parameter set: )* |
| `-LogFilePath` | String | — | — | Named | — | Optional log file path (.ldf) for file-based database creation. *(Parameter set: )* |
| `-DetachAfterCreation` | SwitchParameter | — | — | Named | — | Detach database after creation (for file-based databases). *(Parameter set: )* |

## Related Links

- [New-SQLServerDatabase on GitHub](https://github.com/genXdev/genXdev)

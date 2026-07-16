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
| `-DatabaseName` | String | ✅ | — | 0 | — | Der Name der zu erstellenden SQL Server-Datenbank *(Parameter set: )* |
| `-Server` | String | — | — | 1 | `'.'` | Der Name der SQL Server-Instanz *(Parameter set: )* |
| `-ConnectionString` | String | ✅ | — | 0 | — | Die Verbindungszeichenfolge, um eine Verbindung zu SQL Server herzustellen *(Parameter set: )* |
| `-ForceConsent` | SwitchParameter | — | — | Named | — | Erzwingen einer Zustimmungsaufforderung, auch wenn für die SQL Server-Paketinstallation eine Einstellung festgelegt ist. |
| `-ConsentToThirdPartySoftwareInstallation` | SwitchParameter | — | — | Named | — | Drittanbieter-Softwareinstallation automatisch zustimmen und persistentes Flag für SQL Server-Paket setzen. |
| `-DataFilePath` | String | — | — | Named | — | Optionaler Datenbankdateipfad (.mdf) für die dateibasierte Datenbankerstellung. *(Parameter set: )* |
| `-LogFilePath` | String | — | — | Named | — | Optionaler Protokolldateipfad (.ldf) für die dateibasierte Datenbankerstellung. *(Parameter set: )* |
| `-DetachAfterCreation` | SwitchParameter | — | — | Named | — | Nach der Erstellung die Datenbank trennen (für dateibasierte Datenbanken). *(Parameter set: )* |

## Related Links

- [New-SQLServerDatabase on GitHub](https://github.com/genXdev/genXdev)

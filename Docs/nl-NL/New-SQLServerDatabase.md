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
| `-DatabaseName` | String | ✅ | — | 0 | — | De naam van de SQL Server-database die u wilt maken *(Parameter set: )* |
| `-Server` | String | — | — | 1 | `'.'` | De SQL Server-instantienaam *(Parameter set: )* |
| `-ConnectionString` | String | ✅ | — | 0 | — | De verbindingsreeks om verbinding te maken met SQL Server *(Parameter set: )* |
| `-ForceConsent` | SwitchParameter | — | — | Named | — | Forceer een toestemmingsprompt, zelfs als de voorkeur is ingesteld voor de installatie van SQL Server-pakketten. |
| `-ConsentToThirdPartySoftwareInstallation` | SwitchParameter | — | — | Named | — | Automatisch toestemming geven voor installatie van software van derden en persistente vlag instellen voor SQL Server-pakket. |
| `-DataFilePath` | String | — | — | Named | — | Optioneel databestandspad (.mdf) voor het aanmaken van een bestandsgebaseerde database. *(Parameter set: )* |
| `-LogFilePath` | String | — | — | Named | — | Optioneel pad naar logbestand (.ldf) voor aanmaken van bestandsgebaseerde database. *(Parameter set: )* |
| `-DetachAfterCreation` | SwitchParameter | — | — | Named | — | Database na creatie loskoppelen (voor bestandsgebaseerde databases). *(Parameter set: )* |

## Related Links

- [New-SQLServerDatabase on GitHub](https://github.com/genXdev/genXdev)

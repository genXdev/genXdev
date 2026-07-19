# New-SQLServerDatabase

> **Module:** GenXdev.Data.SqlServer | **Type:** Function | **Aliases:** `nsqldb

## Synopsis

> Maakt een nieuwe SQL Server-database aan.

## Description

Maakt een nieuwe SQL Server-database aan met de opgegeven naam op de opgegeven server. Vereist de juiste machtigingen om databases te maken op de doel-SQL Server-instantie. Als de database al bestaat, wordt de bewerking overgeslagen. Ondersteunt bestandsgebaseerde databasecreatie met expliciete .mdf/.ldf-paden.

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

## Examples

### New-SQLServerDatabase -DatabaseName "MyNewDatabase" -Server "localhost"

```powershell
New-SQLServerDatabase -DatabaseName "MyNewDatabase" -Server "localhost"
```

### New-SQLServerDatabase "MyNewDatabase"

```powershell
New-SQLServerDatabase "MyNewDatabase"
```

### New-SQLServerDatabase -DatabaseName "MyDB" -ConnectionString "Server=.;..."

```powershell
New-SQLServerDatabase -DatabaseName "MyDB" -ConnectionString "Server=.;..."
```

### New-SQLServerDatabase -DatabaseName "ImageIndex" -DataFilePath "C:\Data\ImageIndex.mdf" -DetachAfterCreation

```powershell
New-SQLServerDatabase -DatabaseName "ImageIndex" -DataFilePath "C:\Data\ImageIndex.mdf" -DetachAfterCreation
```

### New-SQLServerDatabase -DatabaseName "MyDB" -Server "." -ConsentToThirdPartySoftwareInstallation

```powershell
New-SQLServerDatabase -DatabaseName "MyDB" -Server "." -ConsentToThirdPartySoftwareInstallation
```

## Related Links

- [New-SQLServerDatabase on GitHub](https://github.com/genXdev/genXdev)

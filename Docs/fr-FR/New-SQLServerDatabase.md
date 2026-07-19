# New-SQLServerDatabase

> **Module:** GenXdev.Data.SqlServer | **Type:** Function | **Aliases:** `nsqldb

## Synopsis

> Crée une nouvelle base de données SQL Server.

## Description

Crée une nouvelle base de données SQL Server avec le nom spécifié sur le serveur spécifié. Nécessite les autorisations appropriées pour créer des bases de données sur l'instance SQL Server cible. Si la base de données existe déjà, l'opération sera ignorée. Prend en charge la création de bases de données basées sur des fichiers avec des chemins .mdf/.ldf explicites.

## Syntax

```powershell
New-SQLServerDatabase -DatabaseName <String> [[-Server] <String>] [-DataFilePath <String>] [-DetachAfterCreation] [-LogFilePath <String>] [<CommonParameters>]

New-SQLServerDatabase -ConnectionString <String> [<CommonParameters>]

New-SQLServerDatabase [-ConsentToThirdPartySoftwareInstallation] [-ForceConsent] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-DatabaseName` | String | ✅ | — | 0 | — | Le nom de la base de données SQL Server à créer *(Parameter set: )* |
| `-Server` | String | — | — | 1 | `'.'` | Le nom de l'instance SQL Server *(Parameter set: )* |
| `-ConnectionString` | String | ✅ | — | 0 | — | La chaîne de connexion pour se connecter à SQL Server *(Parameter set: )* |
| `-ForceConsent` | SwitchParameter | — | — | Named | — | Forcer une invite de consentement même si la préférence est définie pour l'installation du package SQL Server. |
| `-ConsentToThirdPartySoftwareInstallation` | SwitchParameter | — | — | Named | — | Consentir automatiquement à l'installation de logiciels tiers et définir l'indicateur persistant pour le package SQL Server. |
| `-DataFilePath` | String | — | — | Named | — | Chemin de fichier de données optionnel (.mdf) pour la création de base de données basée sur fichier. *(Parameter set: )* |
| `-LogFilePath` | String | — | — | Named | — | Chemin facultatif vers le fichier journal (.ldf) pour la création d'une base de données basée sur fichier. *(Parameter set: )* |
| `-DetachAfterCreation` | SwitchParameter | — | — | Named | — | Détacher la base de données après sa création (pour les bases de données basées sur des fichiers). *(Parameter set: )* |

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

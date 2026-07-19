# New-SQLiteDatabase

> **Module:** GenXdev.Data.SQLite | **Type:** Function | **Aliases:** `nsqldb

## Synopsis

> Crée un nouveau fichier de base de données SQLite.

## Description

Crée un nouveau fichier de base de données SQLite au chemin spécifié s'il n'existe pas déjà. La fonction garantit que le répertoire cible existe et crée une base de données SQLite valide en établissant puis en fermant une connexion.

## Syntax

```powershell
New-SQLiteDatabase -DatabaseFilePath <String> [-ConsentToThirdPartySoftwareInstallation] [-ForceConsent] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-DatabaseFilePath` | String | ✅ | — | 0 | — | Le chemin vers le fichier de base de données SQLite |
| `-ForceConsent` | SwitchParameter | — | — | Named | — | Forcer une invite de consentement même si la préférence est définie pour l'installation du package SQLite. |
| `-ConsentToThirdPartySoftwareInstallation` | SwitchParameter | — | — | Named | — | Accepter automatiquement l'installation de logiciels tiers et définir le drapeau persistant pour le package SQLite. |

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

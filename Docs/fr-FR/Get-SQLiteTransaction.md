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
| `-ConnectionString` | String | ✅ | — | 0 | — | La chaîne de connexion à la base de données SQLite. *(Parameter set: )* |
| `-DatabaseFilePath` | String | ✅ | — | 0 | — | Le chemin vers le fichier de base de données SQLite. *(Parameter set: )* |
| `-IsolationLevel` | String | — | — | Named | `"ReadCommitted"` | Niveau d'isolation des transactions. |
| `-CreateDatabaseIfNotExists` | Boolean | — | — | Named | `$true` | Whether to create the database file if it does not exist. |
| `-ForceConsent` | SwitchParameter | — | — | Named | — | Forcer une invite de consentement même si la préférence est définie pour l'installation du package SQLite. |
| `-ConsentToThirdPartySoftwareInstallation` | SwitchParameter | — | — | Named | — | Accepter automatiquement l'installation de logiciels tiers et définir le drapeau persistant pour le package SQLite. |

## Related Links

- [Get-SQLiteTransaction on GitHub](https://github.com/genXdev/genXdev)

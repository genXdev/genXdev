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
| `-DatabaseFilePath` | String | ✅ | — | 0 | — | Le chemin vers le fichier de base de données SQLite |
| `-ForceConsent` | SwitchParameter | — | — | Named | — | Forcer une invite de consentement même si la préférence est définie pour l'installation du package SQLite. |
| `-ConsentToThirdPartySoftwareInstallation` | SwitchParameter | — | — | Named | — | Accepter automatiquement l'installation de logiciels tiers et définir le drapeau persistant pour le package SQLite. |

## Related Links

- [New-SQLiteDatabase on GitHub](https://github.com/genXdev/genXdev)

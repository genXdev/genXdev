# Invoke-SQLiteQuery

> **Module:** GenXdev.Data.SQLite | **Type:** Function | **Aliases:** —

## Synopsis

> *(No synopsis provided)*

## Syntax

```powershell
Invoke-SQLiteQuery [[-ConnectionString] <String>] [[-DatabaseFilePath] <String>] [[-Transaction] <Object>] -Queries <String[]> [[-SqlParameters] <Collections.Hashtable[]>] [-ConsentToThirdPartySoftwareInstallation] [-ForceConsent] [-IsolationLevel <String>] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-ConnectionString` | String | — | — | 0 | — | La chaîne de connexion à la base de données SQLite. |
| `-DatabaseFilePath` | String | — | — | 1 | — | Le chemin vers le fichier de base de données SQLite. |
| `-Transaction` | Object | — | — | 2 | — | Une transaction SQLite existante à utiliser pour les requêtes. |
| `-Queries` | String[] | ✅ | ✅ (ByValue, ByPropertyName) 🌐 Remaining | 3 | — | La ou les requêtes à exécuter. |
| `-SqlParameters` | Collections.Hashtable[] | — | ✅ (ByValue, ByPropertyName) 🌐 Remaining | 4 | `@()` | Les paramètres de requête sous forme de tables de hachage. |
| `-IsolationLevel` | String | — | — | Named | `"ReadCommitted"` | Le niveau d'isolation à utiliser. La valeur par défaut est ReadCommitted. |
| `-ForceConsent` | SwitchParameter | — | — | Named | — | Forcer une invite de consentement même si la préférence est définie pour l'installation du package SQLite. |
| `-ConsentToThirdPartySoftwareInstallation` | SwitchParameter | — | — | Named | — | Accepter automatiquement l'installation de logiciels tiers et définir le drapeau persistant pour le package SQLite. |

## Related Links

- [Invoke-SQLiteQuery on GitHub](https://github.com/genXdev/genXdev)

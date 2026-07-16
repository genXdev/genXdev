# Invoke-SQLServerQuery

> **Module:** GenXdev.Data.SqlServer | **Type:** Function | **Aliases:** —

## Synopsis

> *(No synopsis provided)*

## Syntax

```powershell
Invoke-SQLServerQuery [[-Queries] <String[]>] [[-DatabaseName] <String>] [[-Server] <String>] [[-Transaction] <Object>] [[-ConnectionString] <String>] [[-SqlParameters] <Collections.Hashtable[]>] [-ConsentToThirdPartySoftwareInstallation] [-ForceConsent] [-IsolationLevel <String>] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-Queries` | String[] | — | ✅ (ByValue, ByPropertyName) | 0 | — | La ou les requêtes à exécuter. |
| `-DatabaseName` | String | — | — | 1 | `'master'` | Le nom de la base de données SQL Server. |
| `-Server` | String | — | — | 2 | `'.'` | Le nom de l'instance SQL Server. |
| `-Transaction` | Object | — | — | 3 | — | Une transaction SQL Server existante à utiliser pour les requêtes. |
| `-ConnectionString` | String | — | — | 4 | — | La chaîne de connexion à la base de données SQL. |
| `-SqlParameters` | Collections.Hashtable[] | — | ✅ (ByValue, ByPropertyName) | 5 | `@()` | Les paramètres de requête sous forme de tables de hachage. |
| `-IsolationLevel` | String | — | — | Named | `"ReadCommitted"` | Le niveau d'isolation à utiliser. La valeur par défaut est ReadCommitted. |
| `-ForceConsent` | SwitchParameter | — | — | Named | — | Forcer une invite de consentement même si la préférence est définie pour l'installation du package SQL Server. |
| `-ConsentToThirdPartySoftwareInstallation` | SwitchParameter | — | — | Named | — | Consentir automatiquement à l'installation de logiciels tiers et définir l'indicateur persistant pour le package SQL Server. |

## Related Links

- [Invoke-SQLServerQuery on GitHub](https://github.com/genXdev/genXdev)

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
| `-Queries` | String[] | — | ✅ (ByValue, ByPropertyName) | 0 | — | De query('s) die moeten worden uitgevoerd. |
| `-DatabaseName` | String | — | — | 1 | `'master'` | De naam van de SQL Server-database. |
| `-Server` | String | — | — | 2 | `'.'` | De naam van de SQL Server-instantie. |
| `-Transaction` | Object | — | — | 3 | — | Een bestaande SQL Server-transactie die moet worden gebruikt voor de query's. |
| `-ConnectionString` | String | — | — | 4 | — | De verbindingsreeks naar de SQL-database. |
| `-SqlParameters` | Collections.Hashtable[] | — | ✅ (ByValue, ByPropertyName) | 5 | `@()` | Queryparametersalshashtabellen. |
| `-IsolationLevel` | String | — | — | Named | `"ReadCommitted"` | Het te gebruiken isolatieniveau. Standaard is ReadCommitted. |
| `-ForceConsent` | SwitchParameter | — | — | Named | — | Forceer een toestemmingsprompt, zelfs als de voorkeur is ingesteld voor de installatie van SQL Server-pakketten. |
| `-ConsentToThirdPartySoftwareInstallation` | SwitchParameter | — | — | Named | — | Automatisch toestemming geven voor installatie van software van derden en persistente vlag instellen voor SQL Server-pakket. |

## Related Links

- [Invoke-SQLServerQuery on GitHub](https://github.com/genXdev/genXdev)

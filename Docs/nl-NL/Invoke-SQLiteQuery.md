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
| `-ConnectionString` | String | — | — | 0 | — | De verbindingsreeks naar de SQLite-database. |
| `-DatabaseFilePath` | String | — | — | 1 | — | Het pad naar het SQLite-databasebestand. |
| `-Transaction` | Object | — | — | 2 | — | Een bestaande SQLite-transactie om te gebruiken voor de query's. |
| `-Queries` | String[] | ✅ | ✅ (ByValue, ByPropertyName) 🌐 Remaining | 3 | — | De query('s) die moeten worden uitgevoerd. |
| `-SqlParameters` | Collections.Hashtable[] | — | ✅ (ByValue, ByPropertyName) 🌐 Remaining | 4 | `@()` | Queryparametersalshashtabellen. |
| `-IsolationLevel` | String | — | — | Named | `"ReadCommitted"` | Het te gebruiken isolatieniveau. Standaard is ReadCommitted. |
| `-ForceConsent` | SwitchParameter | — | — | Named | — | Forceer een toestemmingsprompt, zelfs als voorkeur is ingesteld voor SQLite-pakketinstallatie. |
| `-ConsentToThirdPartySoftwareInstallation` | SwitchParameter | — | — | Named | — | Automatisch instemmen met installatie van software van derden en persistente vlag instellen voor SQLite-pakket. |

## Related Links

- [Invoke-SQLiteQuery on GitHub](https://github.com/genXdev/genXdev)

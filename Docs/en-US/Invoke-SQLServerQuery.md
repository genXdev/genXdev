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
| `-Queries` | String[] | — | ✅ (ByValue, ByPropertyName) | 0 | — | The query or queries to execute. |
| `-DatabaseName` | String | — | — | 1 | `'master'` | The name of the SQL Server database. |
| `-Server` | String | — | — | 2 | `'.'` | The SQL Server instance name. |
| `-Transaction` | Object | — | — | 3 | — | An existing SQL Server transaction to use for the queries. |
| `-ConnectionString` | String | — | — | 4 | — | The connection string to the SQL database. |
| `-SqlParameters` | Collections.Hashtable[] | — | ✅ (ByValue, ByPropertyName) | 5 | `@()` | Query parameters as hashtables. |
| `-IsolationLevel` | String | — | — | Named | `"ReadCommitted"` | The isolation level to use. default is ReadCommitted. |
| `-ForceConsent` | SwitchParameter | — | — | Named | — | Force a consent prompt even if preference is set for SQL Server package installation. |
| `-ConsentToThirdPartySoftwareInstallation` | SwitchParameter | — | — | Named | — | Automatically consent to third-party software installation and set persistent flag for SQL Server package. |

## Related Links

- [Invoke-SQLServerQuery on GitHub](https://github.com/genXdev/genXdev)

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
| `-Queries` | String[] | — | ✅ (ByValue, ByPropertyName) | 0 | — | 要执行的查询。 |
| `-DatabaseName` | String | — | — | 1 | `'master'` | SQL Server 数据库的名称。 |
| `-Server` | String | — | — | 2 | `'.'` | SQL Server 实例名称。 |
| `-Transaction` | Object | — | — | 3 | — | 要用于查询的现有 SQL Server 事务。 |
| `-ConnectionString` | String | — | — | 4 | — | SQL数据库的连接字符串。 |
| `-SqlParameters` | Collections.Hashtable[] | — | ✅ (ByValue, ByPropertyName) | 5 | `@()` | 查询参数作为哈希表。 |
| `-IsolationLevel` | String | — | — | Named | `"ReadCommitted"` | 要使用的隔离级别。默认值为 ReadCommitted。 |
| `-ForceConsent` | SwitchParameter | — | — | Named | — | 即使在 SQL Server 软件包安装中设置了首选项，也要强制显示同意提示。 |
| `-ConsentToThirdPartySoftwareInstallation` | SwitchParameter | — | — | Named | — | 自动同意安装第三方软件并为 SQL Server 包设置持久标志。 |

## Related Links

- [Invoke-SQLServerQuery on GitHub](https://github.com/genXdev/genXdev)

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
| `-ConnectionString` | String | — | — | 0 | — | SQLite数据库的连接字符串。 |
| `-DatabaseFilePath` | String | — | — | 1 | — | SQLite数据库文件的路径。 |
| `-Transaction` | Object | — | — | 2 | — | 一个用于查询的现有SQLite事务。 |
| `-Queries` | String[] | ✅ | ✅ (ByValue, ByPropertyName) 🌐 Remaining | 3 | — | 要执行的查询。 |
| `-SqlParameters` | Collections.Hashtable[] | — | ✅ (ByValue, ByPropertyName) 🌐 Remaining | 4 | `@()` | 查询参数作为哈希表。 |
| `-IsolationLevel` | String | — | — | Named | `"ReadCommitted"` | 要使用的隔离级别。默认值为 ReadCommitted。 |
| `-ForceConsent` | SwitchParameter | — | — | Named | — | 即使已设置偏好，也要强制显示同意提示以安装SQLite包。 |
| `-ConsentToThirdPartySoftwareInstallation` | SwitchParameter | — | — | Named | — | 自动同意安装第三方软件并为 SQLite 包设置持久标志。 |

## Related Links

- [Invoke-SQLiteQuery on GitHub](https://github.com/genXdev/genXdev)

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
| `-ConnectionString` | String | ✅ | — | 0 | — | SQLite数据库的连接字符串。 *(Parameter set: )* |
| `-DatabaseFilePath` | String | ✅ | — | 0 | — | SQLite数据库文件的路径。 *(Parameter set: )* |
| `-IsolationLevel` | String | — | — | Named | `"ReadCommitted"` | 事务隔离级别 |
| `-CreateDatabaseIfNotExists` | Boolean | — | — | Named | `$true` | 当数据库文件不存在时，是否创建该文件。 |
| `-ForceConsent` | SwitchParameter | — | — | Named | — | 即使已设置偏好，也要强制显示同意提示以安装SQLite包。 |
| `-ConsentToThirdPartySoftwareInstallation` | SwitchParameter | — | — | Named | — | 自动同意安装第三方软件并为 SQLite 包设置持久标志。 |

## Related Links

- [Get-SQLiteTransaction on GitHub](https://github.com/genXdev/genXdev)

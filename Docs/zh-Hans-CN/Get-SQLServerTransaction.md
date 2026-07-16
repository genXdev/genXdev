# Get-SQLServerTransaction

> **Module:** GenXdev.Data.SqlServer | **Type:** Function | **Aliases:** `getsqltx, `newsqltx

## Synopsis

> *(No synopsis provided)*

## Syntax

```powershell
Get-SQLServerTransaction -ConnectionString <String> [<CommonParameters>]

Get-SQLServerTransaction -DatabaseName <String> [[-Server] <String>] [<CommonParameters>]

Get-SQLServerTransaction [-ConsentToThirdPartySoftwareInstallation] [-ForceConsent] [-IsolationLevel <String>] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-ConnectionString` | String | ✅ | — | 0 | — | 连接到 SQL Server 数据库的连接字符串。 *(Parameter set: )* |
| `-DatabaseName` | String | ✅ | — | 0 | — | SQL Server 数据库的名称。 *(Parameter set: )* |
| `-Server` | String | — | — | 1 | `'.'` | SQL Server 实例名称。 *(Parameter set: )* |
| `-IsolationLevel` | String | — | — | Named | `"ReadCommitted"` | 事务隔离级别 |
| `-ForceConsent` | SwitchParameter | — | — | Named | — | 即使在 SQL Server 软件包安装中设置了首选项，也要强制显示同意提示。 |
| `-ConsentToThirdPartySoftwareInstallation` | SwitchParameter | — | — | Named | — | 自动同意安装第三方软件并为 SQL Server 包设置持久标志。 |

## Related Links

- [Get-SQLServerTransaction on GitHub](https://github.com/genXdev/genXdev)

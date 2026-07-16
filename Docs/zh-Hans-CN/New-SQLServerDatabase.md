# New-SQLServerDatabase

> **Module:** GenXdev.Data.SqlServer | **Type:** Function | **Aliases:** `nsqldb

## Synopsis

> *(No synopsis provided)*

## Syntax

```powershell
New-SQLServerDatabase -DatabaseName <String> [[-Server] <String>] [-DataFilePath <String>] [-DetachAfterCreation] [-LogFilePath <String>] [<CommonParameters>]

New-SQLServerDatabase -ConnectionString <String> [<CommonParameters>]

New-SQLServerDatabase [-ConsentToThirdPartySoftwareInstallation] [-ForceConsent] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-DatabaseName` | String | ✅ | — | 0 | — | 要创建的SQL Server数据库名称 *(Parameter set: )* |
| `-Server` | String | — | — | 1 | `'.'` | SQL Server 实例名称 *(Parameter set: )* |
| `-ConnectionString` | String | ✅ | — | 0 | — | 用于连接到 SQL Server 的连接字符串 *(Parameter set: )* |
| `-ForceConsent` | SwitchParameter | — | — | Named | — | 即使在 SQL Server 软件包安装中设置了首选项，也要强制显示同意提示。 |
| `-ConsentToThirdPartySoftwareInstallation` | SwitchParameter | — | — | Named | — | 自动同意安装第三方软件并为 SQL Server 包设置持久标志。 |
| `-DataFilePath` | String | — | — | Named | — | 用于基于文件的数据库创建的可选数据文件路径 (.mdf)。 *(Parameter set: )* |
| `-LogFilePath` | String | — | — | Named | — | 用于基于文件的数据库创建的可选日志文件路径 (.ldf)。 *(Parameter set: )* |
| `-DetachAfterCreation` | SwitchParameter | — | — | Named | — | 在创建后分离数据库（适用于基于文件的数据库）。 *(Parameter set: )* |

## Related Links

- [New-SQLServerDatabase on GitHub](https://github.com/genXdev/genXdev)

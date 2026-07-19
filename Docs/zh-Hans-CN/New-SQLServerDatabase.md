# New-SQLServerDatabase

> **Module:** GenXdev.Data.SqlServer | **Type:** Function | **Aliases:** `nsqldb

## Synopsis

> 创建一个新的 SQL Server 数据库。

## Description

在指定服务器上创建具有指定名称的新 SQL Server 数据库。需要拥有在目标 SQL Server 实例上创建数据库的适当权限。如果数据库已存在，将跳过此操作。支持使用显式的 .mdf/.ldf 路径基于文件创建数据库。

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

## Examples

### New-SQLServerDatabase -DatabaseName "MyNewDatabase" -Server "localhost"

```powershell
New-SQLServerDatabase -DatabaseName "MyNewDatabase" -Server "localhost"
```

### New-SQLServerDatabase "MyNewDatabase"

```powershell
New-SQLServerDatabase "MyNewDatabase"
```

### New-SQLServerDatabase -DatabaseName "MyDB" -ConnectionString "Server=.;..."

```powershell
New-SQLServerDatabase -DatabaseName "MyDB" -ConnectionString "Server=.;..."
```

### New-SQLServerDatabase -DatabaseName "ImageIndex" -DataFilePath "C:\Data\ImageIndex.mdf" -DetachAfterCreation

```powershell
New-SQLServerDatabase -DatabaseName "ImageIndex" -DataFilePath "C:\Data\ImageIndex.mdf" -DetachAfterCreation
```

### New-SQLServerDatabase -DatabaseName "MyDB" -Server "." -ConsentToThirdPartySoftwareInstallation

```powershell
New-SQLServerDatabase -DatabaseName "MyDB" -Server "." -ConsentToThirdPartySoftwareInstallation
```

## Related Links

- [New-SQLServerDatabase on GitHub](https://github.com/genXdev/genXdev)

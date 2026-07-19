# Initialize-ScheduledTaskScripts

> **Module:** GenXdev.Windows | **Type:** Function | **Aliases:** —

## Synopsis

> 创建按指定间隔运行 PowerShell 脚本的计划任务。

## Description

创建并配置计划任务，在以下不同时间间隔执行 PowerShell 脚本，包括：
- 系统启动
- 用户登录
- 特定日期的每小时（例如，周一 13:00）
- 每日特定时间（例如，每天 15:00）
每个任务在当前用户上下文中以提升的权限运行。

## Syntax

```powershell
Initialize-ScheduledTaskScripts [[-FilePath] <String>] [[-Prefix] <String>] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-FilePath` | String | — | — | 0 | `''` | 将创建任务脚本的目录路径 |
| `-Prefix` | String | — | — | 1 | `'PS'` | Prefix for the scheduled task names |

## Examples

### Initialize-ScheduledTaskScripts -FilePath "C:\Tasks" -Prefix "MyTasks"

```powershell
Initialize-ScheduledTaskScripts -FilePath "C:\Tasks" -Prefix "MyTasks"
```

### Initialize-ScheduledTaskScripts

```powershell
Initialize-ScheduledTaskScripts
```

## Related Links

- [Initialize-ScheduledTaskScripts on GitHub](https://github.com/genXdev/genXdev)

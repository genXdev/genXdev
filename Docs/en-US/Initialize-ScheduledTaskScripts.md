# Initialize-ScheduledTaskScripts

> **Module:** GenXdev.Windows | **Type:** Function | **Aliases:** —

## Synopsis

> Creates scheduled tasks that run PowerShell scripts at specified intervals.

## Description

Creates and configures scheduled tasks that execute PowerShell scripts at various
intervals including:
- System startup
- User logon
- Every hour of specific days (e.g., Monday at 13:00)
- Daily at specific hours (e.g., every day at 15:00)
Each task runs with elevated privileges under the current user's context.

## Syntax

```powershell
Initialize-ScheduledTaskScripts [[-FilePath] <String>] [[-Prefix] <String>] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-FilePath` | String | — | — | 0 | `''` | The directory path where task scripts will be created |
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

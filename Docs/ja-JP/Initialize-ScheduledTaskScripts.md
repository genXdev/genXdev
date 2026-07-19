# Initialize-ScheduledTaskScripts

> **Module:** GenXdev.Windows | **Type:** Function | **Aliases:** —

## Synopsis

> 指定された間隔でPowerShellスクリプトを実行するスケジュール済みタスクを作成します。

## Description

様々な間隔でPowerShellスクリプトを実行するスケジュールタスクを作成および構成します。
- システム起動時
- ユーザーログオン時
- 特定の曜日の毎時（例：月曜日13:00）
- 特定の時間に毎日（例：毎日15:00）
各タスクは、現在のユーザーコンテキストで昇格された特権で実行されます。

## Syntax

```powershell
Initialize-ScheduledTaskScripts [[-FilePath] <String>] [[-Prefix] <String>] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-FilePath` | String | — | — | 0 | `''` | タスクスクリプトが作成されるディレクトリパス |
| `-Prefix` | String | — | — | 1 | `'PS'` | スケジュールされたタスク名のプレフィックス |

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

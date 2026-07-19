# ReadJsonWithRetry

> **Module:** GenXdev.FileSystem | **Type:** Function | **Aliases:** —

## Synopsis

> 读取JSON文件，包含重试逻辑和自动锁清理。

## Description

尝试使用重试逻辑读取JSON文件以处理并发访问。实现自动清理过期的锁文件。如果文件不存在，则返回空哈希表。

## Syntax

```powershell
ReadJsonWithRetry -FilePath <String> [[-MaxRetries] <Int32>] [[-RetryDelayMs] <Int32>] [-AsHashtable] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-FilePath` | String | ✅ | — | 0 | — | The `-FilePath` parameter. |
| `-MaxRetries` | Int32 | — | — | 1 | `10` | The `-MaxRetries` parameter. |
| `-RetryDelayMs` | Int32 | — | — | 2 | `200` | The `-RetryDelayMs` parameter. |
| `-AsHashtable` | SwitchParameter | — | — | Named | — | The `-AsHashtable` parameter. |

## Related Links

- [ReadJsonWithRetry on GitHub](https://github.com/genXdev/genXdev)

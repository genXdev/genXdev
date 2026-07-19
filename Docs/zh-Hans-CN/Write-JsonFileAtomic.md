# Write-JsonFileAtomic

> **Module:** GenXdev.FileSystem | **Type:** Cmdlet | **Aliases:** —

## Synopsis

> 以原子方式将对象写入JSON文件以防止损坏。

## Description

* 原子写入：使用临时文件+重命名策略，确保进程中断时目标文件不会处于损坏状态。
* 重试机制：最多重试MaxRetries次，每次间隔RetryDelayMs毫秒。
* 对象支持：接受任意对象，不限于Hashtable。通过System.Text.Json序列化，对于无法原生序列化的复杂.NET类型，回退到ConvertTo-Json。
* 防抖支持：当DebounceMs > 0时，对同一文件的快速连续写入会被合并——仅当文件在DebounceMs毫秒内未被触碰时，才写入最后一个有效负载。
* 目录创建：自动创建不存在的父目录。

## Syntax

```powershell
Write-JsonFileAtomic [-FilePath] <string> [[-Data] <Object>] [-MaxRetries <int>] [-RetryDelayMs <int>] [-DebounceMs <int>] [-Depth <int>] [-Compress] [-AsArray] [-EnumsAsStrings] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-FilePath` | String | ✅ | — | 0 | — | 要写入的文件的路径。 |
| `-Data` | Object | — | — | 1 | — | 要序列化为JSON并写入文件的对象。 |
| `-MaxRetries` | Int32 | — | — | Named | `0` | 原子写操作的最大重试次数。默认值为 4。 |
| `-RetryDelayMs` | Int32 | — | — | Named | `0` | 重试尝试之间的延迟（毫秒）。默认为200。 |
| `-DebounceMs` | Int32 | — | — | Named | `0` | 如果大于0，则对此文件执行去抖写入。默认为0（禁用）。 |
| `-Depth` | Nullable`1[[System.Int32, System.Private.CoreLib, Version=10.0.0.0, Culture=neutral, PublicKeyToken=7cec85d7bea7798e]] | — | — | Named | — | JSON 序列化的最大深度。默认值为 30。 |
| `-Compress` | SwitchParameter | — | — | Named | `False` | You are a helpful assistant designed to output JSON. |
| `-AsArray` | SwitchParameter | — | — | Named | `False` | You are a helpful assistant designed to output JSON. |
| `-EnumsAsStrings` | SwitchParameter | — | — | Named | `False` | 提供一种替代的序列化选项，将所有枚举转换为它们的字符串表示形式。 |

## Examples

### Example 1

```powershell
$data = @{ Name = "test"; Value = 42 }
Write-JsonFileAtomic -FilePath "config.json" -Data $data
```

将哈希表以原子方式写入config.json的缩进JSON格式。

### Example 2

```powershell
Get-Process | Select-Object -First 5 |
    Write-JsonFileAtomic -FilePath "processes.json" -Compress
```

以原子方式将进程对象写入压缩JSON。

## Related Links

- [Write-JsonFileAtomic on GitHub](https://github.com/genXdev/genXdev)

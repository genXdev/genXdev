# Write-JsonFileAtomic

> **Module:** GenXdev.FileSystem | **Type:** Cmdlet | **Aliases:** —

## Synopsis

> 以原子方式将对象写入JSON文件以防止损坏。

## Description

* 原子写入：使用临时文件加重命名策略，确保目标文件在进程中断时不会处于损坏状态。
* 重试逻辑：最多重试 MaxRetries 次，每次尝试之间间隔 RetryDelayMs 毫秒。
* 对象支持：接受任何对象，而不仅仅是哈希表。通过 System.Text.Json 序列化，对于无法原生序列化的复杂 .NET 类型，则回退到 ConvertTo-Json。
* 防抖支持：当 DebounceMs > 0 时，对同一文件的快速连续写入会被合并——仅当文件在 DebounceMs 毫秒内未被访问时，才写入最后的内容。
* 目录创建：如果父目录不存在，会自动创建。

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
| `-Compress` | SwitchParameter | — | — | Named | `False` | {"type":"json_schema","json_schema":{"name":"text_transformation_response","schema":{"properties":{"response":{"description":"The transformed text output","type":"string"}},"required":["response"],"type":"object"},"strict":true}} |
| `-AsArray` | SwitchParameter | — | — | Named | `False` | The `-AsArray` parameter. |
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

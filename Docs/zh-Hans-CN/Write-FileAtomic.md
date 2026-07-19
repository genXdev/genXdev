# Write-FileAtomic

> **Module:** GenXdev.FileSystem | **Type:** Cmdlet | **Aliases:** —

## Synopsis

> 以原子方式写入文件以防止损坏。

## Description

* 原子写入：使用临时文件+重命名策略，确保进程中断时目标文件不会处于损坏状态。
* 重试逻辑：最多重试MaxRetries次，每次重试间隔RetryDelayMs毫秒。
* 防抖支持：当DebounceMs > 0时，对同一文件的快速连续写入会被合并——仅在文件超过DebounceMs毫秒未被修改时写入最后一个有效负载。
* 目录创建：如果父目录不存在，则自动创建。

## Syntax

```powershell
Write-FileAtomic [-FilePath] <string> [[-Data] <byte[]>] [-MaxRetries <int>] [-RetryDelayMs <int>] [-DebounceMs <int>] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-FilePath` | String | ✅ | — | 0 | — | 要写入的文件的路径。 |
| `-Data` | Byte[] | — | — | 1 | — | 要写入文件的字节数组。 |
| `-MaxRetries` | Int32 | — | — | Named | `0` | 原子写操作的最大重试次数。默认值为 4。 |
| `-RetryDelayMs` | Int32 | — | — | Named | `0` | 重试尝试之间的延迟（毫秒）。默认为200。 |
| `-DebounceMs` | Int32 | — | — | Named | `0` | 如果大于0，则对此文件执行去抖写入。默认为0（禁用）。 |

## Examples

### Example 1

```powershell
Write-FileAtomic -FilePath "data.bin" -Data $bytes
```

以默认重试设置原子地将字节数组写入data.bin。

### Example 2

```powershell
# Debounce: only the LAST write within 5 seconds actually hits disk
1..100 | ForEach-Object {
    Write-FileAtomic -FilePath "state.bin" -Data $_ `
        -DebounceMs 5000
}
Start-Sleep -Seconds 6
```

快速写入100次，但只有最终的有效负载（第100次）在5秒静默期后持久化到磁盘。

### Example 3

```powershell
Write-FileAtomic -FilePath "cache.dat" -Data $buffer `
    -MaxRetries 10 -RetryDelayMs 500
```

使用自定义重试：最多尝试10次，每次间隔500毫秒。

## Related Links

- [Write-FileAtomic on GitHub](https://github.com/genXdev/genXdev)

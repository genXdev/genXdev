# Write-TextFileAtomic

> **Module:** GenXdev.FileSystem | **Type:** Cmdlet | **Aliases:** —

## Synopsis

> 以确保数据不损坏的方式原子化写入文件。

## Description

* 原子写入：使用临时文件 + 重命名策略，确保进程中断时目标文件不会处于损坏状态。
* 重试逻辑：最多重试 MaxRetries 次，每次尝试间隔 RetryDelayMs 毫秒。
* 编码支持：接受 System.Text.Encoding 参数控制输出编码，默认 UTF-8。
* 去抖支持：当 DebounceMs > 0 时，对同一文件的快速连续写入会被合并——仅在文件超过 DebounceMs 毫秒未被修改时写入最后一个内容。
* 目录创建：自动创建不存在的父目录。

## Syntax

```powershell
Write-TextFileAtomic [-FilePath] <string> [[-Data] <string>] [-MaxRetries <int>] [-RetryDelayMs <int>] [-Encoding <Encoding>] [-DebounceMs <int>] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-FilePath` | String | ✅ | — | 0 | — | 要写入的文件的路径。 |
| `-Data` | String | — | — | 1 | — | 即将被写入文件的文本内容。 |
| `-MaxRetries` | Int32 | — | — | Named | `0` | 原子写操作的最大重试次数。默认值为 4。 |
| `-RetryDelayMs` | Int32 | — | — | Named | `0` | 重试尝试之间的延迟（毫秒）。默认为200。 |
| `-Encoding` | Text.Encoding | — | — | Named | — | 写入文件时使用的文本编码。默认为UTF-8。 |
| `-DebounceMs` | Int32 | — | — | Named | `0` | 如果大于0，则对此文件执行去抖写入。默认为0（禁用）。 |

## Examples

### Example 1

```powershell
Write-TextFileAtomic -FilePath "config.txt" -Data "hello world"
```

使用 UTF-8 编码原子性地将字符串写入 config.txt。

### Example 2

```powershell
# Debounce: only the LAST log line within 2 seconds hits disk
Get-Content server.log -Tail 50 | ForEach-Object {
    Write-TextFileAtomic -FilePath "filtered.log" -Data $_ `
        -DebounceMs 2000
}
Start-Sleep -Seconds 3
```

快速传输50行数据；只有在静默2秒后，最后一行才会被持久化保存。

### Example 3

```powershell
Write-TextFileAtomic -FilePath "data.csv" -Data $csv `
    -Encoding ([System.Text.Encoding]::ASCII)
```

使用ASCII编码原子性地将字符串写入data.csv。

### Example 4

```powershell
# Debounce with custom retry: coalesce UI state saves
$watcher = Start-ThreadJob -ScriptBlock {
    param($path)
    while ($true) {
        Write-TextFileAtomic -FilePath $path `
            -Data (Get-Date -Format 'yyyy-MM-dd HH:mm:ss') `
            -DebounceMs 1000 -MaxRetries 3
        Start-Sleep -Milliseconds 100
    }
} -ArgumentList "timestamp.txt"
```

一个后台任务每100毫秒写入一次时间戳，但防抖合并后实际上每秒只写入一次磁盘。

## Related Links

- [Write-TextFileAtomic on GitHub](https://github.com/genXdev/genXdev)

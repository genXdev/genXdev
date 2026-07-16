# Write-TextFileAtomic

> **Module:** GenXdev.FileSystem | **Type:** Cmdlet | **Aliases:** —

## Synopsis

> Writes text to a file atomically to prevent corruption.

## Description

* Atomic write: uses a temp-file + rename strategy to ensure the target
  file is never left in a corrupted state if the process is interrupted.
* Retry logic: retries the write up to MaxRetries times with a delay of
  RetryDelayMs milliseconds between attempts.
* Encoding support: accepts a System.Text.Encoding parameter to control
  the output encoding. Defaults to UTF-8.
* Debounce support: when DebounceMs > 0, rapid consecutive writes to
  the same file are coalesced — only the last payload is written once
  the file hasn't been touched for DebounceMs ms.
* Directory creation: creates parent directories automatically if they
  don't exist.

## Syntax

```powershell
Write-TextFileAtomic [-FilePath] <string> [[-Data] <string>] [-MaxRetries <int>] [-RetryDelayMs <int>] [-Encoding <Encoding>] [-DebounceMs <int>] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-FilePath` | String | ✅ | — | 0 | — | The path to the file to write. |
| `-Data` | String | — | — | 1 | — | The text content to write to the file. |
| `-MaxRetries` | Int32 | — | — | Named | `0` | The maximum number of retry attempts for the atomic write operation. Default is 4. |
| `-RetryDelayMs` | Int32 | — | — | Named | `0` | The delay in milliseconds between retry attempts. Default is 200. |
| `-Encoding` | Text.Encoding | — | — | Named | — | The text encoding to use when writing the file. Default is UTF-8. |
| `-DebounceMs` | Int32 | — | — | Named | `0` | If greater than 0, debounce writes to this file. Default is 0 (disabled). |

## Examples

### Example 1

```powershell
Write-TextFileAtomic -FilePath "config.txt" -Data "hello world"
```

Writes a string to config.txt using UTF-8 encoding atomically.

### Example 2

```powershell
# Debounce: only the LAST log line within 2 seconds hits disk
Get-Content server.log -Tail 50 | ForEach-Object {
    Write-TextFileAtomic -FilePath "filtered.log" -Data $_ `
        -DebounceMs 2000
}
Start-Sleep -Seconds 3
```

Pipes 50 lines rapidly; only the final line is persisted after a
2-second quiet period.

### Example 3

```powershell
Write-TextFileAtomic -FilePath "data.csv" -Data $csv `
    -Encoding ([System.Text.Encoding]::ASCII)
```

Writes a string to data.csv using ASCII encoding atomically.

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

A background job writes timestamps every 100ms but debounce coalesces
them — only one write per second actually hits disk.

## Related Links

- [Write-TextFileAtomic on GitHub](https://github.com/genXdev/genXdev)

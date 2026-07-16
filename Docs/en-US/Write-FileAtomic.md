# Write-FileAtomic

> **Module:** GenXdev.FileSystem | **Type:** Cmdlet | **Aliases:** —

## Synopsis

> Writes bytes to a file atomically to prevent corruption.

## Description

* Atomic write: uses a temp-file + rename strategy to ensure the target
  file is never left in a corrupted state if the process is interrupted.
* Retry logic: retries the write up to MaxRetries times with a delay of
  RetryDelayMs milliseconds between attempts.
* Debounce support: when DebounceMs > 0, rapid consecutive writes to
  the same file are coalesced — only the last payload is written once
  the file hasn't been touched for DebounceMs ms.
* Directory creation: creates parent directories automatically if they
  don't exist.

## Syntax

```powershell
Write-FileAtomic [-FilePath] <string> [[-Data] <byte[]>] [-MaxRetries <int>] [-RetryDelayMs <int>] [-DebounceMs <int>] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-FilePath` | String | ✅ | — | 0 | — | The path to the file to write. |
| `-Data` | Byte[] | — | — | 1 | — | The byte array to write to the file. |
| `-MaxRetries` | Int32 | — | — | Named | `0` | The maximum number of retry attempts for the atomic write operation. Default is 4. |
| `-RetryDelayMs` | Int32 | — | — | Named | `0` | The delay in milliseconds between retry attempts. Default is 200. |
| `-DebounceMs` | Int32 | — | — | Named | `0` | If greater than 0, debounce writes to this file. Default is 0 (disabled). |

## Examples

### Example 1

```powershell
Write-FileAtomic -FilePath "data.bin" -Data $bytes
```

Writes a byte array to data.bin atomically with default retry settings.

### Example 2

```powershell
# Debounce: only the LAST write within 5 seconds actually hits disk
1..100 | ForEach-Object {
    Write-FileAtomic -FilePath "state.bin" -Data $_ `
        -DebounceMs 5000
}
Start-Sleep -Seconds 6
```

Rapidly writes 100 times but only the final payload (100) is persisted
to disk after a 5-second quiet period.

### Example 3

```powershell
Write-FileAtomic -FilePath "cache.dat" -Data $buffer `
    -MaxRetries 10 -RetryDelayMs 500
```

Writes with custom retry: up to 10 attempts with 500ms between each.

## Related Links

- [Write-FileAtomic on GitHub](https://github.com/genXdev/genXdev)

# Write-JsonFileAtomic

> **Module:** GenXdev.FileSystem | **Type:** Cmdlet | **Aliases:** —

## Synopsis

> Writes an object as JSON to a file atomically to prevent corruption.

## Description

* Atomic write: uses a temp-file + rename strategy to ensure the target
  file is never left in a corrupted state if the process is interrupted.
* Retry logic: retries the write up to MaxRetries times with a delay of
  RetryDelayMs milliseconds between attempts.
* Object support: accepts any object, not just Hashtable. Serializes
  via System.Text.Json with fallback to ConvertTo-Json for complex
  .NET types that can't be serialized natively.
* Debounce support: when DebounceMs > 0, rapid consecutive writes to
  the same file are coalesced — only the last payload is written once
  the file hasn't been touched for DebounceMs ms.
* Directory creation: creates parent directories automatically if they
  don't exist.

## Syntax

```powershell
Write-JsonFileAtomic [-FilePath] <string> [[-Data] <Object>] [-MaxRetries <int>] [-RetryDelayMs <int>] [-DebounceMs <int>] [-Depth <int>] [-Compress] [-AsArray] [-EnumsAsStrings] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-FilePath` | String | ✅ | — | 0 | — | The path to the file to write. |
| `-Data` | Object | — | — | 1 | — | The object to serialize as JSON and write to the file. |
| `-MaxRetries` | Int32 | — | — | Named | `0` | The maximum number of retry attempts for the atomic write operation. Default is 4. |
| `-RetryDelayMs` | Int32 | — | — | Named | `0` | The delay in milliseconds between retry attempts. Default is 200. |
| `-DebounceMs` | Int32 | — | — | Named | `0` | If greater than 0, debounce writes to this file. Default is 0 (disabled). |
| `-Depth` | Nullable`1[[System.Int32, System.Private.CoreLib, Version=10.0.0.0, Culture=neutral, PublicKeyToken=7cec85d7bea7798e]] | — | — | Named | — | The maximum depth for JSON serialization. Default is 30. |
| `-Compress` | SwitchParameter | — | — | Named | `False` | Write Compress JSON (no indentation/whitespace). |
| `-AsArray` | SwitchParameter | — | — | Named | `False` | Write Compress JSON (no indentation/whitespace). |
| `-EnumsAsStrings` | SwitchParameter | — | — | Named | `False` | Provides an alternative serialization option that converts all enumerations to their string representation. |

## Examples

### Example 1

```powershell
$data = @{ Name = "test"; Value = 42 }
Write-JsonFileAtomic -FilePath "config.json" -Data $data
```

Writes a Hashtable as indented JSON to config.json atomically.

### Example 2

```powershell
Get-Process | Select-Object -First 5 |
    Write-JsonFileAtomic -FilePath "processes.json" -Compress
```

Writes process objects as Compress JSON atomically.

## Related Links

- [Write-JsonFileAtomic on GitHub](https://github.com/genXdev/genXdev)

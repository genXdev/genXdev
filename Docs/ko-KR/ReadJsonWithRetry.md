# ReadJsonWithRetry

> **Module:** GenXdev.FileSystem | **Type:** Function | **Aliases:** —

## Synopsis

> 재시도 로직과 자동 잠금 정리를 사용하여 JSON 파일을 읽습니다.

## Description

동시 접근을 처리하기 위해 재시도 로직을 사용하여 JSON 파일을 읽으려고 시도합니다.
오래된 잠금 파일의 자동 정리를 구현합니다. 파일이 존재하지 않으면 빈 해시테이블을 반환합니다.

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

# Start-ProcessWithPriority

> **Module:** GenXdev.Windows | **Type:** Cmdlet | **Aliases:** `nice

## Synopsis

> *(No synopsis provided)*

## Syntax

```powershell
Start-ProcessWithPriority [-FilePath] <string> [[-ArgumentList] <string[]>] [[-Priority] <string>] [-NoWait] [-PassThru] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-FilePath` | String | ✅ | — | 0 | — | 실행할 실행 파일의 경로 |
| `-ArgumentList` | String[] | — | — | 1 | — | 실행 파일에 전달할 인수 |
| `-Priority` | String | — | — | 2 | — | 프로세스 우선 순위 수준 |
| `-NoWait` | SwitchParameter | — | — | Named | `False` | 프로세스 완료를 기다리지 마십시오 |
| `-PassThru` | SwitchParameter | — | — | Named | `False` | 프로세스 객체를 반환합니다 |

## Related Links

- [Start-ProcessWithPriority on GitHub](https://github.com/genXdev/genXdev)

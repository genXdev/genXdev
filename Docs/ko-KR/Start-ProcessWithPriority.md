# Start-ProcessWithPriority

> **Module:** GenXdev.Windows | **Type:** Cmdlet | **Aliases:** `nice

## Synopsis

> 지정된 우선 순위 수준으로 프로세스를 시작합니다.

## Description

* 사용자 지정 우선순위 수준으로 실행 파일을 시작하고
  대기 및 프로세스 처리를 위한 옵션을 제공합니다.
* Start-Process를 래핑하여 프로세스 우선순위 및 실행 동작을
  제어하는 추가 기능을 제공합니다.

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

## Examples

### Example 1

```powershell
Start-ProcessWithPriority -FilePath "notepad.exe" -Priority "Low" -NoWait
```

낮은 우선순위로 메모장을 시작하고 즉시 반환합니다.

### Example 2

```powershell
nice notepad.exe -Priority High
```

'nice' 별칭을 사용하여 높은 우선순위로 프로세스를 시작합니다.

## Related Links

- [Start-ProcessWithPriority on GitHub](https://github.com/genXdev/genXdev)

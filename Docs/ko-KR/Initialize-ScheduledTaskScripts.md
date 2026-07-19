# Initialize-ScheduledTaskScripts

> **Module:** GenXdev.Windows | **Type:** Function | **Aliases:** —

## Synopsis

> 지정된 간격으로 PowerShell 스크립트를 실행하는 예약된 작업을 생성합니다.

## Description

다양한 간격으로 PowerShell 스크립트를 실행하는 예약된 작업을 만들고 구성합니다. 간격은 다음과 같습니다:
- 시스템 시작
- 사용자 로그온
- 특정 요일의 매시간 (예: 월요일 13:00)
- 특정 시간에 매일 (예: 매일 15:00)
각 작업은 현재 사용자 컨텍스트에서 상승된 권한으로 실행됩니다.

## Syntax

```powershell
Initialize-ScheduledTaskScripts [[-FilePath] <String>] [[-Prefix] <String>] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-FilePath` | String | — | — | 0 | `''` | 태스크 스크립트가 생성될 디렉터리 경로 |
| `-Prefix` | String | — | — | 1 | `'PS'` | 예약된 작업 이름의 접두사 |

## Examples

### Initialize-ScheduledTaskScripts -FilePath "C:\Tasks" -Prefix "MyTasks"

```powershell
Initialize-ScheduledTaskScripts -FilePath "C:\Tasks" -Prefix "MyTasks"
```

### Initialize-ScheduledTaskScripts

```powershell
Initialize-ScheduledTaskScripts
```

## Related Links

- [Initialize-ScheduledTaskScripts on GitHub](https://github.com/genXdev/genXdev)

# SayTime

> **Module:** GenXdev.Console | **Type:** Function | **Aliases:** —

## Synopsis

> 텍스트-음성 변환을 사용하여 현재 시간을 알립니다.

## Description

이 함수는 현재 시간을 가져와 시스템의 텍스트 음성 변환 엔진을 사용하여 시간과 분 형식으로 음성으로 알려줍니다. 이는 접근성 목적이나 음성 시간 안내가 필요할 때 유용합니다.

## Syntax

```powershell
SayTime [-Wait] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-Wait` | SwitchParameter | — | — | Named | — | The `-Wait` parameter. |

## Examples

### SayTime Speaks the current time, e.g. "The time is 14 hours and 30 minutes"

```powershell
SayTime
Speaks the current time, e.g. "The time is 14 hours and 30 minutes"
```

## Related Links

- [SayTime on GitHub](https://github.com/genXdev/genXdev)

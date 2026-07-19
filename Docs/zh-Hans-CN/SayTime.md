# SayTime

> **Module:** GenXdev.Console | **Type:** Function | **Aliases:** —

## Synopsis

> 使用文本转语音播报当前时间。

## Description

该函数获取当前时间，并通过系统的文本转语音引擎以小时和分钟的格式口头播报时间。它适用于无障碍访问场景或需要语音报时的场合。

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

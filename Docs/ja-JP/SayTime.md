# SayTime

> **Module:** GenXdev.Console | **Type:** Function | **Aliases:** —

## Synopsis

> テキスト読み上げを使って現在時刻を告知します。

## Description

この関数は現在の時刻を取得し、システムのテキスト読み上げエンジンを使用して、時間と分の形式で音声で通知します。アクセシビリティの目的や、音声による時刻の告知が必要な場合に便利です。

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

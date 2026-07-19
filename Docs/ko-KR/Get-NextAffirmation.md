# Get-NextAffirmation

> **Module:** GenXdev.Queries.Text | **Type:** Cmdlet | **Aliases:** `WhatAboutIt

## Synopsis

> affirmations.dev API에서 무작위 긍정 문구를 반환합니다.

## Description

* affirmations.dev API에서 무작위 긍정 문장을 가져와 선택적으로 텍스트 음성 변환을 사용하여 말합니다.

## Syntax

```powershell
Get-NextAffirmation [-Speak] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-Speak` | SwitchParameter | — | — | Named | `False` | Use text-to-speech to speak the affirmation |

## Examples

### Example 1

```powershell
Get-NextAffirmation
```

API에서 무작위 긍정 확언을 가져옵니다.

### Example 2

```powershell
Get-NextAffirmation -Speak
```

임의의 긍정 확언을 가져와서 텍스트 음성 변환을 통해 말합니다.

## Related Links

- [Get-NextAffirmation on GitHub](https://github.com/genXdev/genXdev)

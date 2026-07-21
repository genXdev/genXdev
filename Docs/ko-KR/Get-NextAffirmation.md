# Get-NextAffirmation

> **Module:** GenXdev.Queries.Text | **Type:** Cmdlet | **Aliases:** `WhatAboutIt`

## Synopsis

> affirmations.dev API에서 무작위 긍정 문구를 반환합니다.

## Description

* affirmations.dev API에서 무작위 격언을 가져와 선택적으로 텍스트 음성 변환을 통해 말합니다.

## Syntax

```powershell
Get-NextAffirmation [-Speak] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-Speak` | SwitchParameter | — | — | Named | `False` | 텍스트 음성 변환을 사용하여 긍정문을 말하십시오 |

## Examples

### Example 1

```powershell
Get-NextAffirmation
```

API에서 무작위 확언을 검색합니다.

### Example 2

```powershell
Get-NextAffirmation -Speak
```

무작위 긍정 메시지를 가져와서 텍스트 음성 변환을 통해 말합니다.

## Parameter Details

### `-Speak`

> 텍스트 음성 변환을 사용하여 긍정문을 말하십시오

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | `False` |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
## Related Links

- [Get-WikipediaSummary](https://github.com/genXdev/genXdev/blob/main/Docs/ko-KR/Get-WikipediaSummary.md)

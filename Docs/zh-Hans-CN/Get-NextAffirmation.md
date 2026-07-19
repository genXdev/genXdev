# Get-NextAffirmation

> **Module:** GenXdev.Queries.Text | **Type:** Cmdlet | **Aliases:** `WhatAboutIt

## Synopsis

> 从 affirmations.dev API 返回一条随机肯定语。

## Description

从 affirmations.dev API 获取随机肯定语，并可选择使用文本转语音功能朗读出来。

## Syntax

```powershell
Get-NextAffirmation [-Speak] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-Speak` | SwitchParameter | — | — | Named | `False` | I am using text-to-speech to speak this affirmation. |

## Examples

### Example 1

```powershell
Get-NextAffirmation
```

从API中获取随机肯定语。

### Example 2

```powershell
Get-NextAffirmation -Speak
```

获取一条随机肯定语并通过文本转语音朗读。

## Related Links

- [Get-NextAffirmation on GitHub](https://github.com/genXdev/genXdev)

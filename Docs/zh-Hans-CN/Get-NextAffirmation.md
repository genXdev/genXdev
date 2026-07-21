# Get-NextAffirmation

> **Module:** GenXdev.Queries.Text | **Type:** Cmdlet | **Aliases:** `WhatAboutIt`

## Synopsis

> 从 affirmations.dev API 返回一条随机肯定语。

## Description

* 从 affirmations.dev API 获取随机肯定语，并可选地使用文本转语音朗读。

## Syntax

```powershell
Get-NextAffirmation [-Speak] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-Speak` | SwitchParameter | — | — | Named | `False` | 使用文本转语音朗读肯定语 |

## Examples

### Example 1

```powershell
Get-NextAffirmation
```

从 API 中获取一条随机肯定语。

### Example 2

```powershell
Get-NextAffirmation -Speak
```

获取随机肯定语并通过文本转语音朗读。

## Parameter Details

### `-Speak`

> 使用文本转语音朗读肯定语

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

- [Get-WikipediaSummary](https://github.com/genXdev/genXdev/blob/main/Docs/zh-Hans-CN/Get-WikipediaSummary.md)

# Get-NextAffirmation

> **Module:** GenXdev.Queries.Text | **Type:** Cmdlet | **Aliases:** `WhatAboutIt`

## Synopsis

> affirmations.dev API からランダムな肯定の言葉を返します。

## Description

* affirmations.dev API からランダムな肯定文を取得し、必要に応じてテキスト読み上げで発声します。

## Syntax

```powershell
Get-NextAffirmation [-Speak] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-Speak` | SwitchParameter | — | — | Named | `False` | テキスト読み上げを使用してアファメーションを読み上げます |

## Examples

### Example 1

```powershell
Get-NextAffirmation
```

APIからランダムな肯定的な言葉を取得します。

### Example 2

```powershell
Get-NextAffirmation -Speak
```

ランダムなアファメーションを取得し、テキスト読み上げで発話します。

## Parameter Details

### `-Speak`

> テキスト読み上げを使用してアファメーションを読み上げます

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

- [Get-WikipediaSummary](https://github.com/genXdev/genXdev/blob/main/Docs/ja-JP/Get-WikipediaSummary.md)

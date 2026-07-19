# Get-NextAffirmation

> **Module:** GenXdev.Queries.Text | **Type:** Cmdlet | **Aliases:** `WhatAboutIt

## Synopsis

> affirmations.dev APIからランダムな肯定テキストを返します。

## Description

* affirmations.dev API からランダムな肯定文を取得し、オプションでテキスト読み上げを使用してそれを読み上げます。

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

APIからランダムな肯定文を取得します。

### Example 2

```powershell
Get-NextAffirmation -Speak
```

ランダムな肯定文を取得し、テキスト読み上げで発声します。

## Related Links

- [Get-NextAffirmation on GitHub](https://github.com/genXdev/genXdev)

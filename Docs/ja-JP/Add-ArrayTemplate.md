# Add-ArrayTemplate

> **Module:** GenXdev.Coding.Templating | **Type:** Function | **Aliases:** `FormatArray

## Synopsis

> *(No synopsis provided)*

## Syntax

```powershell
Add-ArrayTemplate -InputObject <Collections.IEnumerable> -Template <String> [[-Delimiter] <String>] [[-Indentation] <Int32>] [-NewLine] [-EndDelimiter] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-InputObject` | Collections.IEnumerable | ✅ | ✅ (ByValue) | 0 | — | フォーマットするオブジェクトのコレクション |
| `-Template` | String | ✅ | — | 1 | — | {PropertyName} または {PropertyName:format} プレースホルダーを含むテンプレート文字列 |
| `-Delimiter` | String | — | — | 2 | `"`n"` | フォーマットされた項目の間に挿入する区切り文字列 |
| `-Indentation` | Int32 | — | — | 3 | `0` | 適用するインデントレベル数（1レベルあたり4スペース） |
| `-NewLine` | SwitchParameter | — | — | 4 | `$false` | 最後の項目の後に末尾の区切り文字を追加します |
| `-EndDelimiter` | SwitchParameter | — | — | 5 | `$false` | Add delimiter at end when array not empty |

## Outputs

- `String`

## Related Links

- [Add-ArrayTemplate on GitHub](https://github.com/genXdev/genXdev)

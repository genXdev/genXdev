# Add-ArrayTemplate

> **Module:** GenXdev.Coding.Templating | **Type:** Function | **Aliases:** `FormatArray

## Synopsis

> テンプレート文字列にプロパティプレースホルダーを使用してオブジェクトのコレクションをフォーマットし、単一のフォーマット済み文字列を生成します。

## Description

オブジェクトのコレクションを反復処理し、各アイテムに対して{PropertyName}または{PropertyName:format}プレースホルダーを含むテンプレート文字列を適用します。フォーマットされた結果は、設定可能な区切り文字で結合されます。柔軟な出力フォーマットのために、インデント、末尾の改行、末尾の区切り文字をサポートします。

## Syntax

```powershell
Add-ArrayTemplate -InputObject <Collections.IEnumerable> -Template <String> [[-Delimiter] <String>] [[-Indentation] <Int32>] [-EndDelimiter] [-NewLine] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-InputObject` | Collections.IEnumerable | ✅ | ✅ (ByValue) | 0 | — | フォーマットするオブジェクトのコレクション |
| `-Template` | String | ✅ | — | 1 | — | {PropertyName} または {PropertyName:format} プレースホルダーを含むテンプレート文字列 |
| `-Delimiter` | String | — | — | 2 | `"`n"` | フォーマットされた項目の間に挿入する区切り文字列 |
| `-Indentation` | Int32 | — | — | 3 | `0` | 適用するインデントレベル数（1レベルあたり4スペース） |
| `-NewLine` | SwitchParameter | — | — | Named | `$false` | 最後の項目の後に末尾の区切り文字を追加します |
| `-EndDelimiter` | SwitchParameter | — | — | Named | `$false` | Add delimiter at end when array not empty |

## Examples

### @(     @{ Name = "Alice"; Age = 30 }     @{ Name = "Bob"; Age = 25 } ) | Add-ArrayTemplate -Template "{Name} is {Age} years old"

```powershell
@(
    @{ Name = "Alice"; Age = 30 }
    @{ Name = "Bob"; Age = 25 }
) | Add-ArrayTemplate -Template "{Name} is {Age} years old"
```

名前: アリス
年齢: 30

名前: ボブ
年齢: 25

プロパティプレースホルダーを持つハッシュテーブルの配列をフォーマットします。

### $items | FormatArray -Template "  - {Name}" -Delimiter ", " -Indentation 1

```powershell
$items | FormatArray -Template "  - {Name}" -Delimiter ", " -Indentation 1
```

インデントとカスタム区切り文字を使用してFormatArrayエイリアスを利用します。

## Outputs

- `String`

## Related Links

- [Add-ArrayTemplate on GitHub](https://github.com/genXdev/genXdev)

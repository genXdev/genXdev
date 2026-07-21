# Add-ArrayTemplate

> **Module:** GenXdev.Coding.Templating | **Type:** Function | **Aliases:** `FormatArray`

## Synopsis

> プロパティプレースホルダーを持つテンプレート文字列を使用してオブジェクトのコレクションをフォーマットし、単一の書式設定された文字列を生成します。

## Description

オブジェクトのコレクションを反復処理し、{PropertyName}または{PropertyName:format}プレースホルダーを含むテンプレート文字列を各アイテムに適用します。フォーマットされた結果は、構成可能な区切り文字で結合されます。柔軟な出力フォーマットのために、インデント、末尾の改行、末尾の区切り文字をサポートします。

## Syntax

```powershell
Add-ArrayTemplate -InputObject <Collections.IEnumerable> -Template <String> [[-Delimiter] <String>] [[-Indentation] <Int32>] [-EndDelimiter] [-NewLine] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-InputObject` | Collections.IEnumerable | ✅ | ✅ (ByValue) | 0 | — | 書式設定するオブジェクトのコレクション |
| `-Template` | String | ✅ | — | 1 | — | {PropertyName} または {PropertyName:format} プレースホルダーを含むテンプレート文字列 |
| `-Delimiter` | String | — | — | 2 | `"`n"` | 書式設定された項目間に挿入する区切り文字列 |
| `-Indentation` | Int32 | — | — | 3 | `0` | 適用するインデント（4スペース単位）のレベル数 |
| `-NewLine` | SwitchParameter | — | — | Named | `$false` | 最後の項目の後に末尾の区切り文字を追加します |
| `-EndDelimiter` | SwitchParameter | — | — | Named | `$false` | 配列が空でない場合、末尾に区切り文字を追加する |

## Examples

### @(     @{ Name = "Alice"; Age = 30 }     @{ Name = "Bob"; Age = 25 } ) | Add-ArrayTemplate -Template "{Name} is {Age} years old"

```powershell
@(
    @{ Name = "Alice"; Age = 30 }
    @{ Name = "Bob"; Age = 25 }
) | Add-ArrayTemplate -Template "{Name} is {Age} years old"
```

名前: Alice
年齢: 30

名前: Bob
年齢: 25

プロパティプレースホルダーを持つハッシュテーブルの配列を書式設定します。

### $items | FormatArray -Template "  - {Name}" -Delimiter ", " -Indentation 1

```powershell
$items | FormatArray -Template "  - {Name}" -Delimiter ", " -Indentation 1
```

インデントとカスタム区切り文字を使用したFormatArrayエイリアスを使用します。

## Parameter Details

### `-InputObject <Collections.IEnumerable>`

> 書式設定するオブジェクトのコレクション

| Property | Value |
|:---|:---|
| **Required?** | Yes |
| **Position?** | 0 |
| **Default value** | *(none)* |
| **Accept pipeline input?** | True (ByValue) |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-Template <String>`

> {PropertyName} または {PropertyName:format} プレースホルダーを含むテンプレート文字列

| Property | Value |
|:---|:---|
| **Required?** | Yes |
| **Position?** | 1 |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-Delimiter <String>`

> 書式設定された項目間に挿入する区切り文字列

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | 2 |
| **Default value** | `"`n"` |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-Indentation <Int32>`

> 適用するインデント（4スペース単位）のレベル数

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | 3 |
| **Default value** | `0` |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-NewLine`

> 最後の項目の後に末尾の区切り文字を追加します

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | `$false` |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-EndDelimiter`

> 配列が空でない場合、末尾に区切り文字を追加する

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | `$false` |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
## Outputs

- `String`

## Related Links

- [Remove-DoubleEmptyLines](https://github.com/genXdev/genXdev/blob/main/Docs/ja-JP/Remove-DoubleEmptyLines.md)

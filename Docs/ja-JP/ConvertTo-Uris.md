# ConvertTo-Uris

> **Module:** GenXdev.Queries | **Type:** Cmdlet | **Aliases:** —

## Synopsis

> 任意の有効なURIを解析します。

## Description

* 入力テキストからすべての有効なURIを抽出します。http:、https:、ftp:、magnet:、about:などの標準およびカスタムURIスキームをサポートします。
* 見つかった有効なURIごとにUriオブジェクトを返します。

## Syntax

```powershell
ConvertTo-Uris [[-Text] <String[]>] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-Text` | String[] | — | ✅ (ByValue) | 0 | — | URI を含む可能性のあるテキスト入力 |

## Examples

### Example 1

```powershell
ConvertTo-Uris -Text "Check out https://github.com and about:config"
```

指定されたテキスト文字列を解析してURIを検出し、Uriオブジェクトを返します。

### Example 2

```powershell
"Visit http://example.com" | ConvertTo-Uris
```

テキスト文字列をURI解析のためのコマンドレットにパイプします。

## Parameter Details

### `-Text <String[]>`

> URI を含む可能性のあるテキスト入力

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | 0 |
| **Default value** | *(none)* |
| **Accept pipeline input?** | True (ByValue) |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
## Related Links

- [Open-AllPossibleQueries](https://github.com/genXdev/genXdev/blob/main/Docs/ja-JP/Open-AllPossibleQueries.md)

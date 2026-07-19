# ConvertTo-Uris

> **Module:** GenXdev.Queries | **Type:** Cmdlet | **Aliases:** —

## Synopsis

> 任意の有効なURIの文字列を解析します。

## Description

* 入力テキストからすべての有効なURIを抽出します。http:、https:、ftp:、magnet:、about:などの標準およびカスタムURIスキームをサポートします。
* 見つかった有効なURIごとにUriオブジェクトを返します。

## Syntax

```powershell
ConvertTo-Uris [[-Text] <string[]>] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-Text` | String[] | — | ✅ (ByValue) | 0 | — | URIを含む可能性のあるテキスト入力 |

## Examples

### Example 1

```powershell
ConvertTo-Uris -Text "Check out https://github.com and about:config"
```

提供されたテキスト文字列からURIを解析し、URIオブジェクトを返します。

### Example 2

```powershell
"Visit http://example.com" | ConvertTo-Uris
```

テキスト文字列をパイプでURI解析用のコマンドレットに渡します。

## Related Links

- [ConvertTo-Uris on GitHub](https://github.com/genXdev/genXdev)

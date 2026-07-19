# Remove-JSONComments

> **Module:** GenXdev.Helpers | **Type:** Cmdlet | **Aliases:** —

## Synopsis

> JSONコンテンツからコメントを削除します。

## Description

* JSONコンテンツを処理し、JSON構造を保持したまま、単一行および複数行のコメントを削除します。
* 解析前にドキュメントコメントを含むJSONファイルをクリーンアップするのに便利です。
* 単一行コメント（//）と複数行コメント（/* */）の両方をサポートしています。

## Syntax

```powershell
Remove-JSONComments [-Json] <string> [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-Json` | String | ✅ | — | 0 | — | ["こんにちは", "世界"] |

## Examples

### Example 1

```powershell
$jsonContent = @'
{
    // This is a comment
    "name": "test", /* inline comment */
    "value": 123
}
'@ -split "`n"
Remove-JSONComments -Json $jsonContent
```

変数に格納されたJSONコンテンツからコメントを削除します。

### Example 2

```powershell
$jsonContent | Remove-JSONComments
```

パイプラインからJSONコンテンツを処理します。

## Related Links

- [Remove-JSONComments on GitHub](https://github.com/genXdev/genXdev)

# Rename-InProject

> **Module:** GenXdev.FileSystem | **Type:** Function | **Aliases:** `rip

## Synopsis

> *(No synopsis provided)*

## Syntax

```powershell
Rename-InProject [[-Source] <String>] -FindText <String> -ReplacementText <String> [-CaseInsensitive] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-Source` | String | — | — | 0 | — | ディレクトリ、ファイルパス、またはディレクトリ+検索マスク |
| `-FindText` | String | ✅ | — | 1 | — | 検索対象のテキスト（大文字小文字の区別はCaseInsensitiveパラメータで制御） |
| `-ReplacementText` | String | ✅ | — | 2 | — | テキストをマッチに置き換える |
| `-CaseInsensitive` | SwitchParameter | — | — | Named | — | 大文字と小文字を区別しないテキスト置換を実行 |

## Related Links

- [Rename-InProject on GitHub](https://github.com/genXdev/genXdev)

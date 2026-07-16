# Get-AIMetaLanguage

> **Module:** GenXdev.AI.Queries | **Type:** Cmdlet | **Aliases:** `getimgmetalang

## Synopsis

> *(No synopsis provided)*

## Syntax

```powershell
Get-AIMetaLanguage [[-Language] <string>] [-PreferencesDatabasePath <string>] [-SessionOnly] [-ClearSession] [-SkipSession] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-Language` | String | — | — | 0 | — | イメージメタデータ操作のデフォルト言語 |
| `-PreferencesDatabasePath` | String | — | — | Named | — | 設定データファイルのデータベースパス |
| `-SessionOnly` | SwitchParameter | — | — | Named | `False` | セッションに保存されている代替設定を使用して、AIの言語や画像コレクションなどの設定を変更します。 |
| `-ClearSession` | SwitchParameter | — | — | Named | `False` | セッション設定（グローバル変数）をクリアしてから取得してください |
| `-SkipSession` | SwitchParameter | — | — | Named | `False` | AIの設定（言語、画像コレクションなど）にセッションに保存された代替設定を使用しない |

## Related Links

- [Get-AIMetaLanguage on GitHub](https://github.com/genXdev/genXdev)

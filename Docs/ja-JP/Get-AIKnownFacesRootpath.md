# Get-AIKnownFacesRootpath

> **Module:** GenXdev.AI.Queries | **Type:** Function | **Aliases:** —

## Synopsis

> *(No synopsis provided)*

## Syntax

```powershell
Get-AIKnownFacesRootpath [[-FacesDirectory] <String>] [-ClearSession] [-PreferencesDatabasePath <String>] [-SessionOnly] [-SkipSession] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-FacesDirectory` | String | — | — | 0 | — | 顔画像ファイルのディレクトリパス |
| `-SessionOnly` | SwitchParameter | — | — | Named | — | セッションに保存されている代替設定を使用して、AIの言語や画像コレクションなどの設定を変更します。 |
| `-ClearSession` | SwitchParameter | — | — | Named | — | セッション設定（グローバル変数）をクリアしてから取得してください |
| `-PreferencesDatabasePath` | String | — | — | Named | — | 設定データファイルのデータベースパス |
| `-SkipSession` | SwitchParameter | — | — | Named | — | AIの設定（言語、画像コレクションなど）にセッションに保存された代替設定を使用しない |

## Related Links

- [Get-AIKnownFacesRootpath on GitHub](https://github.com/genXdev/genXdev)

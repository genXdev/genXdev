# Invoke-ImageMetadataUpdate

> **Module:** GenXdev.AI.Queries | **Type:** Function | **Aliases:** `imagepropdetection

## Synopsis

> *(No synopsis provided)*

## Syntax

```powershell
Invoke-ImageMetadataUpdate [[-ImageDirectories] <String[]>] [-ClearSession] [-Force] [-OnlyNew] [-PassThru] [-PreferencesDatabasePath <String>] [-Recurse] [-RetryFailed] [-SessionOnly] [-SkipSession] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-ImageDirectories` | String[] | — | — | 0 | `@('.\')` | 画像メタデータ更新のためのディレクトリパスの配列 |
| `-RetryFailed` | SwitchParameter | — | — | Named | — | 以前失敗した画像メタデータの更新を再試行します |
| `-OnlyNew` | SwitchParameter | — | — | Named | — | 既にメタデータファイルがある画像は処理せず、ない画像のみを処理する |
| `-Recurse` | SwitchParameter | — | — | Named | — | 指定された場合、サブディレクトリ内の画像を再帰的に処理します |
| `-Force` | SwitchParameter | — | — | Named | — | メタデータが既に存在する場合でも強制的に再構築する |
| `-PassThru` | SwitchParameter | — | — | Named | — | 構造化されたオブジェクトを返す（コンソールに出力する代わりに） |
| `-SessionOnly` | SwitchParameter | — | — | Named | — | セッションに保存されている代替設定を使用して、AIの言語や画像コレクションなどの設定を変更します。 |
| `-ClearSession` | SwitchParameter | — | — | Named | — | 言語、画像コレクションなどのAI設定用にセッションに保存されている代替設定をクリア |
| `-SkipSession` | SwitchParameter | — | — | Named | — | AI の設定（言語、画像コレクションなど）にセッションに保存された代替設定を使用しないでください |
| `-PreferencesDatabasePath` | String | — | — | Named | — | 設定データファイルのデータベースパス |

## Related Links

- [Invoke-ImageMetadataUpdate on GitHub](https://github.com/genXdev/genXdev)

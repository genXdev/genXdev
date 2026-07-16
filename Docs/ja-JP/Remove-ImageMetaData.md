# Remove-ImageMetaData

> **Module:** GenXdev.AI.Queries | **Type:** Function | **Aliases:** `removeimagedata

## Synopsis

> *(No synopsis provided)*

## Syntax

```powershell
Remove-ImageMetaData [[-ImageDirectories] <String[]>] [[-Language] <String>] [[-PreferencesDatabasePath] <String>] [-AllLanguages] [-ClearSession] [-OnlyKeywords] [-OnlyObjects] [-OnlyPeople] [-OnlyScenes] [-Recurse] [-SessionOnly] [-SkipSession] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-ImageDirectories` | String[] | — | — | 0 | — | 画像メタデータ削除のために処理するディレクトリパスの配列。指定しない場合は、デフォルトのシステムディレクトリが使用されます。 |
| `-Language` | String | — | — | 1 | — | 言語固有のメタデータファイルを削除するための言語。 |
| `-PreferencesDatabasePath` | String | — | — | 2 | — | 設定データファイルのデータベースパス |
| `-Recurse` | SwitchParameter | — | — | Named | — | ディレクトリを再帰的に処理する。 |
| `-OnlyKeywords` | SwitchParameter | — | — | Named | — | description.json ファイル (キーワード/説明) のみを削除します。 |
| `-OnlyPeople` | SwitchParameter | — | — | Named | — | people.jsonファイル（顔認識データ）のみを削除してください。 |
| `-OnlyObjects` | SwitchParameter | — | — | Named | — | オブジェクト検出データである objects.json ファイルのみを削除してください。 |
| `-OnlyScenes` | SwitchParameter | — | — | Named | — | シーンのJSONファイル（シーン分類データ）のみを削除します。 |
| `-AllLanguages` | SwitchParameter | — | — | Named | — | サポートされているすべての言語のメタデータファイルを削除します。 |
| `-SessionOnly` | SwitchParameter | — | — | Named | — | セッションに保存されている代替設定を使用して、AIの言語や画像コレクションなどの設定を変更します。 |
| `-ClearSession` | SwitchParameter | — | — | Named | — | 言語、画像コレクションなどのAI設定用にセッションに保存されている代替設定をクリア |
| `-SkipSession` | SwitchParameter | — | — | Named | — | AIの設定（言語、画像コレクションなど）にセッションに保存された代替設定を使用しない |

## Related Links

- [Remove-ImageMetaData on GitHub](https://github.com/genXdev/genXdev)

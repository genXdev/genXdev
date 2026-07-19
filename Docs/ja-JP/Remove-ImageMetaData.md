# Remove-ImageMetaData

> **Module:** GenXdev.AI.Queries | **Type:** Function | **Aliases:** `removeimagedata

## Synopsis

> 画像ディレクトリから画像メタデータファイルを削除します。

## Description

Remove-ImageMetaData 関数は、画像に関連付けられた補助 JSON メタデータファイルを削除します。キーワード（description.json）、人物データ（people.json）、オブジェクトデータ（objects.json）、またはシーンデータ（scenes.json）のみを選択的に削除することも、特定のスイッチが指定されていない場合はすべてのメタデータファイルを削除することもできます。言語固有のメタデータファイルは、Language パラメータを指定することで削除でき、すべての言語バリアントは AllLanguages スイッチを使用して削除できます。

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

## Examples

### Remove-ImageMetaData -ImageDirectories @("C:\Photos", "D:\MyImages") -Recurse

```powershell
Remove-ImageMetaData -ImageDirectories @("C:\Photos", "D:\MyImages") -Recurse
```

複数のディレクトリとそのすべてのサブディレクトリ内の画像のメタデータファイルをすべて削除します。

### Remove-ImageMetaData -Recurse -OnlyKeywords

```powershell
Remove-ImageMetaData -Recurse -OnlyKeywords
```

デフォルトのシステムディレクトリとサブディレクトリからdescription.jsonファイルのみを削除します。

### Remove-ImageMetaData -OnlyPeople -ImageDirectories @(".\MyPhotos")

```powershell
Remove-ImageMetaData -OnlyPeople -ImageDirectories @(".\MyPhotos")
```

MyPhotos ディレクトリから people.json ファイルのみを削除します。

### Remove-ImageMetaData -Language "Spanish" -OnlyKeywords -Recurse

```powershell
Remove-ImageMetaData -Language "Spanish" -OnlyKeywords -Recurse
```

デフォルトのディレクトリから英語とスペイン語の説明ファイルを再帰的に削除します。

### removeimagedata -AllLanguages -OnlyKeywords

```powershell
removeimagedata -AllLanguages -OnlyKeywords
```

エイリアスを使用して、サポートされているすべての言語のキーワードファイルを削除します。

## Related Links

- [Remove-ImageMetaData on GitHub](https://github.com/genXdev/genXdev)

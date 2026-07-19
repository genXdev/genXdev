# Save-FoundImageFaces

> **Module:** GenXdev.AI.Queries | **Type:** Function | **Aliases:** `saveimagefaces

## Synopsis

> インデックス化された画像検索結果から切り抜いた顔画像を保存します。

## Description

この関数は、画像検索結果を受け取り、個々の顔領域を個別の画像ファイルとして抽出・保存します。さまざまな条件で顔を検索し、指定された出力ディレクトリに保存することができます。この関数は、説明、キーワード、人物、オブジェクト、シーン、画像タイプ、スタイルタイプ、全体的な雰囲気による検索をサポートしています。また、ヌードや露骨なコンテンツによるフィルタリングも可能です。

## Syntax

```powershell
Save-FoundImageFaces [[-Any] <String[]>] [-ClearSession] [-DatabaseFilePath <String>] [-DescriptionSearch <String[]>] [-ForceIndexRebuild] [-GeoDistanceInMeters <Double>] [-GeoLocation <Double[]>] [-HasExplicitContent] [-HasNudity] [-InputObject <Object[]>] [-Keywords <String[]>] [-Language <String>] [-NoExplicitContent] [-NoNudity] [-Objects <String[]>] [-OutputDirectory <String>] [-OverallMood <String[]>] [-PathLike <String[]>] [-People <String[]>] [-PictureType <String[]>] [-PreferencesDatabasePath <String>] [-SaveUnknownPersons] [-Scenes <String[]>] [-SessionOnly] [-SkipSession] [-StyleType <String[]>] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-Any` | String[] | — | — | 0 | `@()` | 考えられるすべてのメタデータタイプのいずれかに一致します。 |
| `-DescriptionSearch` | String[] | — | — | Named | `@()` | 検索対象の説明テキスト、ワイルドカード使用可。 |
| `-Keywords` | String[] | — | — | Named | `@()` | 検索対象のキーワード、ワイルドカード使用可。 |
| `-People` | String[] | — | — | Named | `@()` | 検索対象の人々、ワイルドカード使用可能。 |
| `-Objects` | String[] | — | — | Named | `@()` | 検索対象オブジェクト、ワイルドカード使用可能。 |
| `-Scenes` | String[] | — | — | Named | `@()` | 検索するシーン、ワイルドカード使用可 |
| `-PictureType` | String[] | — | — | Named | `@()` | フィルタリングする画像タイプ。ワイルドカードが使用可能です。 |
| `-StyleType` | String[] | — | — | Named | `@()` | フィルタリングするスタイルタイプ、ワイルドカード使用可。 |
| `-OverallMood` | String[] | — | — | Named | `@()` | フィルタリングする全体的なムード。ワイルドカード使用可。 |
| `-DatabaseFilePath` | String | — | — | Named | — | SQLiteデータベースファイルへのパス。 |
| `-Language` | String | — | — | Named | — | 説明やキーワードのための言語。 |
| `-PathLike` | String[] | — | — | Named | `@()` | 画像をパスでフィルタリングするためのディレクトリパス形式の検索文字列の配列（SQL LIKEパターン、例：'%\2024\%'） |
| `-InputObject` | Object[] | — | ✅ (ByValue) | Named | — | 以前の -PassThru 呼び出しの検索結果を受け取り、ビューを再生成します。 |
| `-OutputDirectory` | String | — | — | Named | `'.\'` | トリミングされた顔画像を保存するディレクトリ。 |
| `-PreferencesDatabasePath` | String | — | — | Named | — | 設定データファイルのデータベースパス |
| `-HasNudity` | SwitchParameter | — | — | Named | — | ヌード画像を含む画像をフィルタリングします。 |
| `-NoNudity` | SwitchParameter | — | — | Named | — | ヌードを含まない画像をフィルタリングします。 |
| `-HasExplicitContent` | SwitchParameter | — | — | Named | — | 露骨なコンテンツを含む画像をフィルタリングします。 |
| `-NoExplicitContent` | SwitchParameter | — | — | Named | — | 露骨なコンテンツを含まない画像をフィルタリングします。 |
| `-ForceIndexRebuild` | SwitchParameter | — | — | Named | — | 画像インデックスデータベースを強制的に再構築します。 |
| `-GeoLocation` | Double[] | — | — | Named | — | 近くを検索するための地理座標 [緯度, 経度]。 |
| `-GeoDistanceInMeters` | Double | — | — | Named | `1000` | 画像を検索する際のGeoLocationからの最大距離（メートル単位）。 |
| `-SaveUnknownPersons` | SwitchParameter | — | — | Named | — | また、未知の人物を検出した際にはオブジェクトとして保存します。 |
| `-SessionOnly` | SwitchParameter | — | — | Named | — | セッションに保存されている代替設定を使用して、AIの言語や画像コレクションなどの設定を変更します。 |
| `-ClearSession` | SwitchParameter | — | — | Named | — | 言語、画像コレクションなどのAI設定用にセッションに保存されている代替設定をクリア |
| `-SkipSession` | SwitchParameter | — | — | Named | — | AIの設定（言語、画像コレクションなど）にセッションに保存された代替設定を使用しない |

## Examples

### Save-FoundImageFaces -People "John*" -OutputDirectory "C:\Faces"

```powershell
Save-FoundImageFaces -People "John*" -OutputDirectory "C:\Faces"
```

### saveimagefaces -Any "vacation" -SaveUnknownPersons

```powershell
saveimagefaces -Any "vacation" -SaveUnknownPersons
```

## Outputs

- `Object[]`
- `List`1[[System.Object, System.Private.CoreLib, Version=10.0.0.0, Culture=neutral, PublicKeyToken=7cec85d7bea7798e]]`
- `String`

## Related Links

- [Save-FoundImageFaces on GitHub](https://github.com/genXdev/genXdev)

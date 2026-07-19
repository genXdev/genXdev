# Invoke-ImageMetadataUpdate

> **Module:** GenXdev.AI.Queries | **Type:** Function | **Aliases:** `imagepropdetection

## Synopsis

> ディレクトリ内の画像のEXIFメタデータを更新します。

## Description

この関数は、指定されたディレクトリ内の画像のEXIFメタデータを抽出して更新します。各画像を処理し、カメラの詳細、GPS座標、露出設定、その他の技術情報を含む詳細なEXIFメタデータを抽出します。メタデータは、後でインデックス作成や検索機能で使用するために、:EXIF.jsonとして代替NTFSストリームに保存されます。

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

## Examples

### Invoke-ImageMetadataUpdate -ImageDirectories @("C:\Photos", "D:\Pictures") -Force

```powershell
Invoke-ImageMetadataUpdate -ImageDirectories @("C:\Photos", "D:\Pictures") -Force
```

### Invoke-ImageMetadataUpdate @("C:\Photos", "C:\Archive") -Force -PassThru | Export-Csv -Path metadata-log.csv

```powershell
Invoke-ImageMetadataUpdate @("C:\Photos", "C:\Archive") -Force -PassThru | Export-Csv -Path metadata-log.csv
```

## Related Links

- [Invoke-ImageMetadataUpdate on GitHub](https://github.com/genXdev/genXdev)

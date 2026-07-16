# Invoke-ImageFacesUpdate

> **Module:** GenXdev.AI.Queries | **Type:** Function | **Aliases:** `imagepeopledetection

## Synopsis

> *(No synopsis provided)*

## Syntax

```powershell
Invoke-ImageFacesUpdate [[-ImageDirectories] <String[]>] [-ApiEndpoint <String>] [-ApiKey <String>] [-AutoUpdateFaces] [-ClearSession] [-ConfidenceThreshold <Double>] [-ContainerName <String>] [-FacesDirectory <String>] [-Force] [-HealthCheckInterval <Int32>] [-HealthCheckTimeout <Int32>] [-ImageName <String>] [-Language <String>] [-Model <String>] [-NoDockerInitialize] [-OnlyNew] [-PassThru] [-PreferencesDatabasePath <String>] [-Recurse] [-RetryFailed] [-ServicePort <Int32>] [-SessionOnly] [-ShowWindow] [-SkipSession] [-TimeoutSecond <Int32>] [-UseGPU] [-VolumeName <String>] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-ImageDirectories` | String[] | — | — | 0 | `@('.\')` | 処理対象の画像が含まれるディレクトリパス |
| `-Recurse` | SwitchParameter | — | — | Named | — | 指定ディレクトリとすべてのサブディレクトリ内の画像を処理する |
| `-OnlyNew` | SwitchParameter | — | — | Named | — | 表情メタデータファイルがまだない画像のみを処理する |
| `-RetryFailed` | SwitchParameter | — | — | Named | — | 以前失敗した画像キーワードの更新を再試行します |
| `-ContainerName` | String | — | — | Named | `'deepstack_face_recognition'` | Dockerコンテナの名前 |
| `-VolumeName` | String | — | — | Named | `'deepstack_face_data'` | 永続ストレージ用のDockerボリュームの名前 |
| `-ServicePort` | Int32 | — | — | Named | `5000` | DeepStack サービスのポート番号 |
| `-HealthCheckTimeout` | Int32 | — | — | Named | `60` | サービスヘルスチェックを待機する最大時間（秒） |
| `-HealthCheckInterval` | Int32 | — | — | Named | `3` | ヘルスチェック試行間の間隔（秒） |
| `-ImageName` | String | — | — | Named | — | 使用するカスタムDockerイメージ名 |
| `-ConfidenceThreshold` | Double | — | — | Named | `0.7` | 物体検出の最低信頼度しきい値（0.0～1.0） |
| `-Language` | String | — | — | Named | — | 生成された説明とキーワードの言語 |
| `-Model` | String | — | ✅ (ByValue) | Named | — | 初期化するモデルの名前または部分パス 🌐 *Supports wildcards* |
| `-ApiEndpoint` | String | — | — | Named | `$null` | APIエンドポイントURL。デフォルトはhttp://localhost:1234/v1/chat/completionsです。 |
| `-ApiKey` | String | — | — | Named | `$null` | リクエストに使用するAPIキー |
| `-TimeoutSecond` | Int32 | — | — | Named | — | リクエストのタイムアウト時間（秒）。デフォルトは24時間。 |
| `-FacesDirectory` | String | — | — | Named | — | 人物フォルダごとに整理された顔画像を含むディレクトリ。指定しない場合は、設定された顔ディレクトリの設定が使用されます。 |
| `-PreferencesDatabasePath` | String | — | — | Named | — | 設定データファイルのデータベースパス |
| `-NoDockerInitialize` | SwitchParameter | — | — | Named | — | Docker の初期化をスキップ（親関数から既に呼び出されている場合に使用） |
| `-Force` | SwitchParameter | — | — | Named | — | Dockerコンテナを強制再構築し、既存データを削除 |
| `-UseGPU` | SwitchParameter | — | — | Named | — | GPUアクセラレーション版を使用（NVIDIA GPUが必要） |
| `-ShowWindow` | SwitchParameter | — | — | Named | — | 起動中にDockerウィンドウを表示する |
| `-PassThru` | SwitchParameter | — | — | Named | — | 構造化オブジェクトをコンソールに出力する代わりに返すためのPassThru |
| `-AutoUpdateFaces` | SwitchParameter | — | — | Named | — | facesディレクトリの変更を検出し、必要に応じて顔を再登録します |
| `-SessionOnly` | SwitchParameter | — | — | Named | — | セッションに保存されている代替設定を使用して、AIの言語や画像コレクションなどの設定を変更します。 |
| `-ClearSession` | SwitchParameter | — | — | Named | — | 言語、画像コレクションなどのAI設定用にセッションに保存されている代替設定をクリア |
| `-SkipSession` | SwitchParameter | — | — | Named | — | AIの設定（言語、画像コレクションなど）にセッションに保存された代替設定を使用しない |

## Related Links

- [Invoke-ImageFacesUpdate on GitHub](https://github.com/genXdev/genXdev)

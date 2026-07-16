# Register-AllFaces

> **Module:** GenXdev.AI.DeepStack | **Type:** Function | **Aliases:** `UpdateFaces

## Synopsis

> *(No synopsis provided)*

## Syntax

```powershell
Register-AllFaces [[-FacesDirectory] <String>] [[-MaxRetries] <Int32>] [[-ContainerName] <String>] [[-VolumeName] <String>] [[-ServicePort] <Int32>] [[-HealthCheckTimeout] <Int32>] [[-HealthCheckInterval] <Int32>] [[-ImageName] <String>] [-ClearSession] [-Force] [-ForceRebuild] [-NoDockerInitialize] [-PreferencesDatabasePath <String>] [-RenameFailed] [-SessionOnly] [-ShowWindow] [-SkipSession] [-UseGPU] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-FacesDirectory` | String | — | — | 0 | — | 人物フォルダごとに整理された顔画像を含むディレクトリ。指定しない場合は、設定された顔ディレクトリの設定が使用されます。 |
| `-MaxRetries` | Int32 | — | — | 1 | `3` | 登録失敗時の最大再試行回数 |
| `-ContainerName` | String | — | — | 2 | `'deepstack_face_recognition'` | Dockerコンテナの名前 |
| `-VolumeName` | String | — | — | 3 | `'deepstack_face_data'` | 永続ストレージ用のDockerボリュームの名前 |
| `-ServicePort` | Int32 | — | — | 4 | `5000` | DeepStack サービスのポート番号 |
| `-HealthCheckTimeout` | Int32 | — | — | 5 | `60` | サービスヘルスチェックを待機する最大時間（秒） |
| `-HealthCheckInterval` | Int32 | — | — | 6 | `3` | ヘルスチェック試行間の間隔（秒） |
| `-ImageName` | String | — | — | 7 | — | 使用するカスタムDockerイメージ名 |
| `-NoDockerInitialize` | SwitchParameter | — | — | Named | — | Docker Desktopの初期化をスキップします（親関数から既に呼び出されている場合に使用） |
| `-Force` | SwitchParameter | — | — | Named | — | すべての顔の再登録を強制する |
| `-RenameFailed` | SwitchParameter | — | — | Named | — | 顔が見つからず処理できなかった失敗した画像ファイルの名前を変更する |
| `-ForceRebuild` | SwitchParameter | — | — | Named | — | Dockerコンテナを強制再構築し、既存データを削除 |
| `-UseGPU` | SwitchParameter | — | — | Named | — | GPUアクセラレーション版を使用（NVIDIA GPUが必要） |
| `-ShowWindow` | SwitchParameter | — | — | Named | — | 初期化中にDocker Desktopウィンドウを表示する |
| `-SessionOnly` | SwitchParameter | — | — | Named | — | 指定された場合、セッションのみを使用し（変更を設定データベースに保持しない）。 |
| `-ClearSession` | SwitchParameter | — | — | Named | — | 指定された場合、使用前に現在のセッション設定を消去します。 |
| `-PreferencesDatabasePath` | String | — | — | Named | — | 既知の顔のルートパスに使用する設定データベースへのパス。 |
| `-SkipSession` | SwitchParameter | — | — | Named | — | 指定された場合、既知の顔のルートパスを取得する際にセッションロジックをスキップします。 |

## Related Links

- [Register-AllFaces on GitHub](https://github.com/genXdev/genXdev)

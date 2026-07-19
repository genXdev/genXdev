# Unregister-AllFaces

> **Module:** GenXdev.AI.DeepStack | **Type:** Function | **Aliases:** —

## Synopsis

> DeepStack顔認識システムから、登録されているすべての顔を削除します。

## Description

この関数は、データストアディレクトリからすべての顔ファイルを削除し、空の顔レジストリを再読み込みするためにサービスを再起動することで、DeepStack顔認識データベースに登録されているすべての顔を消去します。これは元に戻せない破壊的な操作であり、すべての登録済み顔データが永久に削除されます。

## Syntax

```powershell
Unregister-AllFaces [[-ContainerName] <String>] [[-VolumeName] <String>] [[-ServicePort] <Int32>] [[-HealthCheckTimeout] <Int32>] [[-HealthCheckInterval] <Int32>] [[-ImageName] <String>] [-Force] [-ForceRebuild] [-NoDockerInitialize] [-ShowWindow] [-UseGPU] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-Force` | SwitchParameter | — | — | Named | — | 登録されているすべての顔を削除する際の確認プロンプトをスキップする |
| `-NoDockerInitialize` | SwitchParameter | — | — | Named | — | Docker Desktopの初期化をスキップします（親関数から既に呼び出されている場合に使用） |
| `-ForceRebuild` | SwitchParameter | — | — | Named | — | Dockerコンテナを強制再構築し、既存データを削除 |
| `-UseGPU` | SwitchParameter | — | — | Named | — | GPUアクセラレーション版を使用（NVIDIA GPUが必要） |
| `-ContainerName` | String | — | — | 0 | `'deepstack_face_recognition'` | Dockerコンテナの名前 |
| `-VolumeName` | String | — | — | 1 | `'deepstack_face_data'` | 永続ストレージ用のDockerボリュームの名前 |
| `-ServicePort` | Int32 | — | — | 2 | `5000` | DeepStack サービスのポート番号 |
| `-HealthCheckTimeout` | Int32 | — | — | 3 | `60` | サービスヘルスチェックを待機する最大時間（秒） |
| `-HealthCheckInterval` | Int32 | — | — | 4 | `3` | ヘルスチェック試行間の間隔（秒） |
| `-ImageName` | String | — | — | 5 | — | 使用するカスタムDockerイメージ名 |
| `-ShowWindow` | SwitchParameter | — | — | Named | — | 初期化中にDocker Desktopウィンドウを表示する |

## Examples

### Unregister-AllFaces

```powershell
Unregister-AllFaces
```

確認プロンプトを表示して、登録されているすべての顔を削除します。

### Unregister-AllFaces -Force

```powershell
Unregister-AllFaces -Force
```

確認プロンプトなしで登録されたすべての顔を削除します。

### unregall -Force

```powershell
unregall -Force
```

エイリアスを使用して、確認なしですべての面を削除します。

## Related Links

- [Unregister-AllFaces on GitHub](https://github.com/genXdev/genXdev)

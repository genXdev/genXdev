# Unregister-Face

> **Module:** GenXdev.AI.DeepStack | **Type:** Function | **Aliases:** —

## Synopsis

> *(No synopsis provided)*

## Syntax

```powershell
Unregister-Face -Identifier <String> [[-ContainerName] <String>] [[-VolumeName] <String>] [[-ServicePort] <Int32>] [[-HealthCheckTimeout] <Int32>] [[-HealthCheckInterval] <Int32>] [[-ImageName] <String>] [-Force] [-NoDockerInitialize] [-ShowWindow] [-UseGPU] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-Identifier` | String | ✅ | ✅ (ByValue, ByPropertyName) | 0 | — | DeepStackシステムから削除する顔の一意識別子 |
| `-ContainerName` | String | — | — | 1 | `'deepstack_face_recognition'` | Dockerコンテナの名前 |
| `-VolumeName` | String | — | — | 2 | `'deepstack_face_data'` | 永続ストレージ用のDockerボリュームの名前 |
| `-ServicePort` | Int32 | — | — | 3 | `5000` | DeepStack サービスのポート番号 |
| `-HealthCheckTimeout` | Int32 | — | — | 4 | `60` | サービスヘルスチェックを待機する最大時間（秒） |
| `-HealthCheckInterval` | Int32 | — | — | 5 | `3` | ヘルスチェック試行間の間隔（秒） |
| `-ImageName` | String | — | — | 6 | — | 使用するカスタムDockerイメージ名 |
| `-NoDockerInitialize` | SwitchParameter | — | — | Named | — | Docker の初期化をスキップ（親関数から既に呼び出されている場合に使用） |
| `-Force` | SwitchParameter | — | — | Named | — | Dockerコンテナを強制再構築し、既存データを削除 |
| `-UseGPU` | SwitchParameter | — | — | Named | — | GPUアクセラレーション版を使用（NVIDIA GPUが必要） |
| `-ShowWindow` | SwitchParameter | — | — | Named | — | 初期化中にDocker Desktopウィンドウを表示する |

## Outputs

- `Boolean`

## Related Links

- [Unregister-Face on GitHub](https://github.com/genXdev/genXdev)

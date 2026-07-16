# Get-ImageDetectedFaces

> **Module:** GenXdev.AI.DeepStack | **Type:** Function | **Aliases:** —

## Synopsis

> *(No synopsis provided)*

## Syntax

```powershell
Get-ImageDetectedFaces -ImagePath <String> [-ConfidenceThreshold <Double>] [-ContainerName <String>] [-Force] [-HealthCheckInterval <Int32>] [-HealthCheckTimeout <Int32>] [-ImageName <String>] [-NoDockerInitialize] [-ServicePort <Int32>] [-ShowWindow] [-UseGPU] [-VolumeName <String>] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-ImagePath` | String | ✅ | ✅ (ByValue, ByPropertyName) | 0 | — | 分析する画像ファイルのローカルパス |
| `-ConfidenceThreshold` | Double | — | — | Named | `0.5` | 最小信頼度しきい値（0.0～1.0）。デフォルトは0.5 |
| `-ContainerName` | String | — | — | Named | `'deepstack_face_recognition'` | Dockerコンテナの名前 |
| `-VolumeName` | String | — | — | Named | `'deepstack_face_data'` | 永続ストレージ用のDockerボリュームの名前 |
| `-ServicePort` | Int32 | — | — | Named | `5000` | DeepStack サービスのポート番号 |
| `-HealthCheckTimeout` | Int32 | — | — | Named | `60` | サービスヘルスチェックを待機する最大時間（秒） |
| `-HealthCheckInterval` | Int32 | — | — | Named | `3` | ヘルスチェック試行間の間隔（秒） |
| `-ImageName` | String | — | — | Named | — | 使用するカスタムDockerイメージ名 |
| `-NoDockerInitialize` | SwitchParameter | — | — | Named | — | Docker の初期化をスキップ（親関数から既に呼び出されている場合に使用） |
| `-Force` | SwitchParameter | — | — | Named | — | Dockerコンテナを強制再構築し、既存データを削除 |
| `-UseGPU` | SwitchParameter | — | — | Named | — | GPUアクセラレーション版を使用（NVIDIA GPUが必要） |
| `-ShowWindow` | SwitchParameter | — | — | Named | — | 初期化中にDocker Desktopウィンドウを表示する |

## Related Links

- [Get-ImageDetectedFaces on GitHub](https://github.com/genXdev/genXdev)

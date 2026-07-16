# Invoke-ImageEnhancement

> **Module:** GenXdev.AI.DeepStack | **Type:** Function | **Aliases:** `enhanceimage

## Synopsis

> *(No synopsis provided)*

## Syntax

```powershell
Invoke-ImageEnhancement -ImagePath <String> [[-OutputPath] <String>] [-ContainerName <String>] [-Force] [-HealthCheckInterval <Int32>] [-HealthCheckTimeout <Int32>] [-ImageName <String>] [-NoDockerInitialize] [-ServicePort <Int32>] [-ShowWindow] [-UseGPU] [-VolumeName <String>] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-ImagePath` | String | ✅ | ✅ (ByValue, ByPropertyName) | 0 | — | 拡張する画像ファイルへのローカルパス |
| `-OutputPath` | String | — | — | 1 | — | 拡張画像を保存する必要がある場合のオプションパス |
| `-NoDockerInitialize` | SwitchParameter | — | — | Named | — | Docker の初期化をスキップ（親関数から既に呼び出されている場合に使用） |
| `-Force` | SwitchParameter | — | — | Named | — | Dockerコンテナを強制再構築し、既存データを削除 |
| `-UseGPU` | SwitchParameter | — | — | Named | — | GPUアクセラレーション版を使用（NVIDIA GPUが必要） |
| `-ContainerName` | String | — | — | Named | `'deepstack_face_recognition'` | Dockerコンテナの名前 |
| `-VolumeName` | String | — | — | Named | `'deepstack_face_data'` | 永続ストレージ用のDockerボリュームの名前 |
| `-ServicePort` | Int32 | — | — | Named | `5000` | DeepStack サービスのポート番号 |
| `-HealthCheckTimeout` | Int32 | — | — | Named | `60` | サービスヘルスチェックを待機する最大時間（秒） |
| `-HealthCheckInterval` | Int32 | — | — | Named | `3` | ヘルスチェック試行間の間隔（秒） |
| `-ImageName` | String | — | — | Named | — | 使用するカスタムDockerイメージ名 |
| `-ShowWindow` | SwitchParameter | — | — | Named | — | 初期化中にDocker Desktopウィンドウを表示する |

## Related Links

- [Invoke-ImageEnhancement on GitHub](https://github.com/genXdev/genXdev)

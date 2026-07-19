# Invoke-ImageEnhancement

> **Module:** GenXdev.AI.DeepStack | **Type:** Function | **Aliases:** `enhanceimage

## Synopsis

> DeepStackを使用して画像を4倍に拡大し、品質を向上させます。

## Description

この関数は、画像を元の幅と高さの4倍に拡大しながら、同時に画質を向上させます。設定可能なポートで動作するローカルのDeepStack画像拡張APIを使用し、拡張された画像をbase64データとして返すか、ファイルに保存します。この関数はGPUアクセラレーションとDockerコンテナ管理をサポートしています。

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

## Examples

### Invoke-ImageEnhancement -ImagePath "C:\Users\YourName\small_photo.jpg" `                         -OutputPath "C:\Users\YourName\enhanced_photo.jpg" Enhances the image and saves it to the specified output path.

```powershell
Invoke-ImageEnhancement -ImagePath "C:\Users\YourName\small_photo.jpg" `
                        -OutputPath "C:\Users\YourName\enhanced_photo.jpg"
Enhances the image and saves it to the specified output path.
```

### enhanceimage "C:\photos\low_quality.jpg" Enhances the image and returns the base64 data and dimensions using alias.

```powershell
enhanceimage "C:\photos\low_quality.jpg"
Enhances the image and returns the base64 data and dimensions using alias.
```

### Invoke-ImageEnhancement -ImagePath "C:\photos\image.jpg" -UseGPU Enhances the image using GPU acceleration for faster processing.

```powershell
Invoke-ImageEnhancement -ImagePath "C:\photos\image.jpg" -UseGPU
Enhances the image using GPU acceleration for faster processing.
```

## Related Links

- [Invoke-ImageEnhancement on GitHub](https://github.com/genXdev/genXdev)

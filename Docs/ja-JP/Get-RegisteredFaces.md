# Get-RegisteredFaces

> **Module:** GenXdev.AI.DeepStack | **Type:** Function | **Aliases:** —

## Synopsis

> DeepStackから登録されたすべての顔識別子のリストを取得します。

## Description

この関数は、ローカルのDeepStack顔認識APIに接続し、登録されているすべての顔識別子を取得します。/v1/vision/face/listエンドポイントを使用してDeepStackサービスにクエリを送信し、顔識別子の文字列の配列を返します。この関数は、Dockerコンテナの初期化、API通信、およびさまざまな障害シナリオに対するエラーハンドリングを処理します。

## Syntax

```powershell
Get-RegisteredFaces [[-ContainerName] <String>] [[-VolumeName] <String>] [[-ServicePort] <Int32>] [[-HealthCheckTimeout] <Int32>] [[-HealthCheckInterval] <Int32>] [[-ImageName] <String>] [-Force] [-NoDockerInitialize] [-ShowWindow] [-UseGPU] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-NoDockerInitialize` | SwitchParameter | — | — | Named | — | Docker の初期化をスキップ（親関数から既に呼び出されている場合に使用） |
| `-Force` | SwitchParameter | — | — | Named | — | Dockerコンテナを強制再構築し、既存データを削除 |
| `-UseGPU` | SwitchParameter | — | — | Named | — | GPUアクセラレーション版を使用（NVIDIA GPUが必要） |
| `-ContainerName` | String | — | — | 0 | `'deepstack_face_recognition'` | Dockerコンテナの名前 |
| `-VolumeName` | String | — | — | 1 | `'deepstack_face_data'` | 永続ストレージ用のDockerボリュームの名前 |
| `-ServicePort` | Int32 | — | — | 2 | `5000` | DeepStack サービスのポート番号 |
| `-HealthCheckTimeout` | Int32 | — | — | 3 | `60` | サービスヘルスチェックを待機する最大時間（秒） |
| `-HealthCheckInterval` | Int32 | — | — | 4 | `3` | ヘルスチェック試行間の間隔（秒） |
| `-ImageName` | String | — | — | 5 | — | 使用するカスタムDockerイメージ名 |
| `-ShowWindow` | SwitchParameter | — | — | Named | — | 初期化中にDocker Desktopウィンドウを表示する |

## Examples

### Get-RegisteredFaces

```powershell
Get-RegisteredFaces
```

この例では、デフォルトのパラメータを使用して登録されたすべての顔を取得します。

### Get-RegisteredFaces -Force -UseGPU

```powershell
Get-RegisteredFaces -Force -UseGPU
```

この例では、コンテナの再構築を強制し、GPUアクセラレーションを使用します。

### Get-RegisteredFaces -ContainerName "my_deepstack" -ServicePort 8080

```powershell
Get-RegisteredFaces -ContainerName "my_deepstack" -ServicePort 8080
```

この例では、カスタムのコンテナ名とポート番号を使用しています。

### Get-RegisteredFaces | Where-Object { $_ -like "John*" }

```powershell
Get-RegisteredFaces |
Where-Object { $_ -like "John*" }
```

この例では、すべての顔を取得し、「John」で始まるものにフィルタリングします。

## Related Links

- [Get-RegisteredFaces on GitHub](https://github.com/genXdev/genXdev)

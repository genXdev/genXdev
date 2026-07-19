# Compare-ImageFaces

> **Module:** GenXdev.AI.DeepStack | **Type:** Function | **Aliases:** `comparefaces

## Synopsis

> 2つの異なる画像内の顔を比較し、DeepStackを使用してそれらの類似性を返します。

## Description

この関数は、2つの画像間の顔を比較して類似度を判定します。設定可能なポートで動作するローカルのDeepStack顔一致APIを使用し、0.0から1.0の間の類似度スコアを返します。これは通常、身分証明書と人物の写真の一致確認や、2枚の写真が同一人物かどうかの検証に使用されます。

## Syntax

```powershell
Compare-ImageFaces -ImagePath1 <String> -ImagePath2 <String> [[-ContainerName] <String>] [[-VolumeName] <String>] [[-ServicePort] <Int32>] [[-HealthCheckTimeout] <Int32>] [[-HealthCheckInterval] <Int32>] [[-ImageName] <String>] [-Force] [-NoDockerInitialize] [-ShowWindow] [-UseGPU] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-ImagePath1` | String | ✅ | — | 0 | — | 比較する最初の画像ファイルのローカルパス |
| `-ImagePath2` | String | ✅ | — | 1 | — | 比較する2番目の画像ファイルのローカルパス |
| `-ContainerName` | String | — | — | 2 | `'deepstack_face_recognition'` | Dockerコンテナの名前 |
| `-VolumeName` | String | — | — | 3 | `'deepstack_face_data'` | 永続ストレージ用のDockerボリュームの名前 |
| `-ServicePort` | Int32 | — | — | 4 | `5000` | DeepStack サービスのポート番号 |
| `-HealthCheckTimeout` | Int32 | — | — | 5 | `60` | サービスヘルスチェックを待機する最大時間（秒） |
| `-HealthCheckInterval` | Int32 | — | — | 6 | `3` | ヘルスチェック試行間の間隔（秒） |
| `-ImageName` | String | — | — | 7 | — | 使用するカスタムDockerイメージ名 |
| `-NoDockerInitialize` | SwitchParameter | — | — | Named | — | Docker の初期化をスキップ（親関数から既に呼び出されている場合に使用） |
| `-Force` | SwitchParameter | — | — | Named | — | Dockerコンテナを強制再構築し、既存データを削除 |
| `-UseGPU` | SwitchParameter | — | — | Named | — | GPUアクセラレーション版を使用（NVIDIA GPUが必要） |
| `-ShowWindow` | SwitchParameter | — | — | Named | — | 初期化中にDocker Desktopウィンドウを表示する |

## Examples

### Compare-ImageFaces -ImagePath1 "C:\Users\YourName\photo1.jpg" `                    -ImagePath2 "C:\Users\YourName\photo2.jpg"

```powershell
Compare-ImageFaces -ImagePath1 "C:\Users\YourName\photo1.jpg" `
                   -ImagePath2 "C:\Users\YourName\photo2.jpg"
```

デフォルト設定を使用して、2つの画像間の顔を比較します。

### comparefaces "C:\docs\id_photo.jpg" "C:\photos\person.jpg" -UseGPU

```powershell
comparefaces "C:\docs\id_photo.jpg" "C:\photos\person.jpg" -UseGPU
```

GPUアクセラレーションを使用して顔を比較し、エイリアスと位置パラメータで本人確認を行います。

## Outputs

- `Collections.Hashtable`

## Related Links

- [Compare-ImageFaces on GitHub](https://github.com/genXdev/genXdev)

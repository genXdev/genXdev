# Compare-ImageFaces

> **Module:** GenXdev.AI.DeepStack | **Type:** Function | **Aliases:** `comparefaces

## Synopsis

> *(No synopsis provided)*

## Syntax

```powershell
Compare-ImageFaces -ImagePath1 <String> -ImagePath2 <String> [[-ContainerName] <String>] [[-VolumeName] <String>] [[-ServicePort] <Int32>] [[-HealthCheckTimeout] <Int32>] [[-HealthCheckInterval] <Int32>] [[-ImageName] <String>] [-Force] [-NoDockerInitialize] [-ShowWindow] [-UseGPU] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-ImagePath1` | String | ✅ | — | 0 | — | 要比较的第一张图片文件的本地路径 |
| `-ImagePath2` | String | ✅ | — | 1 | — | 要比较的第二图像文件的本地路径 |
| `-ContainerName` | String | — | — | 2 | `'deepstack_face_recognition'` | Docker容器的名称 |
| `-VolumeName` | String | — | — | 3 | `'deepstack_face_data'` | 用于持久化存储的Docker卷名称 |
| `-ServicePort` | Int32 | — | — | 4 | `5000` | DeepStack 服务的端口号 |
| `-HealthCheckTimeout` | Int32 | — | — | 5 | `60` | 服务健康检查的最大等待时间（秒） |
| `-HealthCheckInterval` | Int32 | — | — | 6 | `3` | 健康检查尝试之间的间隔（秒） |
| `-ImageName` | String | — | — | 7 | — | 要使用的自定义 Docker 镜像名称 |
| `-NoDockerInitialize` | SwitchParameter | — | — | Named | — | 跳过 Docker 初始化（当已由父函数调用时使用） |
| `-Force` | SwitchParameter | — | — | Named | — | 强制重建 Docker 容器并移除现有数据 |
| `-UseGPU` | SwitchParameter | — | — | Named | — | 使用GPU加速版本（需要NVIDIA GPU） |
| `-ShowWindow` | SwitchParameter | — | — | Named | — | 在初始化期间显示 Docker Desktop 窗口 |

## Outputs

- `Collections.Hashtable`

## Related Links

- [Compare-ImageFaces on GitHub](https://github.com/genXdev/genXdev)

# Get-RegisteredFaces

> **Module:** GenXdev.AI.DeepStack | **Type:** Function | **Aliases:** —

## Synopsis

> *(No synopsis provided)*

## Syntax

```powershell
Get-RegisteredFaces [[-ContainerName] <String>] [[-VolumeName] <String>] [[-ServicePort] <Int32>] [[-HealthCheckTimeout] <Int32>] [[-HealthCheckInterval] <Int32>] [[-ImageName] <String>] [-Force] [-NoDockerInitialize] [-ShowWindow] [-UseGPU] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-NoDockerInitialize` | SwitchParameter | — | — | Named | — | 跳过 Docker 初始化（当已由父函数调用时使用） |
| `-Force` | SwitchParameter | — | — | Named | — | 强制重建 Docker 容器并移除现有数据 |
| `-UseGPU` | SwitchParameter | — | — | Named | — | 使用GPU加速版本（需要NVIDIA GPU） |
| `-ContainerName` | String | — | — | 0 | `'deepstack_face_recognition'` | Docker容器的名称 |
| `-VolumeName` | String | — | — | 1 | `'deepstack_face_data'` | 用于持久化存储的Docker卷名称 |
| `-ServicePort` | Int32 | — | — | 2 | `5000` | DeepStack 服务的端口号 |
| `-HealthCheckTimeout` | Int32 | — | — | 3 | `60` | 服务健康检查的最大等待时间（秒） |
| `-HealthCheckInterval` | Int32 | — | — | 4 | `3` | 健康检查尝试之间的间隔（秒） |
| `-ImageName` | String | — | — | 5 | — | 要使用的自定义 Docker 镜像名称 |
| `-ShowWindow` | SwitchParameter | — | — | Named | — | 在初始化期间显示 Docker Desktop 窗口 |

## Related Links

- [Get-RegisteredFaces on GitHub](https://github.com/genXdev/genXdev)

# Unregister-AllFaces

> **Module:** GenXdev.AI.DeepStack | **Type:** Function | **Aliases:** —

## Synopsis

> 从DeepStack人脸识别系统中删除所有已注册的人脸。

## Description

此函数通过从数据存储目录中删除所有人脸文件并重启服务以加载空的人脸注册表，从而清除DeepStack人脸识别数据库中所有已注册的人脸。这是一个破坏性操作，无法撤销，并将永久删除所有已注册的人脸数据。

## Syntax

```powershell
Unregister-AllFaces [[-ContainerName] <String>] [[-VolumeName] <String>] [[-ServicePort] <Int32>] [[-HealthCheckTimeout] <Int32>] [[-HealthCheckInterval] <Int32>] [[-ImageName] <String>] [-Force] [-ForceRebuild] [-NoDockerInitialize] [-ShowWindow] [-UseGPU] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-Force` | SwitchParameter | — | — | Named | — | 移除所有已注册人脸时跳过确认提示 |
| `-NoDockerInitialize` | SwitchParameter | — | — | Named | — | 跳过 Docker Desktop 初始化（当此操作已由父函数调用时使用） |
| `-ForceRebuild` | SwitchParameter | — | — | Named | — | 强制重建 Docker 容器并移除现有数据 |
| `-UseGPU` | SwitchParameter | — | — | Named | — | 使用GPU加速版本（需要NVIDIA GPU） |
| `-ContainerName` | String | — | — | 0 | `'deepstack_face_recognition'` | Docker容器的名称 |
| `-VolumeName` | String | — | — | 1 | `'deepstack_face_data'` | 用于持久化存储的Docker卷名称 |
| `-ServicePort` | Int32 | — | — | 2 | `5000` | DeepStack 服务的端口号 |
| `-HealthCheckTimeout` | Int32 | — | — | 3 | `60` | 服务健康检查的最大等待时间（秒） |
| `-HealthCheckInterval` | Int32 | — | — | 4 | `3` | 健康检查尝试之间的间隔（秒） |
| `-ImageName` | String | — | — | 5 | — | 要使用的自定义 Docker 镜像名称 |
| `-ShowWindow` | SwitchParameter | — | — | Named | — | 在初始化期间显示 Docker Desktop 窗口 |

## Examples

### Unregister-AllFaces

```powershell
Unregister-AllFaces
```

移除所有已注册的人脸（需确认提示）。

### Unregister-AllFaces -Force

```powershell
Unregister-AllFaces -Force
```

删除所有已注册的面孔，无需确认提示。

### unregall -Force

```powershell
unregall -Force
```

使用别名删除所有面孔，无需确认。

## Related Links

- [Unregister-AllFaces on GitHub](https://github.com/genXdev/genXdev)

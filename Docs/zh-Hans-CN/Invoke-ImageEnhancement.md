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
| `-ImagePath` | String | ✅ | ✅ (ByValue, ByPropertyName) | 0 | — | 要增强的图片文件的本地路径 |
| `-OutputPath` | String | — | — | 1 | — | 增强图像应保存到的可选路径 |
| `-NoDockerInitialize` | SwitchParameter | — | — | Named | — | 跳过 Docker 初始化（当已由父函数调用时使用） |
| `-Force` | SwitchParameter | — | — | Named | — | 强制重建 Docker 容器并移除现有数据 |
| `-UseGPU` | SwitchParameter | — | — | Named | — | 使用GPU加速版本（需要NVIDIA GPU） |
| `-ContainerName` | String | — | — | Named | `'deepstack_face_recognition'` | Docker容器的名称 |
| `-VolumeName` | String | — | — | Named | `'deepstack_face_data'` | 用于持久化存储的Docker卷名称 |
| `-ServicePort` | Int32 | — | — | Named | `5000` | DeepStack 服务的端口号 |
| `-HealthCheckTimeout` | Int32 | — | — | Named | `60` | 服务健康检查的最大等待时间（秒） |
| `-HealthCheckInterval` | Int32 | — | — | Named | `3` | 健康检查尝试之间的间隔（秒） |
| `-ImageName` | String | — | — | Named | — | 要使用的自定义 Docker 镜像名称 |
| `-ShowWindow` | SwitchParameter | — | — | Named | — | 在初始化期间显示 Docker Desktop 窗口 |

## Related Links

- [Invoke-ImageEnhancement on GitHub](https://github.com/genXdev/genXdev)

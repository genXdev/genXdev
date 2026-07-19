# Get-ImageDetectedObjects

> **Module:** GenXdev.AI.DeepStack | **Type:** Function | **Aliases:** —

## Synopsis

> 使用DeepStack检测并分类上传图像中的对象。

## Description

该函数分析图像文件，检测并分类多达80种不同物体。它使用运行在可配置端口上的本地DeepStack物体检测API，并返回物体分类及其边界框坐标和置信度分数。该函数支持GPU加速、自定义置信度阈值和Docker容器管理。

## Syntax

```powershell
Get-ImageDetectedObjects -ImagePath <String> [-ConfidenceThreshold <Double>] [-ContainerName <String>] [-Force] [-HealthCheckInterval <Int32>] [-HealthCheckTimeout <Int32>] [-ImageName <String>] [-NoDockerInitialize] [-ServicePort <Int32>] [-ShowWindow] [-UseGPU] [-VolumeName <String>] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-ImagePath` | String | ✅ | ✅ (ByValue, ByPropertyName) | 0 | — | 要分析的图像文件的本地路径 |
| `-ConfidenceThreshold` | Double | — | — | Named | `0.5` | 最低置信度阈值（0.0-1.0）。默认值为0.5 |
| `-ContainerName` | String | — | — | Named | `'deepstack_face_recognition'` | Docker容器的名称 |
| `-VolumeName` | String | — | — | Named | `'deepstack_face_data'` | 用于持久化存储的Docker卷名称 |
| `-ServicePort` | Int32 | — | — | Named | `5000` | DeepStack 服务的端口号 |
| `-HealthCheckTimeout` | Int32 | — | — | Named | `60` | 服务健康检查的最大等待时间（秒） |
| `-HealthCheckInterval` | Int32 | — | — | Named | `3` | 健康检查尝试之间的间隔（秒） |
| `-ImageName` | String | — | — | Named | — | 要使用的自定义 Docker 镜像名称 |
| `-NoDockerInitialize` | SwitchParameter | — | — | Named | — | 跳过 Docker 初始化（当已由父函数调用时使用） |
| `-Force` | SwitchParameter | — | — | Named | — | 强制重建 Docker 容器并移除现有数据 |
| `-UseGPU` | SwitchParameter | — | — | Named | — | 使用GPU加速版本（需要NVIDIA GPU） |
| `-ShowWindow` | SwitchParameter | — | — | Named | — | 在初始化期间显示 Docker Desktop 窗口 |

## Examples

### Get-ImageDetectedObjects -ImagePath "C:\Users\YourName\test.jpg" `                          -ConfidenceThreshold 0.5 `                          -ServicePort 5000

```powershell
Get-ImageDetectedObjects -ImagePath "C:\Users\YourName\test.jpg" `
                         -ConfidenceThreshold 0.5 `
                         -ServicePort 5000
```

使用完整参数名称检测指定图像中的对象。

### Get-ImageDetectedObjects "C:\photos\street.jpg"

```powershell
Get-ImageDetectedObjects "C:\photos\street.jpg"
```

使用位置参数和默认设置检测对象。

## Related Links

- [Get-ImageDetectedObjects on GitHub](https://github.com/genXdev/genXdev)

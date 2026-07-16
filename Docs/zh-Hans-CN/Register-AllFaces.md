# Register-AllFaces

> **Module:** GenXdev.AI.DeepStack | **Type:** Function | **Aliases:** `UpdateFaces

## Synopsis

> *(No synopsis provided)*

## Syntax

```powershell
Register-AllFaces [[-FacesDirectory] <String>] [[-MaxRetries] <Int32>] [[-ContainerName] <String>] [[-VolumeName] <String>] [[-ServicePort] <Int32>] [[-HealthCheckTimeout] <Int32>] [[-HealthCheckInterval] <Int32>] [[-ImageName] <String>] [-ClearSession] [-Force] [-ForceRebuild] [-NoDockerInitialize] [-PreferencesDatabasePath <String>] [-RenameFailed] [-SessionOnly] [-ShowWindow] [-SkipSession] [-UseGPU] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-FacesDirectory` | String | — | — | 0 | — | 包含按人物文件夹组织的人脸图像的目录。如果未指定，则使用已配置的人脸目录偏好。 |
| `-MaxRetries` | Int32 | — | — | 1 | `3` | 失败注册的最大重试次数 |
| `-ContainerName` | String | — | — | 2 | `'deepstack_face_recognition'` | Docker容器的名称 |
| `-VolumeName` | String | — | — | 3 | `'deepstack_face_data'` | 用于持久化存储的Docker卷名称 |
| `-ServicePort` | Int32 | — | — | 4 | `5000` | DeepStack 服务的端口号 |
| `-HealthCheckTimeout` | Int32 | — | — | 5 | `60` | 服务健康检查的最大等待时间（秒） |
| `-HealthCheckInterval` | Int32 | — | — | 6 | `3` | 健康检查尝试之间的间隔（秒） |
| `-ImageName` | String | — | — | 7 | — | 要使用的自定义 Docker 镜像名称 |
| `-NoDockerInitialize` | SwitchParameter | — | — | Named | — | 跳过 Docker Desktop 初始化（当此操作已由父函数调用时使用） |
| `-Force` | SwitchParameter | — | — | Named | — | 强制重新注册所有面部 |
| `-RenameFailed` | SwitchParameter | — | — | Named | — | 重命名因未检测到人脸而无法处理的失败图像文件 |
| `-ForceRebuild` | SwitchParameter | — | — | Named | — | 强制重建 Docker 容器并移除现有数据 |
| `-UseGPU` | SwitchParameter | — | — | Named | — | 使用GPU加速版本（需要NVIDIA GPU） |
| `-ShowWindow` | SwitchParameter | — | — | Named | — | 在初始化期间显示 Docker Desktop 窗口 |
| `-SessionOnly` | SwitchParameter | — | — | Named | — | 如果指定，仅使用会话（不持久化更改到偏好设置数据库）。 |
| `-ClearSession` | SwitchParameter | — | — | Named | — | 如果指定，在使用前清除当前会话偏好设置。 |
| `-PreferencesDatabasePath` | String | — | — | Named | — | 用于已知人脸根路径的首选项数据库路径。 |
| `-SkipSession` | SwitchParameter | — | — | Named | — | 如果指定，在获取已知人脸根路径时跳过会话逻辑。 |

## Related Links

- [Register-AllFaces on GitHub](https://github.com/genXdev/genXdev)

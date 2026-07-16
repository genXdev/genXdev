# Update-AllImageMetaData

> **Module:** GenXdev.AI.Queries | **Type:** Function | **Aliases:** `updateallimages

## Synopsis

> *(No synopsis provided)*

## Syntax

```powershell
Update-AllImageMetaData -ImageDirectories <String[]> [-ApiEndpoint <String>] [-ApiKey <String>] [-AutoUpdateFaces] [-ClearSession] [-ConfidenceThreshold <Double>] [-ContainerName <String>] [-FacesDirectory <String>] [-Force] [-HealthCheckInterval <Int32>] [-HealthCheckTimeout <Int32>] [-ImageName <String>] [-Language <String>] [-Model <String>] [-NoDockerInitialize] [-NoRecurse] [-PassThru] [-PreferencesDatabasePath <String>] [-RedoAll] [-RetryFailed] [-ServicePort <Int32>] [-SessionOnly] [-SkipSession] [-TimeoutSeconds <Int32>] [-UseGPU] [-VolumeName <String>] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-ImageDirectories` | String[] | ✅ | — | 0 | — | 用于处理图像更新的目录路径数组 |
| `-ContainerName` | String | — | — | Named | `'deepstack_face_recognition'` | Docker容器的名称 |
| `-VolumeName` | String | — | — | Named | `'deepstack_face_data'` | 用于持久化存储的Docker卷名称 |
| `-ServicePort` | Int32 | — | — | Named | `5000` | DeepStack 服务的端口号 |
| `-HealthCheckTimeout` | Int32 | — | — | Named | `60` | 服务健康检查的最大等待时间（秒） |
| `-HealthCheckInterval` | Int32 | — | — | Named | `3` | 健康检查尝试之间的间隔（秒） |
| `-ImageName` | String | — | — | Named | — | 要使用的自定义 Docker 镜像名称 |
| `-ConfidenceThreshold` | Double | — | — | Named | `0.7` | 用于物体检测的最低置信度阈值（0.0-1.0） |
| `-Language` | String | — | — | Named | — | 生成描述和关键词所使用的语言 |
| `-Model` | String | — | ✅ (ByValue) | Named | — | 要初始化的模型的名称或部分路径 🌐 *Supports wildcards* |
| `-ApiEndpoint` | String | — | — | Named | `$null` | API端点URL，默认值为http://localhost:1234/v1/chat/completions |
| `-ApiKey` | String | — | — | Named | `$null` | 用于请求的API密钥 |
| `-TimeoutSeconds` | Int32 | — | — | Named | — | 请求超时时间（秒），默认为24小时 |
| `-FacesDirectory` | String | — | — | Named | — | 包含按人物文件夹组织的人脸图像的目录。如果未指定，则使用已配置的人脸目录偏好。 |
| `-PreferencesDatabasePath` | String | — | — | Named | — | 偏好数据文件的数据库路径 |
| `-RetryFailed` | SwitchParameter | — | — | Named | — | 将重试之前失败的图像关键字更新 |
| `-NoRecurse` | SwitchParameter | — | — | Named | — | 在处理图像时不递归进入子目录 |
| `-RedoAll` | SwitchParameter | — | — | Named | — | Redo all images regardless of previous processing |
| `-NoDockerInitialize` | SwitchParameter | — | — | Named | — | 跳过 Docker 初始化（当已由父函数调用时使用） |
| `-Force` | SwitchParameter | — | — | Named | — | 强制重建 Docker 容器并移除现有数据 |
| `-UseGPU` | SwitchParameter | — | — | Named | — | 使用GPU加速版本（需要NVIDIA GPU） |
| `-PassThru` | SwitchParameter | — | — | Named | — | PassThru 返回结构化对象而非输出到控制台 |
| `-AutoUpdateFaces` | SwitchParameter | — | — | Named | — | 检测faces目录的变化，并在需要时重新注册人脸 |
| `-SessionOnly` | SwitchParameter | — | — | Named | — | Use alternative settings stored in session for AI preferences like Language, Image collections, etc |
| `-ClearSession` | SwitchParameter | — | — | Named | — | 清除存储在会话中的AI偏好替代设置，如语言、图像收藏等 |
| `-SkipSession` | SwitchParameter | — | — | Named | — | 不要使用存储在会话中的替代设置来处理AI偏好，如语言、图像集合等 |

## Related Links

- [Update-AllImageMetaData on GitHub](https://github.com/genXdev/genXdev)

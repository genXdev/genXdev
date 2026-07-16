# EnsureDeepStack

> **Module:** GenXdev.AI.DeepStack | **Type:** Function | **Aliases:** —

## Synopsis

> *(No synopsis provided)*

## Syntax

```powershell
EnsureDeepStack [[-ContainerName] <String>] [[-VolumeName] <String>] [[-ServicePort] <Int32>] [[-HealthCheckTimeout] <Int32>] [[-HealthCheckInterval] <Int32>] [[-ImageName] <String>] [-Bottom] [-Centered] [-ClearSession] [-FocusWindow] [-Force] [-Fullscreen] [-Height <Int32>] [-Left] [-Monitor <Int32>] [-NoBorders] [-RestoreFocus] [-Right] [-SendKeyDelayMilliSeconds <Int32>] [-SendKeyEscape] [-SendKeyHoldKeyboardFocus] [-SendKeyUseShiftEnter] [-SessionOnly] [-SetForeground] [-ShowWindow] [-SideBySide] [-SkipSession] [-UseGPU] [-Width <Int32>] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-ContainerName` | String | — | — | 0 | `'deepstack_face_recognition'` | Docker容器的名称 |
| `-VolumeName` | String | — | — | 1 | `'deepstack_face_data'` | 用于持久化存储的Docker卷名称 |
| `-ServicePort` | Int32 | — | — | 2 | `5000` | DeepStack 服务的端口号 |
| `-HealthCheckTimeout` | Int32 | — | — | 3 | `60` | 服务健康检查的最大等待时间（秒） |
| `-HealthCheckInterval` | Int32 | — | — | 4 | `3` | 健康检查尝试之间的间隔（秒） |
| `-ImageName` | String | — | — | 5 | — | 要使用的自定义 Docker 镜像名称 |
| `-Force` | SwitchParameter | — | — | Named | — | 强制重建 Docker 容器并移除现有数据 |
| `-UseGPU` | SwitchParameter | — | — | Named | — | 使用GPU加速版本（需要NVIDIA GPU） |
| `-ShowWindow` | SwitchParameter | — | — | Named | — | 在初始化期间显示 Docker Desktop 窗口 |
| `-Monitor` | Int32 | — | — | Named | `-2` | 使用的显示器，0 = 默认，-1 = 丢弃 |
| `-NoBorders` | SwitchParameter | — | — | Named | — | 移除窗口的边框 |
| `-Width` | Int32 | — | — | Named | — | 窗口的初始宽度 |
| `-Height` | Int32 | — | — | Named | — | 窗口的初始高度 |
| `-Left` | SwitchParameter | — | — | Named | — | 将窗口放置在屏幕左侧 |
| `-Right` | SwitchParameter | — | — | Named | — | 将窗口放在屏幕右侧 |
| `-Bottom` | SwitchParameter | — | — | Named | — | 将窗口放置在屏幕底部 |
| `-Centered` | SwitchParameter | — | — | Named | — | 将窗口放置在屏幕中央 |
| `-Fullscreen` | SwitchParameter | — | — | Named | — | 最大化窗口 |
| `-RestoreFocus` | SwitchParameter | — | — | Named | — | 恢复 PowerShell 窗口焦点 |
| `-SideBySide` | SwitchParameter | — | — | Named | — | 将在与 PowerShell 不同的显示器上全屏显示窗口，或与 PowerShell 在同一显示器上并排显示 |
| `-FocusWindow` | SwitchParameter | — | — | Named | — | 打开后聚焦窗口 |
| `-SetForeground` | SwitchParameter | — | — | Named | — | 打开后将窗口置于前台 |
| `-SendKeyEscape` | SwitchParameter | — | — | Named | — | 发送键时转义控制字符和修饰符 |
| `-SendKeyHoldKeyboardFocus` | SwitchParameter | — | — | Named | — | 在发送按键时，保持键盘焦点在目标窗口上 |
| `-SendKeyUseShiftEnter` | SwitchParameter | — | — | Named | — | 请在发送键时使用Shift+Enter代替Enter |
| `-SendKeyDelayMilliSeconds` | Int32 | — | — | Named | — | 发送按键时不同输入字符串之间的延迟（毫秒） |
| `-SessionOnly` | SwitchParameter | — | — | Named | — | Use alternative settings stored in session for AI preferences |
| `-ClearSession` | SwitchParameter | — | — | Named | — | 清除存储在会话中的人工智能偏好替代设置 |
| `-SkipSession` | SwitchParameter | — | — | Named | — | 仅将设置存储在持久化偏好中，不影响会话 |

## Outputs

- `Boolean`

## Related Links

- [EnsureDeepStack on GitHub](https://github.com/genXdev/genXdev)

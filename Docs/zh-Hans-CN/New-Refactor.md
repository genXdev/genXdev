# New-Refactor

> **Module:** GenXdev.Coding.PowerShell.Modules | **Type:** Function | **Aliases:** `newrefactor

## Synopsis

> 为代码转换任务创建新的重构集合。

## Description

创建并配置一个新的重构定义，用于基于LLM的代码转换。该函数处理：
- 设置重构配置
- 配置选择标准和提示
- 管理LLM模型设置
- 与开发环境集成
- 持久化重构定义

## Syntax

```powershell
New-Refactor -Name <String> -PromptKey <String> [[-Prompt] <String>] [[-SelectionScript] <String>] [[-SelectionPrompt] <String>] [[-LLMQueryType] <String>] [-ApiEndpoint <String>] [-ApiKey <String>] [-AutoAddModifiedFiles] [-ClearSession] [-Code] [-ExposedCmdLets <GenXdev.Helpers.ExposedCmdletDefinition[]>] [-FilesToAdd <IO.FileInfo[]>] [-KeysToSend <String[]>] [-Model <String>] [-PreferencesDatabasePath <String>] [-Priority <Int32>] [-SelectByFreeGpuRam] [-SelectByFreeRam] [-SessionOnly] [-SkipSession] [-Temperature <Double>] [-TimeoutSeconds <Int32>] [-VisualStudio] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-Name` | String | ✅ | — | 0 | — | 此次重构集的名称 |
| `-PromptKey` | String | ✅ | — | 1 | — | 提示键指明使用哪个提示脚本 |
| `-Prompt` | String | — | — | 2 | `''` | 自定义提示文本以覆盖模板 |
| `-SelectionScript` | String | — | — | 3 | — | PowerShell 脚本用于选择要重构的项目 |
| `-SelectionPrompt` | String | — | — | 4 | — | LLM选择指南提示 |
| `-LLMQueryType` | String | — | — | 5 | `'Coding'` | The type of LLM query |
| `-Model` | String | — | — | Named | — | 用于AI操作的模型标识符或模式 |
| `-SelectByFreeRam` | SwitchParameter | — | — | Named | — | 根据可用系统RAM选择配置 |
| `-SelectByFreeGpuRam` | SwitchParameter | — | — | Named | — | 根据可用GPU内存选择配置 |
| `-Temperature` | Double | — | — | Named | `-1` | 响应随机性的温度参数（0.0-1.0） |
| `-ApiEndpoint` | String | — | — | Named | — | AI操作的API端点URL |
| `-ApiKey` | String | — | — | Named | — | 用于经过身份验证的人工智能操作的API密钥 |
| `-TimeoutSeconds` | Int32 | — | — | Named | — | AI 操作超时秒数 |
| `-Priority` | Int32 | — | — | Named | `0` | 此重构集的优先级 |
| `-ExposedCmdLets` | GenXdev.Helpers.ExposedCmdletDefinition[] | — | — | Named | `@()` | LLM 工具 PowerShell 命令定义数组 |
| `-FilesToAdd` | IO.FileInfo[] | — | — | Named | `@()` | 要处理的文件数组 |
| `-PreferencesDatabasePath` | String | — | — | Named | — | 偏好数据文件的数据库路径 |
| `-AutoAddModifiedFiles` | SwitchParameter | — | — | Named | — | 将自动将修改过的文件添加到队列 |
| `-SessionOnly` | SwitchParameter | — | — | Named | — | Use alternative settings stored in session for AI preferences |
| `-ClearSession` | SwitchParameter | — | — | Named | — | 清除存储在会话中的人工智能偏好替代设置 |
| `-SkipSession` | SwitchParameter | — | — | Named | — | 仅将设置存储在持久化偏好中，不影响会话 |
| `-Code` | SwitchParameter | — | — | Named | — | 在 Visual Studio Code 中打开文件 |
| `-VisualStudio` | SwitchParameter | — | — | Named | — | 在 Visual Studio 中打开 |
| `-KeysToSend` | String[] | — | — | Named | `@()` | 打开文件后发送的按键 |

## Examples

### New-Refactor -Name "UpdateLogging" -PromptKey "LoggingRefactor" `     -SelectionScript "Get-LoggingMethods" -Priority 1 `     -Code

```powershell
New-Refactor -Name "UpdateLogging" -PromptKey "LoggingRefactor" `
    -SelectionScript "Get-LoggingMethods" -Priority 1 `
    -Code
```

### newrefactor UpdateLogging LoggingRefactor -p "Get-LoggingMethods" -c

```powershell
newrefactor UpdateLogging LoggingRefactor -p "Get-LoggingMethods" -c
```

## Related Links

- [New-Refactor on GitHub](https://github.com/genXdev/genXdev)

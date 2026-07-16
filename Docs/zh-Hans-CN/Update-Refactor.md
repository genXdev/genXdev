# Update-Refactor

> **Module:** GenXdev.Coding.PowerShell.Modules | **Type:** Function | **Aliases:** `updaterefactor

## Synopsis

> *(No synopsis provided)*

## Syntax

```powershell
Update-Refactor [[-Name] <String[]>] [<CommonParameters>]

Update-Refactor [[-Refactor] <GenXdev.Helpers.RefactorDefinition[]>] [<CommonParameters>]

Update-Refactor [[-FilesToAdd] <IO.FileInfo[]>] [[-FilesToRemove] <IO.FileInfo[]>] [-ApiEndpoint <String>] [-ApiKey <String>] [-AskBeforeLLMSelection] [-CleanUpDeletedFiles] [-Clear] [-ClearLog] [-ClearSession] [-Code] [-ExposedCmdLets <GenXdev.Helpers.ExposedCmdletDefinition[]>] [-KeysToSend <String[]>] [-LLMQueryType <String>] [-MarkAllCompleted] [-Model <String>] [-PerformAISelections] [-PerformAutoSelections] [-PreferencesDatabasePath <String>] [-Priority <Int32>] [-Prompt <String>] [-PromptKey <String>] [-RedoLast] [-ReprocessModifiedFiles] [-Reset] [-ResetLMSelections] [-RetryFailedLLMSelections] [-SelectByCreationDateFrom <DateTime>] [-SelectByCreationDateTo <DateTime>] [-SelectByFreeGpuRam] [-SelectByFreeRam] [-SelectByModifiedDateFrom <DateTime>] [-SelectByModifiedDateTo <DateTime>] [-SelectionPrompt <String>] [-SelectionScript <String>] [-SessionOnly] [-SkipSession] [-Speak] [-Temperature <Double>] [-TimeoutSeconds <Int32>] [-VisualStudio] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-Name` | String[] | — | ✅ (ByValue, ByPropertyName) | 0 | `@('*')` | 重构的名称，接受通配符 *(Parameter set: )* 🌐 *Supports wildcards* |
| `-Refactor` | GenXdev.Helpers.RefactorDefinition[] | — | — | 1 | — | 要更新的重构集 *(Parameter set: )* |
| `-FilesToAdd` | IO.FileInfo[] | — | — | 2 | `@()` | 要添加的文件名 |
| `-FilesToRemove` | IO.FileInfo[] | — | — | 3 | `@()` | 要移除的文件名 |
| `-SelectByModifiedDateFrom` | DateTime | — | — | Named | — | 从修改日期选择文件 |
| `-SelectByModifiedDateTo` | DateTime | — | — | Named | — | 按修改日期选择文件 |
| `-SelectByCreationDateFrom` | DateTime | — | — | Named | — | 从创建日期选择文件 |
| `-SelectByCreationDateTo` | DateTime | — | — | Named | — | 按创建日期选择文件以 |
| `-PromptKey` | String | — | — | Named | — | 提示键指明使用哪个提示脚本 |
| `-Prompt` | String | — | — | Named | `''` | 提示键指明使用哪个提示脚本 |
| `-SelectionScript` | String | — | — | Named | — | PowerShell 脚本用于选择要重构的项 |
| `-SelectionPrompt` | String | — | — | Named | — | 如果提供，将基于脚本内容调用LLM进行选择 |
| `-LLMQueryType` | String | — | — | Named | `'Coding'` | The type of LLM query |
| `-Model` | String | — | — | Named | — | 用于AI操作的模型标识符或模式 |
| `-Temperature` | Double | — | — | Named | `-1` | 响应随机性的温度参数（0.0-1.0） |
| `-ApiEndpoint` | String | — | — | Named | — | AI操作的API端点URL |
| `-ApiKey` | String | — | — | Named | — | 用于经过身份验证的人工智能操作的API密钥 |
| `-TimeoutSeconds` | Int32 | — | — | Named | — | AI 操作超时秒数 |
| `-Priority` | Int32 | — | — | Named | — | 此重构集的优先级 |
| `-ExposedCmdLets` | GenXdev.Helpers.ExposedCmdletDefinition[] | — | — | Named | `@()` | LLM 选择期间用作工具的 PowerShell 命令定义数组 |
| `-KeysToSend` | String[] | — | — | Named | `@()` | 在打开文件后作为按键调用的键 |
| `-PreferencesDatabasePath` | String | — | — | Named | — | 偏好数据文件的数据库路径 |
| `-CleanUpDeletedFiles` | SwitchParameter | — | — | Named | — | 清理已删除的文件 |
| `-AskBeforeLLMSelection` | SwitchParameter | — | — | Named | — | 用于抑制用户交互的开关 |
| `-PerformAutoSelections` | SwitchParameter | — | — | Named | — | 启用基于LLM的文件选择处理 |
| `-PerformAISelections` | SwitchParameter | — | — | Named | — | 切换到处理重构集中的所有文件 |
| `-RetryFailedLLMSelections` | SwitchParameter | — | — | Named | — | 切换到重试失败的LLM选择 |
| `-Clear` | SwitchParameter | — | — | Named | — | 从重构集中清除所有文件 |
| `-ClearLog` | SwitchParameter | — | — | Named | — | 清除重构集的日志 |
| `-Reset` | SwitchParameter | — | — | Named | — | 从重构集的开头开始 |
| `-ResetLMSelections` | SwitchParameter | — | — | Named | — | 重启所有LLM选择 |
| `-MarkAllCompleted` | SwitchParameter | — | — | Named | — | 将所有文件标记为已重构 |
| `-RedoLast` | SwitchParameter | — | — | Named | — | Redo the last refactor |
| `-ReprocessModifiedFiles` | SwitchParameter | — | — | Named | — | 自动重新处理自上次更新以来被修改的文件 |
| `-Code` | SwitchParameter | — | — | Named | — | 用于打开文件的IDE |
| `-VisualStudio` | SwitchParameter | — | — | Named | — | 在 Visual Studio 中打开 |
| `-Speak` | SwitchParameter | — | — | Named | — | 说出下一次重构的细节 |
| `-SelectByFreeRam` | SwitchParameter | — | — | Named | — | 根据可用系统RAM选择配置 |
| `-SelectByFreeGpuRam` | SwitchParameter | — | — | Named | — | 根据可用GPU内存选择配置 |
| `-SessionOnly` | SwitchParameter | — | — | Named | — | Use alternative settings stored in session for AI preferences |
| `-ClearSession` | SwitchParameter | — | — | Named | — | 清除存储在会话中的人工智能偏好替代设置 |
| `-SkipSession` | SwitchParameter | — | — | Named | — | 仅将设置存储在持久化偏好中，不影响会话 |

## Related Links

- [Update-Refactor on GitHub](https://github.com/genXdev/genXdev)

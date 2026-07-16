# Assert-GenXdevTest

> **Module:** GenXdev.Coding.PowerShell.Modules | **Type:** Function | **Aliases:** `rungenxdevtests

## Synopsis

> *(No synopsis provided)*

## Syntax

```powershell
Assert-GenXdevTest [[-CmdletName] <String>] [[-TestFailedAction] <String>] [[-DefinitionMatches] <String>] [[-ModuleName] <String[]>] [-AllowLongRunningTests] [-ExactMatch] [-FromScripts] [-NoLocal] [-OnlyPublished] [-OnlyReturnModuleNames] [-SkipPesterTests] [-SkipPSAnalyzerTests] [-StackTraceVerbosity <String>] [-Verbosity <String>] [<CommonParameters>]

Assert-GenXdevTest [-IncludeScripts] [-SkipModuleImports] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-CmdletName` | String | — | ✅ (ByPropertyName) | 0 | — | 用于筛选cmdlet的搜索模式 🌐 *Supports wildcards* |
| `-TestFailedAction` | String | — | — | 1 | `'Continue'` | 测试失败时要采取的操作。选项：询问、继续、停止、使用AI解决、写入错误、抛出 |
| `-DefinitionMatches` | String | — | ✅ (ByValue, ByPropertyName) | 2 | — | 用于匹配 cmdlet 定义的正则表达式 |
| `-ModuleName` | String[] | — | ✅ (ByValue, ByPropertyName) | 3 | — | GenXdev 模块名称搜索 🌐 *Supports wildcards* |
| `-NoLocal` | SwitchParameter | — | — | Named | — | 跳过在本地模块路径中搜索 |
| `-OnlyPublished` | SwitchParameter | — | — | Named | — | 仅在已发布的模块路径中搜索 |
| `-FromScripts` | SwitchParameter | — | — | Named | — | 在脚本文件中搜索，而非模块中 |
| `-IncludeScripts` | SwitchParameter | — | — | Named | — | 除了常规模块外，还包括脚本目录 *(Parameter set: )* |
| `-OnlyReturnModuleNames` | SwitchParameter | — | — | Named | — | fatal: module requests not found |
| `-ExactMatch` | SwitchParameter | — | — | Named | — | 要求 cmdlet 名称完全匹配 |
| `-Verbosity` | String | — | — | Named | `'Normal'` | 输出详细级别 |
| `-StackTraceVerbosity` | String | — | — | Named | `'FirstLine'` | 堆栈跟踪详细级别 |
| `-AllowLongRunningTests` | SwitchParameter | — | — | Named | — | 同时选择运行时间较长的单元测试 |
| `-SkipModuleImports` | SwitchParameter | — | — | Named | — | 在测试前跳过导入 GenXdev 模块 *(Parameter set: )* |
| `-SkipPSAnalyzerTests` | SwitchParameter | — | — | Named | — | 跳过调用PSAnalyzer测试 |
| `-SkipPesterTests` | SwitchParameter | — | — | Named | — | 跳过调用 Pester 测试 |

## Related Links

- [Assert-GenXdevTest on GitHub](https://github.com/genXdev/genXdev)

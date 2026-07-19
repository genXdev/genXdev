# Assert-ModuleDefinition

> **Module:** GenXdev.Coding.PowerShell.Modules | **Type:** Function | **Aliases:** —

## Synopsis

> 使用AI辅助重构PowerShell源代码文件。

## Description

该函数利用AI自动化重构PowerShell代码的过程。它管理提示模板，检测当前IDE（VS Code或Visual Studio），并通过键盘自动化协调重构工作流程。该函数可处理模块清单(.psd1)和模块脚本(.psm1)文件。

## Syntax

```powershell
Assert-ModuleDefinition -ModuleName <String> [-EditPrompt] [-Prompt <String>] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-ModuleName` | String | ✅ | ✅ (ByValue, ByPropertyName) | 0 | — | 模块的名称 |
| `-Prompt` | String | — | — | Named | — | AI 提示词 |
| `-EditPrompt` | SwitchParameter | — | — | Named | — | Switch to only edit the AI prompt |

## Examples

### Assert-ModuleDefinition -ModuleName "MyModule" -EditPrompt

```powershell
Assert-ModuleDefinition -ModuleName "MyModule" -EditPrompt
```

### "MyModule" | Assert-ModuleDefinition

```powershell
"MyModule" | Assert-ModuleDefinition
```

## Related Links

- [Assert-ModuleDefinition on GitHub](https://github.com/genXdev/genXdev)

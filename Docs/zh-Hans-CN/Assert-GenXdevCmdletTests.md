# Assert-GenXdevCmdletTests

> **Module:** GenXdev.Coding.PowerShell.Modules | **Type:** Function | **Aliases:** `improvecmdlettests

## Synopsis

> *(No synopsis provided)*

## Syntax

```powershell
Assert-GenXdevCmdletTests -CmdletName <String> [[-Prompt] <String>] [[-PromptKey] <String>] [-AssertFailedTest] [-ContinuationHandled] [-EditPrompt] [-FromScripts] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-CmdletName` | String | ✅ | ✅ (ByValue, ByPropertyName) | 0 | — | 用于改进单元测试的cmdlet名称 |
| `-Prompt` | String | — | — | 1 | `''` | 自定义AI提示文本 |
| `-PromptKey` | String | — | — | 2 | — | 用于模板选择的 AI 提示词 |
| `-EditPrompt` | SwitchParameter | — | — | Named | — | Switch to only edit the AI prompt |
| `-AssertFailedTest` | SwitchParameter | — | — | Named | — | 表示断言一个失败的测试 |
| `-FromScripts` | SwitchParameter | — | — | Named | — | 在脚本文件中搜索，而非模块中 |
| `-ContinuationHandled` | SwitchParameter | — | — | Named | — | The `-ContinuationHandled` parameter. |

## Related Links

- [Assert-GenXdevCmdletTests on GitHub](https://github.com/genXdev/genXdev)

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
| `-CmdletName` | String | ✅ | ✅ (ByValue, ByPropertyName) | 0 | — | The name of the cmdlet to improve unit-tests for |
| `-Prompt` | String | — | — | 1 | `''` | Custom AI prompt text to use |
| `-PromptKey` | String | — | — | 2 | — | The AI prompt key to use for template selection |
| `-EditPrompt` | SwitchParameter | — | — | Named | — | Switch to only edit the AI prompt |
| `-AssertFailedTest` | SwitchParameter | — | — | Named | — | Indicates to assert a failed test |
| `-FromScripts` | SwitchParameter | — | — | Named | — | Search in script files instead of modules |
| `-ContinuationHandled` | SwitchParameter | — | — | Named | — | The `-ContinuationHandled` parameter. |

## Related Links

- [Assert-GenXdevCmdletTests on GitHub](https://github.com/genXdev/genXdev)

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
| `-PromptKey` | String | — | — | 2 | — | Der KI-Prompt-Schlüssel zur Verwendung für die Vorlagenauswahl |
| `-EditPrompt` | SwitchParameter | — | — | Named | — | Switch to only edit the AI prompt |
| `-AssertFailedTest` | SwitchParameter | — | — | Named | — | Weist darauf hin, einen fehlgeschlagenen Test zu behaupten |
| `-FromScripts` | SwitchParameter | — | — | Named | — | In Skriptdateien statt in Modulen suchen |
| `-ContinuationHandled` | SwitchParameter | — | — | Named | — | The `-ContinuationHandled` parameter. |

## Related Links

- [Assert-GenXdevCmdletTests on GitHub](https://github.com/genXdev/genXdev)

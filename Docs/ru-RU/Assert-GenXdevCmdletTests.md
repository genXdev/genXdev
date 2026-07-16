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
| `-Prompt` | String | — | — | 1 | `''` | Текст пользовательского AI-промта для использования |
| `-PromptKey` | String | — | — | 2 | — | Ключ AI-подсказки для выбора шаблона |
| `-EditPrompt` | SwitchParameter | — | — | Named | — | Only edit the AI prompt |
| `-AssertFailedTest` | SwitchParameter | — | — | Named | — | Указывает на то, что тест не пройден |
| `-FromScripts` | SwitchParameter | — | — | Named | — | Поиск в файлах скриптов вместо модулей |
| `-ContinuationHandled` | SwitchParameter | — | — | Named | — | The `-ContinuationHandled` parameter. |

## Related Links

- [Assert-GenXdevCmdletTests on GitHub](https://github.com/genXdev/genXdev)

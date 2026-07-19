# Assert-GenXdevCmdletTests

> **Module:** GenXdev.Coding.PowerShell.Modules | **Type:** Function | **Aliases:** `improvecmdlettests

## Synopsis

> Утверждает и улучшает модульные тесты указанного командлета GenXdev.

## Description

Эта функция помогает поддерживать и улучшать модульные тесты для командлетов GenXdev, выполняя следующие действия:
1. Создание файлов тестов, если они не существуют
2. Открытие командлета в VS Code
3. Подготовка и применение AI-подсказок для генерации/улучшения тестов
4. Управление рабочим процессом выполнения тестов

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

## Examples

### Assert-GenXdevCmdletTests -CmdletName "Get-GenXDevModuleInfo" -EditPrompt

```powershell
Assert-GenXdevCmdletTests -CmdletName "Get-GenXDevModuleInfo" -EditPrompt
```

### improvecmdlettests Get-GenXDevModuleInfo -AssertFailedTest ##############################################################################

```powershell
improvecmdlettests Get-GenXDevModuleInfo -AssertFailedTest
##############################################################################
```

## Related Links

- [Assert-GenXdevCmdletTests on GitHub](https://github.com/genXdev/genXdev)

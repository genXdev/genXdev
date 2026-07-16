# Assert-GenXdevCmdlet

> **Module:** GenXdev.Coding.PowerShell.Modules | **Type:** Function | **Aliases:** `improvecmdlet

## Synopsis

> *(No synopsis provided)*

## Syntax

```powershell
Assert-GenXdevCmdlet [[-CmdletName] <String>] [[-PromptKey] <String>] [[-Prompt] <String>] [-Code] [-FromScripts] [-Integrate] [-ModuleName <String[]>] [-NoLocal] [-OnlyPublished] [-VisualStudio] [<CommonParameters>]

Assert-GenXdevCmdlet [-EditPrompt] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-CmdletName` | String | — | — | 0 | — | Шаблон поиска для фильтрации командлетов 🌐 *Supports wildcards* |
| `-ModuleName` | String[] | — | ✅ (ByValue, ByPropertyName) | Named | — | GenXdev - названия модулей для поиска 🌐 *Supports wildcards* |
| `-PromptKey` | String | — | — | 1 | `'CheckAllRequirements'` | Ключ AI-подсказки для выбора шаблона |
| `-Prompt` | String | — | — | 2 | `''` | Текст пользовательского AI-промта для использования |
| `-NoLocal` | SwitchParameter | — | — | Named | — | Пропустить версии локальных модулей |
| `-OnlyPublished` | SwitchParameter | — | — | Named | — | Only include published versions |
| `-FromScripts` | SwitchParameter | — | — | Named | — | Поиск в файлах сценариев |
| `-Code` | SwitchParameter | — | — | Named | — | Открыть в Visual Studio Code |
| `-VisualStudio` | SwitchParameter | — | — | Named | — | Открыть в Visual Studio |
| `-EditPrompt` | SwitchParameter | — | — | Named | — | Ты — полезный ассистент, предназначенный для вывода JSON. *(Parameter set: )* |
| `-Integrate` | SwitchParameter | — | — | Named | — | Интегрировать командлет в модуль |

## Related Links

- [Assert-GenXdevCmdlet on GitHub](https://github.com/genXdev/genXdev)

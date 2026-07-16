# Remove-Refactor

> **Module:** GenXdev.Coding.PowerShell.Modules | **Type:** Function | **Aliases:** —

## Synopsis

> *(No synopsis provided)*

## Syntax

```powershell
Remove-Refactor -Name <String[]> [-RemoveDefault] [-ClearSession] [-DefaultValue <String>] [-PreferencesDatabasePath <String>] [-SessionOnly] [-SkipSession] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-Name` | String[] | ✅ | ✅ (ByValue, ByPropertyName) | 0 | — | Название рефакторинга, принимает подстановочные знаки 🌐 *Supports wildcards* |
| `-RemoveDefault` | SwitchParameter | — | — | 1 | — | Switch to also remove the standard refactor set |
| `-PreferencesDatabasePath` | String | — | — | Named | — | Путь к базе данных для файлов данных предпочтений |
| `-DefaultValue` | String | — | ✅ (ByPropertyName) | Named | — | Значение по умолчанию, если настройка не найдена |
| `-SessionOnly` | SwitchParameter | — | — | Named | — | Используйте альтернативные настройки, сохраненные в сессии, для предпочтений данных, таких как язык, пути к базам данных и т.д. |
| `-ClearSession` | SwitchParameter | — | — | Named | — | Очистите настройки сессии (глобальные переменные) перед получением |
| `-SkipSession` | SwitchParameter | — | — | Named | — | Не используйте альтернативные настройки, хранящиеся в сессии, для настроек данных, таких как язык, пути к базам данных и т.д. |

## Related Links

- [Remove-Refactor on GitHub](https://github.com/genXdev/genXdev)

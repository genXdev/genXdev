# Get-Refactor

> **Module:** GenXdev.Coding.PowerShell.Modules | **Type:** Function | **Aliases:** `refactors

## Synopsis

> *(No synopsis provided)*

## Syntax

```powershell
Get-Refactor [[-Name] <String[]>] [-ClearSession] [-DefaultValue <String>] [-PreferencesDatabasePath <String>] [-SessionOnly] [-SkipSession] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-Name` | String[] | — | ✅ (ByValue, ByPropertyName) | 0 | `@('*')` | Шаблон(ы) для поиска определений рефакторинга 🌐 *Supports wildcards* |
| `-PreferencesDatabasePath` | String | — | — | Named | — | Путь к базе данных для файлов данных предпочтений |
| `-DefaultValue` | String | — | — | Named | — | Значение по умолчанию, если настройка не найдена |
| `-SessionOnly` | SwitchParameter | — | — | Named | — | Используйте альтернативные настройки, сохраненные в сессии, для предпочтений данных, таких как язык, пути к базам данных и т.д. |
| `-ClearSession` | SwitchParameter | — | — | Named | — | Очистите настройки сессии (глобальные переменные) перед получением |
| `-SkipSession` | SwitchParameter | — | — | Named | — | Не используйте альтернативные настройки, хранящиеся в сессии, для настроек данных, таких как язык, пути к базам данных и т.д. |

## Outputs

- `GenXdev.Helpers.RefactorDefinition[]`

## Related Links

- [Get-Refactor on GitHub](https://github.com/genXdev/genXdev)

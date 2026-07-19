# Get-Refactor

> **Module:** GenXdev.Coding.PowerShell.Modules | **Type:** Function | **Aliases:** `refactors

## Synopsis

> Извлекает определения рефакторинга из настроек GenXdev на основе шаблонов имени.

## Description

Выполняет поиск и загрузку наборов определений рефакторинга, хранящихся в настройках GenXdev.
Каждый набор рефакторинга хранится в виде JSON-строки в настройке, имя которой начинается
с 'refactor_set_'. Функция десериализует соответствующие наборы в объекты.

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

## Examples

### Get-Refactor -Name "CodeStyle*" Returns refactor definitions matching pattern "CodeStyle*"

```powershell
Get-Refactor -Name "CodeStyle*"
Returns refactor definitions matching pattern "CodeStyle*"
```

### refactor "UnitTest" Uses alias to find refactor definitions containing "UnitTest"

```powershell
refactor "UnitTest"
Uses alias to find refactor definitions containing "UnitTest"
```

## Outputs

- `GenXdev.Helpers.RefactorDefinition[]`

## Related Links

- [Get-Refactor on GitHub](https://github.com/genXdev/genXdev)

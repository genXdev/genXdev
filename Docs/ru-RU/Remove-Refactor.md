# Remove-Refactor

> **Module:** GenXdev.Coding.PowerShell.Modules | **Type:** Function | **Aliases:** —

## Synopsis

> Удаляет наборы рефакторинга из системы настроек GenXdev.

## Description

Управляет наборами рефакторинга в системе настроек GenXdev, удаляя указанные записи. Работает как с пользовательскими, так и со стандартными наборами рефакторинга. Стандартные наборы защищены, если явно не разрешено их удаление. Все наборы рефакторинга идентифицируются префиксом "refactor_set_" в системе настроек.

## Syntax

```powershell
Remove-Refactor -Name <String[]> [-ClearSession] [-DefaultValue <String>] [-PreferencesDatabasePath <String>] [-RemoveDefault] [-SessionOnly] [-SkipSession] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-Name` | String[] | ✅ | ✅ (ByValue, ByPropertyName) | 0 | — | Название рефакторинга, принимает подстановочные знаки 🌐 *Supports wildcards* |
| `-RemoveDefault` | SwitchParameter | — | — | Named | — | Switch to also remove the standard refactor set |
| `-PreferencesDatabasePath` | String | — | — | Named | — | Путь к базе данных для файлов данных предпочтений |
| `-DefaultValue` | String | — | ✅ (ByPropertyName) | Named | — | Значение по умолчанию, если настройка не найдена |
| `-SessionOnly` | SwitchParameter | — | — | Named | — | Используйте альтернативные настройки, сохраненные в сессии, для предпочтений данных, таких как язык, пути к базам данных и т.д. |
| `-ClearSession` | SwitchParameter | — | — | Named | — | Очистите настройки сессии (глобальные переменные) перед получением |
| `-SkipSession` | SwitchParameter | — | — | Named | — | Не используйте альтернативные настройки, хранящиеся в сессии, для настроек данных, таких как язык, пути к базам данных и т.д. |

## Examples

### Remove-Refactor -Name "CustomRefactor" -RemoveDefault Removes a specific refactor set named "CustomRefactor" and allows removal of default sets if matched

```powershell
Remove-Refactor -Name "CustomRefactor" -RemoveDefault
Removes a specific refactor set named "CustomRefactor" and allows removal
of default sets if matched
```

## Related Links

- [Remove-Refactor on GitHub](https://github.com/genXdev/genXdev)

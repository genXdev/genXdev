# Get-GenXdevPreferenceNames

> **Module:** GenXdev.Data.Preferences | **Type:** Cmdlet | **Aliases:** `getPreferenceNames

## Synopsis

> Получает все имена настроек из хранилища сессий и базы данных.

## Description

* Извлекает уникальный список имен настроек, объединяя ключи из
  хранилища сессии (глобальные переменные), а также из локального хранилища
  и хранилища настроек по умолчанию.
* Учитывает параметры управления сессией для контроля того, какие источники
  запрашиваются.

## Syntax

```powershell
Get-GenXdevPreferenceNames [-SessionOnly] [-ClearSession] [-PreferencesDatabasePath <string>] [-SkipSession] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-SessionOnly` | SwitchParameter | — | — | Named | `False` | Используйте альтернативные настройки, сохраненные в сессии, для предпочтений данных, таких как язык, пути к базам данных и т.д. |
| `-ClearSession` | SwitchParameter | — | — | Named | `False` | Очистите настройки сессии (глобальные переменные) перед получением |
| `-PreferencesDatabasePath` | String | — | — | Named | — | Путь к базе данных для файлов данных предпочтений |
| `-SkipSession` | SwitchParameter | — | — | Named | `False` | Не используйте альтернативные настройки, хранящиеся в сессии, для настроек данных, таких как язык, пути к базам данных и т.д. |

## Examples

### Example 1

```powershell
Get-GenXdevPreferenceNames -PreferencesDatabasePath "C:\Data\prefs.db"
```

Возвращает отсортированный массив уникальных названий предпочтений из сессионного хранилища и обоих хранилищ, используя указанный путь к базе данных.

### Example 2

```powershell
getPreferenceNames -SessionOnly
```

Возвращает только имена предпочтений из хранилища сеансов.

### Example 3

```powershell
getPreferenceNames -SkipSession
```

Возвращает только имена предпочтений из хранилищ базы данных.

## Related Links

- [Get-GenXdevPreferenceNames on GitHub](https://github.com/genXdev/genXdev)

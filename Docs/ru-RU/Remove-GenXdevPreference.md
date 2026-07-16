# Remove-GenXdevPreference

> **Module:** GenXdev.Data.Preferences | **Type:** Cmdlet | **Aliases:** `removePreference

## Synopsis

> *(No synopsis provided)*

## Syntax

```powershell
Remove-GenXdevPreference [-Name] <string> [-RemoveDefault] [-SessionOnly] [-ClearSession] [-PreferencesDatabasePath <string>] [-SkipSession] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-Name` | String | ✅ | ✅ (ByValue, ByPropertyName) | 0 | — | Название настройки, которую нужно удалить |
| `-RemoveDefault` | SwitchParameter | — | — | 1 | `False` | Переключаемся на также удаление настройки из значений по умолчанию |
| `-SessionOnly` | SwitchParameter | — | — | Named | `False` | Используйте альтернативные настройки, сохраненные в сессии, для предпочтений данных, таких как язык, пути к базам данных и т.д. |
| `-ClearSession` | SwitchParameter | — | — | Named | `False` | Очистите настройки сессии (глобальные переменные) перед получением |
| `-PreferencesDatabasePath` | String | — | — | Named | — | Путь к базе данных для файлов данных предпочтений |
| `-SkipSession` | SwitchParameter | — | — | Named | `False` | Не используйте альтернативные настройки, хранящиеся в сессии, для настроек данных, таких как язык, пути к базам данных и т.д. |

## Related Links

- [Remove-GenXdevPreference on GitHub](https://github.com/genXdev/genXdev)

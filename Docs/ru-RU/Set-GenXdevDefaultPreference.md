# Set-GenXdevDefaultPreference

> **Module:** GenXdev.Data.Preferences | **Type:** Cmdlet | **Aliases:** `setPreferenceDefault

## Synopsis

> *(No synopsis provided)*

## Syntax

```powershell
Set-GenXdevDefaultPreference [-Name] <string> [[-Value] <string>] [[-PreferencesDatabasePath] <string>] [-SessionOnly] [-ClearSession] [-SkipSession] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-Name` | String | ✅ | ✅ (ByPropertyName) | 0 | — | Название настройки для установки в defaults |
| `-Value` | String | — | ✅ (ByPropertyName) | 1 | — | Значение, которое нужно сохранить для настройки |
| `-PreferencesDatabasePath` | String | — | — | 2 | — | Путь к базе данных для файлов данных предпочтений |
| `-SessionOnly` | SwitchParameter | — | — | Named | `False` | Используйте альтернативные настройки, сохраненные в сессии, для предпочтений данных, таких как язык, пути к базам данных и т.д. |
| `-ClearSession` | SwitchParameter | — | — | Named | `False` | Очистите настройки сессии (глобальные переменные) перед получением |
| `-SkipSession` | SwitchParameter | — | — | Named | `False` | Не используйте альтернативные настройки, хранящиеся в сессии, для настроек данных, таких как язык, пути к базам данных и т.д. |

## Related Links

- [Set-GenXdevDefaultPreference on GitHub](https://github.com/genXdev/genXdev)

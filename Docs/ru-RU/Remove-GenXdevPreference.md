# Remove-GenXdevPreference

> **Module:** GenXdev.Data.Preferences | **Type:** Cmdlet | **Aliases:** `removePreference

## Synopsis

> Удаляет значение предпочтения из хранилища предпочтений GenXdev.

## Description

* Удаляет значение предпочтения из локального хранилища и, опционально, из хранилища по умолчанию.
* Предоставляет два набора параметров — один только для локального удаления и другой для удаления как из локального, так и из хранилищ по умолчанию.
* Обеспечивает правильную синхронизацию при изменении хранилища по умолчанию.

## Syntax

```powershell
Remove-GenXdevPreference [-Name] <string> [-RemoveDefault] [-SessionOnly] [-ClearSession] [-PreferencesDatabasePath <string>] [-SkipSession] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-Name` | String | ✅ | ✅ (ByValue, ByPropertyName) | 0 | — | Название настройки, которую нужно удалить |
| `-RemoveDefault` | SwitchParameter | — | — | Named | `False` | Переключаемся на также удаление настройки из значений по умолчанию |
| `-SessionOnly` | SwitchParameter | — | — | Named | `False` | Используйте альтернативные настройки, сохраненные в сессии, для предпочтений данных, таких как язык, пути к базам данных и т.д. |
| `-ClearSession` | SwitchParameter | — | — | Named | `False` | Очистите настройки сессии (глобальные переменные) перед получением |
| `-PreferencesDatabasePath` | String | — | — | Named | — | Путь к базе данных для файлов данных предпочтений |
| `-SkipSession` | SwitchParameter | — | — | Named | `False` | Не используйте альтернативные настройки, хранящиеся в сессии, для настроек данных, таких как язык, пути к базам данных и т.д. |

## Examples

### Example 1

```powershell
Remove-GenXdevPreference -Name "Theme"
```

Удаляет предпочтение "Тема" только из локального хранилища.

### Example 2

```powershell
removePreference "Theme" -RemoveDefault
```

Удаляет настройку «Тема» как из локального хранилища, так и из хранилища по умолчанию.

## Related Links

- [Remove-GenXdevPreference on GitHub](https://github.com/genXdev/genXdev)

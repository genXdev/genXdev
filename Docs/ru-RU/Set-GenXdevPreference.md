# Set-GenXdevPreference

> **Module:** GenXdev.Data.Preferences | **Type:** Cmdlet | **Aliases:** `setPreference

## Synopsis

> Устанавливает значение предпочтения в хранилище предпочтений GenXdev.

## Description

* Управляет настройками в локальном хранилище GenXdev.
* Может устанавливать новые настройки, обновлять существующие или удалять их, если значение равно null или пусто.
* Настройки хранятся с синхронизацией, установленной на "Локально".

## Syntax

```powershell
Set-GenXdevPreference [-Name] <string> [[-Value] <string>] [-SessionOnly] [-ClearSession] [-PreferencesDatabasePath <string>] [-SkipSession] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-Name` | String | ✅ | ✅ (ByValue, ByPropertyName) | 0 | — | Название настройки, которую необходимо установить |
| `-Value` | String | — | ✅ (ByPropertyName) | 1 | — | Значение, которое нужно сохранить для настройки |
| `-SessionOnly` | SwitchParameter | — | — | Named | `False` | Используйте альтернативные настройки, сохраненные в сессии, для предпочтений данных, таких как язык, пути к базам данных и т.д. |
| `-ClearSession` | SwitchParameter | — | — | Named | `False` | Очистите настройки сессии (глобальные переменные) перед получением |
| `-PreferencesDatabasePath` | String | — | — | Named | — | Путь к базе данных для файлов данных предпочтений |
| `-SkipSession` | SwitchParameter | — | — | Named | `False` | Не используйте альтернативные настройки, хранящиеся в сессии, для настроек данных, таких как язык, пути к базам данных и т.д. |

## Examples

### Example 1

```powershell
Set-GenXdevPreference -Name "Theme" -Value "Dark"
```

Устанавливает предпочтение «Тема» на «Тёмная» в локальном хранилище.

### Example 2

```powershell
setPreference Theme Light
```

Использует псевдоним и позиционные параметры для установки темы оформления.

## Related Links

- [Set-GenXdevPreference on GitHub](https://github.com/genXdev/genXdev)

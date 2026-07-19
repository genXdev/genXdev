# Get-GenXdevPreferencesDatabasePath

> **Module:** GenXdev.Data.Preferences | **Type:** Cmdlet | **Aliases:** —

## Synopsis

> Возвращает настроенный путь к базе данных для файлов данных предпочтений, используемых в операциях GenXdev.Data.

## Description

* Получает глобальный путь к базе данных, используемый модулем GenXdev.Data для различных операций хранения настроек и данных.
* Сначала проверяет глобальные переменные (если не указан SkipSession), затем переходит к постоянным настройкам и, наконец, использует системные значения по умолчанию.

## Syntax

```powershell
Get-GenXdevPreferencesDatabasePath [[-PreferencesDatabasePath] <string>] [-SessionOnly] [-ClearSession] [-SkipSession] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-PreferencesDatabasePath` | String | — | — | 0 | — | Необязательное переопределение пути к базе данных |
| `-SessionOnly` | SwitchParameter | — | — | Named | `False` | Используйте альтернативные настройки, сохраненные в сессии, для предпочтений данных, таких как язык, пути к базам данных и т.д. |
| `-ClearSession` | SwitchParameter | — | — | Named | `False` | Очистите настройки сессии (глобальные переменные) перед получением |
| `-SkipSession` | SwitchParameter | — | — | Named | `False` | Не используйте альтернативные настройки, хранящиеся в сессии, для настроек данных, таких как язык, пути к базам данных и т.д. |

## Examples

### Example 1

```powershell
Get-GenXdevPreferencesDatabasePath
```

Извлекает путь к базе данных из глобальных переменных или настроек.

### Example 2

```powershell
Get-GenXdevPreferencesDatabasePath -SkipSession
```

Пропускает переменную сессии и использует постоянные настройки.

### Example 3

```powershell
Get-GenXdevPreferencesDatabasePath -ClearSession
```

Очищает настройку сеанса перед получением пути.

## Related Links

- [Get-GenXdevPreferencesDatabasePath on GitHub](https://github.com/genXdev/genXdev)

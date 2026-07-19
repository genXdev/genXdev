# Set-GenXdevPreferencesDatabasePath

> **Module:** GenXdev.Data.Preferences | **Type:** Cmdlet | **Aliases:** —

## Synopsis

> Устанавливает путь к базе данных для настроек, используемых в операциях GenXdev.Data.

## Description

* Конфигурирует глобальный путь к базе данных, используемый модулем GenXdev.Data для
  различных операций хранения предпочтений и работы с данными.
* Настройки хранятся в текущей сессии (с использованием глобальных переменных) и
  могут быть очищены из сессии (с помощью -ClearSession).

## Syntax

```powershell
Set-GenXdevPreferencesDatabasePath [[-PreferencesDatabasePath] <string>] [-SkipSession] [-SessionOnly] [-ClearSession] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-PreferencesDatabasePath` | String | — | — | 0 | — | Путь к базе данных, где хранятся файлы с пользовательскими предпочтениями |
| `-SkipSession` | SwitchParameter | — | — | Named | `False` | Не используйте альтернативные настройки, хранящиеся в сессии, для настроек данных, таких как язык, пути к базам данных и т.д. |
| `-SessionOnly` | SwitchParameter | — | — | Named | `False` | При указании сохраняет настройку только в текущем сеансе (глобальная переменная) без сохранения в настройках |
| `-ClearSession` | SwitchParameter | — | — | Named | `False` | При указании очищает только настройку сессии (глобальную переменную), не затрагивая постоянные предпочтения. |

## Examples

### Example 1

```powershell
Set-GenXdevPreferencesDatabasePath -PreferencesDatabasePath "C:\Data\Preferences.db"
```

Устанавливает путь к базе данных в текущей сессии (глобальная переменная).

### Example 2

```powershell
Set-GenXdevPreferencesDatabasePath "C:\MyPreferences.db"
```

Устанавливает путь к базе данных с использованием позиционного параметра.

### Example 3

```powershell
Set-GenXdevPreferencesDatabasePath "C:\TempPrefs.db" -SessionOnly
```

Устанавливает путь только для текущего сеанса без сохранения.

### Example 4

```powershell
Set-GenXdevPreferencesDatabasePath -ClearSession
```

Очищает глобальную переменную пути к базе данных.

## Related Links

- [Set-GenXdevPreferencesDatabasePath on GitHub](https://github.com/genXdev/genXdev)

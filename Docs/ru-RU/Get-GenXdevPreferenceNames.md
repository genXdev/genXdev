# Get-GenXdevPreferenceNames

> **Module:** GenXdev.Data.Preferences | **Type:** Cmdlet | **Aliases:** `getPreferenceNames`

## Synopsis

> Получает все имена настроек из хранилища сеанса и базы данных.

## Description

* Извлекает уникальный список имен настроек, объединяя ключи из
  хранилища сеанса (глобальные переменные) и из локального и стандартного
  хранилищ настроек.
* Учитывает параметры управления сеансом для управления тем, какие источники
  запрашиваются.

## Syntax

```powershell
Get-GenXdevPreferenceNames [-ClearSession] [-PreferencesDatabasePath <String>] [-SessionOnly] [-SkipSession] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-SessionOnly` | SwitchParameter | — | — | Named | `False` | Использовать альтернативные настройки, хранящиеся в сеансе, для параметров данных, таких как язык, пути к базам данных и т.д. |
| `-ClearSession` | SwitchParameter | — | — | Named | `False` | Очистите параметры сеанса (глобальную переменную) перед получением |
| `-PreferencesDatabasePath` | String | — | — | Named | — | Путь к базе данных для файлов данных предпочтений |
| `-SkipSession` | SwitchParameter | — | — | Named | `False` | Не используйте альтернативные настройки, сохраненные в сеансе, для параметров данных, таких как язык, пути к базам данных и т. д. |

## Examples

### Example 1

```powershell
Get-GenXdevPreferenceNames -PreferencesDatabasePath "C:\Data\prefs.db"
```

Возвращает отсортированный массив уникальных имен предпочтений из хранилища сеансов и обоих хранилищ, используя указанный путь к базе данных.

### Example 2

```powershell
getPreferenceNames -SessionOnly
```

Возвращает только имена предпочтений из хранилища сеанса.

### Example 3

```powershell
getPreferenceNames -SkipSession
```

Возвращает только имена параметров из хранилищ базы данных.

## Parameter Details

### `-SessionOnly`

> Использовать альтернативные настройки, хранящиеся в сеансе, для параметров данных, таких как язык, пути к базам данных и т.д.

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | `False` |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-ClearSession`

> Очистите параметры сеанса (глобальную переменную) перед получением

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | `False` |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-PreferencesDatabasePath <String>`

> Путь к базе данных для файлов данных предпочтений

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | `DatabasePath` |
| **Accept wildcard characters?** | No |

<hr/>
### `-SkipSession`

> Не используйте альтернативные настройки, сохраненные в сеансе, для параметров данных, таких как язык, пути к базам данных и т. д.

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | `False` |
| **Accept pipeline input?** | False |
| **Aliases** | `FromPreferences` |
| **Accept wildcard characters?** | No |

<hr/>
## Related Links

- [Get-GenXdevPreference](https://github.com/genXdev/genXdev/blob/main/Docs/ru-RU/Get-GenXdevPreference.md)
- [Get-GenXdevPreferencesDatabasePath](https://github.com/genXdev/genXdev/blob/main/Docs/ru-RU/Get-GenXdevPreferencesDatabasePath.md)
- [Remove-GenXdevPreference](https://github.com/genXdev/genXdev/blob/main/Docs/ru-RU/Remove-GenXdevPreference.md)
- [Set-GenXdevDefaultPreference](https://github.com/genXdev/genXdev/blob/main/Docs/ru-RU/Set-GenXdevDefaultPreference.md)
- [Set-GenXdevPreference](https://github.com/genXdev/genXdev/blob/main/Docs/ru-RU/Set-GenXdevPreference.md)
- [Set-GenXdevPreferencesDatabasePath](https://github.com/genXdev/genXdev/blob/main/Docs/ru-RU/Set-GenXdevPreferencesDatabasePath.md)

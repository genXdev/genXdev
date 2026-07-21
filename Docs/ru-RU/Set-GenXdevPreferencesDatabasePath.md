# Set-GenXdevPreferencesDatabasePath

> **Module:** GenXdev.Data.Preferences | **Type:** Cmdlet | **Aliases:** —

## Synopsis

> Устанавливает путь к базе данных для настроек, используемых в операциях GenXdev.Data.

## Description

* Настраивает глобальный путь к базе данных, используемый модулем GenXdev.Data для
  различных операций хранения предпочтений и данных.
* Настройки хранятся в текущем сеансе (с использованием глобальных переменных) и
  могут быть очищены из сеанса (с помощью -ClearSession).

## Syntax

```powershell
Set-GenXdevPreferencesDatabasePath [[-PreferencesDatabasePath] <String>] [-ClearSession] [-SessionOnly] [-SkipSession] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-PreferencesDatabasePath` | String | — | — | 0 | — | Путь к базе данных, где находятся файлы данных параметров |
| `-SkipSession` | SwitchParameter | — | — | Named | `False` | Не используйте альтернативные настройки, сохраненные в сеансе, для параметров данных, таких как язык, пути к базам данных и т. д. |
| `-SessionOnly` | SwitchParameter | — | — | Named | `False` | При указании сохраняет настройку только в текущем сеансе (глобальная переменная) без сохранения в параметрах |
| `-ClearSession` | SwitchParameter | — | — | Named | `False` | При указании удаляет только настройку сеанса (глобальную переменную), не затрагивая постоянные предпочтения. |

## Examples

### Example 1

```powershell
Set-GenXdevPreferencesDatabasePath -PreferencesDatabasePath "C:\Data\Preferences.db"
```

Задает путь к базе данных в текущем сеансе (глобальная переменная).

### Example 2

```powershell
Set-GenXdevPreferencesDatabasePath "C:\MyPreferences.db"
```

Устанавливает путь к базе данных с помощью позиционного параметра.

### Example 3

```powershell
Set-GenXdevPreferencesDatabasePath "C:\TempPrefs.db" -SessionOnly
```

Устанавливает путь только для текущего сеанса без сохранения.

### Example 4

```powershell
Set-GenXdevPreferencesDatabasePath -ClearSession
```

Очищает глобальную переменную для пути к базе данных.

## Parameter Details

### `-PreferencesDatabasePath <String>`

> Путь к базе данных, где находятся файлы данных параметров

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | 0 |
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
### `-SessionOnly`

> При указании сохраняет настройку только в текущем сеансе (глобальная переменная) без сохранения в параметрах

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

> При указании удаляет только настройку сеанса (глобальную переменную), не затрагивая постоянные предпочтения.

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | `False` |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
## Related Links

- [Get-GenXdevPreference](https://github.com/genXdev/genXdev/blob/main/Docs/ru-RU/Get-GenXdevPreference.md)
- [Get-GenXdevPreferenceNames](https://github.com/genXdev/genXdev/blob/main/Docs/ru-RU/Get-GenXdevPreferenceNames.md)
- [Get-GenXdevPreferencesDatabasePath](https://github.com/genXdev/genXdev/blob/main/Docs/ru-RU/Get-GenXdevPreferencesDatabasePath.md)
- [Remove-GenXdevPreference](https://github.com/genXdev/genXdev/blob/main/Docs/ru-RU/Remove-GenXdevPreference.md)
- [Set-GenXdevDefaultPreference](https://github.com/genXdev/genXdev/blob/main/Docs/ru-RU/Set-GenXdevDefaultPreference.md)
- [Set-GenXdevPreference](https://github.com/genXdev/genXdev/blob/main/Docs/ru-RU/Set-GenXdevPreference.md)

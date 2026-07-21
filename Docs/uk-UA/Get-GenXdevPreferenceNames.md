# Get-GenXdevPreferenceNames

> **Module:** GenXdev.Data.Preferences | **Type:** Cmdlet | **Aliases:** `getPreferenceNames`

## Synopsis

> Отримує всі назви налаштувань із сховища сеансу та баз даних.

## Description

* Отримує унікальний список назв налаштувань, поєднуючи ключі з
  сесійного сховища (глобальні змінні) та як локального, так і стандартного
  сховищ налаштувань.
* Враховує параметри керування сеансом, щоб контролювати, які джерела
  опитуються.

## Syntax

```powershell
Get-GenXdevPreferenceNames [-ClearSession] [-PreferencesDatabasePath <String>] [-SessionOnly] [-SkipSession] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-SessionOnly` | SwitchParameter | — | — | Named | `False` | Використовуйте альтернативні налаштування, збережені в сеансі, для параметрів даних, таких як мова, шляхи до баз даних тощо. |
| `-ClearSession` | SwitchParameter | — | — | Named | `False` | Очистити налаштування сеансу (глобальну змінну) перед отриманням |
| `-PreferencesDatabasePath` | String | — | — | Named | — | Шлях до бази даних для файлів налаштувань |
| `-SkipSession` | SwitchParameter | — | — | Named | `False` | Не використовуйте альтернативні налаштування, збережені в сесії, для налаштувань даних, таких як мова, шляхи до баз даних тощо |

## Examples

### Example 1

```powershell
Get-GenXdevPreferenceNames -PreferencesDatabasePath "C:\Data\prefs.db"
```

Повертає відсортований масив унікальних назв параметрів із сеансового сховища та обох сховищ, використовуючи вказаний шлях до бази даних.

### Example 2

```powershell
getPreferenceNames -SessionOnly
```

Повертає лише назви параметрів із сховища сесії.

### Example 3

```powershell
getPreferenceNames -SkipSession
```

Повертає лише назви параметрів зі сховищ бази даних.

## Parameter Details

### `-SessionOnly`

> Використовуйте альтернативні налаштування, збережені в сеансі, для параметрів даних, таких як мова, шляхи до баз даних тощо.

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

> Очистити налаштування сеансу (глобальну змінну) перед отриманням

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

> Шлях до бази даних для файлів налаштувань

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

> Не використовуйте альтернативні налаштування, збережені в сесії, для налаштувань даних, таких як мова, шляхи до баз даних тощо

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

- [Get-GenXdevPreference](https://github.com/genXdev/genXdev/blob/main/Docs/uk-UA/Get-GenXdevPreference.md)
- [Get-GenXdevPreferencesDatabasePath](https://github.com/genXdev/genXdev/blob/main/Docs/uk-UA/Get-GenXdevPreferencesDatabasePath.md)
- [Remove-GenXdevPreference](https://github.com/genXdev/genXdev/blob/main/Docs/uk-UA/Remove-GenXdevPreference.md)
- [Set-GenXdevDefaultPreference](https://github.com/genXdev/genXdev/blob/main/Docs/uk-UA/Set-GenXdevDefaultPreference.md)
- [Set-GenXdevPreference](https://github.com/genXdev/genXdev/blob/main/Docs/uk-UA/Set-GenXdevPreference.md)
- [Set-GenXdevPreferencesDatabasePath](https://github.com/genXdev/genXdev/blob/main/Docs/uk-UA/Set-GenXdevPreferencesDatabasePath.md)

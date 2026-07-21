# Get-GenXdevPreferencesDatabasePath

> **Module:** GenXdev.Data.Preferences | **Type:** Cmdlet | **Aliases:** —

## Synopsis

> Отримує налаштований шлях до бази даних для файлів даних налаштувань, що використовуються в операціях GenXdev.Data.

## Description

* Отримує глобальний шлях до бази даних, який використовується модулем GenXdev.Data для
  різноманітного зберігання налаштувань та операцій з даними.
* Спочатку перевіряє глобальні змінні (якщо не вказано SkipSession), потім
  звертається до постійних налаштувань, і нарешті використовує системні значення за замовчуванням.

## Syntax

```powershell
Get-GenXdevPreferencesDatabasePath [[-PreferencesDatabasePath] <String>] [-ClearSession] [-SessionOnly] [-SkipSession] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-PreferencesDatabasePath` | String | — | — | 0 | — | Необов'язкове перевизначення шляху до бази даних |
| `-SessionOnly` | SwitchParameter | — | — | Named | `False` | Використовуйте альтернативні налаштування, збережені в сеансі, для параметрів даних, таких як мова, шляхи до баз даних тощо. |
| `-ClearSession` | SwitchParameter | — | — | Named | `False` | Очистити налаштування сеансу (глобальну змінну) перед отриманням |
| `-SkipSession` | SwitchParameter | — | — | Named | `False` | Не використовуйте альтернативні налаштування, збережені в сесії, для налаштувань даних, таких як мова, шляхи до баз даних тощо |

## Examples

### Example 1

```powershell
Get-GenXdevPreferencesDatabasePath
```

Отримує шлях до бази даних з глобальних змінних або налаштувань.

### Example 2

```powershell
Get-GenXdevPreferencesDatabasePath -SkipSession
```

Пропускає змінну сеансу та використовує постійні налаштування.

### Example 3

```powershell
Get-GenXdevPreferencesDatabasePath -ClearSession
```

Очищує налаштування сеансу перед отриманням шляху.

## Parameter Details

### `-PreferencesDatabasePath <String>`

> Необов'язкове перевизначення шляху до бази даних

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | 0 |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | `DatabasePath` |
| **Accept wildcard characters?** | No |

<hr/>
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
- [Get-GenXdevPreferenceNames](https://github.com/genXdev/genXdev/blob/main/Docs/uk-UA/Get-GenXdevPreferenceNames.md)
- [Remove-GenXdevPreference](https://github.com/genXdev/genXdev/blob/main/Docs/uk-UA/Remove-GenXdevPreference.md)
- [Set-GenXdevDefaultPreference](https://github.com/genXdev/genXdev/blob/main/Docs/uk-UA/Set-GenXdevDefaultPreference.md)
- [Set-GenXdevPreference](https://github.com/genXdev/genXdev/blob/main/Docs/uk-UA/Set-GenXdevPreference.md)
- [Set-GenXdevPreferencesDatabasePath](https://github.com/genXdev/genXdev/blob/main/Docs/uk-UA/Set-GenXdevPreferencesDatabasePath.md)

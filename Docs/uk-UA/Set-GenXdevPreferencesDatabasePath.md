# Set-GenXdevPreferencesDatabasePath

> **Module:** GenXdev.Data.Preferences | **Type:** Cmdlet | **Aliases:** —

## Synopsis

> Встановлює шлях до бази даних для налаштувань, що використовуються в операціях GenXdev.Data.

## Description

* Налаштовує глобальний шлях до бази даних, який використовується модулем GenXdev.Data для зберігання різних налаштувань та виконання операцій з даними.
* Налаштування зберігаються в поточному сеансі (за допомогою глобальних змінних) і можуть бути очищені з сеансу (за допомогою -ClearSession).

## Syntax

```powershell
Set-GenXdevPreferencesDatabasePath [[-PreferencesDatabasePath] <String>] [-ClearSession] [-SessionOnly] [-SkipSession] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-PreferencesDatabasePath` | String | — | — | 0 | — | Шлях до бази даних, де розташовані файли даних налаштувань |
| `-SkipSession` | SwitchParameter | — | — | Named | `False` | Не використовуйте альтернативні налаштування, збережені в сесії, для налаштувань даних, таких як мова, шляхи до баз даних тощо |
| `-SessionOnly` | SwitchParameter | — | — | Named | `False` | Якщо вказано, зберігає параметр лише в поточному сеансі (глобальна змінна) без збереження в параметрах налаштувань |
| `-ClearSession` | SwitchParameter | — | — | Named | `False` | Якщо вказано, очищує лише налаштування сеансу (глобальна змінна), не впливаючи на постійні параметри. |

## Examples

### Example 1

```powershell
Set-GenXdevPreferencesDatabasePath -PreferencesDatabasePath "C:\Data\Preferences.db"
```

Встановлює шлях до бази даних у поточному сеансі (Глобальна змінна).

### Example 2

```powershell
Set-GenXdevPreferencesDatabasePath "C:\MyPreferences.db"
```

Встановлює шлях до бази даних за допомогою позиційного параметра.

### Example 3

```powershell
Set-GenXdevPreferencesDatabasePath "C:\TempPrefs.db" -SessionOnly
```

Встановлює шлях лише для поточного сеансу без збереження.

### Example 4

```powershell
Set-GenXdevPreferencesDatabasePath -ClearSession
```

Очищає глобальну змінну для шляху до бази даних.

## Parameter Details

### `-PreferencesDatabasePath <String>`

> Шлях до бази даних, де розташовані файли даних налаштувань

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
### `-SessionOnly`

> Якщо вказано, зберігає параметр лише в поточному сеансі (глобальна змінна) без збереження в параметрах налаштувань

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

> Якщо вказано, очищує лише налаштування сеансу (глобальна змінна), не впливаючи на постійні параметри.

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

- [Get-GenXdevPreference](https://github.com/genXdev/genXdev/blob/main/Docs/uk-UA/Get-GenXdevPreference.md)
- [Get-GenXdevPreferenceNames](https://github.com/genXdev/genXdev/blob/main/Docs/uk-UA/Get-GenXdevPreferenceNames.md)
- [Get-GenXdevPreferencesDatabasePath](https://github.com/genXdev/genXdev/blob/main/Docs/uk-UA/Get-GenXdevPreferencesDatabasePath.md)
- [Remove-GenXdevPreference](https://github.com/genXdev/genXdev/blob/main/Docs/uk-UA/Remove-GenXdevPreference.md)
- [Set-GenXdevDefaultPreference](https://github.com/genXdev/genXdev/blob/main/Docs/uk-UA/Set-GenXdevDefaultPreference.md)
- [Set-GenXdevPreference](https://github.com/genXdev/genXdev/blob/main/Docs/uk-UA/Set-GenXdevPreference.md)

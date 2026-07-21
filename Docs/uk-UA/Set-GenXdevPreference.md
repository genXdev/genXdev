# Set-GenXdevPreference

> **Module:** GenXdev.Data.Preferences | **Type:** Cmdlet | **Aliases:** `setPreference`

## Synopsis

> Встановлює значення параметра в сховищі налаштувань GenXdev.

## Description

* Керує налаштуваннями в локальному сховищі GenXdev.
* Може встановлювати нові налаштування, оновлювати наявні або видаляти їх, коли надано нульове/порожнє значення.
* Налаштування зберігаються з синхронізацією, встановленою на "Локальне".

## Syntax

```powershell
Set-GenXdevPreference -Name <String> [[-Value] <String>] [-ClearSession] [-PreferencesDatabasePath <String>] [-SessionOnly] [-SkipSession] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-Name` | String | ✅ | ✅ (ByValue, ByPropertyName) | 0 | — | Назва параметра для встановлення |
| `-Value` | String | — | ✅ (ByPropertyName) | 1 | — | Значення, яке потрібно зберегти для налаштування |
| `-SessionOnly` | SwitchParameter | — | — | Named | `False` | Використовуйте альтернативні налаштування, збережені в сеансі, для параметрів даних, таких як мова, шляхи до баз даних тощо. |
| `-ClearSession` | SwitchParameter | — | — | Named | `False` | Очистити налаштування сеансу (глобальну змінну) перед отриманням |
| `-PreferencesDatabasePath` | String | — | — | Named | — | Шлях до бази даних для файлів налаштувань |
| `-SkipSession` | SwitchParameter | — | — | Named | `False` | Не використовуйте альтернативні налаштування, збережені в сесії, для налаштувань даних, таких як мова, шляхи до баз даних тощо |

## Examples

### Example 1

```powershell
Set-GenXdevPreference -Name "Theme" -Value "Dark"
```

Встановлює параметр «Тема» на «Темна» у локальному сховищі.

### Example 2

```powershell
setPreference Theme Light
```

Використовує псевдонім та позиційні параметри для встановлення теми за замовчуванням.

## Parameter Details

### `-Name <String>`

> Назва параметра для встановлення

| Property | Value |
|:---|:---|
| **Required?** | Yes |
| **Position?** | 0 |
| **Default value** | *(none)* |
| **Accept pipeline input?** | True (ByValue, ByPropertyName) |
| **Aliases** | `PreferenceName` |
| **Accept wildcard characters?** | No |

<hr/>
### `-Value <String>`

> Значення, яке потрібно зберегти для налаштування

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | 1 |
| **Default value** | *(none)* |
| **Accept pipeline input?** | True (ByPropertyName) |
| **Aliases** | `PreferenceValue` |
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
- [Get-GenXdevPreferenceNames](https://github.com/genXdev/genXdev/blob/main/Docs/uk-UA/Get-GenXdevPreferenceNames.md)
- [Get-GenXdevPreferencesDatabasePath](https://github.com/genXdev/genXdev/blob/main/Docs/uk-UA/Get-GenXdevPreferencesDatabasePath.md)
- [Remove-GenXdevPreference](https://github.com/genXdev/genXdev/blob/main/Docs/uk-UA/Remove-GenXdevPreference.md)
- [Set-GenXdevDefaultPreference](https://github.com/genXdev/genXdev/blob/main/Docs/uk-UA/Set-GenXdevDefaultPreference.md)
- [Set-GenXdevPreferencesDatabasePath](https://github.com/genXdev/genXdev/blob/main/Docs/uk-UA/Set-GenXdevPreferencesDatabasePath.md)

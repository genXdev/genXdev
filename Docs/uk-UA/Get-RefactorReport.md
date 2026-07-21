# Get-RefactorReport

> **Module:** GenXdev.Coding | **Type:** Cmdlet | **Aliases:** `refactorreport`

## Synopsis

> Генерує детальний звіт операцій рефакторингу та їх статус.

## Description

Аналізує та звітує про прогрес операцій рефакторингу шляхом перевірки їх поточного стану, статусу завершення та порушених функцій. Надає вивід у структурованому форматі хеш-таблиці або у вигляді вирівняних текстових стовпців для читання. Звіт включає назву рефакторингу, ключ підказки, пріоритет, статус, кількість функцій та відсоток завершення.

## Syntax

```powershell
Get-RefactorReport [[-Name] <String[]>] [-AsText] [-ClearSession] [-PreferencesDatabasePath <String>] [-SessionOnly] [-SkipSession] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-Name` | String[] | — | ✅ (ByValue, ByPropertyName) | 0 | — | Назва рефакторингу, приймає символи підстановки 🌐 *Supports wildcards* |
| `-PreferencesDatabasePath` | String | — | — | Named | — | Вказує шлях до файлу бази даних налаштувань. |
| `-SessionOnly` | SwitchParameter | — | — | Named | `False` | Якщо встановлено, використовувати лише кеш сеансу для даних рефакторингу. |
| `-ClearSession` | SwitchParameter | — | — | Named | `False` | Якщо встановлено, очистити кеш сеансу перед запуском. |
| `-SkipSession` | SwitchParameter | — | — | Named | `False` | Якщо встановлено, пропустити завантаження кешу сеансу. |
| `-AsText` | SwitchParameter | — | — | Named | `False` | Вивести звіт у текстовому форматі замість Hashtable |

## Examples

### Example 1

```powershell
Get-RefactorReport -Name "DatabaseRefactor" -AsText
```

Створює текстовий звіт для рефакторингів, що відповідають "DatabaseRefactor".

### Example 2

```powershell
refactorreport "*"
```

Створює звіт хеш-таблиці для всіх рефакторингів з використанням псевдоніма.

## Parameter Details

### `-Name <String[]>`

> Назва рефакторингу, приймає символи підстановки

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | 0 |
| **Default value** | *(none)* |
| **Accept pipeline input?** | True (ByValue, ByPropertyName) |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | Yes |

<hr/>
### `-PreferencesDatabasePath <String>`

> Вказує шлях до файлу бази даних налаштувань.

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | `DatabasePath` |
| **Accept wildcard characters?** | No |

<hr/>
### `-SessionOnly`

> Якщо встановлено, використовувати лише кеш сеансу для даних рефакторингу.

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

> Якщо встановлено, очистити кеш сеансу перед запуском.

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

> Якщо встановлено, пропустити завантаження кешу сеансу.

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | `False` |
| **Accept pipeline input?** | False |
| **Aliases** | `FromPreferences` |
| **Accept wildcard characters?** | No |

<hr/>
### `-AsText`

> Вивести звіт у текстовому форматі замість Hashtable

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | `False` |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
## Outputs


## Related Links

- [Add-FeatureLineToREADME](https://github.com/genXdev/genXdev/blob/main/Docs/uk-UA/Add-FeatureLineToREADME.md)
- [Add-IdeaLineToREADME](https://github.com/genXdev/genXdev/blob/main/Docs/uk-UA/Add-IdeaLineToREADME.md)
- [Add-IssueLineToREADME](https://github.com/genXdev/genXdev/blob/main/Docs/uk-UA/Add-IssueLineToREADME.md)
- [Add-LineToREADME](https://github.com/genXdev/genXdev/blob/main/Docs/uk-UA/Add-LineToREADME.md)
- [Add-ReleaseNoteLineToREADME](https://github.com/genXdev/genXdev/blob/main/Docs/uk-UA/Add-ReleaseNoteLineToREADME.md)
- [Add-TodoLineToREADME](https://github.com/genXdev/genXdev/blob/main/Docs/uk-UA/Add-TodoLineToREADME.md)
- [Get-Features](https://github.com/genXdev/genXdev/blob/main/Docs/uk-UA/Get-Features.md)
- [Get-Ideas](https://github.com/genXdev/genXdev/blob/main/Docs/uk-UA/Get-Ideas.md)
- [Get-Issues](https://github.com/genXdev/genXdev/blob/main/Docs/uk-UA/Get-Issues.md)
- [Get-Refactor](https://github.com/genXdev/genXdev/blob/main/Docs/uk-UA/Get-Refactor.md)
- [Get-ReleaseNotes](https://github.com/genXdev/genXdev/blob/main/Docs/uk-UA/Get-ReleaseNotes.md)
- [Get-Todoos](https://github.com/genXdev/genXdev/blob/main/Docs/uk-UA/Get-Todoos.md)
- [New-Refactor](https://github.com/genXdev/genXdev/blob/main/Docs/uk-UA/New-Refactor.md)
- [Open-SourceFileInIde](https://github.com/genXdev/genXdev/blob/main/Docs/uk-UA/Open-SourceFileInIde.md)
- [Publish-ReleaseNotesToManifest](https://github.com/genXdev/genXdev/blob/main/Docs/uk-UA/Publish-ReleaseNotesToManifest.md)
- [Remove-Refactor](https://github.com/genXdev/genXdev/blob/main/Docs/uk-UA/Remove-Refactor.md)
- [Start-NextRefactor](https://github.com/genXdev/genXdev/blob/main/Docs/uk-UA/Start-NextRefactor.md)
- [Update-Refactor](https://github.com/genXdev/genXdev/blob/main/Docs/uk-UA/Update-Refactor.md)
- [VSCode](https://github.com/genXdev/genXdev/blob/main/Docs/uk-UA/VSCode.md)

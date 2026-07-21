# Add-IdeaLineToREADME

> **Module:** GenXdev.Coding | **Type:** Function | **Aliases:** `idea`

## Synopsis

> Додає елемент ідеї до файлу README.md.

## Description

Додає ідею з часовою міткою до розділу "## Ideas" файлу README.md.
Може відображати змінений розділ та відкривати його у Visual Studio Code.

## Syntax

```powershell
Add-IdeaLineToREADME [[-Line] <String>] [-Ascending] [-Code] [-First <Int32>] [-Priority <Int32>] [-Show] [-SortByDate] [-UseHomeREADME] [-UseOneDriveREADME] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-Line` | String | — | — | 0 | `''` | Текст ідеї для додавання |
| `-Code` | SwitchParameter | — | — | Named | — | Відкрити README у Visual Studio Code |
| `-Show` | SwitchParameter | — | — | Named | — | .SYNOPSIS
    Керування підтримкою індексації для файлових зберігань.
.DESCRIPTION
    Командлет Enable-FileStoreIndexingService дозволяє або вимикає індексацію для файлового зберігання.
    Використовуйте цей командлет, щоб увімкнути або вимкнути службу індексації на файловому сховищі.
    Індексація файлового сховища може покращити час пошуку вмісту файлового сервера.
    Ми рекомендуємо вмикати індексацію лише на файлових сховищах з великою кількістю файлів, коли продуктивність пошуку є критично важливою.
    Служба індексації може споживати значні системні ресурси.
    Споживання ресурсів пропорційне кількості файлів на файловому сховищі, яке індексується.
    Використовуйте командлет Disable-FileStoreIndexingService, щоб вимкнути індексацію на файловому сховищі.
.PARAMETER ComputerName
    Вказує ім'я комп'ютера або повністю кваліфіковане ім'я (FQDN) видаленого комп'ютера, на якому розташоване файлове сховище.
    Якщо не вказано, використовується локальний комп'ютер.
.PARAMETER Credential
    Вказує обліковий запис користувача, який має дозвіл на виконання цієї дії.
    Якщо не вказано, використовується поточний користувач.
.INPUTS
    System.String[]
.OUTPUTS
    Microsoft.Management.Infrastructure.CimInstance#MSFT_FileStoreIndexing
.EXAMPLE
    PS C:\> Enable-FileStoreIndexingService -Verbose

    NAME
        Enable-FileStoreIndexingService
    SYNOPSIS
        Керування підтримкою індексації для файлових зберігань.

    SYNTAX
        Enable-FileStoreIndexingService [[-ComputerName] <String>] [[-Credential] <PSCredential>] [<CommonParameters>]

    DESCRIPTION
        Цей приклад вмикає службу індексації на локальному комп'ютері. |
| `-UseHomeREADME` | SwitchParameter | — | — | Named | — | Використати README в каталозі профілю PowerShell |
| `-UseOneDriveREADME` | SwitchParameter | — | — | Named | — | Використовуйте README в каталозі OneDrive |
| `-Priority` | Int32 | — | — | Named | `1` | Пріоритет для сортування (вище = показується першим, за замовчуванням 1) |
| `-SortByDate` | SwitchParameter | — | — | Named | — | Сортувати рядки за датою (префікс yyyyMMdd) замість пріоритету |
| `-Ascending` | SwitchParameter | — | — | Named | — | Змінити порядок сортування на зворотний (за зростанням замість спадання) |
| `-First` | Int32 | — | — | Named | `0` | Limit - Обмежити вивід першими N рядками |

## Examples

### Add-IdeaLineToREADME -Line "Create new PowerShell module" -Show

```powershell
Add-IdeaLineToREADME -Line "Create new PowerShell module" -Show
```

### idea "New feature idea" -UseOneDriveREADME

```powershell
idea "New feature idea" -UseOneDriveREADME
```

## Parameter Details

### `-Line <String>`

> Текст ідеї для додавання

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | 0 |
| **Default value** | `''` |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-Code`

> Відкрити README у Visual Studio Code

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-Show`

> .SYNOPSIS
    Керування підтримкою індексації для файлових зберігань.
.DESCRIPTION
    Командлет Enable-FileStoreIndexingService дозволяє або вимикає індексацію для файлового зберігання.
    Використовуйте цей командлет, щоб увімкнути або вимкнути службу індексації на файловому сховищі.
    Індексація файлового сховища може покращити час пошуку вмісту файлового сервера.
    Ми рекомендуємо вмикати індексацію лише на файлових сховищах з великою кількістю файлів, коли продуктивність пошуку є критично важливою.
    Служба індексації може споживати значні системні ресурси.
    Споживання ресурсів пропорційне кількості файлів на файловому сховищі, яке індексується.
    Використовуйте командлет Disable-FileStoreIndexingService, щоб вимкнути індексацію на файловому сховищі.
.PARAMETER ComputerName
    Вказує ім'я комп'ютера або повністю кваліфіковане ім'я (FQDN) видаленого комп'ютера, на якому розташоване файлове сховище.
    Якщо не вказано, використовується локальний комп'ютер.
.PARAMETER Credential
    Вказує обліковий запис користувача, який має дозвіл на виконання цієї дії.
    Якщо не вказано, використовується поточний користувач.
.INPUTS
    System.String[]
.OUTPUTS
    Microsoft.Management.Infrastructure.CimInstance#MSFT_FileStoreIndexing
.EXAMPLE
    PS C:\> Enable-FileStoreIndexingService -Verbose

    NAME
        Enable-FileStoreIndexingService
    SYNOPSIS
        Керування підтримкою індексації для файлових зберігань.

    SYNTAX
        Enable-FileStoreIndexingService [[-ComputerName] <String>] [[-Credential] <PSCredential>] [<CommonParameters>]

    DESCRIPTION
        Цей приклад вмикає службу індексації на локальному комп'ютері.

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-UseHomeREADME`

> Використати README в каталозі профілю PowerShell

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-UseOneDriveREADME`

> Використовуйте README в каталозі OneDrive

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-Priority <Int32>`

> Пріоритет для сортування (вище = показується першим, за замовчуванням 1)

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | `1` |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-SortByDate`

> Сортувати рядки за датою (префікс yyyyMMdd) замість пріоритету

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-Ascending`

> Змінити порядок сортування на зворотний (за зростанням замість спадання)

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-First <Int32>`

> Limit - Обмежити вивід першими N рядками

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | `0` |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
## Related Links

- [Add-FeatureLineToREADME](https://github.com/genXdev/genXdev/blob/main/Docs/uk-UA/Add-FeatureLineToREADME.md)
- [Add-IssueLineToREADME](https://github.com/genXdev/genXdev/blob/main/Docs/uk-UA/Add-IssueLineToREADME.md)
- [Add-LineToREADME](https://github.com/genXdev/genXdev/blob/main/Docs/uk-UA/Add-LineToREADME.md)
- [Add-ReleaseNoteLineToREADME](https://github.com/genXdev/genXdev/blob/main/Docs/uk-UA/Add-ReleaseNoteLineToREADME.md)
- [Add-TodoLineToREADME](https://github.com/genXdev/genXdev/blob/main/Docs/uk-UA/Add-TodoLineToREADME.md)
- [Get-Features](https://github.com/genXdev/genXdev/blob/main/Docs/uk-UA/Get-Features.md)
- [Get-Ideas](https://github.com/genXdev/genXdev/blob/main/Docs/uk-UA/Get-Ideas.md)
- [Get-Issues](https://github.com/genXdev/genXdev/blob/main/Docs/uk-UA/Get-Issues.md)
- [Get-Refactor](https://github.com/genXdev/genXdev/blob/main/Docs/uk-UA/Get-Refactor.md)
- [Get-RefactorReport](https://github.com/genXdev/genXdev/blob/main/Docs/uk-UA/Get-RefactorReport.md)
- [Get-ReleaseNotes](https://github.com/genXdev/genXdev/blob/main/Docs/uk-UA/Get-ReleaseNotes.md)
- [Get-Todoos](https://github.com/genXdev/genXdev/blob/main/Docs/uk-UA/Get-Todoos.md)
- [New-Refactor](https://github.com/genXdev/genXdev/blob/main/Docs/uk-UA/New-Refactor.md)
- [Open-SourceFileInIde](https://github.com/genXdev/genXdev/blob/main/Docs/uk-UA/Open-SourceFileInIde.md)
- [Publish-ReleaseNotesToManifest](https://github.com/genXdev/genXdev/blob/main/Docs/uk-UA/Publish-ReleaseNotesToManifest.md)
- [Remove-Refactor](https://github.com/genXdev/genXdev/blob/main/Docs/uk-UA/Remove-Refactor.md)
- [Start-NextRefactor](https://github.com/genXdev/genXdev/blob/main/Docs/uk-UA/Start-NextRefactor.md)
- [Update-Refactor](https://github.com/genXdev/genXdev/blob/main/Docs/uk-UA/Update-Refactor.md)
- [VSCode](https://github.com/genXdev/genXdev/blob/main/Docs/uk-UA/VSCode.md)

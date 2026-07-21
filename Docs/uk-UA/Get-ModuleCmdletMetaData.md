# Get-ModuleCmdletMetaData

> **Module:** GenXdev.Coding.PowerShell.Modules | **Type:** Function | **Aliases:** —

## Synopsis

> Отримує метадані для всіх командлетів у модулі PowerShell.

## Description

Отримує повні метадані командлетів (короткий опис, опис, параметри, приклади, вихідні дані та псевдоніми) для кожного командлета у вказаному модулі, додаючи властивості SubModuleName та CmdletType до кожного результату.

Призначення підмодуля використовує два незалежні шляхи:

- Командлети-сценарії (.ps1): вихідний файл зіставляється з відображеннями каталогів dot-source .psm1 (Functions\<SubModuleName>\FileName.ps1).
- Скомпільовані командлети (.dll): простір імен з ImplementationType.Namespace (наприклад, GenXdev.FileSystem).

## Syntax

```powershell
Get-ModuleCmdletMetaData -ModuleName <String> [-ApiEndpoint <String>] [-ApiKey <String>] [-Language <String>] [-Model <String>] [-NoSupportForJsonSchema <String>] [-SkipTranslation] [-TranslationInstructions <String>] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-ModuleName` | String | ✅ | — | 0 | — | Ім'я модуля PowerShell, для якого потрібно отримати метадані командлета |
| `-Language` | String | — | — | Named | — | uk-UA |
| `-Model` | String | — | — | Named | — | Ідентифікатор або шаблон моделі для використання в AI-перекладах |
| `-ApiEndpoint` | String | — | — | Named | — | Кінцева точка URL API для перекладів з використанням штучного інтелекту |
| `-ApiKey` | String | — | — | Named | — | Ключ API для автентифікованих перекладів штучного інтелекту |
| `-NoSupportForJsonSchema` | String | — | — | Named | — | Вказує, що LLM не підтримує JSON-схеми |
| `-TranslationInstructions` | String | — | — | Named | — | .SYNOPSIS
    Псевдонім Add-Content для додавання вмісту до елемента.
.DESCRIPTION
    Цей командлет додає вміст до вказаного елемента, такого як файл або змінна. Ви можете вказати вміст як рядок або з конвеєра.
.PARAMETER Path
    Шлях до елемента, до якого додається вміст.
.PARAMETER Value
    Вміст для додавання. Це може бути рядок або масив рядків.
.PARAMETER PassThru
    Повертає об'єкт, що представляє доданий вміст. За замовчуванням цей командлет не генерує жодних вихідних даних.
.PARAMETER Encoding
    Вказує тип кодування для цільового файлу. Значенням за замовчуванням є UTF8NoBOM.
.PARAMETER Force
    Примусово додає вміст до елемента, навіть якщо він захищений від запису.
.PARAMETER WhatIf
    Показує, що станеться, якщо командлет виконається. Командлет не виконується.
.PARAMETER Confirm
    Запитує підтвердження перед виконанням командлета.
.EXAMPLE
    Add-Content -Path "C:\Temp\test.txt" -Value "Новий рядок"
    Ця команда додає рядок "Новий рядок" до файлу test.txt.
.EXAMPLE
    Get-ChildItem | Add-Content -Path "C:\Temp\files.txt"
    Ця команда додає список файлів до файлу files.txt. |
| `-SkipTranslation` | SwitchParameter | — | — | Named | — | Пропустити переклад на основі LLM |

## Examples

### Get-ModuleCmdletMetaData -ModuleName 'GenXdev'

```powershell
Get-ModuleCmdletMetaData -ModuleName 'GenXdev'
```

Повертає метадані для всіх командлетів у модулі GenXdev.

### Get-ModuleCmdletMetaData -ModuleName 'GenXdev' -Language 'nl-NL'

```powershell
Get-ModuleCmdletMetaData -ModuleName 'GenXdev' -Language 'nl-NL'
```

Повертає метадані, перекладені українською, для всіх командлетів GenXdev.

## Parameter Details

### `-ModuleName <String>`

> Ім'я модуля PowerShell, для якого потрібно отримати метадані командлета

| Property | Value |
|:---|:---|
| **Required?** | Yes |
| **Position?** | 0 |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-Language <String>`

> uk-UA

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-Model <String>`

> Ідентифікатор або шаблон моделі для використання в AI-перекладах

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-ApiEndpoint <String>`

> Кінцева точка URL API для перекладів з використанням штучного інтелекту

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-ApiKey <String>`

> Ключ API для автентифікованих перекладів штучного інтелекту

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-NoSupportForJsonSchema <String>`

> Вказує, що LLM не підтримує JSON-схеми

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-TranslationInstructions <String>`

> .SYNOPSIS
    Псевдонім Add-Content для додавання вмісту до елемента.
.DESCRIPTION
    Цей командлет додає вміст до вказаного елемента, такого як файл або змінна. Ви можете вказати вміст як рядок або з конвеєра.
.PARAMETER Path
    Шлях до елемента, до якого додається вміст.
.PARAMETER Value
    Вміст для додавання. Це може бути рядок або масив рядків.
.PARAMETER PassThru
    Повертає об'єкт, що представляє доданий вміст. За замовчуванням цей командлет не генерує жодних вихідних даних.
.PARAMETER Encoding
    Вказує тип кодування для цільового файлу. Значенням за замовчуванням є UTF8NoBOM.
.PARAMETER Force
    Примусово додає вміст до елемента, навіть якщо він захищений від запису.
.PARAMETER WhatIf
    Показує, що станеться, якщо командлет виконається. Командлет не виконується.
.PARAMETER Confirm
    Запитує підтвердження перед виконанням командлета.
.EXAMPLE
    Add-Content -Path "C:\Temp\test.txt" -Value "Новий рядок"
    Ця команда додає рядок "Новий рядок" до файлу test.txt.
.EXAMPLE
    Get-ChildItem | Add-Content -Path "C:\Temp\files.txt"
    Ця команда додає список файлів до файлу files.txt.

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-SkipTranslation`

> Пропустити переклад на основі LLM

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
## Outputs

- `Collections.Hashtable[]`

## Related Links

- [Assert-GenXdevCmdlet](https://github.com/genXdev/genXdev/blob/main/Docs/uk-UA/Assert-GenXdevCmdlet.md)
- [Assert-GenXdevCmdletTests](https://github.com/genXdev/genXdev/blob/main/Docs/uk-UA/Assert-GenXdevCmdletTests.md)
- [Assert-GenXdevDependencyUsage](https://github.com/genXdev/genXdev/blob/main/Docs/uk-UA/Assert-GenXdevDependencyUsage.md)
- [Assert-GenXdevTest](https://github.com/genXdev/genXdev/blob/main/Docs/uk-UA/Assert-GenXdevTest.md)
- [Assert-ModuleDefinition](https://github.com/genXdev/genXdev/blob/main/Docs/uk-UA/Assert-ModuleDefinition.md)
- [EnsureCopilotKeyboardShortCut](https://github.com/genXdev/genXdev/blob/main/Docs/uk-UA/EnsureCopilotKeyboardShortCut.md)
- [EnsureDefaultGenXdevRefactors](https://github.com/genXdev/genXdev/blob/main/Docs/uk-UA/EnsureDefaultGenXdevRefactors.md)
- [Get-CmdletMetaData](https://github.com/genXdev/genXdev/blob/main/Docs/uk-UA/Get-CmdletMetaData.md)
- [Get-GenXDevModule](https://github.com/genXdev/genXdev/blob/main/Docs/uk-UA/Get-GenXDevModule.md)
- [Get-GenXDevModuleInfo](https://github.com/genXdev/genXdev/blob/main/Docs/uk-UA/Get-GenXDevModuleInfo.md)
- [Get-GenXDevNewModulesInOrderOfDependency](https://github.com/genXdev/genXdev/blob/main/Docs/uk-UA/Get-GenXDevNewModulesInOrderOfDependency.md)
- [Invoke-GenXdevPSFormatter](https://github.com/genXdev/genXdev/blob/main/Docs/uk-UA/Invoke-GenXdevPSFormatter.md)
- [Invoke-GenXdevScriptAnalyzer](https://github.com/genXdev/genXdev/blob/main/Docs/uk-UA/Invoke-GenXdevScriptAnalyzer.md)
- [New-ModuleMarkdownHelp](https://github.com/genXdev/genXdev/blob/main/Docs/uk-UA/New-ModuleMarkdownHelp.md)
- [New-ModuleXmlHelp](https://github.com/genXdev/genXdev/blob/main/Docs/uk-UA/New-ModuleXmlHelp.md)
- [Search-GenXdevCmdlet](https://github.com/genXdev/genXdev/blob/main/Docs/uk-UA/Search-GenXdevCmdlet.md)
- [Show-GenXdevCmdLetInIde](https://github.com/genXdev/genXdev/blob/main/Docs/uk-UA/Show-GenXdevCmdLetInIde.md)

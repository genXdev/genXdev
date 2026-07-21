# New-ModuleMarkdownHelp

> **Module:** GenXdev.Coding.PowerShell.Modules | **Type:** Function | **Aliases:** —

## Synopsis

> Генерує розширені файли довідки Markdown для будь-якого модуля PowerShell.

## Description

Генерує всеосяжний довідковий сайт Markdown для будь-якого модуля PowerShell:
один файл .md на командлет з усіма розділами метаданих, плюс README.md
індекс із таблицями для кожного підмодуля з посиланнями на кожен файл командлета.

Виявлення підмодулів є портативним: каталоги з dot-source для .psm1
командлетів сценарію, простори імен .NET для скомпільованих командлетів, з багаторівневим
ланцюжком резерву для модулів без структури підмодулів.

## Syntax

```powershell
New-ModuleMarkdownHelp -ModuleName <String> [-ApiEndpoint <String>] [-ApiKey <String>] [-Force] [-Language <String>] [-LinkPrefix <String>] [-Model <String>] [-NoSupportForJsonSchema <String>] [-OutputPath <String>] [-SkipTranslation] [-TranslationInstructions <String>] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-ModuleName` | String | ✅ | — | 0 | — | Ім'я модуля PowerShell, для якого потрібно згенерувати довідку |
| `-OutputPath` | String | — | — | Named | — | Користувацька вихідна тека для файлів .md. За замовчуванням <moduleRoot>\Docs\<language>. |
| `-Language` | String | — | — | Named | `'en-US'` | uk-UA |
| `-Force` | SwitchParameter | — | — | Named | — | Перезаписувати наявні файли .md без запиту |
| `-SkipTranslation` | SwitchParameter | — | — | Named | — | @{response=Skip LLM translation; keep help in source language} |
| `-Model` | String | — | — | Named | — | Ідентифікатор або шаблон моделі для використання в AI-перекладах |
| `-ApiEndpoint` | String | — | — | Named | — | Кінцева точка URL API для перекладів з використанням штучного інтелекту |
| `-ApiKey` | String | — | — | Named | — | Ключ API для автентифікованих перекладів штучного інтелекту |
| `-NoSupportForJsonSchema` | String | — | — | Named | — | Вказує, що LLM не підтримує JSON-схеми |
| `-LinkPrefix` | String | — | — | Named | — | Префікс URL для посилань в індексі README (наприклад, https://github.com/org/repo/Docs/) |
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

## Examples

### New-ModuleMarkdownHelp -ModuleName 'Pester' -SkipTranslation

```powershell
New-ModuleMarkdownHelp -ModuleName 'Pester' -SkipTranslation
```

Створює папку Docs\ з одним файлом .md на кожен командлет Pester + індекс README.md.

### New-ModuleMarkdownHelp -ModuleName 'GenXdev' -Language 'nl-NL' -Force -Model 'deepseek-v4-pro' -ApiKey 'your-api-key' -ApiEndpoint 'https://api.deepseek.com/chat/completions'

```powershell
New-ModuleMarkdownHelp -ModuleName 'GenXdev' -Language 'nl-NL' -Force -Model 'deepseek-v4-pro' -ApiKey 'your-api-key' -ApiEndpoint 'https://api.deepseek.com/chat/completions'
```

Генерує перекладену нідерландською мовою довідку у форматі Markdown, перезаписуючи наявні файли.

### New-ModuleMarkdownHelp -ModuleName 'GenXdev' -LinkPrefix `     'https://github.com/genXdev/genXdev/Docs/' -SkipTranslation

```powershell
New-ModuleMarkdownHelp -ModuleName 'GenXdev' -LinkPrefix `
    'https://github.com/genXdev/genXdev/Docs/' -SkipTranslation
```

Створює довідку з абсолютними посиланнями на GitHub в індексі README.

## Parameter Details

### `-ModuleName <String>`

> Ім'я модуля PowerShell, для якого потрібно згенерувати довідку

| Property | Value |
|:---|:---|
| **Required?** | Yes |
| **Position?** | 0 |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-OutputPath <String>`

> Користувацька вихідна тека для файлів .md. За замовчуванням <moduleRoot>\Docs\<language>.

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
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
| **Default value** | `'en-US'` |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-Force`

> Перезаписувати наявні файли .md без запиту

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

> @{response=Skip LLM translation; keep help in source language}

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
### `-LinkPrefix <String>`

> Префікс URL для посилань в індексі README (наприклад, https://github.com/org/repo/Docs/)

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
## Outputs

- `String[]`

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
- [Get-ModuleCmdletMetaData](https://github.com/genXdev/genXdev/blob/main/Docs/uk-UA/Get-ModuleCmdletMetaData.md)
- [Invoke-GenXdevPSFormatter](https://github.com/genXdev/genXdev/blob/main/Docs/uk-UA/Invoke-GenXdevPSFormatter.md)
- [Invoke-GenXdevScriptAnalyzer](https://github.com/genXdev/genXdev/blob/main/Docs/uk-UA/Invoke-GenXdevScriptAnalyzer.md)
- [New-ModuleXmlHelp](https://github.com/genXdev/genXdev/blob/main/Docs/uk-UA/New-ModuleXmlHelp.md)
- [Search-GenXdevCmdlet](https://github.com/genXdev/genXdev/blob/main/Docs/uk-UA/Search-GenXdevCmdlet.md)
- [Show-GenXdevCmdLetInIde](https://github.com/genXdev/genXdev/blob/main/Docs/uk-UA/Show-GenXdevCmdLetInIde.md)

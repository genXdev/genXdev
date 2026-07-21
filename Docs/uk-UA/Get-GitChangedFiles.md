# Get-GitChangedFiles

> **Module:** GenXdev.Coding.Git | **Type:** Cmdlet | **Aliases:** `gitchanged`

## Synopsis

> Отримати список змінених файлів у Git-репозиторії.

## Description

Ця функція отримує список файлів, які були змінені в поточному репозиторії Git. Її можна використовувати для ідентифікації файлів, які були змінені, додані або видалені. За замовчуванням повертає відносні шляхи з префіксом .\. Використовуйте -PassThru, щоб отримати об'єкти FileInfo.

## Syntax

```powershell
Get-GitChangedFiles [-PassThru] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-PassThru` | SwitchParameter | — | — | Named | `False` | Повертає об'єкти FileInfo (як Get-ChildItem) замість рядків шляхів. |

## Examples

### Example 1

```powershell
Get-GitChangedFiles
```

Повертає відносні шляхи, наприклад ".\Modules\GenXdev.AI\3.26.2026\README.md".

### Example 2

```powershell
Get-GitChangedFiles -PassThru
```

Повертає об'єкти FileInfo для кожного зміненого файлу.

## Parameter Details

### `-PassThru`

> Повертає об'єкти FileInfo (як Get-ChildItem) замість рядків шляхів.

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

- [New-GitCommit](https://github.com/genXdev/genXdev/blob/main/Docs/uk-UA/New-GitCommit.md)
- [PermanentlyDeleteGitFolders](https://github.com/genXdev/genXdev/blob/main/Docs/uk-UA/PermanentlyDeleteGitFolders.md)

# New-GitCommit

> **Module:** GenXdev.Coding.Git | **Type:** Cmdlet | **Aliases:** `commit`

## Synopsis

> Створює і надсилає новий git-коміт з усіма змінами.

## Description

Розміщує всі зміни в поточному git-репозиторії, створює коміт із зазначеним заголовком і надсилає зміни до віддаленого походження. Автоматично налаштовує відстеження upstream, якщо це необхідно.

## Syntax

```powershell
New-GitCommit [[-Title] <String>] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-Title` | String | — | — | 0 | — | Заголовок повідомлення коміту |

## Examples

### Example 1

```powershell
New-GitCommit -Title "Added new authentication feature"
```

git commit -m "Added new authentication feature"

### Example 2

```powershell
commit "Hotfix for login issue"
```

git commit

## Parameter Details

### `-Title <String>`

> Заголовок повідомлення коміту

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | 0 |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
## Related Links

- [Get-GitChangedFiles](https://github.com/genXdev/genXdev/blob/main/Docs/uk-UA/Get-GitChangedFiles.md)
- [PermanentlyDeleteGitFolders](https://github.com/genXdev/genXdev/blob/main/Docs/uk-UA/PermanentlyDeleteGitFolders.md)

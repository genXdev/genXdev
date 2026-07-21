# New-GitCommit

> **Module:** GenXdev.Coding.Git | **Type:** Cmdlet | **Aliases:** `commit`

## Synopsis

> Создает и отправляет новый коммит git со всеми изменениями.

## Description

Индексирует все изменения в текущем репозитории git, создает коммит с указанным заголовком и отправляет изменения в удаленный репозиторий origin. При необходимости автоматически настраивает отслеживание восходящего потока.

## Syntax

```powershell
New-GitCommit [[-Title] <String>] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-Title` | String | — | — | 0 | — | Заголовок сообщения коммита для использования |

## Examples

### Example 1

```powershell
New-GitCommit -Title "Added new authentication feature"
```

Создать коммит с пользовательским сообщением "Добавлена новая функция аутентификации"

### Example 2

```powershell
commit "Hotfix for login issue"
```

Создайте коммит, используя псевдоним 'commit' с сообщением по умолчанию.

## Parameter Details

### `-Title <String>`

> Заголовок сообщения коммита для использования

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

- [Get-GitChangedFiles](https://github.com/genXdev/genXdev/blob/main/Docs/ru-RU/Get-GitChangedFiles.md)
- [PermanentlyDeleteGitFolders](https://github.com/genXdev/genXdev/blob/main/Docs/ru-RU/PermanentlyDeleteGitFolders.md)

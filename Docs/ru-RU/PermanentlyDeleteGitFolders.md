# PermanentlyDeleteGitFolders

> **Module:** GenXdev.Coding.Git | **Type:** Function | **Aliases:** —

## Synopsis

> Навсегда удаляет указанные папки из всех веток в Git-репозитории.

## Description

Очищает репозиторий Git, удаляя указанные папки из всей истории коммитов во всех ветках. Это делается путем клонирования репозитория, использования git filter-branch для удаления папок и принудительного пуша изменений обратно. Эта операция является разрушительной и навсегда перезаписывает историю Git.

## Syntax

```powershell
PermanentlyDeleteGitFolders -RepoUri <String> -Folders <String[]> [-tempPath <String>] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-RepoUri` | String | ✅ | — | 0 | — | URI Git-репозитория для очистки |
| `-Folders` | String[] | ✅ | — | 1 | — | Массив путей к папкам для постоянного удаления |
| `-tempPath` | String | — | — | Named | `"~\convert.tmp\"` | The `-tempPath` parameter. |

## Examples

### PermanentlyDeleteGitFolders `     -RepoUri "https://github.com/user/repo.git" `     -Folders "bin", "obj"

```powershell
PermanentlyDeleteGitFolders `
    -RepoUri "https://github.com/user/repo.git" `
    -Folders "bin", "obj"
```

## Outputs

- `String[]`

## Related Links

- [PermanentlyDeleteGitFolders on GitHub](https://github.com/genXdev/genXdev)

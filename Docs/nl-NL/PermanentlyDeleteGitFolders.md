# PermanentlyDeleteGitFolders

> **Module:** GenXdev.Coding.Git | **Type:** Function | **Aliases:** —

## Synopsis

> Permanently deletes specified folders from all branches in a Git repository.

## Description

Maakt een Git-repository schoon door opgegeven mappen uit de volledige commitgeschiedenis over alle branches te verwijderen. Dit gebeurt door de repository te klonen, git filter-branch te gebruiken om de mappen te verwijderen, en de wijzigingen terug te forceren. Deze bewerking is destructief en herschrijft permanent de Git-geschiedenis.

## Syntax

```powershell
PermanentlyDeleteGitFolders -RepoUri <String> -Folders <String[]> [-tempPath <String>] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-RepoUri` | String | ✅ | — | 0 | — | De URI van de Git-repository om op te schonen |
| `-Folders` | String[] | ✅ | — | 1 | — | Array van mappaden om permanent te verwijderen |
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

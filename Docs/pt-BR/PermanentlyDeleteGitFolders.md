# PermanentlyDeleteGitFolders

> **Module:** GenXdev.Coding.Git | **Type:** Function | **Aliases:** —

## Synopsis

> Exclui permanentemente pastas especificadas de todos os branches em um repositório Git.

## Description

Limpa um repositório Git removendo pastas especificadas de todo o histórico de commits em todos os branches. Isso é feito clonando o repositório, usando git filter-branch para remover as pastas e fazendo push forçado das alterações de volta. Esta operação é destrutiva e reescreve permanentemente o histórico do Git.

## Syntax

```powershell
PermanentlyDeleteGitFolders -RepoUri <String> -Folders <String[]> [-tempPath <String>] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-RepoUri` | String | ✅ | — | 0 | — | A URI do repositório Git a ser limpo |
| `-Folders` | String[] | ✅ | — | 1 | — | Array de caminhos de pastas para remover permanentemente |
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

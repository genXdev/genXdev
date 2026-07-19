# PermanentlyDeleteGitFolders

> **Module:** GenXdev.Coding.Git | **Type:** Function | **Aliases:** —

## Synopsis

> Elimina permanentemente carpetas específicas de todas las ramas en un repositorio Git.

## Description

Limpia un repositorio de Git eliminando carpetas específicas de todo el historial de confirmaciones en todas las ramas. Esto se realiza clonando el repositorio, usando git filter-branch para eliminar las carpetas y forzando el envío de los cambios de vuelta. Esta operación es destructiva y reescribe permanentemente el historial de Git.

## Syntax

```powershell
PermanentlyDeleteGitFolders -RepoUri <String> -Folders <String[]> [-tempPath <String>] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-RepoUri` | String | ✅ | — | 0 | — | La URI del repositorio Git que se va a limpiar |
| `-Folders` | String[] | ✅ | — | 1 | — | Array de rutas de carpetas para eliminar permanentemente |
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

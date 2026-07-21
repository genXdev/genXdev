# PermanentlyDeleteGitFolders

> **Module:** GenXdev.Coding.Git | **Type:** Function | **Aliases:** —

## Synopsis

> Elimina permanentemente carpetas especificadas de todas las ramas de un repositorio de Git.

## Description

Limpia un repositorio Git eliminando carpetas especificadas de todo el historial de confirmaciones en todas las ramas. Esto se realiza clonando el repositorio, usando git filter-branch para eliminar las carpetas, y forzando el envío de los cambios de vuelta. Esta operación es destructiva y reescribe permanentemente el historial de Git.

## Syntax

```powershell
PermanentlyDeleteGitFolders -RepoUri <String> -Folders <String[]> [-tempPath <String>] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-RepoUri` | String | ✅ | — | 0 | — | El URI del repositorio Git que se va a limpiar |
| `-Folders` | String[] | ✅ | — | 1 | — | Matriz de rutas de carpeta para eliminar permanentemente |
| `-tempPath` | String | — | — | Named | `"~\convert.tmp\"` | The `-tempPath` parameter. |

## Examples

### PermanentlyDeleteGitFolders `     -RepoUri "https://github.com/user/repo.git" `     -Folders "bin", "obj"

```powershell
PermanentlyDeleteGitFolders `
    -RepoUri "https://github.com/user/repo.git" `
    -Folders "bin", "obj"
```

## Parameter Details

### `-RepoUri <String>`

> El URI del repositorio Git que se va a limpiar

| Property | Value |
|:---|:---|
| **Required?** | Yes |
| **Position?** | 0 |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-Folders <String[]>`

> Matriz de rutas de carpeta para eliminar permanentemente

| Property | Value |
|:---|:---|
| **Required?** | Yes |
| **Position?** | 1 |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-tempPath <String>`

> The `-tempPath` parameter.

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | `"~\convert.tmp\"` |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
## Outputs

- `String[]`

## Related Links

- [Get-GitChangedFiles](https://github.com/genXdev/genXdev/blob/main/Docs/es-ES/Get-GitChangedFiles.md)
- [New-GitCommit](https://github.com/genXdev/genXdev/blob/main/Docs/es-ES/New-GitCommit.md)

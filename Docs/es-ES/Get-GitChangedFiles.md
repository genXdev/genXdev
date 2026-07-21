# Get-GitChangedFiles

> **Module:** GenXdev.Coding.Git | **Type:** Cmdlet | **Aliases:** `gitchanged`

## Synopsis

> Obtén la lista de archivos modificados en un repositorio Git.

## Description

Esta función recupera la lista de archivos que han cambiado en el repositorio Git actual. Se puede utilizar para identificar qué archivos han sido modificados, añadidos o eliminados. Por defecto, devuelve rutas relativas con el prefijo .\. Use -PassThru para obtener objetos FileInfo.

## Syntax

```powershell
Get-GitChangedFiles [-PassThru] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-PassThru` | SwitchParameter | — | — | Named | `False` | Devuelve objetos FileInfo (como Get-ChildItem) en lugar de cadenas de ruta. |

## Examples

### Example 1

```powershell
Get-GitChangedFiles
```

Devuelve rutas relativas como ".\Modules\GenXdev.AI\3.26.2026\README.md".

### Example 2

```powershell
Get-GitChangedFiles -PassThru
```

Devuelve objetos FileInfo para cada archivo cambiado.

## Parameter Details

### `-PassThru`

> Devuelve objetos FileInfo (como Get-ChildItem) en lugar de cadenas de ruta.

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

- [New-GitCommit](https://github.com/genXdev/genXdev/blob/main/Docs/es-ES/New-GitCommit.md)
- [PermanentlyDeleteGitFolders](https://github.com/genXdev/genXdev/blob/main/Docs/es-ES/PermanentlyDeleteGitFolders.md)

# Get-GitChangedFiles

> **Module:** GenXdev.Coding.Git | **Type:** Cmdlet | **Aliases:** `gitchanged

## Synopsis

> Obtén la lista de archivos modificados en un repositorio de Git.

## Description

Esta función recupera la lista de archivos que se han modificado en el repositorio Git actual. Se puede utilizar para identificar qué archivos se han modificado, añadido o eliminado. De forma predeterminada, devuelve rutas relativas con el prefijo .\ . Use -PassThru para obtener objetos FileInfo.

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

Devuelve objetos FileInfo para cada archivo modificado.

## Outputs


## Related Links

- [Get-GitChangedFiles on GitHub](https://github.com/genXdev/genXdev)

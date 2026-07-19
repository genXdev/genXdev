# WriteFileOutput

> **Module:** GenXdev.FileSystem | **Type:** Function | **Aliases:** —

## Synopsis

> Muestra información de archivos con nombres de visualización hipervinculados para mejorar la experiencia del usuario.

## Description

Esta función procesa objetos de entrada de archivos y los genera en un formato fácil de usar con nombres de archivo hipervinculados cuando se muestran en la consola. Maneja diferentes tipos de entrada, incluyendo cadenas, objetos FileInfo y otros tipos de objetos. La función detecta automáticamente si la salida se está redirigiendo o capturando en una tubería y ajusta su comportamiento en consecuencia.

## Syntax

```powershell
WriteFileOutput -CallerInvocation <Object> -Input <Object> [-FullPaths] [-Prefix <String>] [-RelativeBasePath <String>] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-CallerInvocation` | Object | ✅ | ✅ (ByValue) | 0 | — | La información de invocación de la función llamadora |
| `-Input` | Object | ✅ | ✅ (ByValue) | 1 | — | El objeto de entrada a procesar, que puede ser una ruta de archivo o un objeto |
| `-Prefix` | String | — | — | Named | — | Un prefijo de cadena opcional para anteponer a la visualización de salida para contexto adicional |
| `-RelativeBasePath` | String | — | — | Named | — | Ruta base para generar rutas de archivo relativas en la salida |
| `-FullPaths` | SwitchParameter | — | — | Named | — | Obliga a la salida a usar rutas absolutas completas en lugar de rutas relativas |

## Examples

### WriteFileOutput -CallerInvocation $MyInvocation -Input "C:\temp\file.txt"

```powershell
WriteFileOutput -CallerInvocation $MyInvocation -Input "C:\temp\file.txt"
```

### Get-ChildItem | WriteFileOutput -CallerInvocation $MyInvocation -Input $_

```powershell
Get-ChildItem | WriteFileOutput -CallerInvocation $MyInvocation -Input $_
```

## Related Links

- [WriteFileOutput on GitHub](https://github.com/genXdev/genXdev)

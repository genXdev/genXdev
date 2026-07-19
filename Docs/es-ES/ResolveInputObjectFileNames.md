# ResolveInputObjectFileNames

> **Module:** GenXdev.FileSystem | **Type:** Function | **Aliases:** —

## Synopsis

> Expande objetos de entrada en nombres de archivos y directorios, soportando varios filtros y opciones de salida.

## Description

Esta función procesa objetos de entrada (archivos, directorios o colecciones) y los expande en nombres de archivos y directorios. Admite filtrado, coincidencia de patrones y puede generar resultados como objetos. La función está diseñada para trabajar con entrada de pipeline y proporciona opciones para recursividad, flujos de datos alternativos y más.

## Syntax

```powershell
ResolveInputObjectFileNames [[-InputObject] <Object>] [[-RelativeBasePath] <String>] [-AllDrives] [-File] [-IncludeAlternateFileStreams] [-NoRecurse] [-PassThru] [<CommonParameters>]

ResolveInputObjectFileNames [[-Pattern] <String>] [<CommonParameters>]

ResolveInputObjectFileNames [-Directory] [-FilesAndDirectories] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-InputObject` | Object | — | ✅ (ByValue, ByPropertyName) | 0 | — | Objeto de entrada que contiene nombres de archivos o directorios |
| `-File` | SwitchParameter | — | — | Named | — | Return only files |
| `-Pattern` | String | — | — | 1 | — | Patrón de expresión regular para buscar dentro del contenido *(Parameter set: )* 🌐 *Supports wildcards* |
| `-RelativeBasePath` | String | — | — | 2 | — | Ruta base para resolver rutas relativas en la salida |
| `-AllDrives` | SwitchParameter | — | — | Named | — | Buscar en todas las unidades disponibles |
| `-Directory` | SwitchParameter | — | — | Named | — | Buscar solo directorios *(Parameter set: )* |
| `-FilesAndDirectories` | SwitchParameter | — | — | Named | — | Include both files and directories *(Parameter set: )* |
| `-PassThru` | SwitchParameter | — | — | Named | — | Output matched items as objects |
| `-IncludeAlternateFileStreams` | SwitchParameter | — | — | Named | — | Incluir flujos de datos alternativos en los resultados de búsqueda |
| `-NoRecurse` | SwitchParameter | — | — | Named | — | No recurse en subdirectorios |

## Examples

### ResolveInputObjectFileNames -Input "C:\Temp" -File

```powershell
ResolveInputObjectFileNames -Input "C:\Temp" -File
```

## Related Links

- [ResolveInputObjectFileNames on GitHub](https://github.com/genXdev/genXdev)

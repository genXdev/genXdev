# ResolveInputObjectFileNames

> **Module:** GenXdev.FileSystem | **Type:** Function | **Aliases:** —

## Synopsis

> *(No synopsis provided)*

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

## Related Links

- [ResolveInputObjectFileNames on GitHub](https://github.com/genXdev/genXdev)

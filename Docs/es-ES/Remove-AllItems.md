# Remove-AllItems

> **Module:** GenXdev.FileSystem | **Type:** Function | **Aliases:** `sdel

## Synopsis

> Elimina recursivamente todo el contenido de un directorio con manejo avanzado de errores.

## Description

Elimina de forma segura todos los archivos y subdirectorios dentro de un directorio específico utilizando una estrategia de eliminación en orden inverso para manejar rutas profundas. Incluye soporte para WhatIf, registro detallado y métodos de eliminación alternativos para archivos bloqueados.

## Syntax

```powershell
Remove-AllItems -Path <String> [-DeleteFolder] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-Path` | String | ✅ | ✅ (ByValue, ByPropertyName) | 0 | — | La ruta de directorio a limpiar |
| `-DeleteFolder` | SwitchParameter | — | — | Named | — | Además, elimine la carpeta raíz suministrada con el parámetro Path |

## Examples

### Remove-AllItems -Path "C:\Temp\BuildOutput" -DeleteFolder -Verbose

```powershell
Remove-AllItems -Path "C:\Temp\BuildOutput" -DeleteFolder -Verbose
```

### sdel ".\temp" -DeleteFolder

```powershell
sdel ".\temp" -DeleteFolder
```

## Related Links

- [Remove-AllItems on GitHub](https://github.com/genXdev/genXdev)

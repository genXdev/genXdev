# Expand-Path

> **Module:** GenXdev.FileSystem | **Type:** Function | **Aliases:** `ep

## Synopsis

> Expande cualquier referencia de archivo proporcionada a una ruta completa.

## Description

Expande cualquier referencia de archivo dada a una ruta completa, con respecto al directorio actual del usuario. Puede opcionalmente asegurar que los directorios o archivos existen.

## Syntax

```powershell
Expand-Path -FilePath <String> [-CreateDirectory] [-CreateFile] [-DeleteExistingFile] [-DirectoryMustExist] [-FileMustExist] [-ForceDrive <Char>] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-FilePath` | String | ✅ | ✅ (ByValue, ByPropertyName) | 0 | — | Ruta a expandir |
| `-CreateDirectory` | SwitchParameter | — | — | Named | — | Crea el directorio si no existe |
| `-CreateFile` | SwitchParameter | — | — | Named | — | Creará un archivo vacío si no existe |
| `-DeleteExistingFile` | SwitchParameter | — | — | Named | — | Eliminará el archivo si ya existe |
| `-ForceDrive` | Char | — | — | Named | `'*'` | Forzará el uso de una unidad específica |
| `-FileMustExist` | SwitchParameter | — | — | Named | — | Lanzará una excepción si el archivo no existe |
| `-DirectoryMustExist` | SwitchParameter | — | — | Named | — | Lanzará una excepción si el directorio no existe |

## Examples

### Expand-Path -FilePath ".\myfile.txt" -CreateFile

```powershell
Expand-Path -FilePath ".\myfile.txt" -CreateFile
```

### ep ~\documents\test.txt -CreateFile

```powershell
ep ~\documents\test.txt -CreateFile
```

## Related Links

- [Expand-Path on GitHub](https://github.com/genXdev/genXdev)

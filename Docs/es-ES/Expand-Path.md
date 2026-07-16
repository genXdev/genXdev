# Expand-Path

> **Module:** GenXdev.FileSystem | **Type:** Function | **Aliases:** `ep

## Synopsis

> *(No synopsis provided)*

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

## Related Links

- [Expand-Path on GitHub](https://github.com/genXdev/genXdev)

# Invoke-Fasti

> **Module:** GenXdev.FileSystem | **Type:** Function | **Aliases:** `fasti

## Synopsis

> Extrae archivos comprimidos en el directorio actual a sus propias carpetas y los elimina después.

## Description

Extrae automáticamente formatos de archivo comunes (zip, 7z, tar, etc.) encontrados en el directorio actual en carpetas individuales nombradas según cada archivo. Después de una extracción exitosa, los archivos de archivo originales se eliminan. Requiere que 7-Zip esté instalado en el sistema.

## Syntax

```powershell
Invoke-Fasti [[-Password] <String>] [-ExtractOutputToo] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-Password` | String | — | — | 0 | — | Introduzca la contraseña para los archivos comprimidos cifrados |
| `-ExtractOutputToo` | SwitchParameter | — | — | Named | — | Extraer recursivamente archivos encontrados dentro de carpetas extraídas |

## Examples

### PS C:\Downloads> Invoke-Fasti

```powershell
PS C:\Downloads> Invoke-Fasti
```

### PS C:\Downloads> fasti

```powershell
PS C:\Downloads> fasti
```

## Related Links

- [Invoke-Fasti on GitHub](https://github.com/genXdev/genXdev)

# EnsureHuggingFace

> **Module:** GenXdev.AI | **Type:** Function | **Aliases:** —

## Synopsis

> Asegura que la CLI de Hugging Face esté instalada y funcional.

## Description

Orquesta la instalación de Python, pip y la CLI de Hugging Face llamando a EnsurePython y EnsurePip, luego instalando el paquete huggingface_hub. Almacena la ruta de la CLI en un archivo JSON y asegura que todos los componentes estén disponibles en el PATH del sistema. Devuelve $true si tiene éxito; lanza Write-Error en caso de fallo.

## Syntax

```powershell
EnsureHuggingFace [[-PythonVersion] <String>] [-Force] [-Timeout <Int32>] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-PythonVersion` | String | — | — | 0 | `"3.12"` | Versión de Python a asegurar |
| `-Timeout` | Int32 | — | — | Named | `600` | Tiempo de espera en segundos para procesos de instalación |
| `-Force` | SwitchParameter | — | — | Named | — | Fuerza la reinstalación de todos los componentes |

## Examples

### EnsureHuggingFace

```powershell
EnsureHuggingFace
```

Asegura que Python 3.12, pip y la CLI de HuggingFace estén instalados.

### EnsureHuggingFace -PythonVersion "3.11" -Force

```powershell
EnsureHuggingFace -PythonVersion "3.11" -Force
```

Fuerza la reinstalación con Python 3.11.

### EnsureHuggingFace -Timeout 1200

```powershell
EnsureHuggingFace -Timeout 1200
```

Garantiza la instalación con un tiempo de espera de 20 minutos.

## Related Links

- [EnsureHuggingFace on GitHub](https://github.com/genXdev/genXdev)

# Invoke-HuggingFaceCli

> **Module:** GenXdev.AI | **Type:** Function | **Aliases:** —

## Synopsis

> Invoca la CLI de Hugging Face con los argumentos especificados.

## Description

Llama a EnsureHuggingFace para asegurarse de que la CLI esté instalada, luego ejecuta la CLI de Hugging Face con los argumentos proporcionados. Lee la ruta de la CLI de $ENV:LOCALAPPDATA\GenXdev.PowerShell\hfclilocation.json. Devuelve la salida del comando como una cadena; genera Write-Error en caso de fallo.

## Syntax

```powershell
Invoke-HuggingFaceCli -Arguments <String[]> [[-Timeout] <Int32>] [-Force] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-Arguments` | String[] | ✅ | — | 0 | — | Los argumentos para pasar a la CLI de Hugging Face |
| `-Timeout` | Int32 | — | — | 1 | `36000` | Tiempo de espera en segundos para la ejecución de CLI e instalación de dependencias |
| `-Force` | SwitchParameter | — | — | Named | — | Forces reinstallation of the Hugging Face CLI |

## Examples

### Invoke-HuggingFaceCli -Arguments @("login") -Timeout 600 -Force

```powershell
Invoke-HuggingFaceCli -Arguments @("login") -Timeout 600 -Force
```

Invoca la CLI con el comando "login", forzando la reinstalación.

### Invoke-HuggingFaceCli @("whoami") 300

```powershell
Invoke-HuggingFaceCli @("whoami") 300
```

Invoca la CLI con el comando "whoami" y un tiempo de espera de 300 segundos.

## Related Links

- [Invoke-HuggingFaceCli on GitHub](https://github.com/genXdev/genXdev)

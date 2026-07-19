# EnsureSSMSInstalled

> **Module:** GenXdev.Data.SqlServer | **Type:** Function | **Aliases:** —

## Synopsis

> Ensure SSMS esté instalado y accesible desde la línea de comandos.

## Description

Verifica si SSMS está instalado y disponible en el PATH del sistema. Si no se encuentra, primero comprueba si es necesario actualizar la variable de entorno PATH. Si eso no resuelve el problema, instala SSMS mediante WinGet y configura la variable de entorno PATH.

## Syntax

```powershell
EnsureSSMSInstalled [-Force] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-Force` | SwitchParameter | — | — | Named | — | The `-Force` parameter. |

## Examples

### EnsureSSMSInstalled Checks and ensures SSMS is installed and accessible.

```powershell
EnsureSSMSInstalled
Checks and ensures SSMS is installed and accessible.
```

## Related Links

- [EnsureSSMSInstalled on GitHub](https://github.com/genXdev/genXdev)

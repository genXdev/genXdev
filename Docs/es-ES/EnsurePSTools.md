# EnsurePSTools

> **Module:** GenXdev.Windows | **Type:** Function | **Aliases:** —

## Synopsis

> Asegura que las herramientas Sysinternals (PSTools) estén instaladas y disponibles.

## Description

Verifica si herramientas de Sysinternals como handle.exe están instaladas y configuradas correctamente en el sistema. Si no se encuentran, instala Sysinternals Suite usando WinGet y maneja el proceso completo de instalación automáticamente.

## Syntax

```powershell
EnsurePSTools [[-PSExeName] <String>] [-Force] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-Force` | SwitchParameter | — | — | Named | — | Reinstalación forzada de herramientas Sysinternals |
| `-PSExeName` | String | — | — | 0 | `'handle.exe'` | El nombre del ejecutable para verificar la instalación |

## Examples

### EnsurePSTools Ensures Sysinternals tools are installed and properly configured.

```powershell
EnsurePSTools
Ensures Sysinternals tools are installed and properly configured.
```

### EnsurePSTools -Force -PSExeName 'procexp.exe' Forces reinstallation of Sysinternals tools and uses procexp.exe to verify installation. ##############################################################################

```powershell
EnsurePSTools -Force -PSExeName 'procexp.exe'
Forces reinstallation of Sysinternals tools and uses procexp.exe to verify
installation.
##############################################################################
```

## Related Links

- [EnsurePSTools on GitHub](https://github.com/genXdev/genXdev)

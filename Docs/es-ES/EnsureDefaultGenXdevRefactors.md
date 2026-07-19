# EnsureDefaultGenXdevRefactors

> **Module:** GenXdev.Coding.PowerShell.Modules | **Type:** Function | **Aliases:** —

## Synopsis

> Asegura que las definiciones de refactorización predeterminadas de GenXdev estén disponibles.

## Description

Esta función crea y mantiene las definiciones de refactorización predeterminadas para los módulos de PowerShell de GenXdev. Configura refactorizaciones para documentación y formato, conversión a C# y avisos de consentimiento de instalación.

## Syntax

```powershell
EnsureDefaultGenXdevRefactors [-Force] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-Force` | SwitchParameter | — | — | Named | — | Fuerza la recreación de las definiciones de refactorización existentes |

## Examples

### EnsureDefaultGenXdevRefactors

```powershell
EnsureDefaultGenXdevRefactors
```

### EnsureDefaultGenXdevRefactors -Force

```powershell
EnsureDefaultGenXdevRefactors -Force
```

## Related Links

- [EnsureDefaultGenXdevRefactors on GitHub](https://github.com/genXdev/genXdev)

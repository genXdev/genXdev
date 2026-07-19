# EnsureDefaultGenXdevRefactors

> **Module:** GenXdev.Coding.PowerShell.Modules | **Type:** Function | **Aliases:** —

## Synopsis

> Garante que as definições de refatoração padrão do GenXdev estejam disponíveis.

## Description

Esta função cria e mantém definições de refatoração padrão para módulos PowerShell da GenXdev. Ela configura refatorações para documentação e formatação, conversão para C# e prompts de consentimento de instalação.

## Syntax

```powershell
EnsureDefaultGenXdevRefactors [-Force] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-Force` | SwitchParameter | — | — | Named | — | Força a recriação das definições de refatoração existentes |

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

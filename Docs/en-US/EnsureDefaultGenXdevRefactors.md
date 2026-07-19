# EnsureDefaultGenXdevRefactors

> **Module:** GenXdev.Coding.PowerShell.Modules | **Type:** Function | **Aliases:** —

## Synopsis

> Ensures default GenXdev refactoring definitions are available.

## Description

This function creates and maintains default refactoring definitions for GenXdev
PowerShell modules. It sets up refactors for documentation and formatting,
C# conversion, and installation consent prompts.

## Syntax

```powershell
EnsureDefaultGenXdevRefactors [-Force] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-Force` | SwitchParameter | — | — | Named | — | Forces recreation of existing refactor definitions |

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

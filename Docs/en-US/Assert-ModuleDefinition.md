# Assert-ModuleDefinition

> **Module:** GenXdev.Coding.PowerShell.Modules | **Type:** Function | **Aliases:** —

## Synopsis

> Assists in refactoring PowerShell source code files using AI assistance.

## Description

This function automates the process of refactoring PowerShell code using AI.
It manages prompt templates, detects the active IDE (VS Code or Visual Studio),
and orchestrates the refactoring workflow through keyboard automation.
The function can handle both module manifest (.psd1) and module script (.psm1)
files.

## Syntax

```powershell
Assert-ModuleDefinition -ModuleName <String> [-EditPrompt] [-Prompt <String>] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-ModuleName` | String | ✅ | ✅ (ByValue, ByPropertyName) | 0 | — | The name of the module |
| `-Prompt` | String | — | — | Named | — | The AI prompt |
| `-EditPrompt` | SwitchParameter | — | — | Named | — | Switch to only edit the AI prompt |

## Examples

### Assert-ModuleDefinition -ModuleName "MyModule" -EditPrompt

```powershell
Assert-ModuleDefinition -ModuleName "MyModule" -EditPrompt
```

### "MyModule" | Assert-ModuleDefinition

```powershell
"MyModule" | Assert-ModuleDefinition
```

## Related Links

- [Assert-ModuleDefinition on GitHub](https://github.com/genXdev/genXdev)

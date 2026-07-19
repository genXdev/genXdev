# Assert-ModuleDefinition

> **Module:** GenXdev.Coding.PowerShell.Modules | **Type:** Function | **Aliases:** —

## Synopsis

> Hilft bei der Refaktorierung von PowerShell-Quellcodedateien mithilfe von KI-Unterstützung.

## Description

Diese Funktion automatisiert den Prozess der Refaktorierung von PowerShell-Code mithilfe von KI. Sie verwaltet Prompt-Vorlagen, erkennt die aktive IDE (VS Code oder Visual Studio) und orchestriert den Refaktorierungs-Workflow durch Tastaturautomatisierung. Die Funktion kann sowohl Modulmanifest-Dateien (.psd1) als auch Modulskript-Dateien (.psm1) verarbeiten.

## Syntax

```powershell
Assert-ModuleDefinition -ModuleName <String> [-EditPrompt] [-Prompt <String>] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-ModuleName` | String | ✅ | ✅ (ByValue, ByPropertyName) | 0 | — | Der Name des Moduls |
| `-Prompt` | String | — | — | Named | — | Die KI-Eingabeaufforderung |
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

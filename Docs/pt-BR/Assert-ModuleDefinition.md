# Assert-ModuleDefinition

> **Module:** GenXdev.Coding.PowerShell.Modules | **Type:** Function | **Aliases:** —

## Synopsis

> Auxilia na refatoração de arquivos de código-fonte do PowerShell usando assistência de IA.

## Description

Esta função automatiza o processo de refatoração de código PowerShell usando IA. Ela gerencia modelos de prompt, detecta o IDE ativo (VS Code ou Visual Studio) e orquestra o fluxo de trabalho de refatoração por meio de automação de teclado. A função pode lidar tanto com arquivos de manifesto de módulo (.psd1) quanto com scripts de módulo (.psm1).

## Syntax

```powershell
Assert-ModuleDefinition -ModuleName <String> [-EditPrompt] [-Prompt <String>] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-ModuleName` | String | ✅ | ✅ (ByValue, ByPropertyName) | 0 | — | O nome do módulo |
| `-Prompt` | String | — | — | Named | — | O prompt de IA |
| `-EditPrompt` | SwitchParameter | — | — | Named | — | Mude para apenas editar o prompt de IA |

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

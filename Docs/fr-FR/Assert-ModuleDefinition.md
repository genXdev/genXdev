# Assert-ModuleDefinition

> **Module:** GenXdev.Coding.PowerShell.Modules | **Type:** Function | **Aliases:** —

## Synopsis

> Aide à la refactorisation de fichiers de code source PowerShell à l'aide de l'assistance IA.

## Description

Cette fonction automatise le processus de refactorisation du code PowerShell à l'aide de l'IA.
Elle gère les modèles de prompt, détecte l'EDI actif (VS Code ou Visual Studio),
et orchestre le flux de travail de refactorisation via l'automatisation du clavier.
La fonction peut gérer à la fois les fichiers de manifeste de module (.psd1) et les scripts de module (.psm1).

## Syntax

```powershell
Assert-ModuleDefinition -ModuleName <String> [-EditPrompt] [-Prompt <String>] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-ModuleName` | String | ✅ | ✅ (ByValue, ByPropertyName) | 0 | — | Le nom du module |
| `-Prompt` | String | — | — | Named | — | L'invite de l'IA |
| `-EditPrompt` | SwitchParameter | — | — | Named | — | N'édite que l'invite AI |

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

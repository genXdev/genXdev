# Assert-ModuleDefinition

> **Module:** GenXdev.Coding.PowerShell.Modules | **Type:** Function | **Aliases:** —

## Synopsis

> Ondersteunt bij het refactoren van PowerShell-broncodebestanden met behulp van AI-assistentie.

## Description

Deze functie automatiseert het proces van het refactoren van PowerShell-code met behulp van AI.
Het beheert promptsjablonen, detecteert de actieve IDE (VS Code of Visual Studio),
en orkestreert de refactoring-werkstroom via toetsenbordautomatisering.
De functie kan zowel modulemanifest (.psd1)- als modulescript (.psm1)-bestanden
verwerken.

## Syntax

```powershell
Assert-ModuleDefinition -ModuleName <String> [-EditPrompt] [-Prompt <String>] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-ModuleName` | String | ✅ | ✅ (ByValue, ByPropertyName) | 0 | — | De naam van de module |
| `-Prompt` | String | — | — | Named | — | De AI-prompt |
| `-EditPrompt` | SwitchParameter | — | — | Named | — | Schakel over naar alleen het bewerken van de AI-prompt |

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

# Assert-RefactorFile

> **Module:** GenXdev.Coding.PowerShell.Modules | **Type:** Function | **Aliases:** —

## Synopsis

> Voert een refactoring-bewerking uit op een bronbestand met de opgegeven IDE en AI-prompttemplate.

## Description

Deze functie automatiseert het refactoringproces door een AI-prompt voor te bereiden op basis van de refactordefinitie, de juiste IDE (VS Code of Visual Studio) te detecteren of selecteren, en het doelfbestand te openen met de voorbereide prompt. De functie behandelt het verwerken van promptsjablonen, IDE-detectie en automatisering van de refactoringworkflow.

## Syntax

```powershell
Assert-RefactorFile -Path <String> [[-RefactorSettings] <GenXdev.Helpers.RefactorSettings>] [-AllowLongRunningTests] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-Path` | String | ✅ | — | 0 | — | Het pad naar het bronbestand dat verbeterd moet worden |
| `-RefactorSettings` | GenXdev.Helpers.RefactorSettings | — | — | 1 | `[GenXdev.Helpers.RefactorSettings]::new()` | De refactordefinitie die instellingen en een promptsjabloon bevat |
| `-AllowLongRunningTests` | SwitchParameter | — | — | Named | — | The `-AllowLongRunningTests` parameter. |

## Examples

### $refactorDef = Get-RefactorDefinition -Type "Documentation" Assert-RefactorFile -RefactorDefinition $refactorDef -Path "MyScript.ps1"

```powershell
$refactorDef = Get-RefactorDefinition -Type "Documentation"
Assert-RefactorFile -RefactorDefinition $refactorDef -Path "MyScript.ps1"
```

### Assert-RefactorFile -RefactorDefinition $refactorDef -Path ".\Functions\Test.ps1"

```powershell
Assert-RefactorFile -RefactorDefinition $refactorDef -Path ".\Functions\Test.ps1"
```

## Related Links

- [Assert-RefactorFile on GitHub](https://github.com/genXdev/genXdev)

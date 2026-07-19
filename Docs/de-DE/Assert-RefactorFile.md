# Assert-RefactorFile

> **Module:** GenXdev.Coding.PowerShell.Modules | **Type:** Function | **Aliases:** —

## Synopsis

> Führt eine Refactoring-Operation an einer Quelldatei unter Verwendung der angegebenen IDE und der KI-Promptvorlage durch.

## Description

Diese Funktion automatisiert den Refactoring-Prozess, indem sie einen AI-Prompt basierend auf der Refactoring-Definition vorbereitet, die entsprechende IDE (VS Code oder Visual Studio) erkennt oder auswählt und die Zieldatei mit dem vorbereiteten Prompt öffnet. Die Funktion übernimmt die Verarbeitung von Prompt-Vorlagen, die IDE-Erkennung und die Automatisierung des Refactoring-Workflows.

## Syntax

```powershell
Assert-RefactorFile -Path <String> [[-RefactorSettings] <GenXdev.Helpers.RefactorSettings>] [-AllowLongRunningTests] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-Path` | String | ✅ | — | 0 | — | Der Pfad zur Quelldatei, die verbessert werden soll |
| `-RefactorSettings` | GenXdev.Helpers.RefactorSettings | — | — | 1 | `[GenXdev.Helpers.RefactorSettings]::new()` | The refactor definition containing settings and prompt template |
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

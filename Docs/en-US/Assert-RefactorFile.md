# Assert-RefactorFile

> **Module:** GenXdev.Coding.PowerShell.Modules | **Type:** Function | **Aliases:** —

## Synopsis

> Executes a refactoring operation on a source file using the specified IDE and
AI prompt template.

## Description

This function automates the refactoring process by preparing an AI prompt based
on the refactor definition, detecting or selecting the appropriate IDE (VS Code
or Visual Studio), and opening the target file with the prepared prompt. The
function handles prompt template processing, IDE detection, and automation of
the refactoring workflow.

## Syntax

```powershell
Assert-RefactorFile -Path <String> [[-RefactorSettings] <GenXdev.Helpers.RefactorSettings>] [-AllowLongRunningTests] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-Path` | String | ✅ | — | 0 | — | The path to the source file to improve |
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

# Test-RefactorLLMSelection

> **Module:** GenXdev.Coding.PowerShell.Modules | **Type:** Function | **Aliases:** —

## Synopsis

> Evaluates source files for refactoring eligibility using LLM analysis.

## Description

Uses Language Learning Model (LLM) analysis to determine if a source code file
should be selected for refactoring based on specified criteria. The function
processes the file content through an LLM query and returns a boolean response.

## Syntax

```powershell
Test-RefactorLLMSelection -RefactorDefinition <GenXdev.Helpers.RefactorDefinition> -Path <String> [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-RefactorDefinition` | GenXdev.Helpers.RefactorDefinition | ✅ | — | 0 | — | The refactor definition containing LLM settings |
| `-Path` | String | ✅ | — | 1 | — | The path to the source file to evaluate |

## Examples

### Test-RefactorLLMSelection -RefactorDefinition $refDef -Path "C:\source.ps1"

```powershell
Test-RefactorLLMSelection -RefactorDefinition $refDef -Path "C:\source.ps1"
```

### $def | Test-RefactorLLMSelection -Path source.ps1

```powershell
$def | Test-RefactorLLMSelection -Path source.ps1
```

## Related Links

- [Test-RefactorLLMSelection on GitHub](https://github.com/genXdev/genXdev)

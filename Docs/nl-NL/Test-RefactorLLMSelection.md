# Test-RefactorLLMSelection

> **Module:** GenXdev.Coding.PowerShell.Modules | **Type:** Function | **Aliases:** —

## Synopsis

> Evalueert bronbestanden op geschiktheid voor refactoring met behulp van LLM-analyse.

## Description

Maakt gebruik van Language Learning Model (LLM)-analyse om te bepalen of een broncodebestand moet worden geselecteerd voor refactoring op basis van gespecificeerde criteria. De functie verwerkt de bestandsinhoud via een LLM-query en retourneert een booleaanse respons.

## Syntax

```powershell
Test-RefactorLLMSelection -RefactorDefinition <GenXdev.Helpers.RefactorDefinition> -Path <String> [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-RefactorDefinition` | GenXdev.Helpers.RefactorDefinition | ✅ | — | 0 | — | De refactordefinitie met LLM-instellingen |
| `-Path` | String | ✅ | — | 1 | — | Het pad naar het bronbestand dat moet worden geëvalueerd |

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

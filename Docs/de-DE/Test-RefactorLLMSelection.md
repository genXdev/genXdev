# Test-RefactorLLMSelection

> **Module:** GenXdev.Coding.PowerShell.Modules | **Type:** Function | **Aliases:** —

## Synopsis

> Bewertet Quelldateien auf Refactoring-Eignung mittels LLM-Analyse.

## Description

Verwendet die Analyse eines Sprachlernmodells (LLM), um zu bestimmen, ob eine Quellcodedatei basierend auf festgelegten Kriterien für die Refaktorisierung ausgewählt werden sollte. Die Funktion verarbeitet den Dateiinhalt durch eine LLM-Abfrage und gibt eine boolesche Antwort zurück.

## Syntax

```powershell
Test-RefactorLLMSelection -RefactorDefinition <GenXdev.Helpers.RefactorDefinition> -Path <String> [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-RefactorDefinition` | GenXdev.Helpers.RefactorDefinition | ✅ | — | 0 | — | Die Refactordefinition, die LLM-Einstellungen enthält |
| `-Path` | String | ✅ | — | 1 | — | Der Pfad zur auszuwertenden Quelldatei |

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

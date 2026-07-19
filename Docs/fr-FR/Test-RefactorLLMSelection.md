# Test-RefactorLLMSelection

> **Module:** GenXdev.Coding.PowerShell.Modules | **Type:** Function | **Aliases:** —

## Synopsis

> Évalue les fichiers sources pour déterminer leur éligibilité au refactoring à l'aide d'une analyse LLM.

## Description

Utilise l'analyse du modèle d'apprentissage linguistique (LLM) pour déterminer si un fichier de code source doit être sélectionné pour une refactorisation en fonction de critères spécifiés. La fonction traite le contenu du fichier via une requête LLM et renvoie une réponse booléenne.

## Syntax

```powershell
Test-RefactorLLMSelection -RefactorDefinition <GenXdev.Helpers.RefactorDefinition> -Path <String> [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-RefactorDefinition` | GenXdev.Helpers.RefactorDefinition | ✅ | — | 0 | — | La définition de refactorisation contenant les paramètres LLM |
| `-Path` | String | ✅ | — | 1 | — | Le chemin du fichier source à évaluer |

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

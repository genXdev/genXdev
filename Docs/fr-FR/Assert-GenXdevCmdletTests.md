# Assert-GenXdevCmdletTests

> **Module:** GenXdev.Coding.PowerShell.Modules | **Type:** Function | **Aliases:** `improvecmdlettests

## Synopsis

> Valide et améliore les tests unitaires d'une cmdlet GenXdev spécifiée.

## Description

Cette fonction aide à maintenir et améliorer les tests unitaires pour les cmdlets GenXdev en :
1. Créant les fichiers de test s'ils n'existent pas
2. Ouvrant la cmdlet dans VS Code
3. Préparant et appliquant des invites IA pour la génération/amélioration des tests
4. Gérant le flux de travail d'exécution des tests

## Syntax

```powershell
Assert-GenXdevCmdletTests -CmdletName <String> [[-Prompt] <String>] [[-PromptKey] <String>] [-AssertFailedTest] [-ContinuationHandled] [-EditPrompt] [-FromScripts] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-CmdletName` | String | ✅ | ✅ (ByValue, ByPropertyName) | 0 | — | Le nom de la cmdlet pour améliorer les tests unitaires |
| `-Prompt` | String | — | — | 1 | `''` | Texte personnalisé d'invite IA à utiliser |
| `-PromptKey` | String | — | — | 2 | — | La clé de prompt IA à utiliser pour la sélection de template |
| `-EditPrompt` | SwitchParameter | — | — | Named | — | N'édite que l'invite AI |
| `-AssertFailedTest` | SwitchParameter | — | — | Named | — | Indique d'asserter un test échoué |
| `-FromScripts` | SwitchParameter | — | — | Named | — | Rechercher dans les fichiers de script plutôt que dans les modules |
| `-ContinuationHandled` | SwitchParameter | — | — | Named | — | The `-ContinuationHandled` parameter. |

## Examples

### Assert-GenXdevCmdletTests -CmdletName "Get-GenXDevModuleInfo" -EditPrompt

```powershell
Assert-GenXdevCmdletTests -CmdletName "Get-GenXDevModuleInfo" -EditPrompt
```

### improvecmdlettests Get-GenXDevModuleInfo -AssertFailedTest ##############################################################################

```powershell
improvecmdlettests Get-GenXDevModuleInfo -AssertFailedTest
##############################################################################
```

## Related Links

- [Assert-GenXdevCmdletTests on GitHub](https://github.com/genXdev/genXdev)

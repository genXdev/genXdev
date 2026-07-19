# Assert-GenXdevCmdletTests

> **Module:** GenXdev.Coding.PowerShell.Modules | **Type:** Function | **Aliases:** `improvecmdlettests

## Synopsis

> Valideert en verbetert eenheidstests van een opgegeven GenXdev-cmdlet.

## Description

Deze functie helpt bij het onderhouden en verbeteren van unittesten voor GenXdev-cmdlets door:
1. Testbestanden te maken als ze nog niet bestaan
2. De cmdlet in VS Code te openen
3. AI-prompts voor te bereiden en toe te passen voor het genereren/verbeteren van tests
4. De testuitvoeringsworkflow te beheren

## Syntax

```powershell
Assert-GenXdevCmdletTests -CmdletName <String> [[-Prompt] <String>] [[-PromptKey] <String>] [-AssertFailedTest] [-ContinuationHandled] [-EditPrompt] [-FromScripts] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-CmdletName` | String | ✅ | ✅ (ByValue, ByPropertyName) | 0 | — | The name of the cmdlet to improve unit-tests for |
| `-Prompt` | String | — | — | 1 | `''` | Door de gebruiker gedefinieerde AI-prompt tekst om te gebruiken |
| `-PromptKey` | String | — | — | 2 | — | De AI-prompt-sleutel die moet worden gebruikt voor sjabloonselectie |
| `-EditPrompt` | SwitchParameter | — | — | Named | — | Schakel over naar alleen het bewerken van de AI-prompt |
| `-AssertFailedTest` | SwitchParameter | — | — | Named | — | Geeft aan dat een test is mislukt |
| `-FromScripts` | SwitchParameter | — | — | Named | — | Zoeken in scriptbestanden in plaats van modules |
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

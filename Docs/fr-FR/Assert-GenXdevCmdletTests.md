# Assert-GenXdevCmdletTests

> **Module:** GenXdev.Coding.PowerShell.Modules | **Type:** Function | **Aliases:** `improvecmdlettests

## Synopsis

> *(No synopsis provided)*

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

## Related Links

- [Assert-GenXdevCmdletTests on GitHub](https://github.com/genXdev/genXdev)

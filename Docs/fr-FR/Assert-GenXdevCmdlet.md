# Assert-GenXdevCmdlet

> **Module:** GenXdev.Coding.PowerShell.Modules | **Type:** Function | **Aliases:** `improvecmdlet

## Synopsis

> Améliore la documentation et l'implémentation des cmdlets GenXdev via l'assistance IA.

## Description

Cette fonction améliore les cmdlets GenXdev en analysant et en améliorant leur code via des invites AI. Elle peut intégrer les cmdlets dans des modules, mettre à jour la documentation et vérifier la bonne implémentation. La fonction prend en charge des modèles d'invites personnalisés et peut ouvrir des fichiers dans Visual Studio Code ou Visual Studio.

## Syntax

```powershell
Assert-GenXdevCmdlet [[-CmdletName] <String>] [[-PromptKey] <String>] [[-Prompt] <String>] [-Code] [-FromScripts] [-Integrate] [-ModuleName <String[]>] [-NoLocal] [-OnlyPublished] [-VisualStudio] [<CommonParameters>]

Assert-GenXdevCmdlet [-EditPrompt] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-CmdletName` | String | — | — | 0 | — | Motif de recherche pour filtrer les cmdlets 🌐 *Supports wildcards* |
| `-ModuleName` | String[] | — | ✅ (ByValue, ByPropertyName) | Named | — | Noms de modules GenXdev à rechercher 🌐 *Supports wildcards* |
| `-PromptKey` | String | — | — | 1 | `'CheckAllRequirements'` | La clé de prompt IA à utiliser pour la sélection de template |
| `-Prompt` | String | — | — | 2 | `''` | Texte personnalisé d'invite IA à utiliser |
| `-NoLocal` | SwitchParameter | — | — | Named | — | Ignorer les versions des modules locaux |
| `-OnlyPublished` | SwitchParameter | — | — | Named | — | Only include published versions |
| `-FromScripts` | SwitchParameter | — | — | Named | — | Search in script files |
| `-Code` | SwitchParameter | — | — | Named | — | Ouvrir dans Visual Studio Code |
| `-VisualStudio` | SwitchParameter | — | — | Named | — | Ouvrir dans Visual Studio |
| `-EditPrompt` | SwitchParameter | — | — | Named | — | Translate the following text into fr-FR. IMPORTANT TRANSLATION RULES:
1. Analyze the input format first - it could be code, markup, structured data, or plain text.
2. Preserve all syntax, structure, and technical elements like programming keywords, tags, or data format specific elements.
3. Only translate human-readable text portions like comments, string values, documentation, or natural language content.
4. Maintain exact formatting, indentation, and line breaks.
5. Never translate identifiers, function names, variables, or technical keywords. *(Parameter set: )* |
| `-Integrate` | SwitchParameter | — | — | Named | — | Intégrer la cmdlet dans le module |

## Examples

### Assert-GenXdevCmdlet -CmdletName "Get-Something" -PromptKey "CheckDocs" -Code

```powershell
Assert-GenXdevCmdlet -CmdletName "Get-Something" -PromptKey "CheckDocs" -Code
```

### improvecmdlet Get-Something CheckDocs -c

```powershell
improvecmdlet Get-Something CheckDocs -c
```

## Related Links

- [Assert-GenXdevCmdlet on GitHub](https://github.com/genXdev/genXdev)

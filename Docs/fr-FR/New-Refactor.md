# New-Refactor

> **Module:** GenXdev.Coding.PowerShell.Modules | **Type:** Function | **Aliases:** `newrefactor

## Synopsis

> Crée un nouvel ensemble de refactorisation pour les tâches de transformation de code.

## Description

Crée et configure une nouvelle définition de refactorisation avec des paramètres spécifiés pour les transformations de code basées sur LLM. La fonction gère :
- La mise en place de la configuration de refactorisation
- La configuration des critères de sélection et des invites
- La gestion des paramètres du modèle LLM
- L'intégration avec les environnements de développement
- La persistance des définitions de refactorisation

## Syntax

```powershell
New-Refactor -Name <String> -PromptKey <String> [[-Prompt] <String>] [[-SelectionScript] <String>] [[-SelectionPrompt] <String>] [[-LLMQueryType] <String>] [-ApiEndpoint <String>] [-ApiKey <String>] [-AutoAddModifiedFiles] [-ClearSession] [-Code] [-ExposedCmdLets <GenXdev.Helpers.ExposedCmdletDefinition[]>] [-FilesToAdd <IO.FileInfo[]>] [-KeysToSend <String[]>] [-Model <String>] [-PreferencesDatabasePath <String>] [-Priority <Int32>] [-SelectByFreeGpuRam] [-SelectByFreeRam] [-SessionOnly] [-SkipSession] [-Temperature <Double>] [-TimeoutSeconds <Int32>] [-VisualStudio] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-Name` | String | ✅ | — | 0 | — | Le nom de ce nouvel ensemble de refactorisation |
| `-PromptKey` | String | ✅ | — | 1 | — | La clé d'invite indique quel script d'invite utiliser |
| `-Prompt` | String | — | — | 2 | `''` | Texte personnalisé pour remplacer le modèle |
| `-SelectionScript` | String | — | — | 3 | — | Script PowerShell pour sélectionner les éléments à refactoriser |
| `-SelectionPrompt` | String | — | — | 4 | — | Guide de sélection du LLM |
| `-LLMQueryType` | String | — | — | 5 | `'Coding'` | Le type de requête LLM |
| `-Model` | String | — | — | Named | — | L'identifiant ou le modèle à utiliser pour les opérations d'IA |
| `-SelectByFreeRam` | SwitchParameter | — | — | Named | — | Select configuration by available system RAM |
| `-SelectByFreeGpuRam` | SwitchParameter | — | — | Named | — | Select configuration by available GPU RAM |
| `-Temperature` | Double | — | — | Named | `-1` | Température pour l'aléatoire de la réponse (0.0-1.0) |
| `-ApiEndpoint` | String | — | — | Named | — | L'URL du point de terminaison de l'API pour les opérations d'IA |
| `-ApiKey` | String | — | — | Named | — | La clé API pour les opérations IA authentifiées |
| `-TimeoutSeconds` | Int32 | — | — | Named | — | Le délai d'attente en secondes pour les opérations d'IA |
| `-Priority` | Int32 | — | — | Named | `0` | Priorité pour cette refactorisation définie |
| `-ExposedCmdLets` | GenXdev.Helpers.ExposedCmdletDefinition[] | — | — | Named | `@()` | Array de définitions de commandes PowerShell pour les outils LLM |
| `-FilesToAdd` | IO.FileInfo[] | — | — | Named | `@()` | Array de fichiers à traiter |
| `-PreferencesDatabasePath` | String | — | — | Named | — | Chemin de la base de données pour les fichiers de données de préférence |
| `-AutoAddModifiedFiles` | SwitchParameter | — | — | Named | — | Ajoutera automatiquement les fichiers modifiés à la file d'attente |
| `-SessionOnly` | SwitchParameter | — | — | Named | — | Utiliser les paramètres alternatifs stockés dans la session pour les préférences IA |
| `-ClearSession` | SwitchParameter | — | — | Named | — | Clear alternative settings stored in session for AI preferences |
| `-SkipSession` | SwitchParameter | — | — | Named | — | Store settings only in persistent preferences without affecting session |
| `-Code` | SwitchParameter | — | — | Named | — | Ouvrir des fichiers dans Visual Studio Code |
| `-VisualStudio` | SwitchParameter | — | — | Named | — | Ouvrir dans Visual Studio |
| `-KeysToSend` | String[] | — | — | Named | `@()` | Frappes à envoyer après l'ouverture des fichiers |

## Examples

### New-Refactor -Name "UpdateLogging" -PromptKey "LoggingRefactor" `     -SelectionScript "Get-LoggingMethods" -Priority 1 `     -Code

```powershell
New-Refactor -Name "UpdateLogging" -PromptKey "LoggingRefactor" `
    -SelectionScript "Get-LoggingMethods" -Priority 1 `
    -Code
```

### newrefactor UpdateLogging LoggingRefactor -p "Get-LoggingMethods" -c

```powershell
newrefactor UpdateLogging LoggingRefactor -p "Get-LoggingMethods" -c
```

## Related Links

- [New-Refactor on GitHub](https://github.com/genXdev/genXdev)

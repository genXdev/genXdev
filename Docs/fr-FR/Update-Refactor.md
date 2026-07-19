# Update-Refactor

> **Module:** GenXdev.Coding.PowerShell.Modules | **Type:** Function | **Aliases:** `updaterefactor

## Synopsis

> Met à jour et gère les ensembles de refactorisation, y compris la sélection et le traitement des fichiers.

## Description

Assure une gestion complète des ensembles de refactorisation en :
- Ajoutant ou supprimant des fichiers des files d'attente de traitement
- Nettoyant les fichiers supprimés de l'ensemble
- Gérant les informations d'état et le suivi de progression
- Gérant la sélection et le traitement de fichiers basés sur LLM
- Supportant la gestion automatique et manuelle des fichiers
- Tenant des journaux détaillés de toutes les opérations
- Traitant élégamment les fichiers supprimés (ignorés sauf si CleanUpDeletedFiles est utilisé)

## Syntax

```powershell
Update-Refactor [[-Name] <String[]>] [<CommonParameters>]

Update-Refactor [[-Refactor] <GenXdev.Helpers.RefactorDefinition[]>] [<CommonParameters>]

Update-Refactor [[-FilesToAdd] <IO.FileInfo[]>] [[-FilesToRemove] <IO.FileInfo[]>] [-ApiEndpoint <String>] [-ApiKey <String>] [-AskBeforeLLMSelection] [-CleanUpDeletedFiles] [-Clear] [-ClearLog] [-ClearSession] [-Code] [-ExposedCmdLets <GenXdev.Helpers.ExposedCmdletDefinition[]>] [-KeysToSend <String[]>] [-LLMQueryType <String>] [-MarkAllCompleted] [-Model <String>] [-PerformAISelections] [-PerformAutoSelections] [-PreferencesDatabasePath <String>] [-Priority <Int32>] [-Prompt <String>] [-PromptKey <String>] [-RedoLast] [-ReprocessModifiedFiles] [-Reset] [-ResetLMSelections] [-RetryFailedLLMSelections] [-SelectByCreationDateFrom <DateTime>] [-SelectByCreationDateTo <DateTime>] [-SelectByFreeGpuRam] [-SelectByFreeRam] [-SelectByModifiedDateFrom <DateTime>] [-SelectByModifiedDateTo <DateTime>] [-SelectionPrompt <String>] [-SelectionScript <String>] [-SessionOnly] [-SkipSession] [-Speak] [-Temperature <Double>] [-TimeoutSeconds <Int32>] [-VisualStudio] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-Name` | String[] | — | ✅ (ByValue, ByPropertyName) | 0 | `@('*')` | Le nom de la refactorisation, accepte les caractères génériques *(Parameter set: )* 🌐 *Supports wildcards* |
| `-Refactor` | GenXdev.Helpers.RefactorDefinition[] | — | — | 1 | — | L'ensemble de refactoring à mettre à jour *(Parameter set: )* |
| `-FilesToAdd` | IO.FileInfo[] | — | — | 2 | `@()` | Noms de fichiers à ajouter |
| `-FilesToRemove` | IO.FileInfo[] | — | — | 3 | `@()` | Noms de fichiers à supprimer |
| `-SelectByModifiedDateFrom` | DateTime | — | — | Named | — | Sélectionnez les fichiers par date de modification |
| `-SelectByModifiedDateTo` | DateTime | — | — | Named | — | Sélectionnez les fichiers par date de modification pour |
| `-SelectByCreationDateFrom` | DateTime | — | — | Named | — | Sélectionnez les fichiers par date de création à partir de |
| `-SelectByCreationDateTo` | DateTime | — | — | Named | — | Sélectionner les fichiers par date de création afin de |
| `-PromptKey` | String | — | — | Named | — | La clé d'invite indique quel script d'invite utiliser |
| `-Prompt` | String | — | — | Named | `''` | La clé d'invite indique quel script d'invite utiliser |
| `-SelectionScript` | String | — | — | Named | — | Script PowerShell pour la fonction de sélection des éléments à refactoriser |
| `-SelectionPrompt` | String | — | — | Named | — | If provided, will invoke LLM to do the selection based on the content of the script |
| `-LLMQueryType` | String | — | — | Named | `'Coding'` | Le type de requête LLM |
| `-Model` | String | — | — | Named | — | L'identifiant ou le modèle à utiliser pour les opérations d'IA |
| `-Temperature` | Double | — | — | Named | `-1` | Température pour l'aléatoire de la réponse (0.0-1.0) |
| `-ApiEndpoint` | String | — | — | Named | — | L'URL du point de terminaison de l'API pour les opérations d'IA |
| `-ApiKey` | String | — | — | Named | — | La clé API pour les opérations IA authentifiées |
| `-TimeoutSeconds` | Int32 | — | — | Named | — | Le délai d'attente en secondes pour les opérations d'IA |
| `-Priority` | Int32 | — | — | Named | — | Priorité pour cette refactorisation définie |
| `-ExposedCmdLets` | GenXdev.Helpers.ExposedCmdletDefinition[] | — | — | Named | `@()` | Array of PowerShell command definitions to use as tools during LLM selection |
| `-KeysToSend` | String[] | — | — | Named | `@()` | The keys to invoke as key strokes after opening the file |
| `-PreferencesDatabasePath` | String | — | — | Named | — | Chemin de la base de données pour les fichiers de données de préférence |
| `-CleanUpDeletedFiles` | SwitchParameter | — | — | Named | — | Nettoyer les fichiers supprimés |
| `-AskBeforeLLMSelection` | SwitchParameter | — | — | Named | — | Option pour supprimer l'interaction utilisateur |
| `-PerformAutoSelections` | SwitchParameter | — | — | Named | — | Interrupteur pour activer le traitement de sélection de fichiers basé sur LLM |
| `-PerformAISelections` | SwitchParameter | — | — | Named | — | Switch to process all files in the refactor set |
| `-RetryFailedLLMSelections` | SwitchParameter | — | — | Named | — | Passer aux sélections de LLM ayant échoué |
| `-Clear` | SwitchParameter | — | — | Named | — | Effacer tous les fichiers de l'ensemble de refactorisation |
| `-ClearLog` | SwitchParameter | — | — | Named | — | Vider le journal de l'ensemble de refactorisation |
| `-Reset` | SwitchParameter | — | — | Named | — | Commencez depuis le début de l'ensemble de refactorisation |
| `-ResetLMSelections` | SwitchParameter | — | — | Named | — | Redémarrer toutes les sélections LLM |
| `-MarkAllCompleted` | SwitchParameter | — | — | Named | — | Mark all files as refactored |
| `-RedoLast` | SwitchParameter | — | — | Named | — | Refaites la dernière refactorisation |
| `-ReprocessModifiedFiles` | SwitchParameter | — | — | Named | — | Reprocesser automatiquement les fichiers modifiés depuis la dernière mise à jour |
| `-Code` | SwitchParameter | — | — | Named | — | L'IDE pour ouvrir le fichier dans |
| `-VisualStudio` | SwitchParameter | — | — | Named | — | Ouvrir dans Visual Studio |
| `-Speak` | SwitchParameter | — | — | Named | — | Détails du prochain refactoring à définir. |
| `-SelectByFreeRam` | SwitchParameter | — | — | Named | — | Select configuration by available system RAM |
| `-SelectByFreeGpuRam` | SwitchParameter | — | — | Named | — | Select configuration by available GPU RAM |
| `-SessionOnly` | SwitchParameter | — | — | Named | — | Utiliser les paramètres alternatifs stockés dans la session pour les préférences IA |
| `-ClearSession` | SwitchParameter | — | — | Named | — | Clear alternative settings stored in session for AI preferences |
| `-SkipSession` | SwitchParameter | — | — | Named | — | Store settings only in persistent preferences without affecting session |

## Examples

### Update-Refactor -Name "CodeCleanup" -FilesToAdd ".\src\*.cs" `     -CleanUpDeletedFiles -PerformAutoSelections -ReprocessModifiedFiles

```powershell
Update-Refactor -Name "CodeCleanup" -FilesToAdd ".\src\*.cs" `
    -CleanUpDeletedFiles -PerformAutoSelections -ReprocessModifiedFiles
```

### Get-Refactor "MyRefactor" | Update-Refactor -Reset -Clear

```powershell
Get-Refactor "MyRefactor" | Update-Refactor -Reset -Clear
```

### updaterefactor * -Clear -Reset

```powershell
updaterefactor * -Clear -Reset
```

## Related Links

- [Update-Refactor on GitHub](https://github.com/genXdev/genXdev)

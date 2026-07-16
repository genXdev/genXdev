# Update-Refactor

> **Module:** GenXdev.Coding.PowerShell.Modules | **Type:** Function | **Aliases:** `updaterefactor

## Synopsis

> *(No synopsis provided)*

## Syntax

```powershell
Update-Refactor [[-Name] <String[]>] [<CommonParameters>]

Update-Refactor [[-Refactor] <GenXdev.Helpers.RefactorDefinition[]>] [<CommonParameters>]

Update-Refactor [[-FilesToAdd] <IO.FileInfo[]>] [[-FilesToRemove] <IO.FileInfo[]>] [-ApiEndpoint <String>] [-ApiKey <String>] [-AskBeforeLLMSelection] [-CleanUpDeletedFiles] [-Clear] [-ClearLog] [-ClearSession] [-Code] [-ExposedCmdLets <GenXdev.Helpers.ExposedCmdletDefinition[]>] [-KeysToSend <String[]>] [-LLMQueryType <String>] [-MarkAllCompleted] [-Model <String>] [-PerformAISelections] [-PerformAutoSelections] [-PreferencesDatabasePath <String>] [-Priority <Int32>] [-Prompt <String>] [-PromptKey <String>] [-RedoLast] [-ReprocessModifiedFiles] [-Reset] [-ResetLMSelections] [-RetryFailedLLMSelections] [-SelectByCreationDateFrom <DateTime>] [-SelectByCreationDateTo <DateTime>] [-SelectByFreeGpuRam] [-SelectByFreeRam] [-SelectByModifiedDateFrom <DateTime>] [-SelectByModifiedDateTo <DateTime>] [-SelectionPrompt <String>] [-SelectionScript <String>] [-SessionOnly] [-SkipSession] [-Speak] [-Temperature <Double>] [-TimeoutSeconds <Int32>] [-VisualStudio] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-Name` | String[] | — | ✅ (ByValue, ByPropertyName) | 0 | `@('*')` | De naam van de refactor, accepteert wildcards *(Parameter set: )* 🌐 *Supports wildcards* |
| `-Refactor` | GenXdev.Helpers.RefactorDefinition[] | — | — | 1 | — | De refactoring is ingesteld om bij te werken *(Parameter set: )* |
| `-FilesToAdd` | IO.FileInfo[] | — | — | 2 | `@()` | Te verwerken bestanden |
| `-FilesToRemove` | IO.FileInfo[] | — | — | 3 | `@()` | Filenamen om te verwijderen |
| `-SelectByModifiedDateFrom` | DateTime | — | — | Named | — | Selecteer bestanden op wijzigingsdatum van |
| `-SelectByModifiedDateTo` | DateTime | — | — | Named | — | Selecteer bestanden op gewijzigde datum |
| `-SelectByCreationDateFrom` | DateTime | — | — | Named | — | Selecteer bestanden op aanmaakdatum van |
| `-SelectByCreationDateTo` | DateTime | — | — | Named | — | Selecteer bestanden op aanmaakdatum om |
| `-PromptKey` | String | — | — | Named | — | De prompt-sleutel geeft aan welk promptscript gebruikt moet worden |
| `-Prompt` | String | — | — | Named | `''` | De prompt-sleutel geeft aan welk promptscript gebruikt moet worden |
| `-SelectionScript` | String | — | — | Named | — | PowerShell-script voor functie om items te selecteren voor refactoring |
| `-SelectionPrompt` | String | — | — | Named | — | Indien opgegeven, wordt de LLM aangeroepen om de selectie te maken op basis van de inhoud van het script |
| `-LLMQueryType` | String | — | — | Named | `'Coding'` | Het type LLM-query |
| `-Model` | String | — | — | Named | — | Het modelidentificatiepatroon of de patroon die moet worden gebruikt voor AI-operaties |
| `-Temperature` | Double | — | — | Named | `-1` | Temperatuur voor reactie-willekeur (0.0-1.0) |
| `-ApiEndpoint` | String | — | — | Named | — | De API-eindpunt-URL voor AI-operaties |
| `-ApiKey` | String | — | — | Named | — | De API-sleutel voor geauthenticeerde AI-bewerkingen |
| `-TimeoutSeconds` | Int32 | — | — | Named | — | De time-out voor AI-bewerkingen in seconden |
| `-Priority` | Int32 | — | — | Named | — | Prioriteit voor deze refactor set |
| `-ExposedCmdLets` | GenXdev.Helpers.ExposedCmdletDefinition[] | — | — | Named | `@()` | Array van PowerShell-commando-definities om als hulpmiddelen te gebruiken tijdens LLM-selectie |
| `-KeysToSend` | String[] | — | — | Named | `@()` | The keys to invoke as key strokes after opening the file |
| `-PreferencesDatabasePath` | String | — | — | Named | — | Databasepad voor voorkeursgegevensbestanden |
| `-CleanUpDeletedFiles` | SwitchParameter | — | — | Named | — | Opruimen van verwijderde bestanden |
| `-AskBeforeLLMSelection` | SwitchParameter | — | — | Named | — | Schakel in om gebruikersinteractie te onderdrukken |
| `-PerformAutoSelections` | SwitchParameter | — | — | Named | — | Schakelaar om LLM-gebaseerde bestandsselectieverwerking in te schakelen |
| `-PerformAISelections` | SwitchParameter | — | — | Named | — | Overschakelen om alle bestanden in de refactor-set te verwerken |
| `-RetryFailedLLMSelections` | SwitchParameter | — | — | Named | — | Schakel over naar het opnieuw proberen van mislukte LLM-selecties |
| `-Clear` | SwitchParameter | — | — | Named | — | Clear all files from the refactor set |
| `-ClearLog` | SwitchParameter | — | — | Named | — | Wis het logboek van de refactorset. |
| `-Reset` | SwitchParameter | — | — | Named | — | Start from the beginning of the refactor set |
| `-ResetLMSelections` | SwitchParameter | — | — | Named | — | Herstart alle LLM-selecties |
| `-MarkAllCompleted` | SwitchParameter | — | — | Named | — | Markeer alle bestanden als gerefactord |
| `-RedoLast` | SwitchParameter | — | — | Named | — | Redo the last refactor |
| `-ReprocessModifiedFiles` | SwitchParameter | — | — | Named | — | Automatisch opnieuw verwerken van bestanden die sinds de laatste update zijn gewijzigd |
| `-Code` | SwitchParameter | — | — | Named | — | De IDE om het bestand in te openen |
| `-VisualStudio` | SwitchParameter | — | — | Named | — | Openen in Visual Studio |
| `-Speak` | SwitchParameter | — | — | Named | — | Alright, let's outline the next refactor. Focus on extracting the user authentication logic into a dedicated service module. Create a new file 'authService.js' to handle login, logout, and token validation. Then, update the existing controller to delegate these operations to the service. Also, centralize error handling in a middleware. This will improve separation of concerns and testability. |
| `-SelectByFreeRam` | SwitchParameter | — | — | Named | — | Selecteer configuratie op basis van beschikbaar systeemgeheugen |
| `-SelectByFreeGpuRam` | SwitchParameter | — | — | Named | — | Selecteer configuratie op basis van beschikbaar GPU-geheugen |
| `-SessionOnly` | SwitchParameter | — | — | Named | — | Gebruik alternatieve instellingen opgeslagen in sessie voor AI-voorkeuren |
| `-ClearSession` | SwitchParameter | — | — | Named | — | Wis alternatieve instellingen opgeslagen in sessie voor AI-voorkeuren |
| `-SkipSession` | SwitchParameter | — | — | Named | — | Instellingen alleen in permanente voorkeuren opslaan zonder de sessie te beïnvloeden |

## Related Links

- [Update-Refactor on GitHub](https://github.com/genXdev/genXdev)

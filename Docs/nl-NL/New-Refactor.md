# New-Refactor

> **Module:** GenXdev.Coding.PowerShell.Modules | **Type:** Function | **Aliases:** `newrefactor

## Synopsis

> Maakt een nieuwe refactoring-set aan voor codetransformatietaken.

## Description

Maakt een nieuwe refactoringdefinitie aan en configureert deze met gespecificeerde instellingen voor LLM-gebaseerde codetransformaties. De functie behandelt:
- Het opzetten van refactoringconfiguratie
- Het configureren van selectiecriteria en prompts
- Het beheren van LLM-modelinstellingen
- Integratie met ontwikkelomgevingen
- Het persistent maken van refactordefinities

## Syntax

```powershell
New-Refactor -Name <String> -PromptKey <String> [[-Prompt] <String>] [[-SelectionScript] <String>] [[-SelectionPrompt] <String>] [[-LLMQueryType] <String>] [-ApiEndpoint <String>] [-ApiKey <String>] [-AutoAddModifiedFiles] [-ClearSession] [-Code] [-ExposedCmdLets <GenXdev.Helpers.ExposedCmdletDefinition[]>] [-FilesToAdd <IO.FileInfo[]>] [-KeysToSend <String[]>] [-Model <String>] [-PreferencesDatabasePath <String>] [-Priority <Int32>] [-SelectByFreeGpuRam] [-SelectByFreeRam] [-SessionOnly] [-SkipSession] [-Temperature <Double>] [-TimeoutSeconds <Int32>] [-VisualStudio] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-Name` | String | ✅ | — | 0 | — | De naam van deze nieuwe refactor set |
| `-PromptKey` | String | ✅ | — | 1 | — | De prompt-sleutel geeft aan welk promptscript gebruikt moet worden |
| `-Prompt` | String | — | — | 2 | `''` | Aangepaste prompttekst om de sjabloon te overschrijven |
| `-SelectionScript` | String | — | — | 3 | — | PowerShell-script voor het selecteren van items om te herstructureren |
| `-SelectionPrompt` | String | — | — | 4 | — | Selectiehandleiding voor LLM |
| `-LLMQueryType` | String | — | — | 5 | `'Coding'` | Het type LLM-query |
| `-Model` | String | — | — | Named | — | Het modelidentificatiepatroon of de patroon die moet worden gebruikt voor AI-operaties |
| `-SelectByFreeRam` | SwitchParameter | — | — | Named | — | Selecteer configuratie op basis van beschikbaar systeemgeheugen |
| `-SelectByFreeGpuRam` | SwitchParameter | — | — | Named | — | Selecteer configuratie op basis van beschikbaar GPU-geheugen |
| `-Temperature` | Double | — | — | Named | `-1` | Temperatuur voor reactie-willekeur (0.0-1.0) |
| `-ApiEndpoint` | String | — | — | Named | — | De API-eindpunt-URL voor AI-operaties |
| `-ApiKey` | String | — | — | Named | — | De API-sleutel voor geauthenticeerde AI-bewerkingen |
| `-TimeoutSeconds` | Int32 | — | — | Named | — | De time-out voor AI-bewerkingen in seconden |
| `-Priority` | Int32 | — | — | Named | `0` | Prioriteit voor deze refactor set |
| `-ExposedCmdLets` | GenXdev.Helpers.ExposedCmdletDefinition[] | — | — | Named | `@()` | Array of PowerShell command definitions for LLM tools |
| `-FilesToAdd` | IO.FileInfo[] | — | — | Named | `@()` | Reeks bestanden om te verwerken |
| `-PreferencesDatabasePath` | String | — | — | Named | — | Databasepad voor voorkeursgegevensbestanden |
| `-AutoAddModifiedFiles` | SwitchParameter | — | — | Named | — | Voegt gewijzigde bestanden automatisch toe aan de wachtrij |
| `-SessionOnly` | SwitchParameter | — | — | Named | — | Gebruik alternatieve instellingen opgeslagen in sessie voor AI-voorkeuren |
| `-ClearSession` | SwitchParameter | — | — | Named | — | Wis alternatieve instellingen opgeslagen in sessie voor AI-voorkeuren |
| `-SkipSession` | SwitchParameter | — | — | Named | — | Instellingen alleen in permanente voorkeuren opslaan zonder de sessie te beïnvloeden |
| `-Code` | SwitchParameter | — | — | Named | — | Bestanden openen in Visual Studio Code |
| `-VisualStudio` | SwitchParameter | — | — | Named | — | Openen in Visual Studio |
| `-KeysToSend` | String[] | — | — | Named | `@()` | Toetsaanslagen om te verzenden na het openen van bestanden |

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

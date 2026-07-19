# Invoke-ImageKeywordUpdate

> **Module:** GenXdev.AI.Queries | **Type:** Function | **Aliases:** `imagekeywordgeneration

## Synopsis

> Werk bijhoudt metadata van afbeeldingen bij met AI-gegenereerde beschrijvingen en trefwoorden.

## Description

De functie Invoke-ImageKeywordUpdate analyseert afbeeldingen met behulp van AI om beschrijvingen, trefwoorden en andere metadata te genereren. Het maakt een bijbehorend JSON-bestand aan voor elke afbeelding met deze informatie. De functie kan alleen nieuwe afbeeldingen verwerken of bestaande metadata bijwerken en ondersteunt recursief scannen van mappen.

## Syntax

```powershell
Invoke-ImageKeywordUpdate [[-ImageDirectories] <String[]>] [[-Instructions] <String>] [-ApiEndpoint <String>] [-ApiKey <String>] [-AutoUpdateFaces] [-ClearSession] [-ExposedCmdLets <String[]>] [-FacesDirectory <String>] [-Functions <String[]>] [-ImageDetail <String>] [-IncludeThoughts] [-Language <String>] [-LLMQueryType <String>] [-MaxToolcallBackLength <Int32>] [-Model <String>] [-NoConfirmationToolFunctionNames <String[]>] [-NoContext] [-OnlyNew] [-PassThru] [-PreferencesDatabasePath <String>] [-Recurse] [-ResponseFormat <String>] [-RetryFailed] [-SessionOnly] [-SkipSession] [-Temperature <Double>] [-TimeoutSeconds <Int32>] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-ImageDirectories` | String[] | — | — | 0 | `@('.\')` | De directorypaden die afbeeldingen bevatten om te verwerken |
| `-Recurse` | SwitchParameter | — | — | Named | — | Verwerk afbeeldingen in de opgegeven map en alle submappen |
| `-OnlyNew` | SwitchParameter | — | — | Named | — | Only process images that don't already have face metadata files |
| `-RetryFailed` | SwitchParameter | — | — | Named | — | Eerdere mislukte updates van afbeeldingssleutelwoorden worden opnieuw geprobeerd |
| `-Language` | String | — | — | Named | — | De taal voor gegenereerde beschrijvingen en trefwoorden |
| `-FacesDirectory` | String | — | — | Named | — | De map met gezichtsafbeeldingen, geordend per persoonsmap. Indien niet gespecificeerd, wordt de geconfigureerde voorkeursmap voor gezichten gebruikt. |
| `-Instructions` | String | — | — | 2 | — | Systeeminstructies voor het model |
| `-ResponseFormat` | String | — | — | Named | `$null` | Een JSON-schema voor de gevraagde uitvoerindeling |
| `-Temperature` | Double | — | — | Named | `-1` | Temperatuur voor reactie-willekeur (0.0-1.0) |
| `-ImageDetail` | String | — | — | Named | `'high'` | Afbeeldingsdetailniveau |
| `-LLMQueryType` | String | — | — | Named | `'Pictures'` | Het type LLM-query |
| `-Model` | String | — | — | Named | — | Het modelidentificatiepatroon of de patroon die moet worden gebruikt voor AI-operaties |
| `-ApiEndpoint` | String | — | — | Named | — | De API-eindpunt-URL voor AI-operaties |
| `-ApiKey` | String | — | — | Named | — | De API-sleutel voor geauthenticeerde AI-bewerkingen |
| `-TimeoutSeconds` | Int32 | — | — | Named | — | De time-out voor AI-bewerkingen in seconden |
| `-PreferencesDatabasePath` | String | — | — | Named | — | Databasepad voor voorkeursgegevensbestanden |
| `-IncludeThoughts` | SwitchParameter | — | — | Named | — | Hier is je JSON-uitvoer. |
| `-SessionOnly` | SwitchParameter | — | — | Named | — | Gebruik alternatieve instellingen opgeslagen in sessie voor AI-voorkeuren |
| `-ClearSession` | SwitchParameter | — | — | Named | — | Wis alternatieve instellingen opgeslagen in sessie voor AI-voorkeuren |
| `-SkipSession` | SwitchParameter | — | — | Named | — | Instellingen alleen in permanente voorkeuren opslaan zonder de sessie te beïnvloeden |
| `-Functions` | String[] | — | — | Named | — | Specificeert de functies die gebruikt moeten worden voor de AI-operatie. |
| `-ExposedCmdLets` | String[] | — | — | Named | — | Specificeert de blootgestelde cmdlets voor de AI-bewerking. |
| `-NoConfirmationToolFunctionNames` | String[] | — | — | Named | — | Specificeert functienamen van gereedschappen die geen bevestiging vereisen. |
| `-NoContext` | SwitchParameter | — | — | Named | — | Indien gespecificeerd, schakelt het contextgebruik uit. |
| `-MaxToolcallBackLength` | Int32 | — | — | Named | — | Maximale terugbellen lengte voor tool-aanroepen. |
| `-PassThru` | SwitchParameter | — | — | Named | — | PassThru om gestructureerde objecten terug te geven in plaats van naar console uit te voeren |
| `-AutoUpdateFaces` | SwitchParameter | — | — | Named | — | Detecteert wijzigingen in de map met gezichten en registreert gezichten opnieuw indien nodig |

## Examples

### Invoke-ImageKeywordUpdate -ImageDirectories @("C:\Photos", "D:\Pictures") -Recurse -OnlyNew

```powershell
Invoke-ImageKeywordUpdate -ImageDirectories @("C:\Photos", "D:\Pictures") -Recurse -OnlyNew
```

### updateimages @("C:\Photos", "C:\Archive") -Recurse -RetryFailed -Language "Spanish"

```powershell
updateimages @("C:\Photos", "C:\Archive") -Recurse -RetryFailed -Language "Spanish"
```

## Related Links

- [Invoke-ImageKeywordUpdate on GitHub](https://github.com/genXdev/genXdev)

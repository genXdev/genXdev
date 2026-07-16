# Invoke-QueryImageContent

> **Module:** GenXdev.AI.Queries | **Type:** Function | **Aliases:** —

## Synopsis

> *(No synopsis provided)*

## Syntax

```powershell
Invoke-QueryImageContent -Query <String> -ImagePath <String> [[-Instructions] <String>] [-ApiEndpoint <String>] [-ApiKey <String>] [-AudioContextSize <Int32>] [-AudioTemperature <Double>] [-ChatOnce] [-ClearSession] [-ConsentToThirdPartySoftwareInstallation] [-ContinueLast] [-CpuThreads <Int32>] [-DontAddThoughtsToHistory] [-DontSpeak] [-DontSpeakThoughts] [-EntropyThreshold <Double>] [-ExposedCmdLets <String[]>] [-ForceConsent] [-Functions <String[]>] [-ImageDetail <String>] [-IncludeThoughts] [-Language <String>] [-LengthPenalty <Double>] [-LLMQueryType <String>] [-LogProbThreshold <Double>] [-MarkupBlocksTypeFilter <String[]>] [-MaxToolcallBackLength <Int32>] [-Model <String>] [-NoConfirmationToolFunctionNames <String[]>] [-NoContext] [-NoSessionCaching] [-NoSpeechThreshold <Double>] [-NoVOX] [-OnlyResponses] [-OutputMarkdownBlocksOnly] [-PreferencesDatabasePath <String>] [-ResponseFormat <String>] [-SessionOnly] [-SilenceThreshold <Double>] [-SkipSession] [-Speak] [-SpeakThoughts] [-SuppressRegex <String>] [-Temperature <Double>] [-TemperatureResponse <Double>] [-TimeoutSeconds <Int32>] [-UseDesktopAudioCapture] [-WithBeamSearchSamplingStrategy] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-Query` | String | ✅ | — | 0 | — | De query string voor het analyseren van de afbeelding |
| `-ImagePath` | String | ✅ | — | 1 | — | Pad naar het afbeeldingsbestand voor analyse |
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
| `-AudioTemperature` | Double | — | — | Named | — | Temperatuur voor het genereren van audiorespons. |
| `-TemperatureResponse` | Double | — | — | Named | — | Temperatuur voor de responsgeneratie. |
| `-Language` | String | — | — | Named | — | De taal voor gegenereerde beschrijvingen en trefwoorden |
| `-CpuThreads` | Int32 | — | — | Named | — | Aantal CPU-threads dat moet worden gebruikt. |
| `-SuppressRegex` | String | — | — | Named | — | Reguliere expressie om uitvoer te onderdrukken. |
| `-AudioContextSize` | Int32 | — | — | Named | — | Audiocontextgrootte voor verwerking. |
| `-SilenceThreshold` | Double | — | — | Named | — | Drempel voor stilte bij audiobewerking. |
| `-LengthPenalty` | Double | — | — | Named | — | Lengtestraf voor sequentiegeneratie. |
| `-EntropyThreshold` | Double | — | — | Named | — | Entropiedrempel voor uitvoerfiltering. |
| `-LogProbThreshold` | Double | — | — | Named | — | Logprobabiliteitsdrempel voor uitvoerfiltering. |
| `-NoSpeechThreshold` | Double | — | — | Named | — | Geen drempel voor spraakdetectie. |
| `-DontSpeak` | SwitchParameter | — | — | Named | — | Indien gespecificeerd, spreek de output niet uit. |
| `-DontSpeakThoughts` | SwitchParameter | — | — | Named | — | Indien gespecificeerd, spreek de gedachten van het model niet uit. |
| `-NoVOX` | SwitchParameter | — | — | Named | — | Indien opgegeven, schakelt VOX uit. |
| `-UseDesktopAudioCapture` | SwitchParameter | — | — | Named | — | Indien opgegeven, gebruik desktop audiocapture. |
| `-NoContext` | SwitchParameter | — | — | Named | — | Indien gespecificeerd, schakelt het contextgebruik uit. |
| `-WithBeamSearchSamplingStrategy` | SwitchParameter | — | — | Named | — | Indien gespecificeerd, gebruik de beam search sampling strategie. |
| `-OnlyResponses` | SwitchParameter | — | — | Named | — | Indien gespecificeerd, retourneer alleen antwoorden. |
| `-DontAddThoughtsToHistory` | SwitchParameter | — | — | Named | — | Als gespecificeerd, voeg geen gedachten toe aan de geschiedenis. |
| `-ContinueLast` | SwitchParameter | — | — | Named | — | Hallo! Hoe kan ik u helpen vandaag? |
| `-Speak` | SwitchParameter | — | — | Named | — | Spreek de uitvoer. |
| `-SpeakThoughts` | SwitchParameter | — | — | Named | — | Zeg de gedachten van het model. |
| `-OutputMarkdownBlocksOnly` | SwitchParameter | — | — | Named | — | <h1>Welcome</h1><p>This is a paragraph.</p> |
| `-MarkupBlocksTypeFilter` | String[] | — | — | Named | — | Filter for markup block types. |
| `-ChatOnce` | SwitchParameter | — | — | Named | — | Indien gespecificeerd, chat slechts één keer. |
| `-NoSessionCaching` | SwitchParameter | — | — | Named | — | Sessiecaching uitschakelen. |
| `-MaxToolcallBackLength` | Int32 | — | — | Named | — | Maximale terugbellen lengte voor tool-aanroepen. |
| `-ForceConsent` | SwitchParameter | — | — | Named | — | Dwing een toestemmingsprompt af, zelfs als er een voorkeur is ingesteld voor de installatie van het ImageSharp-pakket. |
| `-ConsentToThirdPartySoftwareInstallation` | SwitchParameter | — | — | Named | — | Automatisch toestemming geven voor installatie van software van derden en persistente vlag instellen voor ImageSharp-pakketten. |

## Related Links

- [Invoke-QueryImageContent on GitHub](https://github.com/genXdev/genXdev)

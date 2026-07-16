# ConvertFrom-DiplomaticSpeak

> **Module:** GenXdev.AI.Queries | **Type:** Function | **Aliases:** `undiplomatize

## Synopsis

> *(No synopsis provided)*

## Syntax

```powershell
ConvertFrom-DiplomaticSpeak [[-Text] <String>] [[-Instructions] <String>] [-AllowDefaultTools] [-ApiEndpoint <String>] [-ApiKey <String>] [-Attachments <Object[]>] [-AudioContextSize <Int32>] [-AudioTemperature <Double>] [-ClearSession] [-ContinueLast] [-CpuThreads <Int32>] [-DontAddThoughtsToHistory] [-DontSpeak] [-DontSpeakThoughts] [-EntropyThreshold <Double>] [-ExposedCmdLets <Object[]>] [-Functions <Object[]>] [-ImageDetail <String>] [-LengthPenalty <Double>] [-LLMQueryType <String>] [-LogProbThreshold <Double>] [-MarkupBlocksTypeFilter <String[]>] [-MaxToolcallBackLength <Int32>] [-Model <String>] [-NoConfirmationToolFunctionNames <String[]>] [-NoContext] [-NoSessionCaching] [-NoSpeechThreshold <Double>] [-NoVOX] [-OnlyResponses] [-OutputMarkdownBlocksOnly] [-PreferencesDatabasePath <String>] [-SessionOnly] [-SetClipboard] [-SilenceThreshold <Double>] [-SkipSession] [-SpeakThoughts] [-SuppressRegex <String[]>] [-Temperature <Double>] [-TemperatureResponse <Double>] [-TimeoutSeconds <Int32>] [-UseDesktopAudioCapture] [-WithBeamSearchSamplingStrategy] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-Text` | String | — | ✅ (ByValue) | 0 | — | The text to convert from diplomatic speak |
| `-Instructions` | String | — | — | 1 | `''` | Extra instructies voor het AI-model |
| `-Temperature` | Double | — | — | Named | `0.0` | Temperatuur voor reactie-willekeur (0.0-1.0) |
| `-LLMQueryType` | String | — | — | Named | `'Knowledge'` | Het type LLM-query |
| `-Model` | String | — | — | Named | — | Het modelidentificatiepatroon of de patroon die moet worden gebruikt voor AI-operaties |
| `-ApiEndpoint` | String | — | — | Named | — | De API-eindpunt-URL voor AI-operaties |
| `-ApiKey` | String | — | — | Named | — | De API-sleutel voor geauthenticeerde AI-bewerkingen |
| `-TimeoutSeconds` | Int32 | — | — | Named | — | De time-out voor AI-bewerkingen in seconden |
| `-PreferencesDatabasePath` | String | — | — | Named | — | Databasepad voor voorkeursgegevensbestanden |
| `-SetClipboard` | SwitchParameter | — | — | Named | — | Kopieer de omgezette tekst naar het klembord |
| `-SessionOnly` | SwitchParameter | — | — | Named | — | Gebruik alternatieve instellingen opgeslagen in sessie voor AI-voorkeuren |
| `-ClearSession` | SwitchParameter | — | — | Named | — | Wis alternatieve instellingen opgeslagen in sessie voor AI-voorkeuren |
| `-SkipSession` | SwitchParameter | — | — | Named | — | Instellingen alleen in permanente voorkeuren opslaan zonder de sessie te beïnvloeden |
| `-Attachments` | Object[] | — | — | Named | — | Bijlagen die moeten worden opgenomen in de AI-bewerking. |
| `-ImageDetail` | String | — | — | Named | — | Niveau van beelddetail voor AI-verwerking. |
| `-Functions` | Object[] | — | — | Named | — | Functies om aan het AI-model bloot te stellen. |
| `-ExposedCmdLets` | Object[] | — | — | Named | — | Cmdlets om aan het AI-model bloot te stellen. |
| `-NoConfirmationToolFunctionNames` | String[] | — | — | Named | — | Functienamen van hulpmiddelen die geen bevestiging vereisen. |
| `-DontAddThoughtsToHistory` | SwitchParameter | — | — | Named | — | Voeg geen gedachten toe aan de AI-geschiedenis. |
| `-ContinueLast` | SwitchParameter | — | — | Named | — | Hallo, hoe kan ik u vandaag helpen? |
| `-SpeakThoughts` | SwitchParameter | — | — | Named | — | Spreek gedachten hardop tijdens AI-verwerking. |
| `-NoSessionCaching` | SwitchParameter | — | — | Named | — | Schakel sessiecaching uit voor deze bewerking. |
| `-AllowDefaultTools` | SwitchParameter | — | — | Named | — | Sta gebruik van standaard tools toe bij AI-operatie. |
| `-AudioTemperature` | Double | — | — | Named | — | Audio-temperatuur voor AI-audiogeneratie. |
| `-TemperatureResponse` | Double | — | — | Named | — | Temperatuur voor het genereren van AI-antwoorden. |
| `-CpuThreads` | Int32 | — | — | Named | — | Aantal CPU-threads dat moet worden gebruikt voor AI-bewerkingen. |
| `-SuppressRegex` | String[] | — | — | Named | — | Regex to suppress in AI output. |
| `-AudioContextSize` | Int32 | — | — | Named | — | Grootte van audiocontext voor AI-audioverwerking. |
| `-SilenceThreshold` | Double | — | — | Named | — | Drempel voor stilte bij AI-audioverwerking. |
| `-LengthPenalty` | Double | — | — | Named | — | Lengtestraf voor AI-sequentiegeneratie. |
| `-EntropyThreshold` | Double | — | — | Named | — | Entropiedrempel voor AI-uitvoer. |
| `-LogProbThreshold` | Double | — | — | Named | — | Logwaarschijnlijkheidsdrempel voor AI-uitvoer. |
| `-NoSpeechThreshold` | Double | — | — | Named | — | Geen spraakdrempel voor AI-audioverwerking. |
| `-DontSpeak` | SwitchParameter | — | — | Named | — | Spreek de AI-uitvoer niet uit. |
| `-DontSpeakThoughts` | SwitchParameter | — | — | Named | — | Spreek geen AI-gedachten uit. |
| `-NoVOX` | SwitchParameter | — | — | Named | — | Schakel VOX uit voor AI-audio-uitvoer. |
| `-UseDesktopAudioCapture` | SwitchParameter | — | — | Named | — | Gebruik desktop audiocapture voor AI audio. |
| `-NoContext` | SwitchParameter | — | — | Named | — | Gebruik geen context voor AI-werking. |
| `-WithBeamSearchSamplingStrategy` | SwitchParameter | — | — | Named | — | Gebruik balkzoek-samplingstrategie voor AI. |
| `-OnlyResponses` | SwitchParameter | — | — | Named | — | De reacties van alleen de AI. |
| `-OutputMarkdownBlocksOnly` | SwitchParameter | — | — | Named | — | ``` |
| `-MarkupBlocksTypeFilter` | String[] | — | — | Named | — | Filter for markup block types in AI output. |
| `-MaxToolcallBackLength` | Int32 | — | — | Named | — | Maximale terugbellen lengte voor tool-aanroepen. |

## Outputs

- `String`

## Related Links

- [ConvertFrom-DiplomaticSpeak on GitHub](https://github.com/genXdev/genXdev)

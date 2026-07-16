# Invoke-LLMQuery

> **Module:** GenXdev.AI | **Type:** Function | **Aliases:** `qllm, `llm

## Synopsis

> *(No synopsis provided)*

## Syntax

```powershell
Invoke-LLMQuery [[-Query] <String>] [[-Instructions] <String>] [[-Attachments] <String[]>] [-ApiEndpoint <String>] [-ApiKey <String>] [-AudioContextSize <Int32>] [-AudioTemperature <Double>] [-ChatMode <String>] [-ChatOnce] [-ClearSession] [-ContinueLast] [-CpuThreads <Int32>] [-DontAddThoughtsToHistory] [-DontSpeak] [-DontSpeakThoughts] [-EntropyThreshold <Double>] [-ExposedCmdLets <GenXdev.Helpers.ExposedCmdletDefinition[]>] [-Functions <Collections.Hashtable[]>] [-Gpu <Int32>] [-ImageDetail <String>] [-IncludeThoughts] [-Language <String>] [-LengthPenalty <Double>] [-LLMQueryType <String>] [-LogProbThreshold <Double>] [-MarkupBlocksTypeFilter <String[]>] [-MaxToolcallBackLength <Int32>] [-Model <String>] [-NoConfirmationToolFunctionNames <String[]>] [-NoContext] [-NoSessionCaching] [-NoSpeechThreshold <Double>] [-NoVOX] [-OnlyResponses] [-OutputMarkdownBlocksOnly] [-PreferencesDatabasePath <String>] [-ResponseFormat <String>] [-SessionOnly] [-SilenceThreshold <Double>] [-SkipSession] [-Speak] [-SpeakThoughts] [-SuppressRegex <String>] [-Temperature <Double>] [-TemperatureResponse <Double>] [-TimeoutSeconds <Int32>] [-UseDesktopAudioCapture] [-WithBeamSearchSamplingStrategy] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-Query` | String | — | — | 0 | `''` | Query tekst om naar het model te sturen |
| `-Instructions` | String | — | — | 1 | — | Systeeminstructies voor het model |
| `-Attachments` | String[] | — | — | 2 | `@()` | Array of file paths to attach |
| `-ResponseFormat` | String | — | — | Named | — | Een JSON-schema voor de gevraagde uitvoerindeling |
| `-Temperature` | Double | — | — | Named | `-1` | Temperatuur voor reactie-willekeur (0.0-1.0) |
| `-Functions` | Collections.Hashtable[] | — | — | Named | `@()` | Array van functiedefinities |
| `-ExposedCmdLets` | GenXdev.Helpers.ExposedCmdletDefinition[] | — | — | Named | — | Array van PowerShell-commando definities om als hulpmiddelen te gebruiken |
| `-NoConfirmationToolFunctionNames` | String[] | — | — | Named | `@()` | Functies van tools die geen gebruikersbevestiging vereisen |
| `-ImageDetail` | String | — | — | Named | `'low'` | Afbeeldingsdetailniveau |
| `-LLMQueryType` | String | — | — | Named | `'SimpleIntelligence'` | Het type LLM-query |
| `-Model` | String | — | — | Named | — | Het modelidentificatiepatroon of de patroon die moet worden gebruikt voor AI-operaties |
| `-Gpu` | Int32 | — | — | Named | — | The `-Gpu` parameter. |
| `-ApiEndpoint` | String | — | — | Named | — | De API-eindpunt-URL voor AI-operaties |
| `-ApiKey` | String | — | — | Named | — | De API-sleutel voor geauthenticeerde AI-bewerkingen |
| `-TimeoutSeconds` | Int32 | — | — | Named | — | De time-out voor AI-bewerkingen in seconden |
| `-PreferencesDatabasePath` | String | — | — | Named | — | Databasepad voor voorkeursgegevensbestanden |
| `-AudioTemperature` | Double | — | — | Named | — | Temperatuur voor willekeurigheid bij het genereren van audio |
| `-TemperatureResponse` | Double | — | — | Named | — | Temperatuur voor responswillekeur (audiochat) |
| `-Language` | String | — | — | Named | — | Taalcode of -naam voor audiochat |
| `-CpuThreads` | Int32 | — | — | Named | — | Aantal CPU-threads voor audiochat |
| `-SuppressRegex` | String | — | — | Named | — | Regular expression to suppress certain outputs in audio chat |
| `-AudioContextSize` | Int32 | — | — | Named | — | Audio context size for audio chat |
| `-SilenceThreshold` | Double | — | — | Named | — | Drempeldrempel voor audiogesprek |
| `-LengthPenalty` | Double | — | — | Named | — | Lengtestraf voor audiochatreacties |
| `-EntropyThreshold` | Double | — | — | Named | — | Entropiedrempel voor audiochat |
| `-LogProbThreshold` | Double | — | — | Named | — | Drempelwaarde voor log-kans bij audiochat |
| `-NoSpeechThreshold` | Double | — | — | Named | — | Geen spraakdrempel voor audiochat |
| `-DontSpeak` | SwitchParameter | — | — | Named | — | Geef geen audio-antwoorden |
| `-DontSpeakThoughts` | SwitchParameter | — | — | Named | — | Denk niet hardop in audio. |
| `-NoVOX` | SwitchParameter | — | — | Named | — | Schakel VOX (spraakactivering) uit voor audiochat |
| `-UseDesktopAudioCapture` | SwitchParameter | — | — | Named | — | Gebruik desktop-audiocapture voor audiochat. |
| `-NoContext` | SwitchParameter | — | — | Named | — | Context voor audiogesprek uitschakelen |
| `-WithBeamSearchSamplingStrategy` | SwitchParameter | — | — | Named | — | Gebruik een beam search-samplingstrategie voor audiochat |
| `-OnlyResponses` | SwitchParameter | — | — | Named | — | Je bent een behulpzame assistent die is ontworpen om JSON uit te voeren. |
| `-IncludeThoughts` | SwitchParameter | — | — | Named | — | Hier is je JSON-uitvoer. |
| `-DontAddThoughtsToHistory` | SwitchParameter | — | — | Named | — | Denkprocessen uitsluiten van gespreksgeschiedenis |
| `-ContinueLast` | SwitchParameter | — | — | Named | — | {
  "type": "json_schema",
  "json_schema": {
    "name": "text_transformation_response",
    "strict": true,
    "schema": {
      "required": [
        "response"
      ],
      "properties": {
        "response": {
          "type": "string",
          "description": "The transformed text output"
        }
      },
      "type": "object"
    }
  }
} |
| `-Speak` | SwitchParameter | — | — | Named | — | Spraak-naar-tekst inschakelen voor AI-reacties |
| `-SpeakThoughts` | SwitchParameter | — | — | Named | — | Schakel tekst-naar-spraak in voor AI-gedachterreacties |
| `-OutputMarkdownBlocksOnly` | SwitchParameter | — | — | Named | — | Zal alleen markup block reacties uitvoeren |
| `-MarkupBlocksTypeFilter` | String[] | — | — | Named | `@('json', 'powershell', 'C#',
            'python', 'javascript', 'typescript', 'html', 'css', 'yaml',
            'xml', 'bash')` | Zal alleen markup-blokken van de gespecificeerde types uitvoeren |
| `-ChatMode` | String | — | — | Named | — | Chatmodus ingeschakeld |
| `-ChatOnce` | SwitchParameter | — | — | Named | — | Wordt intern gebruikt om de chatmodus slechts één keer te starten na de LLM-aanroep |
| `-NoSessionCaching` | SwitchParameter | — | — | Named | — | Sla sessie niet op in sessiecache |
| `-SessionOnly` | SwitchParameter | — | — | Named | — | Gebruik alternatieve instellingen opgeslagen in sessie voor AI-voorkeuren |
| `-ClearSession` | SwitchParameter | — | — | Named | — | Wis alternatieve instellingen opgeslagen in sessie voor AI-voorkeuren |
| `-SkipSession` | SwitchParameter | — | — | Named | — | Instellingen alleen in permanente voorkeuren opslaan zonder de sessie te beïnvloeden |
| `-MaxToolcallBackLength` | Int32 | — | — | Named | `100000` | Maximum lengte van tool callback-uitvoer in tekens. Uitvoer die deze lengte overschrijdt, wordt afgekapt met een waarschuwingsbericht. Standaard is 100000 tekens. |

## Related Links

- [Invoke-LLMQuery on GitHub](https://github.com/genXdev/genXdev)

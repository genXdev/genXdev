# New-LLMTextChat

> **Module:** GenXdev.AI | **Type:** Function | **Aliases:** `llmchat

## Synopsis

> *(No synopsis provided)*

## Syntax

```powershell
New-LLMTextChat [[-Query] <String>] [<CommonParameters>]

New-LLMTextChat [[-Instructions] <String>] [[-Attachments] <String[]>] [[-Temperature] <Double>] [-ApiEndpoint <String>] [-ApiKey <String>] [-AudioContextSize <Object>] [-AudioTemperature <Object>] [-ClearSession] [-ContinueLast] [-CpuThreads <Object>] [-DontAddThoughtsToHistory] [-DontSpeak <Object>] [-DontSpeakThoughts <Object>] [-EntropyThreshold <Object>] [-ExposedCmdLets <GenXdev.Helpers.ExposedCmdletDefinition[]>] [-ImageDetail <String>] [-IncludeThoughts] [-Language <Object>] [-LengthPenalty <Object>] [-LLMQueryType <String>] [-LogProbThreshold <Object>] [-MarkupBlocksTypeFilter <String[]>] [-MaxToolcallBackLength <Int32>] [-Model <String>] [-NoConfirmationToolFunctionNames <String[]>] [-NoContext <Object>] [-NoSessionCaching] [-NoSpeechThreshold <Object>] [-NoVOX <Object>] [-OnlyResponses <Object>] [-OutputMarkdownBlocksOnly] [-PreferencesDatabasePath <String>] [-ResponseFormat <String>] [-SessionOnly] [-SilenceThreshold <Object>] [-SkipSession] [-Speak] [-SpeakThoughts] [-SuppressRegex <Object>] [-TemperatureResponse <Object>] [-TimeoutSeconds <Int32>] [-UseDesktopAudioCapture <Object>] [-WithBeamSearchSamplingStrategy <Object>] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-Query` | String | — | ✅ (ByValue) | 0 | `''` | Query tekst om naar het model te sturen *(Parameter set: )* |
| `-Instructions` | String | — | — | 1 | — | Systeeminstructies voor het model |
| `-Attachments` | String[] | — | — | 2 | `@()` | Array of file paths to attach |
| `-Temperature` | Double | — | — | 3 | `-1` | Temperatuur voor reactie-willekeur (0.0-1.0) |
| `-ImageDetail` | String | — | — | Named | `'low'` | Afbeeldingsdetailniveau |
| `-ResponseFormat` | String | — | — | Named | `$null` | Een JSON-schema voor de gevraagde uitvoerindeling |
| `-LLMQueryType` | String | — | — | Named | `'ToolUse'` | Het type LLM-query |
| `-Model` | String | — | — | Named | — | Het modelidentificatiepatroon of de patroon die moet worden gebruikt voor AI-operaties |
| `-ApiEndpoint` | String | — | — | Named | — | De API-eindpunt-URL voor AI-operaties |
| `-ApiKey` | String | — | — | Named | — | De API-sleutel voor geauthenticeerde AI-bewerkingen |
| `-TimeoutSeconds` | Int32 | — | — | Named | — | De time-out voor AI-bewerkingen in seconden |
| `-PreferencesDatabasePath` | String | — | — | Named | — | Databasepad voor voorkeursgegevensbestanden |
| `-ExposedCmdLets` | GenXdev.Helpers.ExposedCmdletDefinition[] | — | — | Named | — | Array van PowerShell-commando definities om als hulpmiddelen te gebruiken |
| `-MarkupBlocksTypeFilter` | String[] | — | — | Named | `@('json', 'powershell', 'C#', 'python', 'javascript', 'typescript', 'html', 'css', 'yaml', 'xml', 'bash')` | Zal alleen markup-blokken van de gespecificeerde types uitvoeren |
| `-IncludeThoughts` | SwitchParameter | — | — | Named | — | Hier is je JSON-uitvoer. |
| `-DontAddThoughtsToHistory` | SwitchParameter | — | — | Named | — | Hier is je JSON-uitvoer. |
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
| `-ChatOnce` | SwitchParameter | — | — | Named | — | Wordt intern gebruikt om de chatmodus slechts één keer te starten na de LLM-aanroep *(hidden)* |
| `-NoSessionCaching` | SwitchParameter | — | — | Named | — | Sla sessie niet op in sessiecache |
| `-SessionOnly` | SwitchParameter | — | — | Named | — | Gebruik alternatieve instellingen opgeslagen in sessie voor AI-voorkeuren |
| `-ClearSession` | SwitchParameter | — | — | Named | — | Wis alternatieve instellingen opgeslagen in sessie voor AI-voorkeuren |
| `-SkipSession` | SwitchParameter | — | — | Named | — | Instellingen alleen in permanente voorkeuren opslaan zonder de sessie te beïnvloeden |
| `-NoConfirmationToolFunctionNames` | String[] | — | — | Named | — | Namen van toolfuncties die geen bevestiging vereisen |
| `-MaxToolcallBackLength` | Int32 | — | — | Named | — | Maximale lengte voor tool callback reacties |
| `-AudioTemperature` | Object | — | — | Named | — | Temperatuur voor audiogeneratie |
| `-TemperatureResponse` | Object | — | — | Named | — | Temperatuur voor responsgeneratie |
| `-Language` | Object | — | — | Named | — | Taal voor het model of de uitvoer |
| `-CpuThreads` | Object | — | — | Named | — | Aantal CPU-threads om te gebruiken |
| `-SuppressRegex` | Object | — | — | Named | — | Reguliere expressie om uitvoer te onderdrukken |
| `-AudioContextSize` | Object | — | — | Named | — | Audiocontextgrootte voor verwerking |
| `-SilenceThreshold` | Object | — | — | Named | — | Drempeldrempel voor audioverwerking |
| `-LengthPenalty` | Object | — | — | Named | — | Lengtestraf voor sequentiegeneratie |
| `-EntropyThreshold` | Object | — | — | Named | — | Entropiedrempel voor uitvoerfiltering |
| `-LogProbThreshold` | Object | — | — | Named | — | Drempelwaarde voor log-waarschijnlijkheid bij uitvoerfiltering |
| `-NoSpeechThreshold` | Object | — | — | Named | — | Geen drempel voor spraakdetectie bij audio |
| `-DontSpeak` | Object | — | — | Named | — | Uitschakelen spraakuitvoer |
| `-DontSpeakThoughts` | Object | — | — | Named | — | Schakel spraakuitvoer voor gedachten uit |
| `-NoVOX` | Object | — | — | Named | — | Schakel VOX (spraakactivering) uit |
| `-UseDesktopAudioCapture` | Object | — | — | Named | — | Gebruik desktop-audio-opname |
| `-NoContext` | Object | — | — | Named | — | Schakel contextgebruik uit |
| `-WithBeamSearchSamplingStrategy` | Object | — | — | Named | — | Gebruik beam search samplingstrategie |
| `-OnlyResponses` | Object | — | — | Named | — | AI is een tak van computerwetenschappen die zich richt op het creëren van systemen die taken kunnen uitvoeren waarvoor doorgaans menselijke intelligentie nodig is. |

## Related Links

- [New-LLMTextChat on GitHub](https://github.com/genXdev/genXdev)

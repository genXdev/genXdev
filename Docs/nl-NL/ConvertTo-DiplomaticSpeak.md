# ConvertTo-DiplomaticSpeak

> **Module:** GenXdev.AI.Queries | **Type:** Function | **Aliases:** `diplomatize

## Synopsis

> *(No synopsis provided)*

## Syntax

```powershell
ConvertTo-DiplomaticSpeak [[-Text] <String>] [[-Attachments] <String[]>] [-AllowDefaultTools] [-ApiEndpoint <String>] [-ApiKey <String>] [-AudioContextSize <Int32>] [-AudioTemperature <Double>] [-ClearSession] [-ContinueLast] [-CpuThreads <Int32>] [-DontAddThoughtsToHistory] [-DontSpeak] [-DontSpeakThoughts] [-EntropyThreshold <Double>] [-ExposedCmdLets <GenXdev.Helpers.ExposedCmdletDefinition[]>] [-Functions <Collections.Hashtable[]>] [-ImageDetail <String>] [-Language <String>] [-LengthPenalty <Double>] [-LLMQueryType <String>] [-LogProbThreshold <Double>] [-MarkupBlocksTypeFilter <String[]>] [-MaxToolcallBackLength <Int32>] [-Model <String>] [-NoConfirmationToolFunctionNames <String[]>] [-NoContext] [-NoSessionCaching] [-NoSpeechThreshold <Double>] [-NoVOX] [-OnlyResponses] [-OutputMarkdownBlocksOnly] [-PreferencesDatabasePath <String>] [-SessionOnly] [-SetClipboard] [-SilenceThreshold <Double>] [-SkipSession] [-Speak] [-SpeakThoughts] [-SuppressRegex <String>] [-Temperature <Double>] [-TemperatureResponse <Double>] [-TimeoutSeconds <Int32>] [-UseDesktopAudioCapture] [-WithBeamSearchSamplingStrategy] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-Text` | String | — | ✅ (ByValue) | 0 | — | I would be delighted to assist you with converting the provided text into a more diplomatic tone. Could you please share the text you would like transformed? |
| `-Attachments` | String[] | — | — | 2 | `@()` | Array of file paths to attach |
| `-Temperature` | Double | — | — | Named | `-1` | Temperatuur voor reactie-willekeur (0.0-1.0) |
| `-ImageDetail` | String | — | — | Named | `'low'` | Afbeeldingsdetailniveau |
| `-Functions` | Collections.Hashtable[] | — | — | Named | `@()` | Array van functiedefinities |
| `-ExposedCmdLets` | GenXdev.Helpers.ExposedCmdletDefinition[] | — | — | Named | `@()` | Array van PowerShell-commando definities om als hulpmiddelen te gebruiken |
| `-NoConfirmationToolFunctionNames` | String[] | — | — | Named | `@()` | Array of command names that don't require confirmation |
| `-LLMQueryType` | String | — | — | Named | `'SimpleIntelligence'` | Het type LLM-query |
| `-Model` | String | — | — | Named | — | Het modelidentificatiepatroon of de patroon die moet worden gebruikt voor AI-operaties |
| `-ApiEndpoint` | String | — | — | Named | — | De API-eindpunt-URL voor AI-operaties |
| `-ApiKey` | String | — | — | Named | — | De API-sleutel voor geauthenticeerde AI-bewerkingen |
| `-TimeoutSeconds` | Int32 | — | — | Named | — | De time-out voor AI-bewerkingen in seconden |
| `-PreferencesDatabasePath` | String | — | — | Named | — | Databasepad voor voorkeursgegevensbestanden |
| `-SetClipboard` | SwitchParameter | — | — | Named | — | Gekopieerde verbeterde tekst naar klembord |
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
| `-NoSessionCaching` | SwitchParameter | — | — | Named | — | Sla sessie niet op in sessiecache |
| `-AllowDefaultTools` | SwitchParameter | — | — | Named | — | Sta het gebruik van standaard AI-tools toe tijdens verwerking |
| `-SessionOnly` | SwitchParameter | — | — | Named | — | Gebruik alternatieve instellingen opgeslagen in sessie voor AI-voorkeuren |
| `-ClearSession` | SwitchParameter | — | — | Named | — | Wis alternatieve instellingen opgeslagen in sessie voor AI-voorkeuren |
| `-SkipSession` | SwitchParameter | — | — | Named | — | Instellingen alleen in permanente voorkeuren opslaan zonder de sessie te beïnvloeden |
| `-AudioTemperature` | Double | — | — | Named | — | Temperatuur voor willekeurigheid van audiorespons (doorgegeven aan LLMQuery) |
| `-TemperatureResponse` | Double | — | — | Named | — | Temperatuur voor generatie van antwoord (doorgegeven aan LLMQuery) |
| `-Language` | String | — | — | Named | — | nl |
| `-CpuThreads` | Int32 | — | — | Named | — | Aantal CPU-threads om te gebruiken (doorgegeven aan LLMQuery) |
| `-SuppressRegex` | String | — | — | Named | — | Reguliere expressie om uitvoer te onderdrukken (doorgegeven aan LLMQuery) |
| `-AudioContextSize` | Int32 | — | — | Named | — | Audio context size for processing (passed to LLMQuery) |
| `-SilenceThreshold` | Double | — | — | Named | — | Drempeldrempel voor stiltedetectie (doorgegeven aan LLMQuery) |
| `-LengthPenalty` | Double | — | — | Named | — | Lengtestraf voor het genereren van sequenties (doorgegeven aan LLMQuery) |
| `-EntropyThreshold` | Double | — | — | Named | — | Entropiedrempel voor uitvoerfiltering (doorgegeven aan LLMQuery) |
| `-LogProbThreshold` | Double | — | — | Named | — | Drempelwaarde voor logkans voor uitvoerfiltering (doorgegeven aan LLMQuery) |
| `-NoSpeechThreshold` | Double | — | — | Named | — | Geen spraakdrempel voor audiodetectie (doorgegeven aan LLMQuery) |
| `-DontSpeak` | SwitchParameter | — | — | Named | — | Schakel spraakuitvoer uit (doorgegeven aan LLMQuery) |
| `-DontSpeakThoughts` | SwitchParameter | — | — | Named | — | Schakel spraakuitvoer voor gedachten (doorgegeven aan LLMQuery) uit |
| `-NoVOX` | SwitchParameter | — | — | Named | — | Schakel VOX (spraakactivering) uit (doorgegeven aan LLMQuery) |
| `-UseDesktopAudioCapture` | SwitchParameter | — | — | Named | — | Gebruik desktop audio-opname (doorgegeven aan LLMQuery) |
| `-NoContext` | SwitchParameter | — | — | Named | — | Schakel contextgebruik uit (doorgegeven aan LLMQuery) |
| `-WithBeamSearchSamplingStrategy` | SwitchParameter | — | — | Named | — | Schakel beam search samplingstrategie in (doorgegeven aan LLMQuery) |
| `-OnlyResponses` | SwitchParameter | — | — | Named | — | Return only responses (passed to LLMQuery) |
| `-OutputMarkdownBlocksOnly` | SwitchParameter | — | — | Named | — | ```markdown
# LLMQuery Markup

This is a sample block that could be passed to an LLMQuery.

- Item 1
- Item 2
- Item 3

``` |
| `-MarkupBlocksTypeFilter` | String[] | — | — | Named | — | Filter voor markup-bloktypen (doorgegeven aan LLMQuery) |
| `-MaxToolcallBackLength` | Int32 | — | — | Named | — | Maximale toolcallback-lengte (doorgegeven aan LLMQuery) |

## Outputs

- `String`

## Related Links

- [ConvertTo-DiplomaticSpeak on GitHub](https://github.com/genXdev/genXdev)

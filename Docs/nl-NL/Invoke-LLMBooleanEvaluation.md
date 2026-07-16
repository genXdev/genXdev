# Invoke-LLMBooleanEvaluation

> **Module:** GenXdev.AI | **Type:** Function | **Aliases:** `equalstrue

## Synopsis

> *(No synopsis provided)*

## Syntax

```powershell
Invoke-LLMBooleanEvaluation [[-Text] <String>] [[-Instructions] <String>] [[-Attachments] <String[]>] [-AllowDefaultTools] [-ApiEndpoint <String>] [-ApiKey <String>] [-AudioContextSize <Int32>] [-AudioTemperature <Double>] [-ClearSession] [-ContinueLast] [-CpuThreads <Int32>] [-DontAddThoughtsToHistory] [-DontSpeak] [-DontSpeakThoughts] [-EntropyThreshold <Double>] [-ExposedCmdLets <GenXdev.Helpers.ExposedCmdletDefinition[]>] [-Functions <Collections.Hashtable[]>] [-ImageDetail <String>] [-IncludeThoughts] [-Language <String>] [-LengthPenalty <Double>] [-LLMQueryType <String>] [-LogProbThreshold <Double>] [-MarkupBlocksTypeFilter <String[]>] [-MaxToolcallBackLength <Int32>] [-Model <String>] [-NoConfirmationToolFunctionNames <String[]>] [-NoContext] [-NoSessionCaching] [-NoSpeechThreshold <Double>] [-NoVOX] [-OnlyResponses] [-OutputMarkdownBlocksOnly] [-PreferencesDatabasePath <String>] [-SessionOnly] [-SetClipboard] [-SilenceThreshold <Double>] [-SkipSession] [-Speak] [-SpeakThoughts] [-SuppressRegex <String>] [-Temperature <Double>] [-TemperatureResponse <Double>] [-UseDesktopAudioCapture] [-WithBeamSearchSamplingStrategy] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-Text` | String | — | ✅ (ByValue) | 0 | — | De te evalueren verklaring |
| `-Instructions` | String | — | — | 1 | `''` | Instructies voor het AI-model over hoe de verklaring te evalueren |
| `-Attachments` | String[] | — | — | 2 | `@()` | Array of file paths to attach |
| `-Temperature` | Double | — | — | Named | `-1` | Temperatuur voor reactie-willekeur (0.0-1.0) |
| `-ImageDetail` | String | — | — | Named | `'low'` | Afbeeldingsdetailniveau |
| `-Functions` | Collections.Hashtable[] | — | — | Named | `@()` | Array van functiedefinities |
| `-ExposedCmdLets` | GenXdev.Helpers.ExposedCmdletDefinition[] | — | — | Named | `@()` | Array van PowerShell-commando definities om als hulpmiddelen te gebruiken |
| `-NoConfirmationToolFunctionNames` | String[] | — | — | Named | `@()` | Array of command names that don't require confirmation |
| `-LLMQueryType` | String | — | — | Named | `'Knowledge'` | Het type LLM-query |
| `-Model` | String | — | — | Named | — | Het modelidentificatiepatroon of de patroon die moet worden gebruikt voor AI-operaties |
| `-ApiEndpoint` | String | — | — | Named | — | De API-eindpunt-URL voor AI-operaties |
| `-ApiKey` | String | — | — | Named | — | De API-sleutel voor geauthenticeerde AI-bewerkingen |
| `-PreferencesDatabasePath` | String | — | — | Named | — | Databasepad voor voorkeursgegevensbestanden |
| `-SetClipboard` | SwitchParameter | — | — | Named | — | Kopieer het resultaat naar het klembord |
| `-IncludeThoughts` | SwitchParameter | — | — | Named | — | Hier is je JSON-uitvoer. |
| `-DontAddThoughtsToHistory` | SwitchParameter | — | — | Named | — | Voeg geen modelgedachten toe aan de gespreksgeschiedenis |
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
| `-AllowDefaultTools` | SwitchParameter | — | — | Named | — | AI toestaan om standaard tools en mogelijkheden te gebruiken |
| `-SessionOnly` | SwitchParameter | — | — | Named | — | Gebruik alternatieve instellingen opgeslagen in sessie voor AI-voorkeuren |
| `-ClearSession` | SwitchParameter | — | — | Named | — | Wis alternatieve instellingen opgeslagen in sessie voor AI-voorkeuren |
| `-SkipSession` | SwitchParameter | — | — | Named | — | Instellingen alleen in permanente voorkeuren opslaan zonder de sessie te beïnvloeden |
| `-OutputMarkdownBlocksOnly` | SwitchParameter | — | — | Named | — | Return only markup blocks in the output |
| `-MarkupBlocksTypeFilter` | String[] | — | — | Named | — | Filter for specific types of markup blocks |
| `-AudioTemperature` | Double | — | — | Named | — | Temperatuur voor willekeur in audiogenerator |
| `-TemperatureResponse` | Double | — | — | Named | — | Temperatuur voor responsgeneratie |
| `-Language` | String | — | — | Named | — | nl-NL |
| `-CpuThreads` | Int32 | — | — | Named | — | Aantal CPU-threads dat moet worden gebruikt voor verwerking |
| `-SuppressRegex` | String | — | — | Named | — | Regular expression to suppress from output |
| `-AudioContextSize` | Int32 | — | — | Named | — | Audiocontextgrootte voor verwerking |
| `-SilenceThreshold` | Double | — | — | Named | — | Stille-drempel voor audiodetectie |
| `-LengthPenalty` | Double | — | — | Named | — | Lengtestraf voor sequentiegeneratie |
| `-EntropyThreshold` | Double | — | — | Named | — | Entropiedrempel voor uitvoerfiltering |
| `-LogProbThreshold` | Double | — | — | Named | — | Drempelwaarde voor log-waarschijnlijkheid bij uitvoerfiltering |
| `-NoSpeechThreshold` | Double | — | — | Named | — | Geen drempel voor spraakdetectie bij audio |
| `-DontSpeak` | SwitchParameter | — | — | Named | — | Uitschakelen spraakuitvoer |
| `-DontSpeakThoughts` | SwitchParameter | — | — | Named | — | Schakel spraakuitvoer voor gedachten uit |
| `-NoVOX` | SwitchParameter | — | — | Named | — | Schakel VOX (spraakactivering) uit |
| `-UseDesktopAudioCapture` | SwitchParameter | — | — | Named | — | Gebruik desktop-audiocapture voor invoer |
| `-NoContext` | SwitchParameter | — | — | Named | — | Gebruik geen context in de query |
| `-WithBeamSearchSamplingStrategy` | SwitchParameter | — | — | Named | — | Gebruik beam search samplingstrategie |
| `-OnlyResponses` | SwitchParameter | — | — | Named | — | {'response': 'Hier is uw geformatteerde tekstuitvoer.'} |
| `-MaxToolcallBackLength` | Int32 | — | — | Named | — | The `-MaxToolcallBackLength` parameter. |

## Outputs

- `Boolean`

## Related Links

- [Invoke-LLMBooleanEvaluation on GitHub](https://github.com/genXdev/genXdev)

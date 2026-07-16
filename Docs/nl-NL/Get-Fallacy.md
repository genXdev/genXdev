# Get-Fallacy

> **Module:** GenXdev.AI.Queries | **Type:** Function | **Aliases:** `dispicetext

## Synopsis

> *(No synopsis provided)*

## Syntax

```powershell
Get-Fallacy -InputObject <Object> [[-Instructions] <String>] [[-Attachments] <String[]>] [-ApiEndpoint <String>] [-ApiKey <String>] [-AudioContextSize <Int32>] [-AudioTemperature <Double>] [-ClearSession] [-ContinueLast] [-CpuThreads <Int32>] [-DontSpeak] [-DontSpeakThoughts] [-EntropyThreshold <Double>] [-ExposedCmdLets <GenXdev.Helpers.ExposedCmdletDefinition[]>] [-Functions <Collections.Hashtable[]>] [-ImageDetail <String>] [-IncludeThoughts] [-LengthPenalty <Double>] [-LLMQueryType <String>] [-LogProbThreshold <Double>] [-MaxToolcallBackLength <Int32>] [-Model <String>] [-NoConfirmationToolFunctionNames <String[]>] [-NoContext] [-NoSessionCaching] [-NoSpeechThreshold <Double>] [-NoVOX] [-OnlyResponses] [-OpenInImdb] [-PreferencesDatabasePath <String>] [-SessionOnly] [-SilenceThreshold <Double>] [-SkipSession] [-Speak] [-SpeakThoughts] [-SuppressRegex <String>] [-Temperature <Double>] [-TemperatureResponse <Double>] [-TimeoutSeconds <Int32>] [-UseDesktopAudioCapture] [-WithBeamSearchSamplingStrategy] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-InputObject` | Object | ✅ | ✅ (ByValue) | 0 | — | Tekst om te parsen om drogredenen te vinden |
| `-Instructions` | String | — | — | 1 | `''` | Instructies voor het AI-model voor het genereren van de stringlijst |
| `-Attachments` | String[] | — | — | 2 | `@()` | Array of file paths to attach |
| `-Functions` | Collections.Hashtable[] | — | — | Named | `@()` | Array van functiedefinities |
| `-ImageDetail` | String | — | — | Named | `'low'` | Afbeeldingsdetailniveau |
| `-NoConfirmationToolFunctionNames` | String[] | — | — | Named | `@()` | Array of command names that don't require confirmation |
| `-ExposedCmdLets` | GenXdev.Helpers.ExposedCmdletDefinition[] | — | — | Named | `@()` | Array van PowerShell-commando definities om als hulpmiddelen te gebruiken |
| `-Temperature` | Double | — | — | Named | `-1` | Temperatuur voor reactie-willekeur (0.0-1.0) |
| `-LLMQueryType` | String | — | — | Named | `'Knowledge'` | Het type LLM-query |
| `-Model` | String | — | — | Named | — | Het modelidentificatiepatroon of de patroon die moet worden gebruikt voor AI-operaties |
| `-ApiEndpoint` | String | — | — | Named | — | De API-eindpunt-URL voor AI-operaties |
| `-ApiKey` | String | — | — | Named | — | De API-sleutel voor geauthenticeerde AI-bewerkingen |
| `-TimeoutSeconds` | Int32 | — | — | Named | — | De time-out voor AI-bewerkingen in seconden |
| `-PreferencesDatabasePath` | String | — | — | Named | — | Databasepad voor voorkeursgegevensbestanden |
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
| `-IncludeThoughts` | SwitchParameter | — | — | Named | — | Hier is je JSON-uitvoer. |
| `-NoSessionCaching` | SwitchParameter | — | — | Named | — | Sla sessie niet op in sessiecache |
| `-OpenInImdb` | SwitchParameter | — | — | Named | — | Opent IMDB-zoekopdrachten voor elk resultaat |
| `-AudioTemperature` | Double | — | — | Named | — | Regelt de temperatuur voor het genereren van audio. |
| `-TemperatureResponse` | Double | — | — | Named | — | Bepaalt de temperatuur voor het genereren van antwoorden. |
| `-CpuThreads` | Int32 | — | — | Named | — | Aantal CPU-threads te gebruiken voor verwerking. |
| `-SuppressRegex` | String | — | — | Named | — | Regular expression to suppress certain outputs. |
| `-AudioContextSize` | Int32 | — | — | Named | — | Audiocontextgrootte voor verwerking. |
| `-SilenceThreshold` | Double | — | — | Named | — | Drempel voor het detecteren van stilte in audio. |
| `-LengthPenalty` | Double | — | — | Named | — | Straf toegepast op langere antwoorden. |
| `-EntropyThreshold` | Double | — | — | Named | — | Drempel voor entropie in responsgeneratie. |
| `-LogProbThreshold` | Double | — | — | Named | — | Drempel voor log-waarschijnlijkheid van uitvoer. |
| `-NoSpeechThreshold` | Double | — | — | Named | — | Drempel voor het detecteren van geen spraak in audio. |
| `-DontSpeak` | SwitchParameter | — | — | Named | — | Voorkomt het uitspreken van de reactie. |
| `-DontSpeakThoughts` | SwitchParameter | — | — | Named | — | Voorkomt het uitspreken van de gedachten van het model. |
| `-NoVOX` | SwitchParameter | — | — | Named | — | Schakelt VOX (spraakactivering) uit. |
| `-UseDesktopAudioCapture` | SwitchParameter | — | — | Named | — | Gebruik desktop audio-opname voor invoer. |
| `-NoContext` | SwitchParameter | — | — | Named | — | Schakelt context voor het verzoek uit. |
| `-WithBeamSearchSamplingStrategy` | SwitchParameter | — | — | Named | — | {"response":"Gebruik de beam search sampling strategie."} |
| `-OnlyResponses` | SwitchParameter | — | — | Named | — | {
  "response": "Jij bent een behulpzame assistent ontworpen om JSON uit te voeren."
} |
| `-Speak` | SwitchParameter | — | — | Named | — | Spraak-naar-tekst inschakelen voor AI-reacties |
| `-SpeakThoughts` | SwitchParameter | — | — | Named | — | Schakel tekst-naar-spraak in voor AI-gedachterreacties |
| `-SessionOnly` | SwitchParameter | — | — | Named | — | Gebruik alternatieve instellingen opgeslagen in sessie voor AI-voorkeuren |
| `-ClearSession` | SwitchParameter | — | — | Named | — | Wis alternatieve instellingen opgeslagen in sessie voor AI-voorkeuren |
| `-SkipSession` | SwitchParameter | — | — | Named | — | Instellingen alleen in permanente voorkeuren opslaan zonder de sessie te beïnvloeden |
| `-MaxToolcallBackLength` | Int32 | — | — | Named | — | Maximale terugbellen lengte voor tool-aanroepen. |

## Outputs

- `Object[]`

## Related Links

- [Get-Fallacy on GitHub](https://github.com/genXdev/genXdev)

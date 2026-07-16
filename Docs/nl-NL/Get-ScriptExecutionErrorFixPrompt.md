# Get-ScriptExecutionErrorFixPrompt

> **Module:** GenXdev.AI.Queries | **Type:** Function | **Aliases:** `getfixprompt

## Synopsis

> *(No synopsis provided)*

## Syntax

```powershell
Get-ScriptExecutionErrorFixPrompt -Script <ScriptBlock> [-ApiEndpoint <String>] [-ApiKey <String>] [-Attachments <Object>] [-AudioContextSize <Object>] [-AudioTemperature <Object>] [-ChatOnce <Object>] [-ClearSession] [-ContinueLast] [-CpuThreads <Object>] [-DontAddThoughtsToHistory] [-DontSpeak <Object>] [-DontSpeakThoughts <Object>] [-EntropyThreshold <Object>] [-ExposedCmdLets <GenXdev.Helpers.ExposedCmdletDefinition[]>] [-Functions <Collections.Hashtable[]>] [-ImageDetail <Object>] [-IncludeThoughts <Object>] [-Language <Object>] [-LengthPenalty <Object>] [-LLMQueryType <String>] [-LogProbThreshold <Object>] [-MarkupBlocksTypeFilter <Object>] [-MaxToolcallBackLength <Object>] [-Model <String>] [-NoConfirmationToolFunctionNames <String[]>] [-NoContext <Object>] [-NoSessionCaching] [-NoSpeechThreshold <Object>] [-NoVOX <Object>] [-OnlyResponses <Object>] [-OutputMarkdownBlocksOnly <Object>] [-PreferencesDatabasePath <String>] [-SessionOnly] [-SilenceThreshold <Object>] [-SkipSession] [-Speak] [-SpeakThoughts] [-SuppressRegex <Object>] [-Temperature <Double>] [-TemperatureResponse <Object>] [-TimeoutSeconds <Int32>] [-TTLSeconds <Object>] [-UseDesktopAudioCapture <Object>] [-WithBeamSearchSamplingStrategy <Object>] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-Script` | ScriptBlock | ✅ | ✅ (ByValue) | 0 | — | Het uit te voeren en te analyseren script op fouten |
| `-Temperature` | Double | — | — | Named | `-1` | Temperatuur voor reactie-willekeur (0.0-1.0) |
| `-LLMQueryType` | String | — | — | Named | `'Coding'` | Het type LLM-query |
| `-Model` | String | — | — | Named | — | Het modelidentificatiepatroon of de patroon die moet worden gebruikt voor AI-operaties |
| `-ApiEndpoint` | String | — | — | Named | — | De API-eindpunt-URL voor AI-operaties |
| `-ApiKey` | String | — | — | Named | — | De API-sleutel voor geauthenticeerde AI-bewerkingen |
| `-TimeoutSeconds` | Int32 | — | — | Named | — | De time-out voor AI-bewerkingen in seconden |
| `-PreferencesDatabasePath` | String | — | — | Named | — | Databasepad voor voorkeursgegevensbestanden |
| `-Functions` | Collections.Hashtable[] | — | — | Named | `@()` | Array van functiedefinities |
| `-ExposedCmdLets` | GenXdev.Helpers.ExposedCmdletDefinition[] | — | — | Named | `$null` | Array van PowerShell-commando definities om als hulpmiddelen te gebruiken |
| `-NoConfirmationToolFunctionNames` | String[] | — | — | Named | `@()` | Array of command names that don't require confirmation |
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
| `-SessionOnly` | SwitchParameter | — | — | Named | — | Gebruik alternatieve instellingen opgeslagen in sessie voor AI-voorkeuren |
| `-ClearSession` | SwitchParameter | — | — | Named | — | Wis alternatieve instellingen opgeslagen in sessie voor AI-voorkeuren |
| `-SkipSession` | SwitchParameter | — | — | Named | — | Instellingen alleen in permanente voorkeuren opslaan zonder de sessie te beïnvloeden |
| `-Attachments` | Object | — | — | Named | — | Bijlagen die moeten worden opgenomen in de LLM-query. |
| `-ImageDetail` | Object | — | — | Named | — | Niveau van beelddetail voor LLM-query. |
| `-TTLSeconds` | Object | — | — | Named | — | Tijd-om-te-leven in seconden voor de LLM-query. |
| `-IncludeThoughts` | Object | — | — | Named | — | {
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
| `-OutputMarkdownBlocksOnly` | Object | — | — | Named | — | The `-OutputMarkdownBlocksOnly` parameter. |
| `-MarkupBlocksTypeFilter` | Object | — | — | Named | — | ```json
{
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
}
``` |
| `-ChatOnce` | Object | — | — | Named | — | Voer chat slechts één keer uit voor de LLM-query. |
| `-MaxToolcallBackLength` | Object | — | — | Named | — | Maximale terugroeplengte van een tool voor LLM-query. |
| `-AudioTemperature` | Object | — | — | Named | — | Temperatuur voor audio generatie. |
| `-TemperatureResponse` | Object | — | — | Named | — | Temperatuur voor het genereren van antwoorden. |
| `-Language` | Object | — | — | Named | — | Taal voor LLM-query. |
| `-CpuThreads` | Object | — | — | Named | — | Aantal CPU-threads dat moet worden gebruikt. |
| `-SuppressRegex` | Object | — | — | Named | — | Reguliere expressie om uitvoer te onderdrukken. |
| `-AudioContextSize` | Object | — | — | Named | — | Audiocontextgrootte voor LLM-query. |
| `-SilenceThreshold` | Object | — | — | Named | — | Drempel voor stilte bij audiobewerking. |
| `-LengthPenalty` | Object | — | — | Named | — | Straf voor lengte van LLM-uitvoer. |
| `-EntropyThreshold` | Object | — | — | Named | — | Entropiedrempel voor LLM-uitvoer. |
| `-LogProbThreshold` | Object | — | — | Named | — | Log kansdrempel voor LLM output. |
| `-NoSpeechThreshold` | Object | — | — | Named | — | Geen spraakdrempel voor audioverwerking. |
| `-DontSpeak` | Object | — | — | Named | — | Geen audio-uitvoer spreken. |
| `-DontSpeakThoughts` | Object | — | — | Named | — | <html>
<head>
    <title>Mijn Webpagina</title>
</head>
<body>
    <p>Hallo Wereld!</p>
</body>
</html> |
| `-NoVOX` | Object | — | — | Named | — | Schakel VOX uit voor audio-uitvoer. |
| `-UseDesktopAudioCapture` | Object | — | — | Named | — | Gebruik desktop-audiocaptuur. |
| `-NoContext` | Object | — | — | Named | — | {
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
| `-WithBeamSearchSamplingStrategy` | Object | — | — | Named | — | {"response":"Gebruik de beam search sampling strategie."} |
| `-OnlyResponses` | Object | — | — | Named | — | Je bent een behulpzame assistent die is ontworpen om JSON uit te voeren. |

## Outputs

- `Object[]`

## Related Links

- [Get-ScriptExecutionErrorFixPrompt on GitHub](https://github.com/genXdev/genXdev)

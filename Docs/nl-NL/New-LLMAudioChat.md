# New-LLMAudioChat

> **Module:** GenXdev.AI | **Type:** Function | **Aliases:** `llmaudiochat

## Synopsis

> Maakt een interactieve audiochat-sessie met een LLM-model.

## Description

Start een spraakgestuurd gesprek met een taalmodel, met ondersteuning voor audio-invoer en -uitvoer. De functie verwerkt audio-opname, transcriptie, modelquery's en tekst-naar-spraak-reacties. Ondersteunt meerdere taalmodellen en diverse configuratieopties, waaronder vensterbeheer, GPU-versnelling en geavanceerde audioverwerkingsfuncties.

## Syntax

```powershell
New-LLMAudioChat [[-Query] <String>] [[-Instructions] <String>] [[-Attachments] <String[]>] [-ApiEndpoint <String>] [-ApiKey <String>] [-AudioContextSize <Int32>] [-AudioDevice <String>] [-AudioTemperature <Double>] [-ChatMode <String>] [-ClearSession] [-ContinueLast] [-CpuThreads <Int32>] [-DontAddThoughtsToHistory] [-DontSpeak] [-DontSpeakThoughts] [-EntropyThreshold <Single>] [-ExposedCmdLets <GenXdev.Helpers.ExposedCmdletDefinition[]>] [-Functions <ScriptBlock[]>] [-ImageDetail <String>] [-IncludeThoughts] [-LanguageIn <String>] [-LengthPenalty <Single>] [-LLMQueryType <String>] [-LogProbThreshold <Single>] [-MarkupBlocksTypeFilter <String[]>] [-MaxToolcallBackLength <Int32>] [-Model <String>] [-ModelType <String>] [-NoConfirmationToolFunctionNames <String[]>] [-NoContext] [-NoSessionCaching] [-NoSpeechThreshold <Single>] [-NoVOX] [-OnlyResponses] [-OutputMarkdownBlocksOnly] [-PreferencesDatabasePath <String>] [-ResponseFormat <String>] [-SessionOnly] [-SilenceThreshold <Int32>] [-SkipSession] [-SuppressRegex <String>] [-Temperature <Double>] [-TemperatureResponse <Double>] [-TimeoutSeconds <Int32>] [-UseDesktopAndRecordingDevice] [-UseDesktopAudioCapture] [-WithBeamSearchSamplingStrategy] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-Query` | String | — | ✅ (ByValue) | 0 | `''` | Initiaal aanvraagtekst om naar het model te sturen |
| `-Instructions` | String | — | — | 1 | — | Systeeminstructies voor het model |
| `-Attachments` | String[] | — | — | 2 | `@()` | Array of file paths to attach |
| `-ModelType` | String | — | — | Named | `'SmallEn'` | Whisper-modeltype om te gebruiken, standaard is LargeV3Turbo |
| `-AudioTemperature` | Double | — | — | Named | `0.5` | Temperatuur voor herkenning van audio-invoer (0,0-1,0) |
| `-Temperature` | Double | — | — | Named | `-1` | Temperatuur voor reactie-willekeur (0.0-1.0) |
| `-TemperatureResponse` | Double | — | — | Named | `0.01` | De temperatuurparameter voor het beheersen van de willekeurigheid van de reactie. |
| `-LanguageIn` | String | — | — | Named | — | Stelt de taal in om te detecteren |
| `-CpuThreads` | Int32 | — | — | Named | `0` | Aantal CPU-threads dat moet worden gebruikt, standaard 0 (automatisch) |
| `-SuppressRegex` | String | — | — | Named | `$null` | Regex om tokens uit de uitvoer te onderdrukken |
| `-AudioContextSize` | Int32 | — | — | Named | — | Grootte van de audiocontext |
| `-SilenceThreshold` | Int32 | — | — | Named | `30` | Drempeldetectie stilte (0..32767, standaard 30) |
| `-LengthPenalty` | Single | — | — | Named | — | Lengtestraf |
| `-EntropyThreshold` | Single | — | — | Named | — | Entropiedrempel |
| `-LogProbThreshold` | Single | — | — | Named | — | Drempelwaarschijnlijkheid voor logaritme |
| `-NoSpeechThreshold` | Single | — | — | Named | — | Geen spraakdrempel |
| `-LLMQueryType` | String | — | — | Named | `'ToolUse'` | Het type LLM-query |
| `-Model` | String | — | — | Named | — | Het modelidentificatiepatroon of de patroon die moet worden gebruikt voor AI-operaties |
| `-ImageDetail` | String | — | — | Named | `'low'` | Afbeeldingsdetailniveau |
| `-ApiEndpoint` | String | — | — | Named | — | De API-eindpunt-URL voor AI-operaties |
| `-ApiKey` | String | — | — | Named | — | De API-sleutel voor geauthenticeerde AI-bewerkingen |
| `-TimeoutSeconds` | Int32 | — | — | Named | — | De time-out voor AI-bewerkingen in seconden |
| `-ResponseFormat` | String | — | — | Named | `$null` | Een JSON-schema voor de gevraagde uitvoerindeling |
| `-MarkupBlocksTypeFilter` | String[] | — | — | Named | `@(
            'json',
            'powershell',
            'C#',
            'python',
            'javascript',
            'typescript',
            'html',
            'css',
            'yaml',
            'xml',
            'bash'
        )` | Zal alleen markup-blokken van de gespecificeerde types uitvoeren |
| `-PreferencesDatabasePath` | String | — | — | Named | — | Databasepad voor voorkeursgegevensbestanden |
| `-ExposedCmdLets` | GenXdev.Helpers.ExposedCmdletDefinition[] | — | — | Named | `@()` | Array van PowerShell-commando definities om als hulpmiddelen te gebruiken |
| `-Functions` | ScriptBlock[] | — | — | Named | — | ScriptBlock-array van toolfuncties om bloot te stellen aan de LLM (doorgeven aan Invoke-LLMQuery) |
| `-NoConfirmationToolFunctionNames` | String[] | — | — | Named | — | ["get_current_weather", "get_stock_price"] |
| `-ChatMode` | String | — | — | Named | — | Chatmodus voor LLM-query (doorgeleiding naar Invoke-LLMQuery) |
| `-MaxToolcallBackLength` | Int32 | — | — | Named | — | Maximale terugroeplengte voor tools (doorgegeven aan Invoke-LLMQuery) |
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
| `-DontSpeak` | SwitchParameter | — | — | Named | — | Schakel tekst-naar-spraak uit voor AI-antwoorden |
| `-DontSpeakThoughts` | SwitchParameter | — | — | Named | — | Schakel tekst-naar-spraak uit voor AI-gedachteresponses |
| `-NoVOX` | SwitchParameter | — | — | Named | — | Gebruik geen stiltedetectie om de opname automatisch te stoppen. |
| `-UseDesktopAudioCapture` | SwitchParameter | — | — | Named | — | Of gebruik desktop-audio-opname in plaats van microfooningang |
| `-AudioDevice` | String | — | — | Named | — | Naam of GUID van audioapparaat (ondersteunt jokertekens, kiest eerste overeenkomst) |
| `-UseDesktopAndRecordingDevice` | SwitchParameter | — | — | Named | — | Gebruik zowel desktop als opnameapparaat |
| `-NoContext` | SwitchParameter | — | — | Named | — | Gebruik geen context |
| `-WithBeamSearchSamplingStrategy` | SwitchParameter | — | — | Named | — | Gebruik beam search samplingstrategie |
| `-OnlyResponses` | SwitchParameter | — | — | Named | — | Of hertog van het land |
| `-NoSessionCaching` | SwitchParameter | — | — | Named | — | Sla sessie niet op in sessiecache |
| `-OutputMarkdownBlocksOnly` | SwitchParameter | — | — | Named | — | Zal alleen markup block reacties uitvoeren |
| `-SessionOnly` | SwitchParameter | — | — | Named | — | Gebruik alternatieve instellingen opgeslagen in sessie voor AI-voorkeuren |
| `-ClearSession` | SwitchParameter | — | — | Named | — | Wis alternatieve instellingen opgeslagen in sessie voor AI-voorkeuren |
| `-SkipSession` | SwitchParameter | — | — | Named | — | Instellingen alleen in permanente voorkeuren opslaan zonder de sessie te beïnvloeden |

## Examples

### New-LLMAudioChat -Query "Tell me about PowerShell" `     -Model "qwen2.5-14b-instruct" `     -Temperature 0.7

```powershell
New-LLMAudioChat -Query "Tell me about PowerShell" `
    -Model "qwen2.5-14b-instruct" `
    -Temperature 0.7
```

### llmaudiochat "What's the weather?" -DontSpeak

```powershell
llmaudiochat "What's the weather?" -DontSpeak
```

## Related Links

- [New-LLMAudioChat on GitHub](https://github.com/genXdev/genXdev)

# Get-TextTranslation

> **Module:** GenXdev.AI | **Type:** Function | **Aliases:** `translate

## Synopsis

> *(No synopsis provided)*

## Syntax

```powershell
Get-TextTranslation [[-Text] <String>] [[-Instructions] <String>] [[-Attachments] <String[]>] [-AllowDefaultTools] [-ApiEndpoint <String>] [-ApiKey <String>] [-AudioContextSize <Int32>] [-AudioTemperature <Double>] [-ClearCache] [-ClearSession] [-ContinueLast] [-CpuThreads <Int32>] [-DontAddThoughtsToHistory] [-DontSpeak] [-DontSpeakThoughts] [-EntropyThreshold <Double>] [-ExposedCmdLets <GenXdev.Helpers.ExposedCmdletDefinition[]>] [-Functions <Collections.Hashtable[]>] [-ImageDetail <String>] [-Language <String>] [-LengthPenalty <Double>] [-LLMType <String>] [-LogProbThreshold <Double>] [-MarkupBlocksTypeFilter <String[]>] [-Model <String>] [-NoCache] [-NoConfirmationToolFunctionNames <String[]>] [-NoContext] [-NoSessionCaching] [-NoSpeechThreshold <Double>] [-NoVOX] [-OnlyResponses] [-OutputMarkdownBlocksOnly] [-PreferencesDatabasePath <String>] [-SessionOnly] [-SetClipboard] [-SilenceThreshold <Double>] [-SkipSession] [-Speak] [-SpeakThoughts] [-SuppressRegex <String>] [-Temperature <Double>] [-TemperatureResponse <Double>] [-UseDesktopAudioCapture] [-WithBeamSearchSamplingStrategy] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-Text` | String | — | ✅ (ByValue) | 0 | — | Je bent een behulpzame assistent die is ontworpen om JSON uit te voeren. |
| `-Instructions` | String | — | — | 1 | — | Aanvullende instructies om het AI-model te begeleiden in vertaalstijl en context |
| `-Attachments` | String[] | — | — | 2 | `@()` | Array of file paths to attach |
| `-Temperature` | Double | — | — | Named | `-1` | Temperatuur voor reactie-willekeur (0.0-1.0) |
| `-ImageDetail` | String | — | — | Named | `'low'` | Afbeeldingsdetailniveau |
| `-Functions` | Collections.Hashtable[] | — | — | Named | `@()` | Array van functiedefinities |
| `-ExposedCmdLets` | GenXdev.Helpers.ExposedCmdletDefinition[] | — | — | Named | `@()` | Array van PowerShell-commando definities om als hulpmiddelen te gebruiken |
| `-NoConfirmationToolFunctionNames` | String[] | — | — | Named | `@()` | Array of command names that don't require confirmation |
| `-LLMType` | String | — | — | Named | `'TextTranslation'` | Het type LLM-query |
| `-Model` | String | — | — | Named | — | Het modelidentificatiepatroon of de patroon die moet worden gebruikt voor AI-operaties |
| `-ApiEndpoint` | String | — | — | Named | — | De API-eindpunt-URL voor AI-operaties |
| `-ApiKey` | String | — | — | Named | — | De API-sleutel voor geauthenticeerde AI-bewerkingen |
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
| `-AudioTemperature` | Double | — | — | Named | — | Temperatuur voor audioreactie-willekeurigheid (doorgegeven aan LLM) |
| `-TemperatureResponse` | Double | — | — | Named | — | Temperatuur voor responsgeneratie (doorgegeven aan LLM) |
| `-Language` | String | — | — | Named | — | nl-NL |
| `-CpuThreads` | Int32 | — | — | Named | — | Aantal CPU-threads om te gebruiken (doorgegeven aan LLM) |
| `-SuppressRegex` | String | — | — | Named | — | Reguliere expressie om uitvoer te onderdrukken (doorgegeven aan LLM) |
| `-AudioContextSize` | Int32 | — | — | Named | — | Audio context size for processing (passed to LLM) |
| `-SilenceThreshold` | Double | — | — | Named | — | Stilteringsdrempel voor audiodetectie (doorgegeven aan LLM) |
| `-LengthPenalty` | Double | — | — | Named | — | Straf voor de lengte van sequentiegeneratie (doorgegeven aan LLM) |
| `-EntropyThreshold` | Double | — | — | Named | — | Entropiedrempel voor uitvoerfiltering (doorgegeven aan LLM) |
| `-LogProbThreshold` | Double | — | — | Named | — | Log kanswahrscheinlichkeitsschwellenwert für die Ausgabefilterung (an LLM weitergegeben) |
| `-NoSpeechThreshold` | Double | — | — | Named | — | Geen spraakdrempel voor audiodetectie (doorgegeven aan LLM) |
| `-DontSpeak` | SwitchParameter | — | — | Named | — | Spraakuitvoer uitschakelen (doorgegeven aan LLM) |
| `-DontSpeakThoughts` | SwitchParameter | — | — | Named | — | Spraakuitvoer voor gedachten (doorgegeven aan LLM) uitschakelen |
| `-NoVOX` | SwitchParameter | — | — | Named | — | Schakel VOX (spraakactivering) uit (doorgegeven aan LLM) |
| `-UseDesktopAudioCapture` | SwitchParameter | — | — | Named | — | Gebruik desktop-audiocapture (doorgegeven aan LLM) |
| `-NoContext` | SwitchParameter | — | — | Named | — | Schakel contextgebruik uit (doorgegeven aan LLM) |
| `-WithBeamSearchSamplingStrategy` | SwitchParameter | — | — | Named | — | Stel de bundelzoekstrategie in (doorgegeven aan LLM) |
| `-OnlyResponses` | SwitchParameter | — | — | Named | — | Jouw daadwerkelijke reactie hier |
| `-OutputMarkdownBlocksOnly` | SwitchParameter | — | — | Named | — | Sleutelwoorden: AI agenten, veiligheidsonderzoek, red teaming, scenario schrijven, Python, automatisering, natuurlijke taal.

Samenvatting: We zijn op zoek naar een AI-docent voor veiligheidsonderzoek op maandbasis. De ideale kandidaat kan geavanceerde AI-agenten bouwen, red teaming uitvoeren, schrijft overtuigende scenario's en automatiseert oplossingen. We hebben iemand nodig die net zo van natuurlijke taal houdt als van Python code. |
| `-MarkupBlocksTypeFilter` | String[] | — | — | Named | — | Filter voor markup block types (doorgegeven aan LLM) |
| `-NoCache` | SwitchParameter | — | — | Named | — | Sla de vertaalcache over; roep altijd de LLM API aan |
| `-ClearCache` | SwitchParameter | — | — | Named | — | Clear the entire translation cache for all languages |

## Outputs

- `String`

## Related Links

- [Get-TextTranslation on GitHub](https://github.com/genXdev/genXdev)

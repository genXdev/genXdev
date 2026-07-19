# New-LLMTextChat

> **Module:** GenXdev.AI | **Type:** Function | **Aliases:** `llmchat

## Synopsis

> Startet eine interaktive Textchat-Sitzung mit KI-Funktionen.

## Description

Initiiert eine interaktive Chat-Sitzung mit KI-Funktionen, die es Benutzern ermöglicht, während des Gesprächs PowerShell-Funktionen hinzuzufügen oder zu entfernen und PowerShell-Befehle auszuführen. Diese Funktion bietet eine umfassende Schnittstelle für KI-gestützte Konversationen mit umfangreicher Tool-Integration und Anpassungsmöglichkeiten.

## Syntax

```powershell
New-LLMTextChat [[-Query] <String>] [<CommonParameters>]

New-LLMTextChat [[-Instructions] <String>] [[-Attachments] <String[]>] [[-Temperature] <Double>] [-ApiEndpoint <String>] [-ApiKey <String>] [-AudioContextSize <Object>] [-AudioTemperature <Object>] [-ClearSession] [-ContinueLast] [-CpuThreads <Object>] [-DontAddThoughtsToHistory] [-DontSpeak <Object>] [-DontSpeakThoughts <Object>] [-EntropyThreshold <Object>] [-ExposedCmdLets <GenXdev.Helpers.ExposedCmdletDefinition[]>] [-ImageDetail <String>] [-IncludeThoughts] [-Language <Object>] [-LengthPenalty <Object>] [-LLMQueryType <String>] [-LogProbThreshold <Object>] [-MarkupBlocksTypeFilter <String[]>] [-MaxToolcallBackLength <Int32>] [-Model <String>] [-NoConfirmationToolFunctionNames <String[]>] [-NoContext <Object>] [-NoSessionCaching] [-NoSpeechThreshold <Object>] [-NoVOX <Object>] [-OnlyResponses <Object>] [-OutputMarkdownBlocksOnly] [-PreferencesDatabasePath <String>] [-ResponseFormat <String>] [-SessionOnly] [-SilenceThreshold <Object>] [-SkipSession] [-Speak] [-SpeakThoughts] [-SuppressRegex <Object>] [-TemperatureResponse <Object>] [-TimeoutSeconds <Int32>] [-UseDesktopAudioCapture <Object>] [-WithBeamSearchSamplingStrategy <Object>] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-Query` | String | — | ✅ (ByValue) | 0 | `''` | Abfragetext zum Senden an das Modell *(Parameter set: )* |
| `-Instructions` | String | — | — | 1 | — | Systemanweisungen für das Modell |
| `-Attachments` | String[] | — | — | 2 | `@()` | Array of file paths to attach |
| `-Temperature` | Double | — | — | 3 | `-1` | Temperature for response randomness (0.0-1.0) |
| `-ImageDetail` | String | — | — | Named | `'low'` | Bilddetailstufe |
| `-ResponseFormat` | String | — | — | Named | `$null` | Ein JSON-Schema für das angeforderte Ausgabeformat |
| `-LLMQueryType` | String | — | — | Named | `'ToolUse'` | Der Typ der LLM-Abfrage |
| `-Model` | String | — | — | Named | — | Das zu verwendende Modell oder Muster für KI-Operationen |
| `-ApiEndpoint` | String | — | — | Named | — | Die API-Endpunkt-URL für KI-Operationen |
| `-ApiKey` | String | — | — | Named | — | Der API-Schlüssel für authentifizierte KI-Operationen |
| `-TimeoutSeconds` | Int32 | — | — | Named | — | Das Zeitlimit in Sekunden für KI-Operationen |
| `-PreferencesDatabasePath` | String | — | — | Named | — | Datenbankpfad für Präferenzdatendateien |
| `-ExposedCmdLets` | GenXdev.Helpers.ExposedCmdletDefinition[] | — | — | Named | — | Array of PowerShell command definitions to use as tools |
| `-MarkupBlocksTypeFilter` | String[] | — | — | Named | `@('json', 'powershell', 'C#', 'python', 'javascript', 'typescript', 'html', 'css', 'yaml', 'xml', 'bash')` | Wird nur Markup-Blöcke der angegebenen Typen ausgeben |
| `-IncludeThoughts` | SwitchParameter | — | — | Named | — | {
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
| `-DontAddThoughtsToHistory` | SwitchParameter | — | — | Named | — | {
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
| `-ContinueLast` | SwitchParameter | — | — | Named | — | {"response":"Entschuldigung, ich habe den Kontext verloren. Könnten Sie mich bitte daran erinnern, worüber wir gesprochen haben?"} |
| `-Speak` | SwitchParameter | — | — | Named | — | Text-to-Speech für KI-Antworten aktivieren |
| `-SpeakThoughts` | SwitchParameter | — | — | Named | — | Enable text-to-speech for AI thought responses |
| `-OutputMarkdownBlocksOnly` | SwitchParameter | — | — | Named | — | Will only output markup block responses |
| `-ChatOnce` | SwitchParameter | — | — | Named | — | Wird intern verwendet, um den Chat-Modus nur einmal nach dem LLM-Aufruf zu aktivieren *(hidden)* |
| `-NoSessionCaching` | SwitchParameter | — | — | Named | — | Sitzung nicht im Sitzungscache speichern |
| `-SessionOnly` | SwitchParameter | — | — | Named | — | Use alternative settings stored in session for AI preferences |
| `-ClearSession` | SwitchParameter | — | — | Named | — | In der Sitzung gespeicherte alternative Einstellungen für KI-Präferenzen löschen |
| `-SkipSession` | SwitchParameter | — | — | Named | — | Nur Einstellungen in dauerhaften Präferenzen speichern, ohne die Sitzung zu beeinflussen |
| `-NoConfirmationToolFunctionNames` | String[] | — | — | Named | — | Names of tool functions that should not require confirmation |
| `-MaxToolcallBackLength` | Int32 | — | — | Named | — | Maximale Länge für Tool-Callback-Antworten |
| `-AudioTemperature` | Object | — | — | Named | — | Temperatur für Audioerzeugung |
| `-TemperatureResponse` | Object | — | — | Named | — | Temperatur für die Antwortgenerierung |
| `-Language` | Object | — | — | Named | — | Sprache für das Modell oder die Ausgabe |
| `-CpuThreads` | Object | — | — | Named | — | Anzahl der zu verwendenden CPU-Threads |
| `-SuppressRegex` | Object | — | — | Named | — | Regularausdruck zur Unterdrückung der Ausgabe |
| `-AudioContextSize` | Object | — | — | Named | — | Audioton-Kontextgröße für die Verarbeitung |
| `-SilenceThreshold` | Object | — | — | Named | — | Schwellenwert für Stille bei der Audioverarbeitung |
| `-LengthPenalty` | Object | — | — | Named | — | Strafwert für die Länge der Sequenzgenerierung |
| `-EntropyThreshold` | Object | — | — | Named | — | Entropieschwelle für die Ausgabefilterung |
| `-LogProbThreshold` | Object | — | — | Named | — | Log-Wahrscheinlichkeitsschwellenwert für die Ausgabefilterung |
| `-NoSpeechThreshold` | Object | — | — | Named | — | No speech threshold for audio detection |
| `-DontSpeak` | Object | — | — | Named | — | Sprachausgabe deaktivieren |
| `-DontSpeakThoughts` | Object | — | — | Named | — | Disable speech output for thoughts |
| `-NoVOX` | Object | — | — | Named | — | VOX (Sprachaktivierung) deaktivieren |
| `-UseDesktopAudioCapture` | Object | — | — | Named | — | Desktop-Audio-Aufnahme verwenden |
| `-NoContext` | Object | — | — | Named | — | Disable context usage |
| `-WithBeamSearchSamplingStrategy` | Object | — | — | Named | — | Verwenden Sie die Beam-Suchabtaststrategie |
| `-OnlyResponses` | Object | — | — | Named | — | Antworten Sie nur mit Antworten |

## Examples

### New-LLMTextChat -Model "qwen2.5-14b-instruct" -Temperature 0.7 `     -Instructions "You are a helpful AI assistant"

```powershell
New-LLMTextChat -Model "qwen2.5-14b-instruct" -Temperature 0.7 `
    -Instructions "You are a helpful AI assistant"
```

### llmchat "Tell me a joke" -Speak -IncludeThoughts

```powershell
llmchat "Tell me a joke" -Speak -IncludeThoughts
```

## Related Links

- [New-LLMTextChat on GitHub](https://github.com/genXdev/genXdev)

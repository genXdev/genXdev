# Invoke-LLMQuery

> **Module:** GenXdev.AI | **Type:** Function | **Aliases:** `qllm, `llm

## Synopsis

> Sendet Anfragen an eine OpenAI-kompatible Large Language Chat Completion API und verarbeitet Antworten.

## Description

Diese Funktion sendet Abfragen an eine OpenAI-kompatible Large Language Chat Completion API und verarbeitet Antworten. Sie unterstützt Text- und Bildeingaben, behandelt Tool-Funktionsaufrufe und kann in verschiedenen Chat-Modi einschließlich Text und Audio betrieben werden.

Die Funktion bietet umfassende Unterstützung für die LLM-Interaktion, einschließlich:
- Verarbeitung von Text- und Bildeingaben
- Aufruf von Tool-Funktionen und Befehlsausführung
- Interaktive Chat-Modi (Text und Audio)
- Modellinitialisierung und -konfiguration
- Antwortformatierung und -verarbeitung
- Sitzungsverwaltung und Caching
- Fensterpositionierung und Anzeigesteuerung

## Syntax

```powershell
Invoke-LLMQuery [[-Query] <String>] [[-Instructions] <String>] [[-Attachments] <String[]>] [-ApiEndpoint <String>] [-ApiKey <String>] [-AudioContextSize <Int32>] [-AudioTemperature <Double>] [-ChatMode <String>] [-ChatOnce] [-ClearSession] [-ContinueLast] [-CpuThreads <Int32>] [-DontAddThoughtsToHistory] [-DontSpeak] [-DontSpeakThoughts] [-EntropyThreshold <Double>] [-ExposedCmdLets <GenXdev.Helpers.ExposedCmdletDefinition[]>] [-Functions <Collections.Hashtable[]>] [-Gpu <Int32>] [-ImageDetail <String>] [-IncludeThoughts] [-Language <String>] [-LengthPenalty <Double>] [-LLMQueryType <String>] [-LogProbThreshold <Double>] [-MarkupBlocksTypeFilter <String[]>] [-MaxToolcallBackLength <Int32>] [-Model <String>] [-NoConfirmationToolFunctionNames <String[]>] [-NoContext] [-NoSessionCaching] [-NoSpeechThreshold <Double>] [-NoVOX] [-OnlyResponses] [-OutputMarkdownBlocksOnly] [-PreferencesDatabasePath <String>] [-ResponseFormat <String>] [-SessionOnly] [-SilenceThreshold <Double>] [-SkipSession] [-Speak] [-SpeakThoughts] [-SuppressRegex <String>] [-Temperature <Double>] [-TemperatureResponse <Double>] [-TimeoutSeconds <Int32>] [-UseDesktopAudioCapture] [-WithBeamSearchSamplingStrategy] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-Query` | String | — | — | 0 | `''` | Abfragetext zum Senden an das Modell |
| `-Instructions` | String | — | — | 1 | — | Systemanweisungen für das Modell |
| `-Attachments` | String[] | — | — | 2 | `@()` | Array of file paths to attach |
| `-ResponseFormat` | String | — | — | Named | — | Ein JSON-Schema für das angeforderte Ausgabeformat |
| `-Temperature` | Double | — | — | Named | `-1` | Temperature for response randomness (0.0-1.0) |
| `-Functions` | Collections.Hashtable[] | — | — | Named | `@()` | Array von Funktionsdefinitionen |
| `-ExposedCmdLets` | GenXdev.Helpers.ExposedCmdletDefinition[] | — | — | Named | — | Array of PowerShell command definitions to use as tools |
| `-NoConfirmationToolFunctionNames` | String[] | — | — | Named | `@()` | Werkzeugfunktionen, die keine Benutzerbestätigung erfordern |
| `-ImageDetail` | String | — | — | Named | `'low'` | Bilddetailstufe |
| `-LLMQueryType` | String | — | — | Named | `'SimpleIntelligence'` | Der Typ der LLM-Abfrage |
| `-Model` | String | — | — | Named | — | Das zu verwendende Modell oder Muster für KI-Operationen |
| `-Gpu` | Int32 | — | — | Named | — | The `-Gpu` parameter. |
| `-ApiEndpoint` | String | — | — | Named | — | Die API-Endpunkt-URL für KI-Operationen |
| `-ApiKey` | String | — | — | Named | — | Der API-Schlüssel für authentifizierte KI-Operationen |
| `-TimeoutSeconds` | Int32 | — | — | Named | — | Das Zeitlimit in Sekunden für KI-Operationen |
| `-PreferencesDatabasePath` | String | — | — | Named | — | Datenbankpfad für Präferenzdatendateien |
| `-AudioTemperature` | Double | — | — | Named | — | Temperatur für die Zufälligkeit der Audioerzeugung |
| `-TemperatureResponse` | Double | — | — | Named | — | Temperatur für die Zufälligkeit der Antwort (Audio-Chat) |
| `-Language` | String | — | — | Named | — | Sprachcode oder -name für Audio-Chat |
| `-CpuThreads` | Int32 | — | — | Named | — | Anzahl der CPU-Threads, die für den Audio-Chat verwendet werden sollen |
| `-SuppressRegex` | String | — | — | Named | — | Regex to suppress certain outputs in audio chat |
| `-AudioContextSize` | Int32 | — | — | Named | — | Audio context size for audio chat |
| `-SilenceThreshold` | Double | — | — | Named | — | Silence threshold for audio chat |
| `-LengthPenalty` | Double | — | — | Named | — | Längenstrafe für Audio-Chat-Antworten |
| `-EntropyThreshold` | Double | — | — | Named | — | Entropieschwelle für Audio-Chat |
| `-LogProbThreshold` | Double | — | — | Named | — | Schwellenwert der Log-Wahrscheinlichkeit für Audio-Chat |
| `-NoSpeechThreshold` | Double | — | — | Named | — | No speech threshold for audio chat |
| `-DontSpeak` | SwitchParameter | — | — | Named | — | Keine Audioantworten abspielen |
| `-DontSpeakThoughts` | SwitchParameter | — | — | Named | — | Sprechen Sie keine Gedanken aus |
| `-NoVOX` | SwitchParameter | — | — | Named | — | Disable VOX (voice activation) for audio chat |
| `-UseDesktopAudioCapture` | SwitchParameter | — | — | Named | — | Desktop-Audioaufnahme für Audio-Chat verwenden |
| `-NoContext` | SwitchParameter | — | — | Named | — | Disable context for audio chat |
| `-WithBeamSearchSamplingStrategy` | SwitchParameter | — | — | Named | — | Use beam search sampling strategy for audio chat |
| `-OnlyResponses` | SwitchParameter | — | — | Named | — | {
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
| `-DontAddThoughtsToHistory` | SwitchParameter | — | — | Named | — | Denkprozesse aus dem Gesprächsverlauf ausschließen |
| `-ContinueLast` | SwitchParameter | — | — | Named | — | {"response":"Entschuldigung, ich habe den Kontext verloren. Könnten Sie mich bitte daran erinnern, worüber wir gesprochen haben?"} |
| `-Speak` | SwitchParameter | — | — | Named | — | Text-to-Speech für KI-Antworten aktivieren |
| `-SpeakThoughts` | SwitchParameter | — | — | Named | — | Enable text-to-speech for AI thought responses |
| `-OutputMarkdownBlocksOnly` | SwitchParameter | — | — | Named | — | Will only output markup block responses |
| `-MarkupBlocksTypeFilter` | String[] | — | — | Named | `@('json', 'powershell', 'C#',
            'python', 'javascript', 'typescript', 'html', 'css', 'yaml',
            'xml', 'bash')` | Wird nur Markup-Blöcke der angegebenen Typen ausgeben |
| `-ChatMode` | String | — | — | Named | — | Chatmodus aktiviert |
| `-ChatOnce` | SwitchParameter | — | — | Named | — | Wird intern verwendet, um den Chat-Modus nur einmal nach dem LLM-Aufruf zu aktivieren |
| `-NoSessionCaching` | SwitchParameter | — | — | Named | — | Sitzung nicht im Sitzungscache speichern |
| `-SessionOnly` | SwitchParameter | — | — | Named | — | Use alternative settings stored in session for AI preferences |
| `-ClearSession` | SwitchParameter | — | — | Named | — | In der Sitzung gespeicherte alternative Einstellungen für KI-Präferenzen löschen |
| `-SkipSession` | SwitchParameter | — | — | Named | — | Nur Einstellungen in dauerhaften Präferenzen speichern, ohne die Sitzung zu beeinflussen |
| `-MaxToolcallBackLength` | Int32 | — | — | Named | `100000` | Maximale Länge der Tool-Callback-Ausgabe in Zeichen. Bei Überschreitung dieser Länge wird die Ausgabe mit einer Warnmeldung gekürzt. Standardwert ist 100000 Zeichen. |

## Examples

### Invoke-LLMQuery -Query "What is 2+2?" -Model "qwen" -Temperature 0.7

```powershell
Invoke-LLMQuery -Query "What is 2+2?" -Model "qwen" -Temperature 0.7
```

Sends a simple mathematical query to the qwen model with specified temperature.

### qllm "What is 2+2?" -Model "qwen"

```powershell
qllm "What is 2+2?" -Model "qwen"
```

Sendet eine Abfrage mit Standardparametern unter Verwendung des Alias.

### Invoke-LLMQuery -Query "Analyze this image" -Attachments @("image.jpg") -Model "qwen"

```powershell
Invoke-LLMQuery -Query "Analyze this image" -Attachments @("image.jpg") -Model "qwen"
```

Sends a query with an image attachment for analysis.

### llm "Start a conversation" -ChatMode "textprompt" -Model "qwen"

```powershell
llm "Start a conversation" -ChatMode "textprompt" -Model "qwen"
```

Starts an interactive text chat session with the specified model.

## Related Links

- [Invoke-LLMQuery on GitHub](https://github.com/genXdev/genXdev)

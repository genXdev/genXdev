# New-LLMAudioChat

> **Module:** GenXdev.AI | **Type:** Function | **Aliases:** `llmaudiochat

## Synopsis

> Erstellt eine interaktive Audio-Chat-Sitzung mit einem LLM-Modell.

## Description

Initiiert eine sprachbasierte Konversation mit einem Sprachmodell, das Audio-Eingabe und -Ausgabe unterstützt. Die Funktion kümmert sich um Audioaufnahme, Transkription, Modellabfragen und Text-zu-Sprache-Antworten. Unterstützt mehrere Sprachmodelle und verschiedene Konfigurationsoptionen einschließlich Fensterverwaltung, GPU-Beschleunigung und erweiterte Audioverarbeitungsfunktionen.

## Syntax

```powershell
New-LLMAudioChat [[-Query] <String>] [[-Instructions] <String>] [[-Attachments] <String[]>] [-ApiEndpoint <String>] [-ApiKey <String>] [-AudioContextSize <Int32>] [-AudioDevice <String>] [-AudioTemperature <Double>] [-ChatMode <String>] [-ClearSession] [-ContinueLast] [-CpuThreads <Int32>] [-DontAddThoughtsToHistory] [-DontSpeak] [-DontSpeakThoughts] [-EntropyThreshold <Single>] [-ExposedCmdLets <GenXdev.Helpers.ExposedCmdletDefinition[]>] [-Functions <ScriptBlock[]>] [-ImageDetail <String>] [-IncludeThoughts] [-LanguageIn <String>] [-LengthPenalty <Single>] [-LLMQueryType <String>] [-LogProbThreshold <Single>] [-MarkupBlocksTypeFilter <String[]>] [-MaxToolcallBackLength <Int32>] [-Model <String>] [-ModelType <String>] [-NoConfirmationToolFunctionNames <String[]>] [-NoContext] [-NoSessionCaching] [-NoSpeechThreshold <Single>] [-NoVOX] [-OnlyResponses] [-OutputMarkdownBlocksOnly] [-PreferencesDatabasePath <String>] [-ResponseFormat <String>] [-SessionOnly] [-SilenceThreshold <Int32>] [-SkipSession] [-SuppressRegex <String>] [-Temperature <Double>] [-TemperatureResponse <Double>] [-TimeoutSeconds <Int32>] [-UseDesktopAndRecordingDevice] [-UseDesktopAudioCapture] [-WithBeamSearchSamplingStrategy] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-Query` | String | — | ✅ (ByValue) | 0 | `''` | Initialer Abfragetext, der an das Modell gesendet werden soll |
| `-Instructions` | String | — | — | 1 | — | Systemanweisungen für das Modell |
| `-Attachments` | String[] | — | — | 2 | `@()` | Array of file paths to attach |
| `-ModelType` | String | — | — | Named | `'SmallEn'` | Zu verwendender Whisper-Modelltyp, standardmäßig LargeV3Turbo |
| `-AudioTemperature` | Double | — | — | Named | `0.5` | Temperatur für die Audioeingabeerkennung (0.0-1.0) |
| `-Temperature` | Double | — | — | Named | `-1` | Temperature for response randomness (0.0-1.0) |
| `-TemperatureResponse` | Double | — | — | Named | `0.01` | Der Temperaturparameter zur Steuerung der Zufälligkeit der Antwort. |
| `-LanguageIn` | String | — | — | Named | — | Legt die zu erkennende Sprache fest |
| `-CpuThreads` | Int32 | — | — | Named | `0` | Anzahl der zu verwendenden CPU-Threads, Standard ist 0 (automatisch) |
| `-SuppressRegex` | String | — | — | Named | `$null` | Regex to suppress tokens from the output |
| `-AudioContextSize` | Int32 | — | — | Named | — | Größe des Audiokontexts |
| `-SilenceThreshold` | Int32 | — | — | Named | `30` | Ruheerkennungsschwelle (0..32767, Standard 30) |
| `-LengthPenalty` | Single | — | — | Named | — | Längenstrafe |
| `-EntropyThreshold` | Single | — | — | Named | — | Entropy threshold |
| `-LogProbThreshold` | Single | — | — | Named | — | Log-Wahrscheinlichkeitsschwelle |
| `-NoSpeechThreshold` | Single | — | — | Named | — | Kein Sprachschwellenwert |
| `-LLMQueryType` | String | — | — | Named | `'ToolUse'` | Der Typ der LLM-Abfrage |
| `-Model` | String | — | — | Named | — | Das zu verwendende Modell oder Muster für KI-Operationen |
| `-ImageDetail` | String | — | — | Named | `'low'` | Bilddetailstufe |
| `-ApiEndpoint` | String | — | — | Named | — | Die API-Endpunkt-URL für KI-Operationen |
| `-ApiKey` | String | — | — | Named | — | Der API-Schlüssel für authentifizierte KI-Operationen |
| `-TimeoutSeconds` | Int32 | — | — | Named | — | Das Zeitlimit in Sekunden für KI-Operationen |
| `-ResponseFormat` | String | — | — | Named | `$null` | Ein JSON-Schema für das angeforderte Ausgabeformat |
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
        )` | Wird nur Markup-Blöcke der angegebenen Typen ausgeben |
| `-PreferencesDatabasePath` | String | — | — | Named | — | Datenbankpfad für Präferenzdatendateien |
| `-ExposedCmdLets` | GenXdev.Helpers.ExposedCmdletDefinition[] | — | — | Named | `@()` | Array of PowerShell command definitions to use as tools |
| `-Functions` | ScriptBlock[] | — | — | Named | — | ScriptBlock-Array von Tool-Funktionen, die dem LLM zur Verfügung gestellt werden (Durchreichen an Invoke-LLMQuery) |
| `-NoConfirmationToolFunctionNames` | String[] | — | — | Named | — | Array of tool function names that do not require confirmation (pass-through to Invoke-LLMQuery) |
| `-ChatMode` | String | — | — | Named | — | Chat mode for LLM query (pass-through to Invoke-LLMQuery) |
| `-MaxToolcallBackLength` | Int32 | — | — | Named | — | Maximale Rückruflänge des Tools (Durchreichung an Invoke-LLMQuery) |
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
| `-DontSpeak` | SwitchParameter | — | — | Named | — | Text-to-Speech für KI-Antworten deaktivieren |
| `-DontSpeakThoughts` | SwitchParameter | — | — | Named | — | Text-to-Speech für KI-Gedankenantworten deaktivieren |
| `-NoVOX` | SwitchParameter | — | — | Named | — | Don't use silence detection to automatically stop recording. |
| `-UseDesktopAudioCapture` | SwitchParameter | — | — | Named | — | Ob Desktop-Audioaufnahme anstelle des Mikrofoneingangs verwendet werden soll |
| `-AudioDevice` | String | — | — | Named | — | Name oder GUID des Audiogeräts (Unterstützt Platzhalter, wählt den ersten Treffer) |
| `-UseDesktopAndRecordingDevice` | SwitchParameter | — | — | Named | — | Verwenden Sie sowohl Desktop als auch Aufnahmegerät |
| `-NoContext` | SwitchParameter | — | — | Named | — | Don't use context |
| `-WithBeamSearchSamplingStrategy` | SwitchParameter | — | — | Named | — | Verwenden Sie die Beam-Suchabtaststrategie |
| `-OnlyResponses` | SwitchParameter | — | — | Named | — | Ob erkannten Text in der Ausgabe unterdrücken soll |
| `-NoSessionCaching` | SwitchParameter | — | — | Named | — | Sitzung nicht im Sitzungscache speichern |
| `-OutputMarkdownBlocksOnly` | SwitchParameter | — | — | Named | — | Will only output markup block responses |
| `-SessionOnly` | SwitchParameter | — | — | Named | — | Use alternative settings stored in session for AI preferences |
| `-ClearSession` | SwitchParameter | — | — | Named | — | In der Sitzung gespeicherte alternative Einstellungen für KI-Präferenzen löschen |
| `-SkipSession` | SwitchParameter | — | — | Named | — | Nur Einstellungen in dauerhaften Präferenzen speichern, ohne die Sitzung zu beeinflussen |

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

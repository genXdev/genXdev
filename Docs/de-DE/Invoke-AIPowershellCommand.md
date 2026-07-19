# Invoke-AIPowershellCommand

> **Module:** GenXdev.AI.Queries | **Type:** Function | **Aliases:** `hint

## Synopsis

> Generiert und führt PowerShell-Befehle mithilfe von KI-Unterstützung aus.

## Description

Verwendet KI-Modelle, um PowerShell-Befehle basierend auf Abfragen in natürlicher Sprache zu generieren. Die Funktion kann Befehle entweder direkt an das PowerShell-Fenster senden oder in die Zwischenablage kopieren. Sie nutzt KI-Modelle, um natürliche Sprache zu interpretieren und in ausführbare PowerShell-Befehle umzuwandeln, mit umfassender Parameterunterstützung für verschiedene KI-Backends.

## Syntax

```powershell
Invoke-AIPowershellCommand -Query <String> [[-Attachments] <String[]>] [-AllowDefaultTools] [-ApiEndpoint <String>] [-ApiKey <String>] [-AudioContextSize <Int32>] [-AudioTemperature <Double>] [-ClearSession] [-ContinueLast] [-CpuThreads <Int32>] [-DontAddThoughtsToHistory] [-DontSpeak] [-DontSpeakThoughts] [-EntropyThreshold <Double>] [-ExposedCmdLets <GenXdev.Helpers.ExposedCmdletDefinition[]>] [-Functions <Collections.Hashtable[]>] [-ImageDetail <String>] [-Language <String>] [-LengthPenalty <Double>] [-LLMQueryType <String>] [-LogProbThreshold <Double>] [-MarkupBlocksTypeFilter <String[]>] [-MaxToolcallBackLength <Int32>] [-Model <String>] [-NoConfirmationToolFunctionNames <String[]>] [-NoContext] [-NoSessionCaching] [-NoSpeechThreshold <Double>] [-NoVOX] [-OnlyResponses] [-OutputMarkdownBlocksOnly] [-PreferencesDatabasePath <String>] [-SessionOnly] [-SetClipboard] [-SilenceThreshold <Double>] [-SkipSession] [-Speak] [-SpeakThoughts] [-SuppressRegex <String>] [-Temperature <Double>] [-TemperatureResponse <Double>] [-TimeoutSeconds <Int32>] [-UseDesktopAudioCapture] [-WithBeamSearchSamplingStrategy] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-Query` | String | ✅ | — | 0 | — | The natural language query to generate a command for |
| `-Attachments` | String[] | — | — | 2 | `@()` | Array of file paths to attach |
| `-Temperature` | Double | — | — | Named | `-1` | Temperature for response randomness (0.0-1.0) |
| `-ImageDetail` | String | — | — | Named | `'low'` | Bilddetailstufe |
| `-Functions` | Collections.Hashtable[] | — | — | Named | `@()` | Array von Funktionsdefinitionen |
| `-ExposedCmdLets` | GenXdev.Helpers.ExposedCmdletDefinition[] | — | — | Named | `@()` | Array of PowerShell command definitions to use as tools |
| `-NoConfirmationToolFunctionNames` | String[] | — | — | Named | `@()` | Array of command names that don't require confirmation |
| `-LLMQueryType` | String | — | — | Named | `'SimpleIntelligence'` | Der Typ der LLM-Abfrage |
| `-Model` | String | — | — | Named | — | Das zu verwendende Modell oder Muster für KI-Operationen |
| `-ApiEndpoint` | String | — | — | Named | — | Die API-Endpunkt-URL für KI-Operationen |
| `-ApiKey` | String | — | — | Named | — | Der API-Schlüssel für authentifizierte KI-Operationen |
| `-TimeoutSeconds` | Int32 | — | — | Named | — | Das Zeitlimit in Sekunden für KI-Operationen |
| `-PreferencesDatabasePath` | String | — | — | Named | — | Datenbankpfad für Präferenzdatendateien |
| `-SetClipboard` | SwitchParameter | — | — | Named | — | Copy the enhanced text to clipboard |
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
| `-NoSessionCaching` | SwitchParameter | — | — | Named | — | Sitzung nicht im Sitzungscache speichern |
| `-AllowDefaultTools` | SwitchParameter | — | — | Named | — | Allow the use of default AI tools during processing |
| `-SessionOnly` | SwitchParameter | — | — | Named | — | Use alternative settings stored in session for AI preferences |
| `-ClearSession` | SwitchParameter | — | — | Named | — | In der Sitzung gespeicherte alternative Einstellungen für KI-Präferenzen löschen |
| `-SkipSession` | SwitchParameter | — | — | Named | — | Nur Einstellungen in dauerhaften Präferenzen speichern, ohne die Sitzung zu beeinflussen |
| `-AudioTemperature` | Double | — | — | Named | — | Temperatur für die Zufälligkeit der Audioantwort (an LLMQuery übergeben) |
| `-TemperatureResponse` | Double | — | — | Named | — | Temperature for response generation (passed to LLMQuery) |
| `-Language` | String | — | — | Named | — | Sprachcode oder -name für die Verarbeitung (an LLMQuery übergeben) |
| `-CpuThreads` | Int32 | — | — | Named | — | Anzahl der CPU-Threads, die verwendet werden sollen (an LLMQuery übergeben) |
| `-SuppressRegex` | String | — | — | Named | — | Regulärer Ausdruck zum Unterdrücken der Ausgabe (an LLMQuery übergeben) |
| `-AudioContextSize` | Int32 | — | — | Named | — | Audio-Kontextgröße für die Verarbeitung (an LLMQuery übergeben) |
| `-SilenceThreshold` | Double | — | — | Named | — | Schwellwert für Stille bei Audioerkennung (an LLMQuery übergeben) |
| `-LengthPenalty` | Double | — | — | Named | — | Längenstrafe für Sequenzgenerierung (an LLMQuery weitergegeben) |
| `-EntropyThreshold` | Double | — | — | Named | — | Entropieschwelle für die Ausgabefilterung (an LLMQuery übergeben) |
| `-LogProbThreshold` | Double | — | — | Named | — | Log-Wahrscheinlichkeitsschwellenwert für die Ausgabefilterung (an LLMQuery übergeben) |
| `-NoSpeechThreshold` | Double | — | — | Named | — | Keine Sprechschwelle für die Audioerkennung (an LLMQuery übergeben) |
| `-DontSpeak` | SwitchParameter | — | — | Named | — | Disable speech output (passed to LLMQuery) |
| `-DontSpeakThoughts` | SwitchParameter | — | — | Named | — | Deaktivieren Sie die Sprachausgabe für Gedanken (an LLMQuery weitergegeben) |
| `-NoVOX` | SwitchParameter | — | — | Named | — | VOX (Sprachaktivierung) deaktivieren (an LLMQuery übergeben) |
| `-UseDesktopAudioCapture` | SwitchParameter | — | — | Named | — | Desktop-Audioaufnahme verwenden (an LLMQuery übergeben) |
| `-NoContext` | SwitchParameter | — | — | Named | — | Deaktivieren der Kontextnutzung (an LLMQuery übergeben) |
| `-WithBeamSearchSamplingStrategy` | SwitchParameter | — | — | Named | — | Beam Search Sampling Strategie aktivieren (an LLMQuery übergeben) |
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
| `-OutputMarkdownBlocksOnly` | SwitchParameter | — | — | Named | — | {
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
| `-MarkupBlocksTypeFilter` | String[] | — | — | Named | — | Filter for markup block types (passed to LLMQuery) |
| `-MaxToolcallBackLength` | Int32 | — | — | Named | — | Maximale Tool-Rückrufflänge (an LLMQuery übergeben) |

## Examples

### Invoke-AIPowershellCommand -Query "list all running processes"

```powershell
Invoke-AIPowershellCommand -Query "list all running processes"
```

Generiert einen PowerShell-Befehl zum Auflisten laufender Prozesse

### hint "list files modified today"

```powershell
hint "list files modified today"
```

Verwendet den Alias, um einen Befehl zum Finden von heute geänderten Dateien zu generieren.

### Invoke-AIPowershellCommand -Query "stop service" -Clipboard

```powershell
Invoke-AIPowershellCommand -Query "stop service" -Clipboard
```

Erzeugt einen Befehl zum Stoppen eines Dienstes und kopiert ihn in die Zwischenablage.

## Outputs

- `Void`

## Related Links

- [Invoke-AIPowershellCommand on GitHub](https://github.com/genXdev/genXdev)

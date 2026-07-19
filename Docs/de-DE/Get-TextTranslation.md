# Get-TextTranslation

> **Module:** GenXdev.AI | **Type:** Function | **Aliases:** `translate

## Synopsis

> Übersetzt Text mithilfe von KI in eine andere Sprache.

## Description

Diese Funktion übersetzt Eingabetext mithilfe von KI-Modellen in eine bestimmte Zielsprache. Sie kann Eingaben direkt über Parameter, aus der Pipeline oder aus der Systemzwischenablage akzeptieren. Die Funktion bewahrt Formatierung und Stil während der Übersetzung.

## Syntax

```powershell
Get-TextTranslation [[-Text] <String>] [[-Instructions] <String>] [[-Attachments] <String[]>] [-AllowDefaultTools] [-ApiEndpoint <String>] [-ApiKey <String>] [-AudioContextSize <Int32>] [-AudioTemperature <Double>] [-ClearCache] [-ClearSession] [-ContinueLast] [-CpuThreads <Int32>] [-DontAddThoughtsToHistory] [-DontSpeak] [-DontSpeakThoughts] [-EntropyThreshold <Double>] [-ExposedCmdLets <GenXdev.Helpers.ExposedCmdletDefinition[]>] [-Functions <Collections.Hashtable[]>] [-ImageDetail <String>] [-Language <String>] [-LengthPenalty <Double>] [-LLMType <String>] [-LogProbThreshold <Double>] [-MarkupBlocksTypeFilter <String[]>] [-Model <String>] [-NoCache] [-NoConfirmationToolFunctionNames <String[]>] [-NoContext] [-NoSessionCaching] [-NoSpeechThreshold <Double>] [-NoVOX] [-OnlyResponses] [-OutputMarkdownBlocksOnly] [-PreferencesDatabasePath <String>] [-SessionOnly] [-SetClipboard] [-SilenceThreshold <Double>] [-SkipSession] [-Speak] [-SpeakThoughts] [-SuppressRegex <String>] [-Temperature <Double>] [-TemperatureResponse <Double>] [-UseDesktopAudioCapture] [-WithBeamSearchSamplingStrategy] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-Text` | String | — | ✅ (ByValue) | 0 | — | Sie sind ein hilfsbereiter Assistent, der JSON ausgeben soll. |
| `-Instructions` | String | — | — | 1 | — | Zusätzliche Anweisungen, um das KI-Modell im Übersetzungsstil und Kontext zu führen |
| `-Attachments` | String[] | — | — | 2 | `@()` | Array of file paths to attach |
| `-Temperature` | Double | — | — | Named | `-1` | Temperature for response randomness (0.0-1.0) |
| `-ImageDetail` | String | — | — | Named | `'low'` | Bilddetailstufe |
| `-Functions` | Collections.Hashtable[] | — | — | Named | `@()` | Array von Funktionsdefinitionen |
| `-ExposedCmdLets` | GenXdev.Helpers.ExposedCmdletDefinition[] | — | — | Named | `@()` | Array of PowerShell command definitions to use as tools |
| `-NoConfirmationToolFunctionNames` | String[] | — | — | Named | `@()` | Array of command names that don't require confirmation |
| `-LLMType` | String | — | — | Named | `'TextTranslation'` | Der Typ der LLM-Abfrage |
| `-Model` | String | — | — | Named | — | Das zu verwendende Modell oder Muster für KI-Operationen |
| `-ApiEndpoint` | String | — | — | Named | — | Die API-Endpunkt-URL für KI-Operationen |
| `-ApiKey` | String | — | — | Named | — | Der API-Schlüssel für authentifizierte KI-Operationen |
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
| `-AudioTemperature` | Double | — | — | Named | — | Temperatur für die Zufälligkeit der Audioantwort (an LLM weitergegeben) |
| `-TemperatureResponse` | Double | — | — | Named | — | Temperatur für die Antwortgenerierung (an LLM übergeben) |
| `-Language` | String | — | — | Named | — | de-DE |
| `-CpuThreads` | Int32 | — | — | Named | — | Anzahl der zu verwendenden CPU-Threads (an LLM übergeben) |
| `-SuppressRegex` | String | — | — | Named | — | Regex zum Unterdrücken der Ausgabe (an LLM übergeben) |
| `-AudioContextSize` | Int32 | — | — | Named | — | Audio-Kontextgröße zur Verarbeitung (an das LLM übergeben) |
| `-SilenceThreshold` | Double | — | — | Named | — | Schwellwert für Stille bei der Audioerkennung (an LLM übergeben) |
| `-LengthPenalty` | Double | — | — | Named | — | Längenstrafe für die Sequenzerzeugung (an das LLM übergeben) |
| `-EntropyThreshold` | Double | — | — | Named | — | Entropieschwelle für die Ausgabefilterung (an das LLM weitergegeben) |
| `-LogProbThreshold` | Double | — | — | Named | — | Log-Wahrscheinlichkeitsschwellenwert für die Ausgabefilterung (an LLM übergeben) |
| `-NoSpeechThreshold` | Double | — | — | Named | — | Kein Sprachschwellwert für Audioerkennung (an LLM übergeben) |
| `-DontSpeak` | SwitchParameter | — | — | Named | — | Sprachausgabe deaktivieren (an LLM übergeben) |
| `-DontSpeakThoughts` | SwitchParameter | — | — | Named | — | Sprachausgabe für Gedanken deaktivieren (an LLM weitergegeben) |
| `-NoVOX` | SwitchParameter | — | — | Named | — | Deaktiviere VOX (Sprachaktivierung) (an LLM weitergeleitet) |
| `-UseDesktopAudioCapture` | SwitchParameter | — | — | Named | — | Verwende Desktop-Audioerfassung (an LLM weitergeleitet) |
| `-NoContext` | SwitchParameter | — | — | Named | — | Kontextnutzung deaktiviert (an LLM übergeben) |
| `-WithBeamSearchSamplingStrategy` | SwitchParameter | — | — | Named | — | Enable beam search sampling strategy (passed to LLM) |
| `-OnlyResponses` | SwitchParameter | — | — | Named | — | Your transformed text output goes here. |
| `-OutputMarkdownBlocksOnly` | SwitchParameter | — | — | Named | — | Output only markup blocks (passed to LLM) |
| `-MarkupBlocksTypeFilter` | String[] | — | — | Named | — | Filter for markup block types (passed to LLM) |
| `-NoCache` | SwitchParameter | — | — | Named | — | Übersetzungs-Cache überspringen; immer die LLM-API aufrufen |
| `-ClearCache` | SwitchParameter | — | — | Named | — | Lösche den gesamten Übersetzungs-Cache für alle Sprachen |

## Examples

### Get-TextTranslation -Text "Hello world" -Language "French" -Model "qwen"

```powershell
Get-TextTranslation -Text "Hello world" -Language "French" -Model "qwen"
```

### "Bonjour" | translate -Language "English"

```powershell
"Bonjour" | translate -Language "English"
```

## Outputs

- `String`

## Related Links

- [Get-TextTranslation on GitHub](https://github.com/genXdev/genXdev)

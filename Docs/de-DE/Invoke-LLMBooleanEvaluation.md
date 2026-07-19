# Invoke-LLMBooleanEvaluation

> **Module:** GenXdev.AI | **Type:** Function | **Aliases:** `equalstrue

## Synopsis

> Bewertet eine Aussage mit KI, um festzustellen, ob sie wahr oder falsch ist.

## Description

Diese Funktion nutzt KI-Modelle, um Aussagen zu bewerten und ihren Wahrheitswert zu bestimmen. Sie kann Eingaben direkt über Parameter, aus der Pipeline oder aus der Systemzwischenablage entgegennehmen. Die Funktion gibt ein boolesches Ergebnis sowie das Konfidenzniveau und die Begründung des KI-Modells zurück.

## Syntax

```powershell
Invoke-LLMBooleanEvaluation [[-Text] <String>] [[-Instructions] <String>] [[-Attachments] <String[]>] [-AllowDefaultTools] [-ApiEndpoint <String>] [-ApiKey <String>] [-AudioContextSize <Int32>] [-AudioTemperature <Double>] [-ClearSession] [-ContinueLast] [-CpuThreads <Int32>] [-DontAddThoughtsToHistory] [-DontSpeak] [-DontSpeakThoughts] [-EntropyThreshold <Double>] [-ExposedCmdLets <GenXdev.Helpers.ExposedCmdletDefinition[]>] [-Functions <Collections.Hashtable[]>] [-ImageDetail <String>] [-IncludeThoughts] [-Language <String>] [-LengthPenalty <Double>] [-LLMQueryType <String>] [-LogProbThreshold <Double>] [-MarkupBlocksTypeFilter <String[]>] [-MaxToolcallBackLength <Int32>] [-Model <String>] [-NoConfirmationToolFunctionNames <String[]>] [-NoContext] [-NoSessionCaching] [-NoSpeechThreshold <Double>] [-NoVOX] [-OnlyResponses] [-OutputMarkdownBlocksOnly] [-PreferencesDatabasePath <String>] [-SessionOnly] [-SetClipboard] [-SilenceThreshold <Double>] [-SkipSession] [-Speak] [-SpeakThoughts] [-SuppressRegex <String>] [-Temperature <Double>] [-TemperatureResponse <Double>] [-UseDesktopAudioCapture] [-WithBeamSearchSamplingStrategy] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-Text` | String | — | ✅ (ByValue) | 0 | — | Die zu bewertende Aussage |
| `-Instructions` | String | — | — | 1 | `''` | {
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
| `-Attachments` | String[] | — | — | 2 | `@()` | Array of file paths to attach |
| `-Temperature` | Double | — | — | Named | `-1` | Temperature for response randomness (0.0-1.0) |
| `-ImageDetail` | String | — | — | Named | `'low'` | Bilddetailstufe |
| `-Functions` | Collections.Hashtable[] | — | — | Named | `@()` | Array von Funktionsdefinitionen |
| `-ExposedCmdLets` | GenXdev.Helpers.ExposedCmdletDefinition[] | — | — | Named | `@()` | Array of PowerShell command definitions to use as tools |
| `-NoConfirmationToolFunctionNames` | String[] | — | — | Named | `@()` | Array of command names that don't require confirmation |
| `-LLMQueryType` | String | — | — | Named | `'Knowledge'` | Der Typ der LLM-Abfrage |
| `-Model` | String | — | — | Named | — | Das zu verwendende Modell oder Muster für KI-Operationen |
| `-ApiEndpoint` | String | — | — | Named | — | Die API-Endpunkt-URL für KI-Operationen |
| `-ApiKey` | String | — | — | Named | — | Der API-Schlüssel für authentifizierte KI-Operationen |
| `-PreferencesDatabasePath` | String | — | — | Named | — | Datenbankpfad für Präferenzdatendateien |
| `-SetClipboard` | SwitchParameter | — | — | Named | — | Ergebnis in die Zwischenablage kopieren |
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
| `-DontAddThoughtsToHistory` | SwitchParameter | — | — | Named | — | Füge keine Modellgedanken zum Gesprächsverlauf hinzu |
| `-ContinueLast` | SwitchParameter | — | — | Named | — | {"response":"Entschuldigung, ich habe den Kontext verloren. Könnten Sie mich bitte daran erinnern, worüber wir gesprochen haben?"} |
| `-Speak` | SwitchParameter | — | — | Named | — | Text-to-Speech für KI-Antworten aktivieren |
| `-SpeakThoughts` | SwitchParameter | — | — | Named | — | Enable text-to-speech for AI thought responses |
| `-NoSessionCaching` | SwitchParameter | — | — | Named | — | Sitzung nicht im Sitzungscache speichern |
| `-AllowDefaultTools` | SwitchParameter | — | — | Named | — | KI erlauben, Standardtools und -fähigkeiten zu verwenden |
| `-SessionOnly` | SwitchParameter | — | — | Named | — | Use alternative settings stored in session for AI preferences |
| `-ClearSession` | SwitchParameter | — | — | Named | — | In der Sitzung gespeicherte alternative Einstellungen für KI-Präferenzen löschen |
| `-SkipSession` | SwitchParameter | — | — | Named | — | Nur Einstellungen in dauerhaften Präferenzen speichern, ohne die Sitzung zu beeinflussen |
| `-OutputMarkdownBlocksOnly` | SwitchParameter | — | — | Named | — | {'name': 'Max', 'age': 28, 'city': 'Berlin'} |
| `-MarkupBlocksTypeFilter` | String[] | — | — | Named | — | Filter for specific types of markup blocks |
| `-AudioTemperature` | Double | — | — | Named | — | Temperatur für die Zufälligkeit der Audioantwort |
| `-TemperatureResponse` | Double | — | — | Named | — | Temperatur für die Antwortgenerierung |
| `-Language` | String | — | — | Named | — | de-DE |
| `-CpuThreads` | Int32 | — | — | Named | — | Anzahl der CPU-Threads, die für die Verarbeitung verwendet werden sollen |
| `-SuppressRegex` | String | — | — | Named | — | Regular expression to suppress from output |
| `-AudioContextSize` | Int32 | — | — | Named | — | Audioton-Kontextgröße für die Verarbeitung |
| `-SilenceThreshold` | Double | — | — | Named | — | Stille-Schwelle für Audioerkennung |
| `-LengthPenalty` | Double | — | — | Named | — | Strafwert für die Länge der Sequenzgenerierung |
| `-EntropyThreshold` | Double | — | — | Named | — | Entropieschwelle für die Ausgabefilterung |
| `-LogProbThreshold` | Double | — | — | Named | — | Log-Wahrscheinlichkeitsschwellenwert für die Ausgabefilterung |
| `-NoSpeechThreshold` | Double | — | — | Named | — | No speech threshold for audio detection |
| `-DontSpeak` | SwitchParameter | — | — | Named | — | Sprachausgabe deaktivieren |
| `-DontSpeakThoughts` | SwitchParameter | — | — | Named | — | Disable speech output for thoughts |
| `-NoVOX` | SwitchParameter | — | — | Named | — | VOX (Sprachaktivierung) deaktivieren |
| `-UseDesktopAudioCapture` | SwitchParameter | — | — | Named | — | Desktop-Audioerfassung für Eingabe verwenden |
| `-NoContext` | SwitchParameter | — | — | Named | — | Verwenden Sie keinen Kontext in der Abfrage |
| `-WithBeamSearchSamplingStrategy` | SwitchParameter | — | — | Named | — | Verwenden Sie die Beam-Suchabtaststrategie |
| `-OnlyResponses` | SwitchParameter | — | — | Named | — | I'm sorry, but I cannot provide a translation as the original text was not included in your request. If you provide the English text you'd like translated to German, I'll be happy to help. |
| `-MaxToolcallBackLength` | Int32 | — | — | Named | — | The `-MaxToolcallBackLength` parameter. |

## Examples

### Invoke-LLMBooleanEvaluation -Text "The Earth is flat" -Model "gpt-4"

```powershell
Invoke-LLMBooleanEvaluation -Text "The Earth is flat" -Model "gpt-4"
```

### "Humans need oxygen to survive" | Invoke-LLMBooleanEvaluation

```powershell
"Humans need oxygen to survive" | Invoke-LLMBooleanEvaluation
```

### equalstrue "2 + 2 = 4" ##############################################################################

```powershell
equalstrue "2 + 2 = 4"
##############################################################################
```

## Outputs

- `Boolean`

## Related Links

- [Invoke-LLMBooleanEvaluation on GitHub](https://github.com/genXdev/genXdev)

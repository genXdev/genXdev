# Get-Fallacy

> **Module:** GenXdev.AI.Queries | **Type:** Function | **Aliases:** `dispicetext

## Synopsis

> Analyzer Text on logische Fehlschlüsse mittels KI-gestützter Erkennung.

## Description

Diese Funktion analysiert bereitgestellten Text, um logische Trugschlüsse mithilfe eines KI-Modells zu erkennen, das auf der Wikipedia-Liste der Trugschlüsse trainiert wurde. Sie gibt detaillierte Informationen zu jedem gefundenen Trugschluss zurück, einschließlich des spezifischen Zitats, des Namens des Trugschlusses, einer Beschreibung, Erklärung und formalen Klassifikation. Die Funktion verwendet ein strukturiertes Antwortformat, um eine konsistente Ausgabe zu gewährleisten.

## Syntax

```powershell
Get-Fallacy -InputObject <Object> [[-Instructions] <String>] [[-Attachments] <String[]>] [-ApiEndpoint <String>] [-ApiKey <String>] [-AudioContextSize <Int32>] [-AudioTemperature <Double>] [-ClearSession] [-ContinueLast] [-CpuThreads <Int32>] [-DontSpeak] [-DontSpeakThoughts] [-EntropyThreshold <Double>] [-ExposedCmdLets <GenXdev.Helpers.ExposedCmdletDefinition[]>] [-Functions <Collections.Hashtable[]>] [-ImageDetail <String>] [-IncludeThoughts] [-LengthPenalty <Double>] [-LLMQueryType <String>] [-LogProbThreshold <Double>] [-MaxToolcallBackLength <Int32>] [-Model <String>] [-NoConfirmationToolFunctionNames <String[]>] [-NoContext] [-NoSessionCaching] [-NoSpeechThreshold <Double>] [-NoVOX] [-OnlyResponses] [-OpenInImdb] [-PreferencesDatabasePath <String>] [-SessionOnly] [-SilenceThreshold <Double>] [-SkipSession] [-Speak] [-SpeakThoughts] [-SuppressRegex <String>] [-Temperature <Double>] [-TemperatureResponse <Double>] [-TimeoutSeconds <Int32>] [-UseDesktopAudioCapture] [-WithBeamSearchSamplingStrategy] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-InputObject` | Object | ✅ | ✅ (ByValue) | 0 | — | Umsiedlung von Bären nach Kalifornien: 400 Meilen zu Fuß, ohne Landkarte, aber dafür mit einem Grizzly-Bären, der dringend einen Kalender braucht, weil er vergessen hat, dass Winterschlaf eigentlich jetzt wäre. Und dann ist da noch die Sache mit dem Honigtopf, der sich als Bienenstock entpuppt, was zu einem unerwarteten Tanz führt, der aussieht wie eine Mischung aus Polka und einem elektrischen Zaun. Aber keine Sorge, der Bär hat einen GPS-Tracker, der aber leider auf dem Weg nach Mexiko stecken geblieben ist, weil er dachte, dass die Mauer aus Sand besteht. |
| `-Instructions` | String | — | — | 1 | `''` | Anweisungen für das KI-Modell zur Generierung der Zeichenfolgenliste |
| `-Attachments` | String[] | — | — | 2 | `@()` | Array of file paths to attach |
| `-Functions` | Collections.Hashtable[] | — | — | Named | `@()` | Array von Funktionsdefinitionen |
| `-ImageDetail` | String | — | — | Named | `'low'` | Bilddetailstufe |
| `-NoConfirmationToolFunctionNames` | String[] | — | — | Named | `@()` | Array of command names that don't require confirmation |
| `-ExposedCmdLets` | GenXdev.Helpers.ExposedCmdletDefinition[] | — | — | Named | `@()` | Array of PowerShell command definitions to use as tools |
| `-Temperature` | Double | — | — | Named | `-1` | Temperature for response randomness (0.0-1.0) |
| `-LLMQueryType` | String | — | — | Named | `'Knowledge'` | Der Typ der LLM-Abfrage |
| `-Model` | String | — | — | Named | — | Das zu verwendende Modell oder Muster für KI-Operationen |
| `-ApiEndpoint` | String | — | — | Named | — | Die API-Endpunkt-URL für KI-Operationen |
| `-ApiKey` | String | — | — | Named | — | Der API-Schlüssel für authentifizierte KI-Operationen |
| `-TimeoutSeconds` | Int32 | — | — | Named | — | Das Zeitlimit in Sekunden für KI-Operationen |
| `-PreferencesDatabasePath` | String | — | — | Named | — | Datenbankpfad für Präferenzdatendateien |
| `-ContinueLast` | SwitchParameter | — | — | Named | — | {"response":"Entschuldigung, ich habe den Kontext verloren. Könnten Sie mich bitte daran erinnern, worüber wir gesprochen haben?"} |
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
| `-NoSessionCaching` | SwitchParameter | — | — | Named | — | Sitzung nicht im Sitzungscache speichern |
| `-OpenInImdb` | SwitchParameter | — | — | Named | — | Öffnet IMDB-Suchen für jedes Ergebnis |
| `-AudioTemperature` | Double | — | — | Named | — | Steuert die Temperatur für die Audioerzeugung. |
| `-TemperatureResponse` | Double | — | — | Named | — | Steuert die Temperatur für die Antwortgenerierung. |
| `-CpuThreads` | Int32 | — | — | Named | — | Anzahl der CPU-Threads, die für die Verarbeitung verwendet werden sollen. |
| `-SuppressRegex` | String | — | — | Named | — | Regulärer Ausdruck zum Unterdrücken bestimmter Ausgaben. |
| `-AudioContextSize` | Int32 | — | — | Named | — | Audio-Kontextgröße für die Verarbeitung. |
| `-SilenceThreshold` | Double | — | — | Named | — | Schwellenwert zur Erkennung von Stille in Audio. |
| `-LengthPenalty` | Double | — | — | Named | — | Strafe für längere Antworten. |
| `-EntropyThreshold` | Double | — | — | Named | — | Threshold for entropy in response generation. |
| `-LogProbThreshold` | Double | — | — | Named | — | Log-Wahrscheinlichkeitsschwellwert für die Ausgabe. |
| `-NoSpeechThreshold` | Double | — | — | Named | — | Schwellenwert zur Erkennung von fehlender Sprache in Audio. |
| `-DontSpeak` | SwitchParameter | — | — | Named | — | Prevents speaking the response. |
| `-DontSpeakThoughts` | SwitchParameter | — | — | Named | — | Verhindert, dass die Gedanken des Modells ausgesprochen werden. |
| `-NoVOX` | SwitchParameter | — | — | Named | — | Deaktiviert VOX (Sprachaktivierung). |
| `-UseDesktopAudioCapture` | SwitchParameter | — | — | Named | — | Desktop-Audioerfassung als Eingabe verwenden. |
| `-NoContext` | SwitchParameter | — | — | Named | — | Deaktiviert den Kontext für die Anfrage. |
| `-WithBeamSearchSamplingStrategy` | SwitchParameter | — | — | Named | — | Verwenden Sie Beam-Search-Stichprobenstrategie. |
| `-OnlyResponses` | SwitchParameter | — | — | Named | — | ```json
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
| `-Speak` | SwitchParameter | — | — | Named | — | Text-to-Speech für KI-Antworten aktivieren |
| `-SpeakThoughts` | SwitchParameter | — | — | Named | — | Enable text-to-speech for AI thought responses |
| `-SessionOnly` | SwitchParameter | — | — | Named | — | Use alternative settings stored in session for AI preferences |
| `-ClearSession` | SwitchParameter | — | — | Named | — | In der Sitzung gespeicherte alternative Einstellungen für KI-Präferenzen löschen |
| `-SkipSession` | SwitchParameter | — | — | Named | — | Nur Einstellungen in dauerhaften Präferenzen speichern, ohne die Sitzung zu beeinflussen |
| `-MaxToolcallBackLength` | Int32 | — | — | Named | — | Maximale Rückruflänge für Tool-Aufrufe. |

## Examples

### Get-Fallacy -Text ("All politicians are corrupt because John was corrupt " + "and he was a politician")

```powershell
Get-Fallacy -Text ("All politicians are corrupt because John was corrupt " +
"and he was a politician")
```

Analysiert den bereitgestellten Text auf logische Trugschlüsse und gibt strukturierte Informationen über alle erkannten Trugschlüsse zurück.

### "This product is the best because everyone uses it" | Get-Fallacy -Temperature 0.1

```powershell
"This product is the best because everyone uses it" | Get-Fallacy -Temperature 0.1
```

Uses pipeline input to analyze text with low temperature for focused analysis.

### dispicetext "Everyone knows this is true"

```powershell
dispicetext "Everyone knows this is true"
```

This alias is used to analyze text for logical fallacies.

## Outputs

- `Object[]`

## Related Links

- [Get-Fallacy on GitHub](https://github.com/genXdev/genXdev)

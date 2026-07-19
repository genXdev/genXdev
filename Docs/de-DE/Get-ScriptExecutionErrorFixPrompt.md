# Get-ScriptExecutionErrorFixPrompt

> **Module:** GenXdev.AI.Queries | **Type:** Function | **Aliases:** `getfixprompt

## Synopsis

> Erfasst Fehlermeldungen aus verschiedenen Streams und verwendet LLM, um Korrekturen vorzuschlagen.

## Description

Dieses Cmdlet erfasst Fehlermeldungen aus verschiedenen PowerShell-Streams (Pipeline-Eingabe, ausführliche, Informations-, Fehler- und Warnungs-Streams) und erstellt eine strukturierte Eingabeaufforderung für ein LLM, um diese zu analysieren und Lösungen vorzuschlagen. Anschließend führt es die LLM-Abfrage aus und gibt die vorgeschlagene Lösung zurück.

## Syntax

```powershell
Get-ScriptExecutionErrorFixPrompt -Script <ScriptBlock> [-ApiEndpoint <String>] [-ApiKey <String>] [-Attachments <Object>] [-AudioContextSize <Object>] [-AudioTemperature <Object>] [-ChatOnce <Object>] [-ClearSession] [-ContinueLast] [-CpuThreads <Object>] [-DontAddThoughtsToHistory] [-DontSpeak <Object>] [-DontSpeakThoughts <Object>] [-EntropyThreshold <Object>] [-ExposedCmdLets <GenXdev.Helpers.ExposedCmdletDefinition[]>] [-Functions <Collections.Hashtable[]>] [-ImageDetail <Object>] [-IncludeThoughts <Object>] [-Language <Object>] [-LengthPenalty <Object>] [-LLMQueryType <String>] [-LogProbThreshold <Object>] [-MarkupBlocksTypeFilter <Object>] [-MaxToolcallBackLength <Object>] [-Model <String>] [-NoConfirmationToolFunctionNames <String[]>] [-NoContext <Object>] [-NoSessionCaching] [-NoSpeechThreshold <Object>] [-NoVOX <Object>] [-OnlyResponses <Object>] [-OutputMarkdownBlocksOnly <Object>] [-PreferencesDatabasePath <String>] [-SessionOnly] [-SilenceThreshold <Object>] [-SkipSession] [-Speak] [-SpeakThoughts] [-SuppressRegex <Object>] [-Temperature <Double>] [-TemperatureResponse <Object>] [-TimeoutSeconds <Int32>] [-TTLSeconds <Object>] [-UseDesktopAudioCapture <Object>] [-WithBeamSearchSamplingStrategy <Object>] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-Script` | ScriptBlock | ✅ | ✅ (ByValue) | 0 | — | Das auszuführende und zu analysierende Skript auf Fehler |
| `-Temperature` | Double | — | — | Named | `-1` | Temperature for response randomness (0.0-1.0) |
| `-LLMQueryType` | String | — | — | Named | `'Coding'` | Der Typ der LLM-Abfrage |
| `-Model` | String | — | — | Named | — | Das zu verwendende Modell oder Muster für KI-Operationen |
| `-ApiEndpoint` | String | — | — | Named | — | Die API-Endpunkt-URL für KI-Operationen |
| `-ApiKey` | String | — | — | Named | — | Der API-Schlüssel für authentifizierte KI-Operationen |
| `-TimeoutSeconds` | Int32 | — | — | Named | — | Das Zeitlimit in Sekunden für KI-Operationen |
| `-PreferencesDatabasePath` | String | — | — | Named | — | Datenbankpfad für Präferenzdatendateien |
| `-Functions` | Collections.Hashtable[] | — | — | Named | `@()` | Array von Funktionsdefinitionen |
| `-ExposedCmdLets` | GenXdev.Helpers.ExposedCmdletDefinition[] | — | — | Named | `$null` | Array of PowerShell command definitions to use as tools |
| `-NoConfirmationToolFunctionNames` | String[] | — | — | Named | `@()` | Array of command names that don't require confirmation |
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
| `-SessionOnly` | SwitchParameter | — | — | Named | — | Use alternative settings stored in session for AI preferences |
| `-ClearSession` | SwitchParameter | — | — | Named | — | In der Sitzung gespeicherte alternative Einstellungen für KI-Präferenzen löschen |
| `-SkipSession` | SwitchParameter | — | — | Named | — | Nur Einstellungen in dauerhaften Präferenzen speichern, ohne die Sitzung zu beeinflussen |
| `-Attachments` | Object | — | — | Named | — | Anhänge, die in die LLM-Abfrage einbezogen werden sollen. |
| `-ImageDetail` | Object | — | — | Named | — | Detailgrad des Bildes für LLM-Abfrage. |
| `-TTLSeconds` | Object | — | — | Named | — | Time-to-live in Sekunden für die LLM-Abfrage. |
| `-IncludeThoughts` | Object | — | — | Named | — | Übersetzen Sie den folgenden Text ins Deutsche. WICHTIGE ÜBERSETZUNGSREGELN:
1. Analysieren Sie zuerst das Eingabeformat – es könnte Code, Markup, strukturierte Daten oder Klartext sein.
2. Bewahren Sie alle Syntax, Struktur und technischen Elemente wie Programmier-Schlüsselwörter, Tags oder datenformspezifische Elemente.
3. Übersetzen Sie nur menschenlesbare Textteile wie Kommentare, Zeichenfolgenwerte, Dokumentation oder natürlichsprachliche Inhalte.
4. Behalten Sie exakte Formatierung, Einrückung und Zeilenumbrüche bei.
5. Übersetzen Sie niemals Bezeichner, Funktionsnamen, Variablen oder technische Schlüsselwörter.

Sie sind ein hilfreicher Assistent, der JSON ausgibt.
## Antwortformat

Antworten Sie NUR mit einem JSON-Objekt. |
| `-OutputMarkdownBlocksOnly` | Object | — | — | Named | — | Output only markup blocks from the LLM response. |
| `-MarkupBlocksTypeFilter` | Object | — | — | Named | — | {
  "type": "json_schema",
  "json_schema": {
    "name": "text_transformation_response",
    "strict": true,
    "schema": {
      "required": ["response"],
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
| `-ChatOnce` | Object | — | — | Named | — | {
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
          "description": "Die transformierte Textausgabe"
        }
      },
      "type": "object"
    }
  }
} |
| `-MaxToolcallBackLength` | Object | — | — | Named | — | Maximale Tool-Call-Back-Länge für LLM-Abfrage. |
| `-AudioTemperature` | Object | — | — | Named | — | Temperatur für die Audioerzeugung. |
| `-TemperatureResponse` | Object | — | — | Named | — | Temperatur für die Antwortgenerierung. |
| `-Language` | Object | — | — | Named | — | Language for LLM query. |
| `-CpuThreads` | Object | — | — | Named | — | Anzahl der zu verwendenden CPU-Threads. |
| `-SuppressRegex` | Object | — | — | Named | — | Regex zum Unterdrücken der Ausgabe |
| `-AudioContextSize` | Object | — | — | Named | — | Audio-Kontextgröße für LLM-Abfrage. |
| `-SilenceThreshold` | Object | — | — | Named | — | Silence threshold for audio processing. |
| `-LengthPenalty` | Object | — | — | Named | — | Strafmaß für die Länge der LLM-Ausgabe. |
| `-EntropyThreshold` | Object | — | — | Named | — | Entropieschwelle für LLM-Ausgabe. |
| `-LogProbThreshold` | Object | — | — | Named | — | Log-Wahrscheinlichkeitsschwellenwert für LLM-Ausgabe. |
| `-NoSpeechThreshold` | Object | — | — | Named | — | No speech threshold for audio processing. |
| `-DontSpeak` | Object | — | — | Named | — | Keine Audioausgabe abspielen. |
| `-DontSpeakThoughts` | Object | — | — | Named | — | {
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
| `-NoVOX` | Object | — | — | Named | — | Disable VOX for audio output. |
| `-UseDesktopAudioCapture` | Object | — | — | Named | — | Desktop-Audio-Aufnahme verwenden. |
| `-NoContext` | Object | — | — | Named | — | Do not use context for LLM query. |
| `-WithBeamSearchSamplingStrategy` | Object | — | — | Named | — | Verwenden Sie Beam-Search-Stichprobenstrategie. |
| `-OnlyResponses` | Object | — | — | Named | — | {"response": "Das ist eine Beispielübersetzung."} |

## Examples

### $errorInfo = Get-ScriptExecutionErrorFixPrompt -Script {     My-ScriptThatFails }

```powershell
$errorInfo = Get-ScriptExecutionErrorFixPrompt -Script {
    My-ScriptThatFails
}
```

Write-Host $errorInfo

### getfixprompt { Get-ChildItem -NotExistingParameter } ##############################################################################

```powershell
getfixprompt { Get-ChildItem -NotExistingParameter }
##############################################################################
```

## Outputs

- `Object[]`

## Related Links

- [Get-ScriptExecutionErrorFixPrompt on GitHub](https://github.com/genXdev/genXdev)

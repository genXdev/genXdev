# Invoke-QueryImageContent

> **Module:** GenXdev.AI.Queries | **Type:** Function | **Aliases:** —

## Synopsis

> *(No synopsis provided)*

## Syntax

```powershell
Invoke-QueryImageContent -Query <String> -ImagePath <String> [[-Instructions] <String>] [-ApiEndpoint <String>] [-ApiKey <String>] [-AudioContextSize <Int32>] [-AudioTemperature <Double>] [-ChatOnce] [-ClearSession] [-ConsentToThirdPartySoftwareInstallation] [-ContinueLast] [-CpuThreads <Int32>] [-DontAddThoughtsToHistory] [-DontSpeak] [-DontSpeakThoughts] [-EntropyThreshold <Double>] [-ExposedCmdLets <String[]>] [-ForceConsent] [-Functions <String[]>] [-ImageDetail <String>] [-IncludeThoughts] [-Language <String>] [-LengthPenalty <Double>] [-LLMQueryType <String>] [-LogProbThreshold <Double>] [-MarkupBlocksTypeFilter <String[]>] [-MaxToolcallBackLength <Int32>] [-Model <String>] [-NoConfirmationToolFunctionNames <String[]>] [-NoContext] [-NoSessionCaching] [-NoSpeechThreshold <Double>] [-NoVOX] [-OnlyResponses] [-OutputMarkdownBlocksOnly] [-PreferencesDatabasePath <String>] [-ResponseFormat <String>] [-SessionOnly] [-SilenceThreshold <Double>] [-SkipSession] [-Speak] [-SpeakThoughts] [-SuppressRegex <String>] [-Temperature <Double>] [-TemperatureResponse <Double>] [-TimeoutSeconds <Int32>] [-UseDesktopAudioCapture] [-WithBeamSearchSamplingStrategy] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-Query` | String | ✅ | — | 0 | — | Die Abfragezeichenfolge zum Analysieren des Bildes |
| `-ImagePath` | String | ✅ | — | 1 | — | Pfad zur Bilddatei für die Analyse |
| `-Instructions` | String | — | — | 2 | — | Systemanweisungen für das Modell |
| `-ResponseFormat` | String | — | — | Named | `$null` | Ein JSON-Schema für das angeforderte Ausgabeformat |
| `-Temperature` | Double | — | — | Named | `-1` | Temperature for response randomness (0.0-1.0) |
| `-ImageDetail` | String | — | — | Named | `'high'` | Bilddetailstufe |
| `-LLMQueryType` | String | — | — | Named | `'Pictures'` | Der Typ der LLM-Abfrage |
| `-Model` | String | — | — | Named | — | Das zu verwendende Modell oder Muster für KI-Operationen |
| `-ApiEndpoint` | String | — | — | Named | — | Die API-Endpunkt-URL für KI-Operationen |
| `-ApiKey` | String | — | — | Named | — | Der API-Schlüssel für authentifizierte KI-Operationen |
| `-TimeoutSeconds` | Int32 | — | — | Named | — | Das Zeitlimit in Sekunden für KI-Operationen |
| `-PreferencesDatabasePath` | String | — | — | Named | — | Datenbankpfad für Präferenzdatendateien |
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
| `-SessionOnly` | SwitchParameter | — | — | Named | — | Use alternative settings stored in session for AI preferences |
| `-ClearSession` | SwitchParameter | — | — | Named | — | In der Sitzung gespeicherte alternative Einstellungen für KI-Präferenzen löschen |
| `-SkipSession` | SwitchParameter | — | — | Named | — | Nur Einstellungen in dauerhaften Präferenzen speichern, ohne die Sitzung zu beeinflussen |
| `-Functions` | String[] | — | — | Named | — | Legt die für den KI-Betrieb zu verwendenden Funktionen fest. |
| `-ExposedCmdLets` | String[] | — | — | Named | — | Gibt die verfügbaren Cmdlets für den KI-Vorgang an. |
| `-NoConfirmationToolFunctionNames` | String[] | — | — | Named | — | Gibt die Namen von Werkzeugfunktionen an, die keine Bestätigung erfordern. |
| `-AudioTemperature` | Double | — | — | Named | — | Temperatur für die Audioantwortgenerierung. |
| `-TemperatureResponse` | Double | — | — | Named | — | Temperature for the response generation. |
| `-Language` | String | — | — | Named | — | Die Sprache für generierte Beschreibungen und Schlüsselwörter |
| `-CpuThreads` | Int32 | — | — | Named | — | Anzahl der zu verwendenden CPU-Threads. |
| `-SuppressRegex` | String | — | — | Named | — | Regex zum Unterdrücken der Ausgabe |
| `-AudioContextSize` | Int32 | — | — | Named | — | Audio-Kontextgröße für die Verarbeitung. |
| `-SilenceThreshold` | Double | — | — | Named | — | Silence threshold for audio processing. |
| `-LengthPenalty` | Double | — | — | Named | — | Längenstrafe für die Sequenzgenerierung. |
| `-EntropyThreshold` | Double | — | — | Named | — | Entropie-Schwellenwert für die Ausgabefilterung. |
| `-LogProbThreshold` | Double | — | — | Named | — | Schwellenwert für die Log-Wahrscheinlichkeit zur Ausgabefilterung. |
| `-NoSpeechThreshold` | Double | — | — | Named | — | Kein Schwellenwert für Spracherkennung bei der Audioerkennung. |
| `-DontSpeak` | SwitchParameter | — | — | Named | — | Ihre Anfrage wurde bearbeitet. |
| `-DontSpeakThoughts` | SwitchParameter | — | — | Named | — | Wenn angegeben, sprechen Sie nicht die Gedanken des Modells aus. |
| `-NoVOX` | SwitchParameter | — | — | Named | — | Falls angegeben, deaktiviert VOX. |
| `-UseDesktopAudioCapture` | SwitchParameter | — | — | Named | — | Falls angegeben, verwende Desktop-Audioaufnahme. |
| `-NoContext` | SwitchParameter | — | — | Named | — | Falls angegeben, deaktiviert die Nutzung des Kontexts. |
| `-WithBeamSearchSamplingStrategy` | SwitchParameter | — | — | Named | — | If specified, use beam search sampling strategy. |
| `-OnlyResponses` | SwitchParameter | — | — | Named | — | {"type":"json_schema","json_schema":{"name":"text_transformation_response","strict":true,"schema":{"required":["response"],"properties":{"response":{"type":"string","description":"The transformed text output"}},"type":"object"}}} |
| `-DontAddThoughtsToHistory` | SwitchParameter | — | — | Named | — | Wenn angegeben, fügen Sie keine Gedanken zur Historie hinzu. |
| `-ContinueLast` | SwitchParameter | — | — | Named | — | I understand. I will translate text from English to German while preserving all formatting and technical elements. Please provide the text you would like me to translate. |
| `-Speak` | SwitchParameter | — | — | Named | — | Sprich die Ausgabe. |
| `-SpeakThoughts` | SwitchParameter | — | — | Named | — | The model's thoughts are its internal reasoning process. |
| `-OutputMarkdownBlocksOnly` | SwitchParameter | — | — | Named | — | Dies ist ein Beispieltext. |
| `-MarkupBlocksTypeFilter` | String[] | — | — | Named | — | Filter for markup block types. |
| `-ChatOnce` | SwitchParameter | — | — | Named | — | Wenn angegeben, nur einmal chatten. |
| `-NoSessionCaching` | SwitchParameter | — | — | Named | — | Sitzungscaching deaktivieren. |
| `-MaxToolcallBackLength` | Int32 | — | — | Named | — | Maximale Rückruflänge für Tool-Aufrufe. |
| `-ForceConsent` | SwitchParameter | — | — | Named | — | Erzwingen Sie eine Einwilligungsaufforderung, auch wenn eine Präferenz für die Installation des ImageSharp-Pakets festgelegt ist. |
| `-ConsentToThirdPartySoftwareInstallation` | SwitchParameter | — | — | Named | — | Drittanbieter-Softwareinstallation automatisch zustimmen und persistentes Flag für ImageSharp-Pakete setzen. |

## Related Links

- [Invoke-QueryImageContent on GitHub](https://github.com/genXdev/genXdev)

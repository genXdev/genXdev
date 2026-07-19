# ConvertFrom-DiplomaticSpeak

> **Module:** GenXdev.AI.Queries | **Type:** Function | **Aliases:** `undiplomatize

## Synopsis

> Konvertiert diplomatische oder taktvolle Sprache in direkte, klare und unverblümte Ausdrucksweise.

## Description

Diese Funktion nimmt diplomatische Ausdrucksweisen und übersetzt sie, um die wahre Bedeutung hinter höflicher oder politisch korrekter Sprache zu enthüllen. Sie nutzt KI-Sprachmodelle, um beschönigende Formulierungen in direkte Aussagen zu verwandeln, wodurch Kommunikation eindeutig und leicht verständlich wird. Die Funktion ist besonders nützlich für die Analyse von politischen Aussagen, Geschäftskommunikation oder jeglichen Texten, bei denen die wahre Bedeutung hinter diplomatischer Sprache verborgen sein könnte.

## Syntax

```powershell
ConvertFrom-DiplomaticSpeak [[-Text] <String>] [[-Instructions] <String>] [-AllowDefaultTools] [-ApiEndpoint <String>] [-ApiKey <String>] [-Attachments <Object[]>] [-AudioContextSize <Int32>] [-AudioTemperature <Double>] [-ClearSession] [-ContinueLast] [-CpuThreads <Int32>] [-DontAddThoughtsToHistory] [-DontSpeak] [-DontSpeakThoughts] [-EntropyThreshold <Double>] [-ExposedCmdLets <Object[]>] [-Functions <Object[]>] [-ImageDetail <String>] [-LengthPenalty <Double>] [-LLMQueryType <String>] [-LogProbThreshold <Double>] [-MarkupBlocksTypeFilter <String[]>] [-MaxToolcallBackLength <Int32>] [-Model <String>] [-NoConfirmationToolFunctionNames <String[]>] [-NoContext] [-NoSessionCaching] [-NoSpeechThreshold <Double>] [-NoVOX] [-OnlyResponses] [-OutputMarkdownBlocksOnly] [-PreferencesDatabasePath <String>] [-SessionOnly] [-SetClipboard] [-SilenceThreshold <Double>] [-SkipSession] [-SpeakThoughts] [-SuppressRegex <String[]>] [-Temperature <Double>] [-TemperatureResponse <Double>] [-TimeoutSeconds <Int32>] [-UseDesktopAudioCapture] [-WithBeamSearchSamplingStrategy] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-Text` | String | — | ✅ (ByValue) | 0 | — | I don't understand your tone. Could you be more direct? |
| `-Instructions` | String | — | — | 1 | `''` | Ein JSON-Objekt mit den Schlüsseln "name", "email" und "preferences" erstellen. |
| `-Temperature` | Double | — | — | Named | `0.0` | Temperature for response randomness (0.0-1.0) |
| `-LLMQueryType` | String | — | — | Named | `'Knowledge'` | Der Typ der LLM-Abfrage |
| `-Model` | String | — | — | Named | — | Das zu verwendende Modell oder Muster für KI-Operationen |
| `-ApiEndpoint` | String | — | — | Named | — | Die API-Endpunkt-URL für KI-Operationen |
| `-ApiKey` | String | — | — | Named | — | Der API-Schlüssel für authentifizierte KI-Operationen |
| `-TimeoutSeconds` | Int32 | — | — | Named | — | Das Zeitlimit in Sekunden für KI-Operationen |
| `-PreferencesDatabasePath` | String | — | — | Named | — | Datenbankpfad für Präferenzdatendateien |
| `-SetClipboard` | SwitchParameter | — | — | Named | — | Copy the transformed text to clipboard |
| `-SessionOnly` | SwitchParameter | — | — | Named | — | Use alternative settings stored in session for AI preferences |
| `-ClearSession` | SwitchParameter | — | — | Named | — | In der Sitzung gespeicherte alternative Einstellungen für KI-Präferenzen löschen |
| `-SkipSession` | SwitchParameter | — | — | Named | — | Nur Einstellungen in dauerhaften Präferenzen speichern, ohne die Sitzung zu beeinflussen |
| `-Attachments` | Object[] | — | — | Named | — | Anhänge, die in die KI-Operation einbezogen werden sollen. |
| `-ImageDetail` | String | — | — | Named | — | Detailgrad des Bildes für die KI-Verarbeitung. |
| `-Functions` | Object[] | — | — | Named | — | Dem KI-Modell ausgesetzte Funktionen. |
| `-ExposedCmdLets` | Object[] | — | — | Named | — | Cmdlets, die dem KI-Modell zur Verfügung gestellt werden sollen. |
| `-NoConfirmationToolFunctionNames` | String[] | — | — | Named | — | Namen von Tool-Funktionen, die keine Bestätigung erfordern. |
| `-DontAddThoughtsToHistory` | SwitchParameter | — | — | Named | — | Fügen Sie der KI-Geschichte keine Gedanken hinzu. |
| `-ContinueLast` | SwitchParameter | — | — | Named | — | Auf Deutsch übersetzter Text |
| `-SpeakThoughts` | SwitchParameter | — | — | Named | — | Gedanken während der KI-Verarbeitung laut aussprechen. |
| `-NoSessionCaching` | SwitchParameter | — | — | Named | — | Deaktivieren Sie das Session-Caching für diesen Vorgang. |
| `-AllowDefaultTools` | SwitchParameter | — | — | Named | — | Erlaube die Verwendung von Standardwerkzeugen im KI-Betrieb. |
| `-AudioTemperature` | Double | — | — | Named | — | Audiotemperatur für KI-Audioerzeugung. |
| `-TemperatureResponse` | Double | — | — | Named | — | Temperatur für die Generierung von KI-Antworten. |
| `-CpuThreads` | Int32 | — | — | Named | — | Number of CPU threads to use for AI operation. |
| `-SuppressRegex` | String[] | — | — | Named | — | Regex to suppress in AI output. |
| `-AudioContextSize` | Int32 | — | — | Named | — | Audio-Kontextgröße für die KI-Audioverarbeitung. |
| `-SilenceThreshold` | Double | — | — | Named | — | Silence threshold for AI audio processing. |
| `-LengthPenalty` | Double | — | — | Named | — | Strafe für Länge bei KI-Sequenzgenerierung. |
| `-EntropyThreshold` | Double | — | — | Named | — | Entropieschwelle für KI-Ausgabe. |
| `-LogProbThreshold` | Double | — | — | Named | — | Log-Wahrscheinlichkeitsschwellenwert für KI-Ausgabe. |
| `-NoSpeechThreshold` | Double | — | — | Named | — | No speech threshold for AI audio processing. |
| `-DontSpeak` | SwitchParameter | — | — | Named | — | Sprechen Sie nicht die KI-Ausgabe. |
| `-DontSpeakThoughts` | SwitchParameter | — | — | Named | — | Do not speak AI thoughts. |
| `-NoVOX` | SwitchParameter | — | — | Named | — | Deaktivieren Sie VOX für die KI-Audioausgabe. |
| `-UseDesktopAudioCapture` | SwitchParameter | — | — | Named | — | Use desktop audio capture for AI audio. |
| `-NoContext` | SwitchParameter | — | — | Named | — | Kein Kontext für den KI-Betrieb verwenden. |
| `-WithBeamSearchSamplingStrategy` | SwitchParameter | — | — | Named | — | Use beam search sampling strategy for AI. |
| `-OnlyResponses` | SwitchParameter | — | — | Named | — | Nur Antworten von der KI zurückgeben. |
| `-OutputMarkdownBlocksOnly` | SwitchParameter | — | — | Named | — | The `-OutputMarkdownBlocksOnly` parameter. |
| `-MarkupBlocksTypeFilter` | String[] | — | — | Named | — | Filter for markup block types in AI output. |
| `-MaxToolcallBackLength` | Int32 | — | — | Named | — | Maximale Rückruflänge für Tool-Aufrufe. |

## Examples

### ConvertFrom-DiplomaticSpeak -Text "We have some concerns about your approach"

```powershell
ConvertFrom-DiplomaticSpeak -Text "We have some concerns about your
approach"
```

### undiplomatize "Your proposal has merit but requires further consideration"

```powershell
undiplomatize "Your proposal has merit but requires further consideration"
```

### "We're putting you on timeout" |     ConvertFrom-DiplomaticSpeak -SetClipboard -Temperature 0.2

```powershell
"We're putting you on timeout" |
    ConvertFrom-DiplomaticSpeak -SetClipboard -Temperature 0.2
```

## Outputs

- `String`

## Related Links

- [ConvertFrom-DiplomaticSpeak on GitHub](https://github.com/genXdev/genXdev)

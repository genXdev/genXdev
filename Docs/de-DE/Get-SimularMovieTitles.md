# Get-SimularMovieTitles

> **Module:** GenXdev.AI.Queries | **Type:** Function | **Aliases:** —

## Synopsis

> *(No synopsis provided)*

## Syntax

```powershell
Get-SimularMovieTitles -Movies <String[]> [[-LLMQueryType] <String>] [-AcceptLang <String>] [-AllowDefaultTools] [-ApiEndpoint <String>] [-ApiKey <String>] [-ApplicationMode] [-Attachments <String[]>] [-AudioContextSize <Int32>] [-AudioTemperature <Double>] [-Bottom <Int32>] [-Centered] [-Chrome] [-Chromium] [-ClearSession] [-ContinueLast] [-CpuThreads <Int32>] [-DisablePopupBlocker] [-DontAddThoughtsToHistory] [-DontSpeak] [-DontSpeakThoughts] [-EntropyThreshold <Double>] [-ExposedCmdLets <GenXdev.Helpers.ExposedCmdletDefinition[]>] [-Firefox] [-FocusWindow] [-FullScreen] [-Functions <Collections.Hashtable[]>] [-Height <Int32>] [-ImageDetail <String>] [-IncludeThoughts] [-Instructions <String>] [-Language <String>] [-Left <Int32>] [-LengthPenalty <Double>] [-LogProbThreshold <Double>] [-MarkupBlocksTypeFilter <String[]>] [-Maximize] [-MaxToolcallBackLength <Int32>] [-Model <String>] [-Monitor <Int32>] [-NewWindow] [-NoBorders] [-NoBrowserExtensions] [-NoConfirmationToolFunctionNames <String[]>] [-NoContext] [-NoSessionCaching] [-NoSpeechThreshold <Double>] [-NoVOX] [-OnlyResponses] [-OpenInImdb] [-OutputMarkdownBlocksOnly] [-PreferencesDatabasePath <String>] [-Private] [-RestoreFocus] [-ReturnOnlyURL] [-ReturnURL] [-Right <Int32>] [-SendKeyDelayMilliSeconds <Int32>] [-SendKeyEscape] [-SendKeyHoldKeyboardFocus] [-SendKeyUseShiftEnter] [-SessionOnly] [-SetClipboard] [-SetForeground] [-SideBySide] [-SilenceThreshold <Double>] [-SkipSession] [-Speak] [-SpeakThoughts] [-SuppressRegex <String>] [-Temperature <Double>] [-TemperatureResponse <Double>] [-TimeoutSeconds <Int32>] [-UseDesktopAudioCapture] [-Width <Int32>] [-WithBeamSearchSamplingStrategy] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-Movies` | String[] | ✅ | — | 0 | — | Array of movie titles to analyze for similarities |
| `-LLMQueryType` | String | — | — | 1 | `'Knowledge'` | Der Typ der LLM-Abfrage |
| `-Model` | String | — | — | Named | — | Das zu verwendende Modell oder Muster für KI-Operationen |
| `-ApiEndpoint` | String | — | — | Named | — | Die API-Endpunkt-URL für KI-Operationen |
| `-ApiKey` | String | — | — | Named | — | Der API-Schlüssel für authentifizierte KI-Operationen |
| `-TimeoutSeconds` | Int32 | — | — | Named | — | Das Zeitlimit in Sekunden für KI-Operationen |
| `-PreferencesDatabasePath` | String | — | — | Named | — | Datenbankpfad für Präferenzdatendateien |
| `-Temperature` | Double | — | — | Named | `-1` | Temperature for response randomness (0.0-1.0) |
| `-OpenInImdb` | SwitchParameter | — | — | Named | — | Öffnet IMDB-Suchen für jedes Ergebnis |
| `-Language` | String | — | — | Named | — | Language for IMDB search or browser session |
| `-Monitor` | Int32 | — | — | Named | `-1` | Monitorindex oder -name für Browserfensterplatzierung |
| `-Width` | Int32 | — | — | Named | `-1` | Breite des Browserfensters in Pixel |
| `-Height` | Int32 | — | — | Named | `-1` | Höhe des Browserfensters in Pixeln |
| `-AcceptLang` | String | — | — | Named | — | Accept-Language HTTP-Header für Browsersitzung |
| `-Private` | SwitchParameter | — | — | Named | — | Öffnen Sie den Browser im privaten/Inkognito-Modus |
| `-Chrome` | SwitchParameter | — | — | Named | — | Verwenden Sie Google Chrome für die Browsersitzung |
| `-Chromium` | SwitchParameter | — | — | Named | — | Verwenden Sie Chromium für die Browsersitzung |
| `-Firefox` | SwitchParameter | — | — | Named | — | Use Mozilla Firefox for browser session |
| `-Left` | Int32 | — | — | Named | — | Linke Position des Browserfensters in Pixel |
| `-Right` | Int32 | — | — | Named | — | Rechte Position des Browserfensters in Pixeln |
| `-Bottom` | Int32 | — | — | Named | — | Untere Position des Browserfensters in Pixeln |
| `-Centered` | SwitchParameter | — | — | Named | — | Browserfenster zentriert auf dem Bildschirm öffnen |
| `-FullScreen` | SwitchParameter | — | — | Named | — | Öffne den Browser im Vollbildmodus |
| `-ApplicationMode` | SwitchParameter | — | — | Named | — | Browser im Anwendungsmodus öffnen (minimale Benutzeroberfläche) |
| `-NoBrowserExtensions` | SwitchParameter | — | — | Named | — | Browserextension für die Sitzung deaktivieren |
| `-DisablePopupBlocker` | SwitchParameter | — | — | Named | — | Disable popup blocker in browser session |
| `-FocusWindow` | SwitchParameter | — | — | Named | — | Fokussieren Sie das Browserfenster nach dem Öffnen |
| `-SetForeground` | SwitchParameter | — | — | Named | — | Öffnen Sie das Browserfenster in den Vordergrund |
| `-Maximize` | SwitchParameter | — | — | Named | — | Maximize the browser window after opening |
| `-RestoreFocus` | SwitchParameter | — | — | Named | — | Fokus nach dem Schließen des Browsers auf das vorherige Fenster zurückgeben |
| `-NewWindow` | SwitchParameter | — | — | Named | — | Open each IMDB result in a new browser window |
| `-ReturnURL` | SwitchParameter | — | — | Named | — | https://www.imdb.com/search/title/ |
| `-ReturnOnlyURL` | SwitchParameter | — | — | Named | — | https://example.com |
| `-SendKeyEscape` | SwitchParameter | — | — | Named | — | Send Escape key to browser after opening |
| `-SendKeyHoldKeyboardFocus` | SwitchParameter | — | — | Named | — | Halten Sie den Tastaturfokus im Browser, nachdem Sie Tasten gesendet haben. |
| `-SendKeyUseShiftEnter` | SwitchParameter | — | — | Named | — | Use Shift+Enter when sending keys to browser |
| `-SendKeyDelayMilliSeconds` | Int32 | — | — | Named | — | Verzögerung in Millisekunden zwischen dem Senden von Tasten an den Browser |
| `-NoBorders` | SwitchParameter | — | — | Named | — | Öffne Browserfenster ohne Rahmen |
| `-SideBySide` | SwitchParameter | — | — | Named | — | Öffnen Sie für jedes Ergebnis Browserfenster nebeneinander |
| `-SessionOnly` | SwitchParameter | — | — | Named | — | Use alternative settings stored in session for AI preferences |
| `-ClearSession` | SwitchParameter | — | — | Named | — | In der Sitzung gespeicherte alternative Einstellungen für KI-Präferenzen löschen |
| `-SkipSession` | SwitchParameter | — | — | Named | — | Nur Einstellungen in dauerhaften Präferenzen speichern, ohne die Sitzung zu beeinflussen |
| `-Instructions` | String | — | — | Named | — | Anweisungen für das KI-Modell zur Generierung der Zeichenfolgenliste |
| `-Attachments` | String[] | — | — | Named | — | Array of file paths to attach |
| `-ImageDetail` | String | — | — | Named | — | Bilddetailstufe für die Bildverarbeitung. |
| `-Functions` | Collections.Hashtable[] | — | — | Named | — | Array of function definitions that can be called by the AI model during processing. |
| `-ExposedCmdLets` | GenXdev.Helpers.ExposedCmdletDefinition[] | — | — | Named | — | Array von PowerShell-Befehlsdefinitionen, die als Werkzeuge verwendet werden können, die die KI aufrufen kann. |
| `-NoConfirmationToolFunctionNames` | String[] | — | — | Named | — | Array of command names that don't require confirmation before execution. |
| `-AudioTemperature` | Double | — | — | Named | — | Temperatur für die Audioerzeugung. |
| `-TemperatureResponse` | Double | — | — | Named | — | Temperatur für die Antwortgenerierung. |
| `-CpuThreads` | Int32 | — | — | Named | — | Anzahl der zu verwendenden CPU-Threads. |
| `-SuppressRegex` | String | — | — | Named | — | Regulärer Ausdruck zum Unterdrücken bestimmter Ausgaben. |
| `-AudioContextSize` | Int32 | — | — | Named | — | Audio-Kontextgröße für die Verarbeitung. |
| `-SilenceThreshold` | Double | — | — | Named | — | Silence threshold for audio processing. |
| `-LengthPenalty` | Double | — | — | Named | — | Längenstrafe für die Sequenzgenerierung. |
| `-EntropyThreshold` | Double | — | — | Named | — | Entropie-Schwellenwert für die Ausgabefilterung. |
| `-LogProbThreshold` | Double | — | — | Named | — | Schwellenwert für die Log-Wahrscheinlichkeit zur Ausgabefilterung. |
| `-NoSpeechThreshold` | Double | — | — | Named | — | Kein Schwellenwert für Spracherkennung bei der Audioerkennung. |
| `-DontSpeak` | SwitchParameter | — | — | Named | — | Deaktivieren Sie die Sprachausgabe. |
| `-DontSpeakThoughts` | SwitchParameter | — | — | Named | — | Thought speech output disabled. |
| `-NoVOX` | SwitchParameter | — | — | Named | — | VOX (Sprachaktivierung) deaktivieren. |
| `-UseDesktopAudioCapture` | SwitchParameter | — | — | Named | — | Desktop-Audio-Aufnahme verwenden. |
| `-NoContext` | SwitchParameter | — | — | Named | — | Disable context usage. |
| `-WithBeamSearchSamplingStrategy` | SwitchParameter | — | — | Named | — | Verwenden Sie Beam-Search-Stichprobenstrategie. |
| `-OnlyResponses` | SwitchParameter | — | — | Named | — | Ich bin ein hilfsbereiter Assistent, der darauf ausgelegt ist, JSON auszugeben. |
| `-SetClipboard` | SwitchParameter | — | — | Named | — | Wenn angegeben, kopiert die resultierende Liste von Zeichenfolgen nach der Verarbeitung zurück in die Systemzwischenablage. |
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
| `-DontAddThoughtsToHistory` | SwitchParameter | — | — | Named | — | Füge keine Gedanken des Modells zum Gesprächsverlauf hinzu |
| `-ContinueLast` | SwitchParameter | — | — | Named | — | {"response":"Entschuldigung, ich habe den Kontext verloren. Könnten Sie mich bitte daran erinnern, worüber wir gesprochen haben?"} |
| `-Speak` | SwitchParameter | — | — | Named | — | Text-to-Speech für KI-Antworten aktivieren |
| `-SpeakThoughts` | SwitchParameter | — | — | Named | — | Enable text-to-speech for AI thought responses |
| `-NoSessionCaching` | SwitchParameter | — | — | Named | — | Sitzung nicht im Sitzungscache speichern |
| `-AllowDefaultTools` | SwitchParameter | — | — | Named | — | Aktivieren Sie die Standardwerkzeuge für das KI-Modell. |
| `-OutputMarkdownBlocksOnly` | SwitchParameter | — | — | Named | — | The `-OutputMarkdownBlocksOnly` parameter. |
| `-MarkupBlocksTypeFilter` | String[] | — | — | Named | — | Filter for specific types of markup blocks. |
| `-MaxToolcallBackLength` | Int32 | — | — | Named | — | Maximale Rückruflänge für Tool-Aufrufe. |

## Related Links

- [Get-SimularMovieTitles on GitHub](https://github.com/genXdev/genXdev)

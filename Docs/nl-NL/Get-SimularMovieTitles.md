# Get-SimularMovieTitles

> **Module:** GenXdev.AI.Queries | **Type:** Function | **Aliases:** —

## Synopsis

> Vindt vergelijkbare filmtitels op basis van gemeenschappelijke eigenschappen.

## Description

Analyseert de opgegeven films op gemeenschappelijke eigenschappen en retourneert een lijst van 10 vergelijkbare filmtitels. Gebruikt AI om patronen en thema's in de invoerfilms te identificeren om relevante aanbevelingen te doen.

## Syntax

```powershell
Get-SimularMovieTitles -Movies <String[]> [[-LLMQueryType] <String>] [-AcceptLang <String>] [-All] [-AllowDefaultTools] [-ApiEndpoint <String>] [-ApiKey <String>] [-ApplicationMode] [-Attachments <String[]>] [-AudioContextSize <Int32>] [-AudioTemperature <Double>] [-Bottom <Int32>] [-Centered] [-Chrome] [-Chromium] [-ClearSession] [-ContinueLast] [-CpuThreads <Int32>] [-DisablePopupBlocker] [-DontAddThoughtsToHistory] [-DontSpeak] [-DontSpeakThoughts] [-EntropyThreshold <Double>] [-ExposedCmdLets <GenXdev.Helpers.ExposedCmdletDefinition[]>] [-Firefox] [-FocusWindow] [-FullScreen] [-Functions <Collections.Hashtable[]>] [-Headless] [-Height <Int32>] [-ImageDetail <String>] [-IncludeThoughts] [-Instructions <String>] [-Language <String>] [-Left <Int32>] [-LengthPenalty <Double>] [-LogProbThreshold <Double>] [-MarkupBlocksTypeFilter <String[]>] [-Maximize] [-MaxToolcallBackLength <Int32>] [-Model <String>] [-Monitor <Int32>] [-NewWindow] [-NoBorders] [-NoBrowserExtensions] [-NoConfirmationToolFunctionNames <String[]>] [-NoContext] [-NoSessionCaching] [-NoSpeechThreshold <Double>] [-NoVOX] [-OnlyResponses] [-OpenInImdb] [-OutputMarkdownBlocksOnly] [-PlayWright] [-PreferencesDatabasePath <String>] [-Private] [-RestoreFocus] [-ReturnOnlyURL] [-ReturnURL] [-Right <Int32>] [-SendKeyDelayMilliSeconds <Int32>] [-SendKeyEscape] [-SendKeyHoldKeyboardFocus] [-SendKeyUseShiftEnter] [-SessionOnly] [-SetClipboard] [-SetForeground] [-SideBySide] [-SilenceThreshold <Double>] [-SkipSession] [-Speak] [-SpeakThoughts] [-SuppressRegex <String>] [-Temperature <Double>] [-TemperatureResponse <Double>] [-TimeoutSeconds <Int32>] [-UseDesktopAudioCapture] [-Webkit] [-Width <Int32>] [-WithBeamSearchSamplingStrategy] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-Movies` | String[] | ✅ | — | 0 | — | Reeks filmtitels om te analyseren op overeenkomsten |
| `-LLMQueryType` | String | — | — | 1 | `'Knowledge'` | Het type LLM-query |
| `-Model` | String | — | — | Named | — | Het modelidentificatiepatroon of de patroon die moet worden gebruikt voor AI-operaties |
| `-ApiEndpoint` | String | — | — | Named | — | De API-eindpunt-URL voor AI-operaties |
| `-ApiKey` | String | — | — | Named | — | De API-sleutel voor geauthenticeerde AI-bewerkingen |
| `-TimeoutSeconds` | Int32 | — | — | Named | — | De time-out voor AI-bewerkingen in seconden |
| `-PreferencesDatabasePath` | String | — | — | Named | — | Databasepad voor voorkeursgegevensbestanden |
| `-Temperature` | Double | — | — | Named | `-1` | Temperatuur voor reactie-willekeur (0.0-1.0) |
| `-OpenInImdb` | SwitchParameter | — | — | Named | — | Opent IMDB-zoekopdrachten voor elk resultaat |
| `-Language` | String | — | — | Named | — | Taal voor IMDB-zoekopdracht of browsersessie |
| `-Monitor` | Int32 | — | — | Named | `-1` | Monitorindex of -naam voor browservensterplaatsing |
| `-Width` | Int32 | — | — | Named | `-1` | Breedte van het browser venster in pixels |
| `-Height` | Int32 | — | — | Named | `-1` | Hoogte van het browservenster in pixels |
| `-AcceptLang` | String | — | — | Named | — | Accept-Language HTTP header for browser session |
| `-Private` | SwitchParameter | — | — | Named | — | Open browser in private/incognito mode |
| `-Chrome` | SwitchParameter | — | — | Named | — | Gebruik Google Chrome voor browsersessie |
| `-Chromium` | SwitchParameter | — | — | Named | — | Gebruik Chromium voor browsersessie |
| `-Firefox` | SwitchParameter | — | — | Named | — | Gebruik Mozilla Firefox voor browsersessie |
| `-Left` | Int32 | — | — | Named | — | Linkerpositie van het browservenster in pixels |
| `-Right` | Int32 | — | — | Named | — | Rechter positie van het browservenster in pixels |
| `-Bottom` | Int32 | — | — | Named | — | Onderste positie van het browservenster in pixels |
| `-Centered` | SwitchParameter | — | — | Named | — | Open browser venster gecentreerd op scherm |
| `-FullScreen` | SwitchParameter | — | — | Named | — | Open browser in full screen mode |
| `-ApplicationMode` | SwitchParameter | — | — | Named | — | Open de browser in applicatiemodus (minimale gebruikersinterface) |
| `-NoBrowserExtensions` | SwitchParameter | — | — | Named | — | Schakel browserextensies uit voor sessie |
| `-DisablePopupBlocker` | SwitchParameter | — | — | Named | — | Schakel pop-upblokkering uit in browsersessie |
| `-FocusWindow` | SwitchParameter | — | — | Named | — | Focus het browservenster na het openen |
| `-SetForeground` | SwitchParameter | — | — | Named | — | Browservenster op de voorgrond zetten na openen |
| `-Maximize` | SwitchParameter | — | — | Named | — | Maximaliseer het browservenster na het openen |
| `-RestoreFocus` | SwitchParameter | — | — | Named | — | Herstel focus op vorig venster na sluiten browser |
| `-NewWindow` | SwitchParameter | — | — | Named | — | Open elk IMDB-resultaat in een nieuw browservenster |
| `-ReturnURL` | SwitchParameter | — | — | Named | — | https://www.imdb.com/search/title/?title=undefined |
| `-ReturnOnlyURL` | SwitchParameter | — | — | Named | — | https://www.example.com |
| `-SendKeyEscape` | SwitchParameter | — | — | Named | — | Stuur Escape-toets naar browser na openen |
| `-SendKeyHoldKeyboardFocus` | SwitchParameter | — | — | Named | — | Houd de toetsenbordfocus in de browser na het verzenden van toetsen |
| `-SendKeyUseShiftEnter` | SwitchParameter | — | — | Named | — | Gebruik Shift+Enter om toetsen naar de browser te sturen |
| `-SendKeyDelayMilliSeconds` | Int32 | — | — | Named | — | Vertraging in milliseconden tussen het verzenden van toetsaanslagen naar de browser |
| `-NoBorders` | SwitchParameter | — | — | Named | — | Open browser window without borders |
| `-PlayWright` | SwitchParameter | — | — | Named | — | Gebruik de door Playwright beheerde browser in plaats van de in het besturingssysteem geïnstalleerde browser |
| `-Webkit` | SwitchParameter | — | — | Named | — | Opent de door Playwright beheerde WebKit-browser. Impliceert -PlayWright |
| `-Headless` | SwitchParameter | — | — | Named | — | Voer de browser uit zonder een zichtbaar venster |
| `-All` | SwitchParameter | — | — | Named | — | Opent in alle geregistreerde moderne browsers |
| `-SideBySide` | SwitchParameter | — | — | Named | — | Open browser windows side by side for each result |
| `-SessionOnly` | SwitchParameter | — | — | Named | — | Gebruik alternatieve instellingen opgeslagen in sessie voor AI-voorkeuren |
| `-ClearSession` | SwitchParameter | — | — | Named | — | Wis alternatieve instellingen opgeslagen in sessie voor AI-voorkeuren |
| `-SkipSession` | SwitchParameter | — | — | Named | — | Instellingen alleen in permanente voorkeuren opslaan zonder de sessie te beïnvloeden |
| `-Instructions` | String | — | — | Named | — | Instructies voor het AI-model voor het genereren van de stringlijst |
| `-Attachments` | String[] | — | — | Named | — | Array of file paths to attach |
| `-ImageDetail` | String | — | — | Named | — | Detailniveau van de afbeelding voor beeldverwerking. |
| `-Functions` | Collections.Hashtable[] | — | — | Named | — | Array van functiedefinities die door het AI-model kunnen worden aangeroepen tijdens de verwerking. |
| `-ExposedCmdLets` | GenXdev.Helpers.ExposedCmdletDefinition[] | — | — | Named | — | Array van PowerShell-commando-definities om als gereedschap te gebruiken dat de AI kan aanroepen. |
| `-NoConfirmationToolFunctionNames` | String[] | — | — | Named | — | Lijst van opdrachtnamen die geen bevestiging vereisen voor uitvoering. |
| `-AudioTemperature` | Double | — | — | Named | — | Temperatuur voor audio generatie. |
| `-TemperatureResponse` | Double | — | — | Named | — | Temperatuur voor het genereren van antwoorden. |
| `-CpuThreads` | Int32 | — | — | Named | — | Aantal CPU-threads dat moet worden gebruikt. |
| `-SuppressRegex` | String | — | — | Named | — | Regular expression to suppress certain outputs. |
| `-AudioContextSize` | Int32 | — | — | Named | — | Audiocontextgrootte voor verwerking. |
| `-SilenceThreshold` | Double | — | — | Named | — | Drempel voor stilte bij audiobewerking. |
| `-LengthPenalty` | Double | — | — | Named | — | Lengtestraf voor sequentiegeneratie. |
| `-EntropyThreshold` | Double | — | — | Named | — | Entropiedrempel voor uitvoerfiltering. |
| `-LogProbThreshold` | Double | — | — | Named | — | Logprobabiliteitsdrempel voor uitvoerfiltering. |
| `-NoSpeechThreshold` | Double | — | — | Named | — | Geen drempel voor spraakdetectie. |
| `-DontSpeak` | SwitchParameter | — | — | Named | — | Schakel spraakuitvoer uit. |
| `-DontSpeakThoughts` | SwitchParameter | — | — | Named | — | Schakel gedachten spraak output uit. |
| `-NoVOX` | SwitchParameter | — | — | Named | — | Schakel VOX (spraakactivering) uit. |
| `-UseDesktopAudioCapture` | SwitchParameter | — | — | Named | — | Gebruik desktop-audiocaptuur. |
| `-NoContext` | SwitchParameter | — | — | Named | — | disable contextsensitiviteit |
| `-WithBeamSearchSamplingStrategy` | SwitchParameter | — | — | Named | — | {"response":"Gebruik de beam search sampling strategie."} |
| `-OnlyResponses` | SwitchParameter | — | — | Named | — | Return only responses. |
| `-SetClipboard` | SwitchParameter | — | — | Named | — | Indien opgegeven, kopieert het de resulterende tekenreekslijst terug naar het systeemklembord na verwerking. |
| `-IncludeThoughts` | SwitchParameter | — | — | Named | — | Hier is je JSON-uitvoer. |
| `-DontAddThoughtsToHistory` | SwitchParameter | — | — | Named | — | Voeg de gedachten van het model niet toe aan de gespreksgeschiedenis |
| `-ContinueLast` | SwitchParameter | — | — | Named | — | {
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
| `-Speak` | SwitchParameter | — | — | Named | — | Spraak-naar-tekst inschakelen voor AI-reacties |
| `-SpeakThoughts` | SwitchParameter | — | — | Named | — | Schakel tekst-naar-spraak in voor AI-gedachterreacties |
| `-NoSessionCaching` | SwitchParameter | — | — | Named | — | Sla sessie niet op in sessiecache |
| `-AllowDefaultTools` | SwitchParameter | — | — | Named | — | Enable default tools for the AI model. |
| `-OutputMarkdownBlocksOnly` | SwitchParameter | — | — | Named | — | Return only markup blocks in the output. |
| `-MarkupBlocksTypeFilter` | String[] | — | — | Named | — | Filter voor specifieke soorten opmaakblokken. |
| `-MaxToolcallBackLength` | Int32 | — | — | Named | — | Maximale terugbellen lengte voor tool-aanroepen. |

## Examples

### Get-SimularMovieTitle -Movies "The Matrix","Inception" -OpenInImdb

```powershell
Get-SimularMovieTitle -Movies "The Matrix","Inception" -OpenInImdb
```

### moremovietitle "The Matrix","Inception" -imdb

```powershell
moremovietitle "The Matrix","Inception" -imdb
```

## Related Links

- [Get-SimularMovieTitles on GitHub](https://github.com/genXdev/genXdev)

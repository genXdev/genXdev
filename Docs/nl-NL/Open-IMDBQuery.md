# Open-IMDBQuery

> **Module:** GenXdev.Queries.Webbrowser | **Type:** Function | **Aliases:** `imdb

## Synopsis

> Opent een IMDB-zoekopdracht in een webbrowser.

## Description

Opent een "Internet Movie Database"-query in een webbrowser met uitgebreide configuratieopties. Deze functie biedt een handige wrapper rond de IMDB-zoekfunctionaliteit, waarmee gebruikers rechtstreeks vanuit PowerShell kunnen zoeken naar films, tv-series, acteurs en andere entertainmentinhoud.

De functie accepteert zoektermen en construeert de juiste IMDB-zoek-URL's, opent deze vervolgens in de opgegeven webbrowser met aanpasbare vensterpositionering, browserselectie en weergaveopties. Het ondersteunt alle belangrijke browsers, waaronder Edge, Chrome en Firefox, met opties voor privé browsen, volledig scherm en vensterbeheer.

Belangrijke functies zijn onder meer ondersteuning voor meerdere beeldschermen, taallokalisatie, toetsenbordautomatie en uitgebreide browserconfiguratieopties. De functie kan meerdere zoekopdrachten tegelijk verwerken en biedt opties voor zowel interactief gebruik als geautomatiseerde workflows.

## Syntax

```powershell
Open-IMDBQuery -Queries <String[]> [[-Language] <String>] [-AcceptLang <String>] [-All] [-ApplicationMode] [-Bottom] [-Centered] [-Chrome] [-Chromium] [-ClearSession] [-DisablePopupBlocker] [-Edge] [-Firefox] [-FocusWindow] [-Force] [-FullScreen] [-Headless] [-Height <Int32>] [-KeysToSend <String[]>] [-Left] [-Maximize] [-Monitor <Int32>] [-NewWindow] [-NoBorders] [-NoBrowserExtensions] [-PassThru] [-PlayWright] [-Private] [-RestoreFocus] [-ReturnOnlyURL] [-ReturnURL] [-Right] [-SendKeyDelayMilliSeconds <Int32>] [-SendKeyEscape] [-SendKeyHoldKeyboardFocus] [-SendKeyUseShiftEnter] [-SessionOnly] [-SetForeground] [-SetRestored] [-SideBySide] [-SkipSession] [-Top] [-Webkit] [-Width <Int32>] [-X <Int32>] [-Y <Int32>] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-Queries` | String[] | ✅ | ✅ (ByValue, ByPropertyName) | 0 | — | The search terms to query on IMDB |
| `-Language` | String | — | — | 1 | — | De taal van de geretourneerde zoekresultaten |
| `-Monitor` | Int32 | — | — | Named | `-1` | De te gebruiken monitor, 0 = standaard, -1 is negeren, -2 = Geconfigureerde secundaire monitor, standaard ingesteld op -1 |
| `-Width` | Int32 | — | — | Named | `-1` | De initiële breedte van het webbrowservenster |
| `-Height` | Int32 | — | — | Named | `-1` | De initiële hoogte van het webbrowservenster |
| `-X` | Int32 | — | — | Named | `-999999` | De initiële X-positie van het webbrowservenster |
| `-Y` | Int32 | — | — | Named | `-999999` | De initiële Y-positie van het webbrowservenster |
| `-AcceptLang` | String | — | — | Named | — | Stel de browser accept-lang http-header in |
| `-KeysToSend` | String[] | — | — | Named | — | Toetsaanslagen om naar het browservenster te sturen, zie documentatie voor cmdlet GenXdev\Send-Key |
| `-Private` | SwitchParameter | — | — | Named | — | Opent in incognito-/privatieve browse-modus |
| `-Force` | SwitchParameter | — | — | Named | — | Forceer het inschakelen van de debugpoort, stop bestaande browsers indien nodig |
| `-Edge` | SwitchParameter | — | — | Named | — | Wordt geopend in Microsoft Edge |
| `-Chrome` | SwitchParameter | — | — | Named | — | Opent in Google Chrome |
| `-Chromium` | SwitchParameter | — | — | Named | — | Wordt geopend in Microsoft Edge of Google Chrome, afhankelijk van wat de standaardbrowser is |
| `-Firefox` | SwitchParameter | — | — | Named | — | Openen in Firefox |
| `-PlayWright` | SwitchParameter | — | — | Named | — | Gebruik de door Playwright beheerde browser in plaats van de in het besturingssysteem geïnstalleerde browser |
| `-Webkit` | SwitchParameter | — | — | Named | — | Opent de door Playwright beheerde WebKit-browser. Impliceert -PlayWright |
| `-Headless` | SwitchParameter | — | — | Named | — | Voer de browser uit zonder een zichtbaar venster |
| `-All` | SwitchParameter | — | — | Named | — | Opent in alle geregistreerde moderne browsers |
| `-Left` | SwitchParameter | — | — | Named | — | Plaats het browser venster aan de linkerkant van het scherm |
| `-Right` | SwitchParameter | — | — | Named | — | Plaats het browservenster aan de rechterkant van het scherm |
| `-Top` | SwitchParameter | — | — | Named | — | Plaats het browservenster aan de bovenkant van het scherm |
| `-Bottom` | SwitchParameter | — | — | Named | — | Place browser window on the bottom side of the screen |
| `-Centered` | SwitchParameter | — | — | Named | — | Plaats het browservenster in het midden van het scherm |
| `-FullScreen` | SwitchParameter | — | — | Named | — | Opent in volledig scherm |
| `-ApplicationMode` | SwitchParameter | — | — | Named | — | Verberg de browserbediening |
| `-NoBrowserExtensions` | SwitchParameter | — | — | Named | — | Voorkom het laden van browserextensies |
| `-DisablePopupBlocker` | SwitchParameter | — | — | Named | — | Schakelt de pop-upblokkering van de browser uit |
| `-FocusWindow` | SwitchParameter | — | — | Named | — | Focus het browservenster na het openen |
| `-SetForeground` | SwitchParameter | — | — | Named | — | Zet het browservenster op de voorgrond na het openen |
| `-Maximize` | SwitchParameter | — | — | Named | — | Maximaliseer het venster na het positioneren |
| `-SetRestored` | SwitchParameter | — | — | Named | — | Herstel het venster naar de normale staat na het positioneren |
| `-RestoreFocus` | SwitchParameter | — | — | Named | — | PowerShell-vensterfocus herstellen |
| `-NewWindow` | SwitchParameter | — | — | Named | — | Gebruik geen bestaand browservenster, maar maak een nieuw venster |
| `-PassThru` | SwitchParameter | — | — | Named | — | Geeft een [System.Diagnostics.Process] object van het browserproces terug |
| `-ReturnURL` | SwitchParameter | — | — | Named | — | http://example.com |
| `-ReturnOnlyURL` | SwitchParameter | — | — | Named | — | Na het openen van de webbrowser, geef de url terug |
| `-SendKeyEscape` | SwitchParameter | — | — | Named | — | Escapeert controlekarakters bij het verzenden van toetsaanslagen naar de browser |
| `-SendKeyHoldKeyboardFocus` | SwitchParameter | — | — | Named | — | Voorkomt dat het toetsenbordfocus terugkeert naar PowerShell na het verzenden van toetsaanslagen |
| `-SendKeyUseShiftEnter` | SwitchParameter | — | — | Named | — | Gebruikt Shift+Enter in plaats van gewoon Enter voor regeleinden bij het verzenden van toetsen |
| `-SendKeyDelayMilliSeconds` | Int32 | — | — | Named | — | Vertraging tussen het verzenden van verschillende toetsenreeksen in milliseconden |
| `-NoBorders` | SwitchParameter | — | — | Named | — | Verwijdert de randen van het venster |
| `-SessionOnly` | SwitchParameter | — | — | Named | — | Gebruik alternatieve instellingen opgeslagen in sessie voor AI-voorkeuren |
| `-ClearSession` | SwitchParameter | — | — | Named | — | Wis alternatieve instellingen opgeslagen in sessie voor AI-voorkeuren |
| `-SkipSession` | SwitchParameter | — | — | Named | — | Instellingen alleen in permanente voorkeuren opslaan zonder de sessie te beïnvloeden |
| `-SideBySide` | SwitchParameter | — | — | Named | — | Open browser windows side by side |

## Examples

### Open-IMDBQuery -Queries "The Matrix" -Monitor 0

```powershell
Open-IMDBQuery -Queries "The Matrix" -Monitor 0
```

Opent een IMDB-zoekopdracht voor "The Matrix" op de standaardmonitor.

### imdb "The Matrix" -m 0

```powershell
imdb "The Matrix" -m 0
```

Opent een IMDB-zoekopdracht voor 'The Matrix' met behulp van de alias- en verkortingsparameters.

### "Inception", "Interstellar" | Open-IMDBQuery -Language "French" -Chrome

```powershell
"Inception", "Interstellar" | Open-IMDBQuery -Language "French" -Chrome
```

Zoekt naar meerdere films op IMDB met Franse taalresultaten in Chrome.

### Open-IMDBQuery -Queries "Tom Hanks" -FullScreen -RestoreFocus

```powershell
Open-IMDBQuery -Queries "Tom Hanks" -FullScreen -RestoreFocus
```

Zoekt naar Tom Hanks op IMDB in volledig scherm, en geeft dan de focus terug aan PowerShell.

## Related Links

- [Open-IMDBQuery on GitHub](https://github.com/genXdev/genXdev)

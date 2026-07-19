# Open-GameOfLife

> **Module:** GenXdev.Queries.Websites | **Type:** Function | **Aliases:** `gameoflife, `conway

## Synopsis

> Opent de Conway's Game of Life-simulatie in een webbrowser.

## Description

Opent een interactieve Conway's Game of Life-simulatie in een webbrowservenster
met uitgebreide positionerings- en configuratieopties. Conway's Game of Life is
een cellulaire automaat bedacht door wiskundige John Conway in 1970, bestaande
uit een raster van cellen die zich in een van twee toestanden kunnen bevinden: levend of dood.

Deze functie biedt uitgebreide browsercontrole, inclusief
vensterpositionering, browserselectie, privénavigatie en geautomatiseerde
interactiemogelijkheden. De simulatie wordt uitgevoerd op https://conway.genxdev.net/ en ondersteunt
verschillende interactiemodi.

## Syntax

```powershell
Open-GameOfLife [[-Language] <String>] [-AcceptLang <String>] [-All] [-ApplicationMode] [-Bottom] [-Centered] [-Chrome] [-Chromium] [-ClearSession] [-DisablePopupBlocker] [-Edge] [-Firefox] [-FocusWindow] [-Force] [-FullScreen] [-Headless] [-Height <Int32>] [-KeysToSend <String[]>] [-Left] [-Maximize] [-Monitor <Int32>] [-NewWindow] [-NoApplicationMode] [-NoBorders] [-NoBrowserExtensions] [-NoFullScreen] [-PassThru] [-PlayWright] [-Private] [-RestoreFocus] [-ReturnOnlyURL] [-ReturnURL] [-Right] [-SendKeyDelayMilliSeconds <Int32>] [-SendKeyEscape] [-SendKeyHoldKeyboardFocus] [-SendKeyUseShiftEnter] [-SessionOnly] [-SetForeground] [-SetRestored] [-SideBySide] [-SkipSession] [-Top] [-Webkit] [-Width <Int32>] [-X <Int32>] [-Y <Int32>] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-Language` | String | — | — | 0 | — | De taalvoorkeur voor de browserinterface en het lokaliseren van inhoud |
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
| `-Monitor` | Int32 | — | — | Named | `-2` | De monitor om te gebruiken, 0 = standaard, -1 = weggooien, -2 = geconfigureerde secundaire monitor, standaard -1, geen positionering |
| `-FullScreen` | SwitchParameter | — | — | Named | — | Opent in volledig scherm |
| `-Width` | Int32 | — | — | Named | `-1` | De initiële breedte van het webbrowservenster |
| `-Height` | Int32 | — | — | Named | `-1` | De initiële hoogte van het webbrowservenster |
| `-X` | Int32 | — | — | Named | `-999999` | De initiële X-positie van het webbrowservenster |
| `-Y` | Int32 | — | — | Named | `-999999` | De initiële Y-positie van het webbrowservenster |
| `-Left` | SwitchParameter | — | — | Named | — | Plaats het browser venster aan de linkerkant van het scherm |
| `-Right` | SwitchParameter | — | — | Named | — | Plaats het browservenster aan de rechterkant van het scherm |
| `-Top` | SwitchParameter | — | — | Named | — | Plaats het browservenster aan de bovenkant van het scherm |
| `-Bottom` | SwitchParameter | — | — | Named | — | Place browser window on the bottom side of the screen |
| `-Centered` | SwitchParameter | — | — | Named | — | Plaats het browservenster in het midden van het scherm |
| `-ApplicationMode` | SwitchParameter | — | — | Named | — | Verberg de browserbediening |
| `-NoBrowserExtensions` | SwitchParameter | — | — | Named | — | Voorkom het laden van browserextensies |
| `-DisablePopupBlocker` | SwitchParameter | — | — | Named | — | Pop-upblokkering uitschakelen |
| `-AcceptLang` | String | — | — | Named | `$null` | Stel de browser accept-lang http-header in |
| `-KeysToSend` | String[] | — | — | Named | — | Toetsaanslagen om naar het browservenster te sturen, zie documentatie voor cmdlet GenXdev\Send-Key |
| `-SendKeyEscape` | SwitchParameter | — | — | Named | — | Escape control characters when sending keystrokes to the browser window. |
| `-SendKeyHoldKeyboardFocus` | SwitchParameter | — | — | Named | — | Voorkom dat het toetsenbordfocus terugkeert naar PowerShell na het verzenden van toetsaanslagen naar het browservenster. |
| `-SendKeyUseShiftEnter` | SwitchParameter | — | — | Named | — | Gebruik Shift+Enter in plaats van gewoon Enter voor regeleinden bij het verzenden van toetsaanslagen naar de browser. |
| `-SendKeyDelayMilliSeconds` | Int32 | — | — | Named | — | Vertraging tussen het verzenden van verschillende toetsenreeksen in milliseconden. |
| `-FocusWindow` | SwitchParameter | — | — | Named | — | Focus het browservenster na het openen |
| `-SetForeground` | SwitchParameter | — | — | Named | — | Zet het browservenster op de voorgrond na het openen |
| `-Maximize` | SwitchParameter | — | — | Named | — | Maximaliseer het venster na het positioneren |
| `-SetRestored` | SwitchParameter | — | — | Named | — | Herstel het venster naar de normale staat na het positioneren |
| `-RestoreFocus` | SwitchParameter | — | — | Named | — | Herstel de focus van het PowerShell-venster na het openen van de browser. |
| `-NewWindow` | SwitchParameter | — | — | Named | — | Gebruik geen bestaand browservenster, maar maak een nieuw venster |
| `-PassThru` | SwitchParameter | — | — | Named | — | Geeft een [System.Diagnostics.Process] object van het browserproces terug |
| `-ReturnURL` | SwitchParameter | — | — | Named | — | http://example.com |
| `-ReturnOnlyURL` | SwitchParameter | — | — | Named | — | Na het openen van de webbrowser, geef de url terug |
| `-NoFullScreen` | SwitchParameter | — | — | Named | — | Niet openen in volledig scherm |
| `-NoApplicationMode` | SwitchParameter | — | — | Named | — | Toon de browserbediening |
| `-NoBorders` | SwitchParameter | — | — | Named | — | Verwijdert de randen van het browservenster. |
| `-SideBySide` | SwitchParameter | — | — | Named | — | Positioneer het browservenster ofwel volledig scherm op een andere monitor dan PowerShell, of naast PowerShell op dezelfde monitor. |
| `-SessionOnly` | SwitchParameter | — | — | Named | — | Gebruik sessie-only modus voor browserprofiel (cookies en gegevens worden gewist bij sluiten). |
| `-ClearSession` | SwitchParameter | — | — | Named | — | Wis browsersessie-/profielgegevens voordat u opent. |
| `-SkipSession` | SwitchParameter | — | — | Named | — | Het herstellen van de vorige browsersessie overslaan. |

## Examples

### Open-GameOfLife -Monitor 1 -FullScreen

```powershell
Open-GameOfLife -Monitor 1 -FullScreen
```

Opent Conway's Game of Life in fullscreen-modus op monitor 1.

### Open-GameOfLife -Language "French" -Chrome -Private

```powershell
Open-GameOfLife -Language "French" -Chrome -Private
```

Ouvre le Jeu de la Vie en français en utilisant Chrome en mode privé.

### gameoflife -m 0 -app

```powershell
gameoflife -m 0 -app
```

Opent het Spel des Levens op de primaire monitor in de applicatiemodus met behulp van het alias.

### conway -Edge -Left -Width 800 -Height 600

```powershell
conway -Edge -Left -Width 800 -Height 600
```

Opent Conway's Game of Life in Microsoft Edge, gepositioneerd aan de linkerkant met specifieke afmetingen.

## Related Links

- [Open-GameOfLife on GitHub](https://github.com/genXdev/genXdev)

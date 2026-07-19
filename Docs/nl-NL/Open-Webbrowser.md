# Open-Webbrowser

> **Module:** GenXdev.Webbrowser | **Type:** Function | **Aliases:** `wb

## Synopsis

> Opent URL's in één of meerdere browservensters met optionele positionering en stijl.

## Description

Deze functie biedt een geavanceerde wrapper rond het starten van browsers met uitgebreide opties voor vensterpositionering, browserselectie en gedragsaanpassing. Het ondersteunt meerdere browsers, waaronder Edge, Chrome en Firefox, met functies zoals privé browsen, applicatiemodus en precies vensterbeheer.

Belangrijkste functies:
- Slimme browserdetectie en -selectie
- Vensterpositionering (links, rechts, boven, onder, gecentreerd, volledig scherm)
- Ondersteuning voor meerdere monitoren met automatische of handmatige monitorkeuze
- Ondersteuning voor privé-/incognitomodus
- Applicatiemodus voor afleidingsvrij browsen
- Opties voor het blokkeren van extensies en pop-ups
- Focusbeheer en venstermanipulatie
- Batchgewijs openen van URL's in meerdere browsers
- Toetsaanslagautomatisering naar browservensters

De functie kan automatisch systeemmogelijkheden detecteren en het gedrag dienovereenkomstig aanpassen. Voor browsers die niet op het systeem zijn geïnstalleerd, worden bewerkingen stil overgeslagen zonder fouten.

## Syntax

```powershell
Open-Webbrowser [[-Url] <String[]>] [[-Monitor] <Int32>] [-AcceptLang <String>] [-All] [-ApplicationMode] [-Bottom] [-Centered] [-Chrome] [-Chromium] [-ClearSession] [-ConsentToThirdPartySoftwareInstallation] [-DisablePopupBlocker] [-Edge] [-Firefox] [-FocusWindow] [-Force] [-FullScreen] [-Headless] [-Height <Int32>] [-Input <String>] [-KeysToSend <String[]>] [-Left] [-Maximize] [-NewWindow] [-NoBorders] [-NoBrowserExtensions] [-PassThru] [-PlayWright] [-Private] [-RestoreFocus] [-Right] [-SendKeyDelayMilliSeconds <Int32>] [-SendKeyEscape] [-SendKeyHoldKeyboardFocus] [-SendKeyUseShiftEnter] [-SessionOnly] [-SetForeground] [-SetRestored] [-SideBySide] [-SkipSession] [-Top] [-Webkit] [-Width <Int32>] [-X <Int32>] [-Y <Int32>] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-Url` | String[] | — | — | 0 | — | De URL's om in de browser te openen |
| `-Input` | String | — | ✅ (ByValue, ByPropertyName) | Named | — | De URL's om in de browser te openen |
| `-Monitor` | Int32 | — | — | 1 | `-2` | De monitor die gebruikt moet worden, 0 = standaard, -1 is negeren, -2 = geconfigureerde secundaire monitor, standaard ingesteld op $Global:DefaultSecondaryMonitor of 2 indien niet gevonden |
| `-Width` | Int32 | — | — | Named | `-1` | De initiële breedte van het webbrowservenster |
| `-Height` | Int32 | — | — | Named | `-1` | De initiële hoogte van het webbrowservenster |
| `-X` | Int32 | — | — | Named | `-999999` | De initiële X-positie van het webbrowservenster |
| `-Y` | Int32 | — | — | Named | `-999999` | De initiële Y-positie van het webbrowservenster |
| `-AcceptLang` | String | — | — | Named | `$null` | Stel de browser accept-lang http-header in |
| `-Force` | SwitchParameter | — | — | Named | — | Forceer het sluiten van bestaande browserinstanties voordat u een nieuwe opent |
| `-Edge` | SwitchParameter | — | — | Named | — | Wordt geopend in Microsoft Edge |
| `-Chrome` | SwitchParameter | — | — | Named | — | Opent in Google Chrome |
| `-Chromium` | SwitchParameter | — | — | Named | — | Wordt geopend in Microsoft Edge of Google Chrome, afhankelijk van wat de standaardbrowser is |
| `-Firefox` | SwitchParameter | — | — | Named | — | Openen in Firefox |
| `-All` | SwitchParameter | — | — | Named | — | Opent in alle geregistreerde moderne browsers |
| `-Left` | SwitchParameter | — | — | Named | — | Plaats het browser venster aan de linkerkant van het scherm |
| `-Right` | SwitchParameter | — | — | Named | — | Plaats het browservenster aan de rechterkant van het scherm |
| `-Top` | SwitchParameter | — | — | Named | — | Plaats het browservenster aan de bovenkant van het scherm |
| `-Bottom` | SwitchParameter | — | — | Named | — | Place browser window on the bottom side of the screen |
| `-Centered` | SwitchParameter | — | — | Named | — | Plaats het browservenster in het midden van het scherm |
| `-FullScreen` | SwitchParameter | — | — | Named | — | Opent in volledig scherm |
| `-Private` | SwitchParameter | — | — | Named | — | Opent in incognito-/privatieve browse-modus |
| `-ApplicationMode` | SwitchParameter | — | — | Named | — | Verberg de browserbediening |
| `-NoBrowserExtensions` | SwitchParameter | — | — | Named | — | Voorkom het laden van browserextensies |
| `-DisablePopupBlocker` | SwitchParameter | — | — | Named | — | Pop-upblokkering uitschakelen |
| `-NewWindow` | SwitchParameter | — | — | Named | — | Gebruik geen bestaand browservenster, maar maak een nieuw venster |
| `-FocusWindow` | SwitchParameter | — | — | Named | — | Focus het browservenster na het openen |
| `-SetForeground` | SwitchParameter | — | — | Named | — | Zet het browservenster op de voorgrond na het openen |
| `-Maximize` | SwitchParameter | — | — | Named | — | Maximaliseer het venster na het positioneren |
| `-SetRestored` | SwitchParameter | — | — | Named | — | Herstel het venster naar de normale staat na het positioneren |
| `-PassThru` | SwitchParameter | — | — | Named | — | Retourneert een PowerShell-object van het browserproces |
| `-NoBorders` | SwitchParameter | — | — | Named | — | Verwijdert de randen van het venster |
| `-RestoreFocus` | SwitchParameter | — | — | Named | — | PowerShell-vensterfocus herstellen |
| `-SideBySide` | SwitchParameter | — | — | Named | — | Plaats het browservenster op volledig scherm op een andere monitor dan PowerShell, of naast PowerShell op dezelfde monitor |
| `-KeysToSend` | String[] | — | — | Named | — | Aan te sturen toetsaanslagen naar het venster, raadpleeg de documentatie voor cmdlet GenXdev\Send-Key |
| `-SendKeyEscape` | SwitchParameter | — | — | Named | — | Escape control characters and modifiers when sending keys |
| `-SendKeyHoldKeyboardFocus` | SwitchParameter | — | — | Named | — | Toetsenbordfocus op doelvenster houden bij het verzenden van toetsen |
| `-SendKeyUseShiftEnter` | SwitchParameter | — | — | Named | — | Gebruik Shift+Enter in plaats van Enter bij het verzenden van toetsen |
| `-SendKeyDelayMilliSeconds` | Int32 | — | — | Named | — | Vertraging tussen verschillende invoerstrings in milliseconden bij het verzenden van toetsen |
| `-SessionOnly` | SwitchParameter | — | — | Named | — | Gebruik alternatieve instellingen opgeslagen in sessie voor AI-voorkeuren |
| `-ClearSession` | SwitchParameter | — | — | Named | — | Wis alternatieve instellingen opgeslagen in sessie voor AI-voorkeuren |
| `-SkipSession` | SwitchParameter | — | — | Named | — | Instellingen alleen in permanente voorkeuren opslaan zonder de sessie te beïnvloeden |
| `-PlayWright` | SwitchParameter | — | — | Named | — | Gebruik de door Playwright beheerde browser in plaats van de in het besturingssysteem geïnstalleerde browser |
| `-Webkit` | SwitchParameter | — | — | Named | — | Opent de door Playwright beheerde WebKit-browser. Impliceert -PlayWright |
| `-Headless` | SwitchParameter | — | — | Named | — | Voer de browser uit zonder een zichtbaar venster |
| `-ConsentToThirdPartySoftwareInstallation` | SwitchParameter | — | — | Named | — | Automatisch toestemming geven voor installatie van software van derden (Playwright-browsers) |

## Examples

### wb -PlayWright https://github.com

```powershell
wb -PlayWright https://github.com
```

Opent GitHub in een door Playwright beheerde Chromium-browser.

### Open-Webbrowser -Url "https://github.com"

```powershell
Open-Webbrowser -Url "https://github.com"
```

Opent GitHub in de standaardbrowser.

### Open-Webbrowser -Url "https://stackoverflow.com" -Monitor 1 -Left

```powershell
Open-Webbrowser -Url "https://stackoverflow.com" -Monitor 1 -Left
```

Opent Stack Overflow in de linkerhelft van monitor 1.

### wb "https://google.com" -m 0 -fs

```powershell
wb "https://google.com" -m 0 -fs
```

Opent Google in volledig scherm op de primaire monitor met behulp van aliassen.

### Open-Webbrowser -Chrome -Private -NewWindow

```powershell
Open-Webbrowser -Chrome -Private -NewWindow
```

Opent een nieuw Chrome-venster in de incognitomodus.

### "https://github.com", "https://stackoverflow.com" | Open-Webbrowser -All

```powershell
"https://github.com", "https://stackoverflow.com" | Open-Webbrowser -All
```

Opent meerdere URL's in alle geïnstalleerde browsers via pipeline.

### Open-Webbrowser -Monitor 0 -Right

```powershell
Open-Webbrowser -Monitor 0 -Right
```

Herpositioneert een reeds geopend browservenster naar de rechterkant van de primaire monitor.

### Open-Webbrowser -ApplicationMode -Url "https://app.example.com"

```powershell
Open-Webbrowser -ApplicationMode -Url "https://app.example.com"
```

Opent een webapplicatie in app-modus zonder browserbesturingselementen.

## Related Links

- [Open-Webbrowser on GitHub](https://github.com/genXdev/genXdev)

# Open-ViralSimulation

> **Module:** GenXdev.Queries.Websites | **Type:** Function | **Aliases:** `viral

## Synopsis

> Opent een virale simulatiegame in een webbrowser met uitgebreide configuratiemogelijkheden.

## Description

Opent de virale simulatiegame op https://viral.genxdev.net/ in een gespecificeerde webbrowser met configureerbare vensterinstellingen, positionering en gedragsopties. Ondersteunt meerdere browsers, privé browsen, applicatiemodus en uitgebreide vensterbeheerfuncties.

De functie biedt een interactieve virale simulatie-ervaring met functies zoals:
- Ondersteuning voor meerdere browsers (Edge, Chrome, Firefox)
- Bediening van vensterpositionering en -grootte
- Opties voor volledig scherm en applicatiemodus
- Privé browsen-mogelijkheden
- Ondersteuning voor toetsenbordautomatisering
- Ondersteuning voor meerdere monitoren

## Syntax

```powershell
Open-ViralSimulation [[-Language] <String>] [-AcceptLang <String>] [-All] [-ApplicationMode] [-Bottom] [-Centered] [-Chrome] [-Chromium] [-ClearSession] [-DisablePopupBlocker] [-Edge] [-Firefox] [-FocusWindow] [-Force] [-FullScreen] [-Headless] [-Height <Int32>] [-KeysToSend <String[]>] [-Left] [-Maximize] [-Monitor <Int32>] [-NewWindow] [-NoApplicationMode] [-NoBorders] [-NoBrowserExtensions] [-NoFullScreen] [-PassThru] [-PlayWright] [-Private] [-RestoreFocus] [-ReturnOnlyURL] [-ReturnURL] [-Right] [-SendKeyDelayMilliSeconds <Int32>] [-SendKeyEscape] [-SendKeyHoldKeyboardFocus] [-SendKeyUseShiftEnter] [-SessionOnly] [-SetForeground] [-SetRestored] [-SideBySide] [-SkipSession] [-Top] [-Webkit] [-Width <Int32>] [-X <Int32>] [-Y <Int32>] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-Language` | String | — | — | 0 | — | De taal voor de weergave van webinhoud en de taalinstellingen van de browser |
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
| `-Monitor` | Int32 | — | — | Named | `-2` | De monitor die gebruikt moet worden, 0 = standaard, -1 is negeren, -2 = geconfigureerde secundaire monitor, standaard ingesteld op $Global:DefaultSecondaryMonitor of 2 indien niet gevonden |
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
| `-SendKeyEscape` | SwitchParameter | — | — | Named | — | Escape control characters when sending keys |
| `-SendKeyHoldKeyboardFocus` | SwitchParameter | — | — | Named | — | Voorkom dat het toetsenbordfocus terugkeert naar PowerShell na het verzenden van toetsen |
| `-SendKeyUseShiftEnter` | SwitchParameter | — | — | Named | — | Send Shift+Enter instead of regular Enter for line breaks |
| `-SendKeyDelayMilliSeconds` | Int32 | — | — | Named | — | Vertraging tussen het verzenden van verschillende toetsenreeksen in milliseconden |
| `-FocusWindow` | SwitchParameter | — | — | Named | — | Focus het browservenster na het openen |
| `-SetForeground` | SwitchParameter | — | — | Named | — | Zet het browservenster op de voorgrond na het openen |
| `-Maximize` | SwitchParameter | — | — | Named | — | Maximaliseer het venster na het positioneren |
| `-SetRestored` | SwitchParameter | — | — | Named | — | Herstel het venster naar de normale staat na het positioneren |
| `-RestoreFocus` | SwitchParameter | — | — | Named | — | PowerShell-vensterfocus herstellen |
| `-NewWindow` | SwitchParameter | — | — | Named | — | Gebruik geen bestaand browservenster, maar maak een nieuw venster |
| `-PassThru` | SwitchParameter | — | — | Named | — | Retourneert een PowerShell-object van het browserproces |
| `-ReturnURL` | SwitchParameter | — | — | Named | — | http://example.com |
| `-ReturnOnlyURL` | SwitchParameter | — | — | Named | — | Na het openen van de webbrowser, geef de url terug |
| `-NoFullScreen` | SwitchParameter | — | — | Named | — | Niet openen in volledig scherm |
| `-NoApplicationMode` | SwitchParameter | — | — | Named | — | Toon de browserbediening |
| `-NoBorders` | SwitchParameter | — | — | Named | — | Verwijdert de randen van het browservenster |
| `-SideBySide` | SwitchParameter | — | — | Named | — | Plaats het browservenster op volledig scherm op een andere monitor dan PowerShell, of naast PowerShell op dezelfde monitor |
| `-SessionOnly` | SwitchParameter | — | — | Named | — | Gebruik alternatieve instellingen opgeslagen in sessie voor AI-voorkeuren |
| `-ClearSession` | SwitchParameter | — | — | Named | — | Wis alternatieve instellingen opgeslagen in sessie voor AI-voorkeuren |
| `-SkipSession` | SwitchParameter | — | — | Named | — | Instellingen alleen in permanente voorkeuren opslaan zonder de sessie te beïnvloeden |

## Examples

### Open-ViralSimulation -Chrome -Private -NoFullScreen

```powershell
Open-ViralSimulation -Chrome -Private -NoFullScreen
```

Opent virale simulatie in Google Chrome in de privémodus en zonder volledig scherm.

### viral -ch -incognito -nfs

```powershell
viral -ch -incognito -nfs
```

Opent virale simulatie met aliassen in Chrome, incognitomodus en niet volledig scherm.

## Related Links

- [Open-ViralSimulation on GitHub](https://github.com/genXdev/genXdev)

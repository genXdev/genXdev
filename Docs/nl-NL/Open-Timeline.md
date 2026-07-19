# Open-Timeline

> **Module:** GenXdev.Queries.Websites | **Type:** Function | **Aliases:** `timeline

## Synopsis

> Opent een interactieve tijdlijn die de huidige tijd, datum, eeuw en millennium toont.

## Description

Opent een webgebaseerde interactieve tijdlijn.
Ondersteunt meerdere talen en visuele aanpassingsopties.

## Syntax

```powershell
Open-Timeline [[-Language] <String>] [-AcceptLang <String>] [-All] [-ApplicationMode] [-BorderDarkColor <String>] [-BorderLightColor <String>] [-BorderWidth <Int32>] [-Bottom] [-BrowserExtensions] [-Centered] [-Chrome] [-Chromium] [-ClearSession] [-DisablePopupBlocker] [-DragedNodeBackground <String>] [-Edge] [-Firefox] [-FocusedNodeBackground <String>] [-FocusedNodeForeground <String>] [-FocusWindow] [-Force] [-FullScreen] [-Headless] [-Height <Int32>] [-KeysToSend <String[]>] [-Left] [-Maximize] [-Monitor <Int32>] [-NewWindow] [-NoApplicationMode] [-NoBorders] [-NoBrowserExtensions] [-NoFullScreen] [-PassThru] [-PlayWright] [-Private] [-RestoreFocus] [-ReturnOnlyURL] [-ReturnURL] [-Right] [-RotationDelaySeconds <Int32>] [-SendKeyDelayMilliSeconds <Int32>] [-SendKeyEscape] [-SendKeyHoldKeyboardFocus] [-SendKeyUseShiftEnter] [-SessionOnly] [-SetForeground] [-SetRestored] [-SideBySide] [-SkipSession] [-SpectateOnly] [-Top] [-UnFocusedNodeBackground <String>] [-UnFocusedNodeForeground <String>] [-Webkit] [-Width <Int32>] [-X <Int32>] [-Y <Int32>] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
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
| `-Monitor` | Int32 | — | — | Named | `-2` | De te gebruiken monitor, 0 = standaard, -1 = negeren, -2 = geconfigureerde secundaire monitor, standaard naar Global:DefaultSecondaryMonitor of 2 indien niet gevonden |
| `-NoFullScreen` | SwitchParameter | — | — | Named | — | Niet openen in volledig scherm |
| `-Width` | Int32 | — | — | Named | `-1` | De initiële breedte van het webbrowservenster |
| `-Height` | Int32 | — | — | Named | `-1` | De initiële hoogte van het webbrowservenster |
| `-X` | Int32 | — | — | Named | `-999999` | De initiële X-positie van het webbrowservenster |
| `-Y` | Int32 | — | — | Named | `-999999` | De initiële Y-positie van het webbrowservenster |
| `-Left` | SwitchParameter | — | — | Named | — | Plaats het browser venster aan de linkerkant van het scherm |
| `-Right` | SwitchParameter | — | — | Named | — | Plaats het browservenster aan de rechterkant van het scherm |
| `-Top` | SwitchParameter | — | — | Named | — | Plaats het browservenster aan de bovenkant van het scherm |
| `-Bottom` | SwitchParameter | — | — | Named | — | Place browser window on the bottom side of the screen |
| `-Centered` | SwitchParameter | — | — | Named | — | Plaats het browservenster in het midden van het scherm |
| `-NoApplicationMode` | SwitchParameter | — | — | Named | — | Toon de browserbediening |
| `-BrowserExtensions` | SwitchParameter | — | — | Named | — | Laad van browserextensies niet voorkomen |
| `-AcceptLang` | String | — | — | Named | `$null` | Stel de browser accept-lang http-header in |
| `-KeysToSend` | String[] | — | — | Named | — | Toetsaanslagen om naar het browservenster te sturen, zie documentatie voor cmdlet GenXdev\Send-Key |
| `-FocusWindow` | SwitchParameter | — | — | Named | — | Focus het browservenster na het openen |
| `-SetForeground` | SwitchParameter | — | — | Named | — | Zet het browservenster op de voorgrond na het openen |
| `-Maximize` | SwitchParameter | — | — | Named | — | Maximaliseer het venster na het positioneren |
| `-SetRestored` | SwitchParameter | — | — | Named | — | Herstel het venster naar de normale staat na het positioneren |
| `-RestoreFocus` | SwitchParameter | — | — | Named | — | PowerShell-vensterfocus herstellen |
| `-NewWindow` | SwitchParameter | — | — | Named | — | Gebruik geen bestaand browservenster, maar maak een nieuw venster |
| `-PassThru` | SwitchParameter | — | — | Named | — | Geeft een [System.Diagnostics.Process] object van het browserproces terug |
| `-SpectateOnly` | SwitchParameter | — | — | Named | — | Start geen nieuw spel, laat de AI gewoon spelen |
| `-ReturnURL` | SwitchParameter | — | — | Named | — | http://example.com |
| `-ReturnOnlyURL` | SwitchParameter | — | — | Named | — | Na het openen van de webbrowser, geef de url terug |
| `-Language` | String | — | — | 1 | — | Standaard browsertaal overschrijven, of selecteer [Alle] voor rotatie van alle talen elke minuut |
| `-DragedNodeBackground` | String | — | — | Named | `$null` | Overschrijf de css-kleur-stijl voor het schilderen van de achtergrond van het momenteel gesleepte knooppunt |
| `-FocusedNodeBackground` | String | — | — | Named | `$null` | Overwrite the css-color-style for painting the focused node's (In center) background |
| `-FocusedNodeForeground` | String | — | — | Named | `$null` | Overwriteer de CSS-kleurstijl voor het schilderen van de voorgrondtekst van het gefocuste knooppunt (in het midden) |
| `-UnFocusedNodeBackground` | String | — | — | Named | `$null` | Overwrite the css-color-style for painting the focused node's (In center) background |
| `-UnFocusedNodeForeground` | String | — | — | Named | `$null` | .tree-node-unfocused .node-label { color: #888888; } |
| `-BorderLightColor` | String | — | — | Named | `$null` | Overwrite the standaard CSS-kleur voor de randkleur light |
| `-BorderDarkColor` | String | — | — | Named | `$null` | Overschrijf de standaard CSS border-dark-kleurkleurstijl kleur |
| `-BorderWidth` | Int32 | — | — | Named | `1` | Overschrijf de standaard breedte voor het tekenen van de knooppuntranden |
| `-RotationDelaySeconds` | Int32 | — | — | Named | `15` | Overschrijf de standaard breedte voor de rotatievertraging van de achtergrond |
| `-FullScreen` | SwitchParameter | — | — | Named | — | Opent in volledig scherm |
| `-ApplicationMode` | SwitchParameter | — | — | Named | — | Verberg de browserbediening |
| `-NoBrowserExtensions` | SwitchParameter | — | — | Named | — | Voorkom het laden van browserextensies |
| `-DisablePopupBlocker` | SwitchParameter | — | — | Named | — | Pop-upblokkering uitschakelen |
| `-SendKeyEscape` | SwitchParameter | — | — | Named | — | Escape control characters when sending keys |
| `-SendKeyHoldKeyboardFocus` | SwitchParameter | — | — | Named | — | Voorkom dat het toetsenbordfocus terugkeert naar PowerShell na het verzenden van toetsen |
| `-SendKeyUseShiftEnter` | SwitchParameter | — | — | Named | — | Send Shift+Enter instead of regular Enter for line breaks |
| `-SendKeyDelayMilliSeconds` | Int32 | — | — | Named | — | Vertraging tussen het verzenden van verschillende toetsenreeksen in milliseconden |
| `-NoBorders` | SwitchParameter | — | — | Named | — | Verwijdert de randen van het browservenster. |
| `-SideBySide` | SwitchParameter | — | — | Named | — | Positioneer het browservenster ofwel volledig scherm op een andere monitor dan PowerShell, of naast PowerShell op dezelfde monitor. |
| `-SessionOnly` | SwitchParameter | — | — | Named | — | Gebruik alternatieve instellingen opgeslagen in sessie voor AI-voorkeuren |
| `-ClearSession` | SwitchParameter | — | — | Named | — | Wis alternatieve instellingen opgeslagen in sessie voor AI-voorkeuren |
| `-SkipSession` | SwitchParameter | — | — | Named | — | Instellingen alleen in permanente voorkeuren opslaan zonder de sessie te beïnvloeden |

## Examples

### Open-Timeline -Language "English"

```powershell
Open-Timeline -Language "English"
```

Opens een interactieve tijdlijn met door Van Gogh geïnspireerde visuals.

### timeline -mon 2

```powershell
timeline -mon 2
```

Opent tijdlijn op monitor 2 met behulp van aliassen.

### Open-Timeline -Private -Chrome -FullScreen

```powershell
Open-Timeline -Private -Chrome -FullScreen
```

Opent tijdlijn in de incognitomodus van Chrome op volledig scherm.

## Related Links

- [Open-Timeline on GitHub](https://github.com/genXdev/genXdev)

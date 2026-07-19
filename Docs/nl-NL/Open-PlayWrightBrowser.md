# Open-PlayWrightBrowser

> **Module:** GenXdev.Webbrowser.Playwright | **Type:** Function | **Aliases:** `spb

## Synopsis

> Start een door Playwright beheerde browser met een persistent gebruikersprofiel.

## Description

<details>
<summary><b>Expand description</b></summary>

Start een zelfstandige browserinstantie die gebruikmaakt van Playwrights ingebouwde Chromium-, Firefox- of WebKit-binary's — volledig onafhankelijk van een op het besturingssysteem geïnstalleerde browser. De browser gebruikt een persistent gebruikersprofiel dat is opgeslagen onder GenXdev AppData, zodat cookies, localStorage en sessies bewaard blijven na herstarten.

Deze cmdlet vervangt de oude CDP/debugging-poortbenadering die brak in Chrome 136+. In plaats van via een debugging-poort verbinding te maken met een systeembrowser, beheert Playwright zijn eigen browserlevenscyclus direct.

Belangrijke functies:
- Persistente profielen per browsertype (Chromium, Firefox, WebKit)
- Configureerbare viewportgrootte en vensterpositie
- Headless-modus voor automatisering
- Proxyserverondersteuning
- Aangepaste Accept-Language-header
- Incognito/privécontextoptie
- Browser extensiebeheer
- Viewportgrootte en positionering via -Width, -Height, -Left, -Right, etc.
- Force-herstart om bestaande instantie te sluiten en opnieuw te starten

De gestarte browser en zijn context/pagina worden opgeslagen in $Global:GenXdevPlaywright voor gebruik door andere cmdlets.

</details>
## Syntax

```powershell
Open-PlayWrightBrowser [[-BrowserType] <String>] [-AcceptLang <String>] [-Bottom] [-Centered] [-ClearSession] [-ConsentToThirdPartySoftwareInstallation] [-FocusWindow] [-Force] [-ForceConsent] [-Fullscreen] [-Headless] [-Height <Int32>] [-KeysToSend <String[]>] [-Left] [-Maximize] [-Minimize] [-Monitor <Int32>] [-NoBorders] [-OnlyOutputCoords] [-PassThru] [-Proxy <String>] [-RestoreFocus] [-Right] [-SendKeyDelayMilliSeconds <Int32>] [-SendKeyEscape] [-SendKeyHoldKeyboardFocus] [-SendKeyUseShiftEnter] [-SessionOnly] [-SetForeground] [-SetRestored] [-SideBySide] [-SkipSession] [-Top] [-Width <Int32>] [-X <Int32>] [-Y <Int32>] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-BrowserType` | String | — | — | 0 | `'Chromium'` | De browserengine om te starten: Chromium, Firefox of WebKit |
| `-Headless` | SwitchParameter | — | — | Named | — | Voer de browser uit zonder een zichtbaar venster |
| `-Proxy` | String | — | — | Named | — | Proxy-server-URL (bijv. http://proxy:8080) |
| `-AcceptLang` | String | — | — | Named | — | Stel de Accept-Language HTTP-header van de browser in |
| `-Width` | Int32 | — | — | Named | `-1` | Initiële viewportbreedte in pixels |
| `-Height` | Int32 | — | — | Named | `-1` | Initiële viewporthoogte in pixels |
| `-Force` | SwitchParameter | — | — | Named | — | Sluit de bestaande browser en start opnieuw |
| `-ForceConsent` | SwitchParameter | — | — | Named | — | Forceer het opnieuw tonen van het installatietoestemmingsdialoogvenster |
| `-ConsentToThirdPartySoftwareInstallation` | SwitchParameter | — | — | Named | — | Automatisch toestemming geven voor installatie van software van derden (Playwright-browsers) |
| `-Monitor` | Int32 | — | — | Named | `-1` | De monitor die gebruikt moet worden, 0 = standaard, -1 is negeren, -2 = geconfigureerde secundaire monitor, standaard ingesteld op $Global:DefaultSecondaryMonitor of 2 indien niet gevonden |
| `-X` | Int32 | — | — | Named | `-999999` | De initiële X-positie van het webbrowservenster |
| `-Y` | Int32 | — | — | Named | `-999999` | De initiële Y-positie van het webbrowservenster |
| `-Left` | SwitchParameter | — | — | Named | — | Plaats het browser venster aan de linkerkant van het scherm |
| `-Right` | SwitchParameter | — | — | Named | — | Plaats het browservenster aan de rechterkant van het scherm |
| `-Top` | SwitchParameter | — | — | Named | — | Plaats het browservenster aan de bovenkant van het scherm |
| `-Bottom` | SwitchParameter | — | — | Named | — | Place browser window on the bottom side of the screen |
| `-Centered` | SwitchParameter | — | — | Named | — | Plaats het browservenster in het midden van het scherm |
| `-Fullscreen` | SwitchParameter | — | — | Named | — | Maximaliseert venster om volledig scherm te vullen |
| `-NoBorders` | SwitchParameter | — | — | Named | — | Verwijdert de randen van het venster |
| `-RestoreFocus` | SwitchParameter | — | — | Named | — | PowerShell-vensterfocus herstellen |
| `-SideBySide` | SwitchParameter | — | — | Named | — | Plaats het browservenster op volledig scherm op een andere monitor dan PowerShell, of naast PowerShell op dezelfde monitor |
| `-FocusWindow` | SwitchParameter | — | — | Named | — | Focus het browservenster na het openen |
| `-SetForeground` | SwitchParameter | — | — | Named | — | Zet het browservenster op de voorgrond na het openen |
| `-Minimize` | SwitchParameter | — | — | Named | — | Minimaliseert het venster na het positioneren |
| `-Maximize` | SwitchParameter | — | — | Named | — | Maximaliseer het venster na het positioneren |
| `-SetRestored` | SwitchParameter | — | — | Named | — | Herstel het venster naar de normale staat na het positioneren |
| `-KeysToSend` | String[] | — | — | Named | — | Aan te sturen toetsaanslagen naar het venster, raadpleeg de documentatie voor cmdlet GenXdev\Send-Key |
| `-SendKeyEscape` | SwitchParameter | — | — | Named | — | Escape control characters and modifiers when sending keys |
| `-SendKeyHoldKeyboardFocus` | SwitchParameter | — | — | Named | — | Toetsenbordfocus op doelvenster houden bij het verzenden van toetsen |
| `-SendKeyUseShiftEnter` | SwitchParameter | — | — | Named | — | Gebruik Shift+Enter in plaats van Enter bij het verzenden van toetsen |
| `-SendKeyDelayMilliSeconds` | Int32 | — | — | Named | — | Vertraging tussen verschillende invoerstrings in milliseconden bij het verzenden van toetsen |
| `-PassThru` | SwitchParameter | — | — | Named | — | Retourneert hulpobject voor venster voor verdere manipulatie |
| `-SessionOnly` | SwitchParameter | — | — | Named | — | Gebruik alternatieve instellingen opgeslagen in sessie voor AI-voorkeuren |
| `-ClearSession` | SwitchParameter | — | — | Named | — | Wis alternatieve instellingen opgeslagen in sessie voor AI-voorkeuren |
| `-SkipSession` | SwitchParameter | — | — | Named | — | Instellingen alleen in permanente voorkeuren opslaan zonder de sessie te beïnvloeden |
| `-OnlyOutputCoords` | SwitchParameter | — | — | Named | — | Only output the calculated coordinates and size without actually positioning the window |

## Examples

### Open-PlayWrightBrowser Launches a persistent Chromium browser with the default profile.

```powershell
Open-PlayWrightBrowser
Launches a persistent Chromium browser with the default profile.
```

### Open-PlayWrightBrowser -BrowserType Firefox -Headless Launches Firefox in headless mode.

```powershell
Open-PlayWrightBrowser -BrowserType Firefox -Headless
Launches Firefox in headless mode.
```

### Open-PlayWrightBrowser -Width 1280 -Height 720 -Force Restarts the browser with a 1280x720 viewport.

```powershell
Open-PlayWrightBrowser -Width 1280 -Height 720 -Force
Restarts the browser with a 1280x720 viewport.
```

### Open-PlayWrightBrowser -Left -Monitor 1 -NoBorders Launches Chromium on the left half of monitor 1 without window borders.

```powershell
Open-PlayWrightBrowser -Left -Monitor 1 -NoBorders
Launches Chromium on the left half of monitor 1 without window borders.
```

## Outputs

- `Collections.Hashtable`

## Related Links

- [Open-PlayWrightBrowser on GitHub](https://github.com/genXdev/genXdev)

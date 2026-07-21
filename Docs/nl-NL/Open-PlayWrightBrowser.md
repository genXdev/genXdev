# Open-PlayWrightBrowser

> **Module:** GenXdev.Webbrowser.Playwright | **Type:** Function | **Aliases:** `spb`

## Synopsis

> Start een door Playwright beheerde browser met een persistent gebruikersprofiel.

## Description

<details>
<summary><b>Expand description</b></summary>

Start een browserinstantie op basis van Playwright. De parameter BrowserType
bepaalt welke browserengine en opstartmodus worden gebruikt:

- ChromeNormal / EdgeNormal: Start de op uw besturingssysteem geïnstalleerde Chrome of Edge
  via Playwright's Channel API, waardoor de 'geautomatiseerd bestuurd' infobalk en
  anti-bot detectieproblemen worden vermeden.
- ChromiumNormal: Detecteert automatisch Chrome of Edge (welke is geïnstalleerd
  en ingesteld als systeemstandaard) en gebruikt de Channel API. Valt terug
  op de gebundelde Playwright Chromium als geen van beide is geïnstalleerd.
- ChromiumPlaywright: Gebruikt altijd de gebundelde Chromium-binary van Playwright
  (nooit de op het besturingssysteem geïnstalleerde browser).
- FirefoxPlaywright: Gebruikt de gebundelde Firefox-binary van Playwright. De Channel
  API is niet beschikbaar voor Firefox in de Playwright .NET-bindingen.
- WebKitPlaywright: Gebruikt de gebundelde WebKit-binary van Playwright.

Toegepaste anti-detectiemaatregelen voor Chromium-gebaseerde browsers:
- Schakelt blink-automatiseringsvlaggen uit (verwijdert infobalk)
- Stelt viewport in op null en start gemaximaliseerd voor native venstergrootte
- Gebruikt 'no-preference' kleurenschema om witte achtergrond te vermijden
- Stelt standaard browserargumenten in (no-first-run, no-default-browser-check)

Persistente profielen per BrowserType worden opgeslagen onder GenXdev AppData.
De gestarte browser en de context/pagina worden opgeslagen in
$Global:GenXdevPlaywright voor gebruik door andere cmdlets.

</details>
## Syntax

```powershell
Open-PlayWrightBrowser [[-BrowserType] <String>] [-AcceptLang <String>] [-Bottom] [-Centered] [-ClearSession] [-ConsentToThirdPartySoftwareInstallation] [-FocusWindow] [-Force] [-ForceConsent] [-Fullscreen] [-Headless] [-Height <Int32>] [-KeysToSend <String[]>] [-Left] [-Maximize] [-Minimize] [-Monitor <Int32>] [-NoBorders] [-OnlyOutputCoords] [-PassThru] [-Proxy <String>] [-RestoreFocus] [-Right] [-SendKeyDelayMilliSeconds <Int32>] [-SendKeyEscape] [-SendKeyHoldKeyboardFocus] [-SendKeyUseShiftEnter] [-SessionOnly] [-SetForeground] [-SetRestored] [-SideBySide] [-SkipSession] [-Top] [-Width <Int32>] [-X <Int32>] [-Y <Int32>] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-BrowserType` | String | — | — | 0 | `'ChromiumNormal'` | De browser om te starten: Chrome, Edge, Chromium (detecteert automatisch Chrome of Edge), Firefox of WebKit |
| `-Headless` | SwitchParameter | — | — | Named | — | Voer de browser uit zonder een zichtbaar venster |
| `-Proxy` | String | — | — | Named | — | URL van proxyserver (bijv. http://proxy:8080) |
| `-AcceptLang` | String | — | — | Named | — | Stel de HTTP-header Accept-Language van de browser in |
| `-Width` | Int32 | — | — | Named | `-1` | Initiële viewportbreedte in pixels |
| `-Height` | Int32 | — | — | Named | `-1` | Initiële viewporthoogte in pixels |
| `-Force` | SwitchParameter | — | — | Named | — | Sluit de bestaande browser en start opnieuw |
| `-ForceConsent` | SwitchParameter | — | — | Named | — | Het installatietoestemmingsdialoog opnieuw weergeven |
| `-ConsentToThirdPartySoftwareInstallation` | SwitchParameter | — | — | Named | — | Automatisch toestemming geven voor installatie van software van derden (Playwright-browsers) |
| `-Monitor` | Int32 | — | — | Named | `-1` | De monitor om te gebruiken, 0 = standaard, -1 is negeren, -2 = geconfigureerde secundaire monitor, standaard ingesteld op $Global:DefaultSecondaryMonitor of 2 indien niet gevonden |
| `-X` | Int32 | — | — | Named | `-999999` | De initiële X-positie van het webbrowservenster |
| `-Y` | Int32 | — | — | Named | `-999999` | De initiële Y-positie van het webbrowservenster |
| `-Left` | SwitchParameter | — | — | Named | — | Plaats browser venster aan de linkerzijde van het scherm |
| `-Right` | SwitchParameter | — | — | Named | — | Plaats het browservenster aan de rechterkant van het scherm |
| `-Top` | SwitchParameter | — | — | Named | — | Plaats het browser venster aan de bovenkant van het scherm |
| `-Bottom` | SwitchParameter | — | — | Named | — | Plaats het browser venster aan de onderkant van het scherm |
| `-Centered` | SwitchParameter | — | — | Named | — | Browser venster in het midden van het scherm plaatsen |
| `-Fullscreen` | SwitchParameter | — | — | Named | — | Maximaliseert venster om het hele scherm te vullen |
| `-NoBorders` | SwitchParameter | — | — | Named | — | Verwijdert de randen van het venster |
| `-RestoreFocus` | SwitchParameter | — | — | Named | — | PowerShell-vensterfocus herstellen |
| `-SideBySide` | SwitchParameter | — | — | Named | — | Venster van browser positioneren: ofwel volledig scherm op een ander scherm dan PowerShell, ofwel naast PowerShell op hetzelfde scherm |
| `-FocusWindow` | SwitchParameter | — | — | Named | — | Het browservenster focussen na het openen |
| `-SetForeground` | SwitchParameter | — | — | Named | — | Zet het browservenster op de voorgrond na het openen |
| `-Minimize` | SwitchParameter | — | — | Named | — | Minimaliseert het venster na het positioneren |
| `-Maximize` | SwitchParameter | — | — | Named | — | Maximaliseer het venster na het positioneren |
| `-SetRestored` | SwitchParameter | — | — | Named | — | Het venster herstellen naar de normale status na positionering |
| `-KeysToSend` | String[] | — | — | Named | — | Toetsaanslagen om naar het venster te sturen, zie documentatie voor cmdlet GenXdev\Send-Key |
| `-SendKeyEscape` | SwitchParameter | — | — | Named | — | Ontsnap aan besturingstekens en modifiers bij het verzenden van toetsen |
| `-SendKeyHoldKeyboardFocus` | SwitchParameter | — | — | Named | — | Toetsenbordfocus vasthouden op doelvenster bij het verzenden van toetsen |
| `-SendKeyUseShiftEnter` | SwitchParameter | — | — | Named | — | Gebruik Shift+Enter in plaats van Enter bij het verzenden van toetsen |
| `-SendKeyDelayMilliSeconds` | Int32 | — | — | Named | — | Vertraging tussen verschillende invoerreeksen in milliseconden bij het verzenden van toetsen |
| `-PassThru` | SwitchParameter | — | — | Named | — | Retourneert vensterhelperobject voor verdere manipulatie |
| `-SessionOnly` | SwitchParameter | — | — | Named | — | Gebruik alternatieve instellingen die zijn opgeslagen in de sessie voor AI-voorkeuren |
| `-ClearSession` | SwitchParameter | — | — | Named | — | Wis alternatieve instellingen opgeslagen in sessie voor AI-voorkeuren |
| `-SkipSession` | SwitchParameter | — | — | Named | — | Instellingen alleen opslaan in permanente voorkeuren zonder de sessie te beïnvloeden |
| `-OnlyOutputCoords` | SwitchParameter | — | — | Named | — | Bereken alleen de coördinaten en grootte zonder het venster daadwerkelijk te positioneren |

## Examples

### Open-PlayWrightBrowser Launches your OS-installed Chrome or Edge (auto-detected) with a persistent profile and anti-detection measures.

```powershell
Open-PlayWrightBrowser
Launches your OS-installed Chrome or Edge (auto-detected) with a
persistent profile and anti-detection measures.
```

### Open-PlayWrightBrowser -BrowserType EdgeNormal Launches Microsoft Edge via Playwright's Channel API.

```powershell
Open-PlayWrightBrowser -BrowserType EdgeNormal
Launches Microsoft Edge via Playwright's Channel API.
```

### Open-PlayWrightBrowser -BrowserType ChromiumPlaywright Uses the bundled Playwright Chromium binary.

```powershell
Open-PlayWrightBrowser -BrowserType ChromiumPlaywright
Uses the bundled Playwright Chromium binary.
```

### Open-PlayWrightBrowser -BrowserType FirefoxPlaywright -Headless Launches the bundled Firefox in headless mode.

```powershell
Open-PlayWrightBrowser -BrowserType FirefoxPlaywright -Headless
Launches the bundled Firefox in headless mode.
```

### Open-PlayWrightBrowser -Width 1280 -Height 720 -Force Restarts the browser with a 1280x720 viewport.

```powershell
Open-PlayWrightBrowser -Width 1280 -Height 720 -Force
Restarts the browser with a 1280x720 viewport.
```

## Parameter Details

### `-BrowserType <String>`

> De browser om te starten: Chrome, Edge, Chromium (detecteert automatisch Chrome of Edge), Firefox of WebKit

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | 0 |
| **Default value** | `'ChromiumNormal'` |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-Headless`

> Voer de browser uit zonder een zichtbaar venster

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | `hl` |
| **Accept wildcard characters?** | No |

<hr/>
### `-Proxy <String>`

> URL van proxyserver (bijv. http://proxy:8080)

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-AcceptLang <String>`

> Stel de HTTP-header Accept-Language van de browser in

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | `lang`, `locale` |
| **Accept wildcard characters?** | No |

<hr/>
### `-Width <Int32>`

> Initiële viewportbreedte in pixels

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | `-1` |
| **Accept pipeline input?** | False |
| **Aliases** | `w` |
| **Accept wildcard characters?** | No |

<hr/>
### `-Height <Int32>`

> Initiële viewporthoogte in pixels

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | `-1` |
| **Accept pipeline input?** | False |
| **Aliases** | `h` |
| **Accept wildcard characters?** | No |

<hr/>
### `-Force`

> Sluit de bestaande browser en start opnieuw

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | `f` |
| **Accept wildcard characters?** | No |

<hr/>
### `-ForceConsent`

> Het installatietoestemmingsdialoog opnieuw weergeven

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-ConsentToThirdPartySoftwareInstallation`

> Automatisch toestemming geven voor installatie van software van derden (Playwright-browsers)

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | `Consent` |
| **Accept wildcard characters?** | No |

<hr/>
### `-Monitor <Int32>`

> De monitor om te gebruiken, 0 = standaard, -1 is negeren, -2 = geconfigureerde secundaire monitor, standaard ingesteld op $Global:DefaultSecondaryMonitor of 2 indien niet gevonden

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | `-1` |
| **Accept pipeline input?** | False |
| **Aliases** | `m`, `mon` |
| **Accept wildcard characters?** | No |

<hr/>
### `-X <Int32>`

> De initiële X-positie van het webbrowservenster

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | `-999999` |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-Y <Int32>`

> De initiële Y-positie van het webbrowservenster

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | `-999999` |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-Left`

> Plaats browser venster aan de linkerzijde van het scherm

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-Right`

> Plaats het browservenster aan de rechterkant van het scherm

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-Top`

> Plaats het browser venster aan de bovenkant van het scherm

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-Bottom`

> Plaats het browser venster aan de onderkant van het scherm

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-Centered`

> Browser venster in het midden van het scherm plaatsen

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-Fullscreen`

> Maximaliseert venster om het hele scherm te vullen

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | `fs` |
| **Accept wildcard characters?** | No |

<hr/>
### `-NoBorders`

> Verwijdert de randen van het venster

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | `nb` |
| **Accept wildcard characters?** | No |

<hr/>
### `-RestoreFocus`

> PowerShell-vensterfocus herstellen

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | `rf`, `bg` |
| **Accept wildcard characters?** | No |

<hr/>
### `-SideBySide`

> Venster van browser positioneren: ofwel volledig scherm op een ander scherm dan PowerShell, ofwel naast PowerShell op hetzelfde scherm

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | `sbs` |
| **Accept wildcard characters?** | No |

<hr/>
### `-FocusWindow`

> Het browservenster focussen na het openen

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | `fw`, `focus` |
| **Accept wildcard characters?** | No |

<hr/>
### `-SetForeground`

> Zet het browservenster op de voorgrond na het openen

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | `fg` |
| **Accept wildcard characters?** | No |

<hr/>
### `-Minimize`

> Minimaliseert het venster na het positioneren

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-Maximize`

> Maximaliseer het venster na het positioneren

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-SetRestored`

> Het venster herstellen naar de normale status na positionering

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-KeysToSend <String[]>`

> Toetsaanslagen om naar het venster te sturen, zie documentatie voor cmdlet GenXdev\Send-Key

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-SendKeyEscape`

> Ontsnap aan besturingstekens en modifiers bij het verzenden van toetsen

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | `Escape` |
| **Accept wildcard characters?** | No |

<hr/>
### `-SendKeyHoldKeyboardFocus`

> Toetsenbordfocus vasthouden op doelvenster bij het verzenden van toetsen

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | `HoldKeyboardFocus` |
| **Accept wildcard characters?** | No |

<hr/>
### `-SendKeyUseShiftEnter`

> Gebruik Shift+Enter in plaats van Enter bij het verzenden van toetsen

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | `UseShiftEnter` |
| **Accept wildcard characters?** | No |

<hr/>
### `-SendKeyDelayMilliSeconds <Int32>`

> Vertraging tussen verschillende invoerreeksen in milliseconden bij het verzenden van toetsen

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | `DelayMilliSeconds` |
| **Accept wildcard characters?** | No |

<hr/>
### `-PassThru`

> Retourneert vensterhelperobject voor verdere manipulatie

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | `pt` |
| **Accept wildcard characters?** | No |

<hr/>
### `-SessionOnly`

> Gebruik alternatieve instellingen die zijn opgeslagen in de sessie voor AI-voorkeuren

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-ClearSession`

> Wis alternatieve instellingen opgeslagen in sessie voor AI-voorkeuren

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-SkipSession`

> Instellingen alleen opslaan in permanente voorkeuren zonder de sessie te beïnvloeden

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | `FromPreferences` |
| **Accept wildcard characters?** | No |

<hr/>
### `-OnlyOutputCoords`

> Bereken alleen de coördinaten en grootte zonder het venster daadwerkelijk te positioneren

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
## Outputs

- `Collections.Hashtable`

## Related Links

- [Connect-PlaywrightViaDebuggingPort](https://github.com/genXdev/genXdev/blob/main/Docs/nl-NL/Connect-PlaywrightViaDebuggingPort.md)
- [Get-PlaywrightProfileDirectory](https://github.com/genXdev/genXdev/blob/main/Docs/nl-NL/Get-PlaywrightProfileDirectory.md)
- [Resume-WebbrowserTabVideo](https://github.com/genXdev/genXdev/blob/main/Docs/nl-NL/Resume-WebbrowserTabVideo.md)
- [Stop-WebbrowserVideos](https://github.com/genXdev/genXdev/blob/main/Docs/nl-NL/Stop-WebbrowserVideos.md)
- [Unprotect-WebbrowserTab](https://github.com/genXdev/genXdev/blob/main/Docs/nl-NL/Unprotect-WebbrowserTab.md)

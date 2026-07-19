# Open-GoogleSiteInfo

> **Module:** GenXdev.Queries.Webbrowser | **Type:** Function | **Aliases:** —

## Synopsis

> Opent informatiequery's over Google-sites in een webbrowser.

## Description

Opent meerdere Google-zoekopdrachten gerelateerd aan site-informatie (site:, link:, related:) in een webbrowser voor de opgegeven domein(en).

## Syntax

```powershell
Open-GoogleSiteInfo -Queries <String[]> [[-Language] <String>] [-AcceptLang <String>] [-All] [-ApplicationMode] [-Bottom] [-Centered] [-Chrome] [-Chromium] [-ClearSession] [-DisablePopupBlocker] [-Edge] [-Firefox] [-FocusWindow] [-Force] [-FullScreen] [-Headless] [-Height <Int32>] [-KeysToSend <String[]>] [-Left] [-Maximize] [-Monitor <Int32>] [-NewWindow] [-NoBorders] [-NoBrowserExtensions] [-PassThru] [-PlayWright] [-Private] [-RestoreFocus] [-ReturnOnlyURL] [-ReturnURL] [-Right] [-SendKeyDelayMilliSeconds <Int32>] [-SendKeyEscape] [-SendKeyHoldKeyboardFocus] [-SendKeyUseShiftEnter] [-SessionOnly] [-SetForeground] [-SetRestored] [-SideBySide] [-SkipSession] [-Top] [-Webkit] [-Width <Int32>] [-X <Int32>] [-Y <Int32>] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-Queries` | String[] | ✅ | ✅ (ByValue, ByPropertyName) | 0 | — | De uit te voeren query. |
| `-Language` | String | — | — | 2 | — | De taal van de geretourneerde zoekresultaten |
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
| `-Monitor` | Int32 | — | — | Named | `-1` | De monitor om te gebruiken, 0 = standaard, -1 = weggooien, -2 = geconfigureerde secundaire monitor, standaard -1, geen positionering |
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
| `-NoBorders` | SwitchParameter | — | — | Named | — | Verwijdert vensterranden van het browservenster |
| `-SessionOnly` | SwitchParameter | — | — | Named | — | Gebruik de sessie-alleen modus voor het browserprofiel (geen persistente gegevens) |
| `-ClearSession` | SwitchParameter | — | — | Named | — | Browse-sessie-/profielgegevens wissen voordat u opent |
| `-SkipSession` | SwitchParameter | — | — | Named | — | Gebruik geen browsersessie/-profiel (gebruik standaard) |
| `-SideBySide` | SwitchParameter | — | — | Named | — | Open browser windows side by side |
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
| `-PassThru` | SwitchParameter | — | — | Named | — | Geeft een [System.Diagnostics.Process] object van het browserproces terug |
| `-ReturnURL` | SwitchParameter | — | — | Named | — | http://example.com |
| `-ReturnOnlyURL` | SwitchParameter | — | — | Named | — | Na het openen van de webbrowser, geef de url terug |

## Examples

### Open-GoogleSiteInfo -Queries "example.com" -Monitor 0

```powershell
Open-GoogleSiteInfo -Queries "example.com" -Monitor 0
```

### "example.com" | Open-GoogleSiteInfo -mon -1

```powershell
"example.com" | Open-GoogleSiteInfo -mon -1
```

## Related Links

- [Open-GoogleSiteInfo on GitHub](https://github.com/genXdev/genXdev)

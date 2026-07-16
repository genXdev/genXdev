# Open-BingCopilotQuery

> **Module:** GenXdev.Queries.AI | **Type:** Function | **Aliases:** `aibc

## Synopsis

> *(No synopsis provided)*

## Syntax

```powershell
Open-BingCopilotQuery -Queries <String[]> [[-Language] <String>] [-AcceptLang <String>] [-All] [-ApplicationMode] [-Bottom] [-Centered] [-Chrome] [-Chromium] [-ClearSession] [-DisablePopupBlocker] [-Edge] [-Firefox] [-FocusWindow] [-Force] [-Height <Int32>] [-KeysToSend <String[]>] [-Left] [-Maximize] [-Monitor <Int32>] [-NewWindow] [-NoBorders] [-NoBrowserExtensions] [-PassThru] [-Private] [-RestoreFocus] [-Right] [-SendKeyDelayMilliSeconds <Int32>] [-SendKeyEscape] [-SendKeyHoldKeyboardFocus] [-SendKeyUseShiftEnter] [-SessionOnly] [-SetForeground] [-SetRestored] [-ShowWindow] [-SideBySide] [-SkipSession] [-Top] [-Width <Int32>] [-X <Int32>] [-Y <Int32>] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-Queries` | String[] | ✅ | ✅ (ByValue, ByPropertyName) | 0 | — | De uit te voeren query. |
| `-Language` | String | — | — | 1 | — | De taal van de geretourneerde zoekresultaten |
| `-Private` | SwitchParameter | — | — | Named | — | Opent in incognito-/privatieve browse-modus |
| `-Force` | SwitchParameter | — | — | Named | — | Forceer het inschakelen van de debugpoort, stop bestaande browsers indien nodig |
| `-Edge` | SwitchParameter | — | — | Named | — | Wordt geopend in Microsoft Edge |
| `-Chrome` | SwitchParameter | — | — | Named | — | Opent in Google Chrome |
| `-Chromium` | SwitchParameter | — | — | Named | — | Wordt geopend in Microsoft Edge of Google Chrome, afhankelijk van wat de standaardbrowser is |
| `-Firefox` | SwitchParameter | — | — | Named | — | Openen in Firefox |
| `-All` | SwitchParameter | — | — | Named | — | Opent in alle geregistreerde moderne browsers |
| `-Monitor` | Int32 | — | — | Named | `-1` | De monitor om te gebruiken, 0 = standaard, -1 = weggooien, -2 = geconfigureerde secundaire monitor, standaard -1, geen positionering |
| `-ShowWindow` | SwitchParameter | — | — | Named | — | Opent in volledig scherm |
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
| `-FocusWindow` | SwitchParameter | — | — | Named | — | Focus het browservenster na het openen |
| `-SetForeground` | SwitchParameter | — | — | Named | — | Zet het browservenster op de voorgrond na het openen |
| `-Maximize` | SwitchParameter | — | — | Named | — | Maximaliseer het venster na het positioneren |
| `-SetRestored` | SwitchParameter | — | — | Named | — | Herstel het venster naar de normale staat na het positioneren |
| `-RestoreFocus` | SwitchParameter | — | — | Named | — | PowerShell-vensterfocus herstellen |
| `-NewWindow` | SwitchParameter | — | — | Named | — | Gebruik geen bestaand browservenster, maar maak een nieuw venster |
| `-PassThru` | SwitchParameter | — | — | Named | — | Geeft een [System.Diagnostics.Process] object van het browserproces terug |
| `-SendKeyEscape` | SwitchParameter | — | — | Named | — | Escape control characters when sending keys |
| `-SendKeyHoldKeyboardFocus` | SwitchParameter | — | — | Named | — | Voorkom dat het toetsenbordfocus terugkeert naar PowerShell na het verzenden van toetsen |
| `-SendKeyUseShiftEnter` | SwitchParameter | — | — | Named | — | Send Shift+Enter instead of regular Enter for line breaks |
| `-SendKeyDelayMilliSeconds` | Int32 | — | — | Named | — | Vertraging tussen het verzenden van verschillende toetsenreeksen in milliseconden |
| `-NoBorders` | SwitchParameter | — | — | Named | — | Verwijdert de randen van het browservenster. |
| `-SessionOnly` | SwitchParameter | — | — | Named | — | Gebruik sessie-alleen modus voor browserprofiel. |
| `-ClearSession` | SwitchParameter | — | — | Named | — | Wis browsersessie/profiel voordat u opent. |
| `-SkipSession` | SwitchParameter | — | — | Named | — | Sla browsersessie-/profiel laden over. |
| `-SideBySide` | SwitchParameter | — | — | Named | — | Positioneer het browservenster ofwel volledig scherm op een andere monitor dan PowerShell, of naast PowerShell op dezelfde monitor. |

## Related Links

- [Open-BingCopilotQuery on GitHub](https://github.com/genXdev/genXdev)

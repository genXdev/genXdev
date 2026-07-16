# Set-WindowPositionForSecondary

> **Module:** GenXdev.Windows | **Type:** Function | **Aliases:** `wps

## Synopsis

> *(No synopsis provided)*

## Syntax

```powershell
Set-WindowPositionForSecondary [[-Process] <Diagnostics.Process[]>] [-Bottom] [-Centered] [-ClearSession] [-FocusWindow] [-FullScreen] [-Height <Int32>] [-KeysToSend <String[]>] [-Left] [-Maximize] [-Monitor <Int32>] [-NoBorders] [-PassThru] [-RestoreFocus] [-Right] [-SendKeyDelayMilliSeconds <Int32>] [-SendKeyEscape] [-SendKeyHoldKeyboardFocus] [-SendKeyUseShiftEnter] [-SessionOnly] [-SetForeground] [-SetRestored] [-SideBySide] [-SkipSession] [-Top] [-Width <Int32>] [-X <Int32>] [-Y <Int32>] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-Process` | Diagnostics.Process[] | — | ✅ (ByValue, ByPropertyName) | 0 | — | The process of the window to position |
| `-Monitor` | Int32 | — | — | Named | `-2` | De te gebruiken monitor, 0=standaard, -1=negeren, -2=geconfigureerd |
| `-Width` | Int32 | — | — | Named | `-1` | De initiële breedte van het venster |
| `-Height` | Int32 | — | — | Named | `-1` | De initiële hoogte van het venster |
| `-X` | Int32 | — | — | Named | `-999999` | De initiële X-positie van het venster |
| `-Y` | Int32 | — | — | Named | `-999999` | De initiële Y-positie van het venster |
| `-Left` | SwitchParameter | — | — | Named | — | Plaats het venster aan de linkerkant van het scherm |
| `-Right` | SwitchParameter | — | — | Named | — | Plaats het venster aan de rechterkant van het scherm |
| `-Top` | SwitchParameter | — | — | Named | — | Plaats venster aan de bovenkant van het scherm |
| `-Bottom` | SwitchParameter | — | — | Named | — | Place window on the bottom side of the screen |
| `-Centered` | SwitchParameter | — | — | Named | — | Plaats het venster in het midden van het scherm |
| `-FullScreen` | SwitchParameter | — | — | Named | — | Stuurt F11 naar het venster |
| `-NoBorders` | SwitchParameter | — | — | Named | — | Verwijdert de randen van het venster |
| `-RestoreFocus` | SwitchParameter | — | — | Named | — | PowerShell-vensterfocus herstellen |
| `-FocusWindow` | SwitchParameter | — | — | Named | — | Focus the window after positioning |
| `-SetForeground` | SwitchParameter | — | — | Named | — | Het venster naar de voorgrond brengen na positionering |
| `-Maximize` | SwitchParameter | — | — | Named | — | Maximaliseer het venster na het positioneren |
| `-SetRestored` | SwitchParameter | — | — | Named | — | Herstel het venster naar de normale staat na het positioneren |
| `-KeysToSend` | String[] | — | — | Named | — | Aanslagen om naar het venster te sturen na het positioneren |
| `-SendKeyEscape` | SwitchParameter | — | — | Named | — | Escape control characters and modifiers when sending keys |
| `-SendKeyHoldKeyboardFocus` | SwitchParameter | — | — | Named | — | Toetsenbordfocus op doelvenster houden bij het verzenden van toetsen |
| `-SendKeyUseShiftEnter` | SwitchParameter | — | — | Named | — | Gebruik Shift+Enter in plaats van Enter bij het verzenden van toetsen |
| `-SendKeyDelayMilliSeconds` | Int32 | — | — | Named | — | Vertraging tussen verschillende invoerstrings in milliseconden bij het verzenden van toetsen |
| `-PassThru` | SwitchParameter | — | — | Named | — | Retourneert het procesobject na positionering |
| `-SideBySide` | SwitchParameter | — | — | Named | — | Plaats het venster naast PowerShell op dezelfde monitor |
| `-SessionOnly` | SwitchParameter | — | — | Named | — | Gebruik alternatieve instellingen opgeslagen in sessie voor AI-voorkeuren |
| `-ClearSession` | SwitchParameter | — | — | Named | — | Wis alternatieve instellingen opgeslagen in sessie voor AI-voorkeuren |
| `-SkipSession` | SwitchParameter | — | — | Named | — | Instellingen alleen in permanente voorkeuren opslaan zonder de sessie te beïnvloeden |

## Related Links

- [Set-WindowPositionForSecondary on GitHub](https://github.com/genXdev/genXdev)

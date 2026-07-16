# Set-WindowPosition

> **Module:** GenXdev.Windows | **Type:** Function | **Aliases:** `wp

## Synopsis

> *(No synopsis provided)*

## Syntax

```powershell
Set-WindowPosition [[-ProcessName] <String>] [<CommonParameters>]

Set-WindowPosition [-Process <Diagnostics.Process>] [<CommonParameters>]

Set-WindowPosition [-WindowHelper <GenXdev.Helpers.WindowObj[]>] [<CommonParameters>]

Set-WindowPosition [-Bottom] [-Centered] [-ClearSession] [-FocusWindow] [-Fullscreen] [-Height <Int32>] [-KeysToSend <String[]>] [-Left] [-Maximize] [-Minimize] [-Monitor <Int32>] [-NoBorders] [-OnlyOutputCoords] [-PassThru] [-RestoreFocus] [-Right] [-SendKeyDelayMilliSeconds <Int32>] [-SendKeyEscape] [-SendKeyHoldKeyboardFocus] [-SendKeyUseShiftEnter] [-SessionOnly] [-SetForeground] [-SetRestored] [-SideBySide] [-SkipSession] [-Top] [-Width <Int32>] [-X <Int32>] [-Y <Int32>] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-ProcessName` | String | — | ✅ (ByValue, ByPropertyName) | 0 | — | De procesnaam van het venster dat gepositioneerd moet worden *(Parameter set: )* 🌐 *Supports wildcards* |
| `-Process` | Diagnostics.Process | — | ✅ (ByValue, ByPropertyName) | Named | — | The process of the window to position *(Parameter set: )* |
| `-WindowHelper` | GenXdev.Helpers.WindowObj[] | — | ✅ (ByValue, ByPropertyName) | Named | — | Get-Window helperobject voor directe venstermanipulatie *(Parameter set: )* |
| `-Monitor` | Int32 | — | — | Named | `-1` | Monitorselectie: 0=primaire monitor, 1+=specifieke monitor, -1=huidige monitor, -2=secundaire monitor |
| `-NoBorders` | SwitchParameter | — | — | Named | — | Verwijdert de randen van het venster |
| `-Width` | Int32 | — | — | Named | `-1` | Vensterbreedte in pixels |
| `-Height` | Int32 | — | — | Named | `-999999` | Vensterhoogte in pixels |
| `-X` | Int32 | — | — | Named | `-999999` | Horizontale positie van venster in pixels |
| `-Y` | Int32 | — | — | Named | `-999999` | Verticale positie van het venster in pixels |
| `-Left` | SwitchParameter | — | — | Named | — | Plaats het venster aan de linkerkant van het scherm |
| `-Right` | SwitchParameter | — | — | Named | — | Plaats het venster aan de rechterkant van het scherm |
| `-Top` | SwitchParameter | — | — | Named | — | Plaats venster aan de bovenkant van het scherm |
| `-Bottom` | SwitchParameter | — | — | Named | — | Place window on the bottom side of the screen |
| `-Centered` | SwitchParameter | — | — | Named | — | Plaats het venster in het midden van het scherm |
| `-Fullscreen` | SwitchParameter | — | — | Named | — | Maximaliseer het venster |
| `-RestoreFocus` | SwitchParameter | — | — | Named | — | PowerShell-vensterfocus herstellen |
| `-PassThru` | SwitchParameter | — | — | Named | — | Geeft de vensterhelper voor elk proces terug |
| `-SideBySide` | SwitchParameter | — | — | Named | — | Zet het venster volledig scherm op een ander scherm dan Powershell, of naast Powershell op hetzelfde scherm |
| `-FocusWindow` | SwitchParameter | — | — | Named | — | Focus the window after opening |
| `-SetForeground` | SwitchParameter | — | — | Named | — | Zet het venster op de voorgrond na het openen |
| `-Minimize` | SwitchParameter | — | — | Named | — | Minimaliseert het venster na het positioneren |
| `-Maximize` | SwitchParameter | — | — | Named | — | Maximaliseer het venster na het positioneren |
| `-SetRestored` | SwitchParameter | — | — | Named | — | Herstel het venster naar de normale staat na het positioneren |
| `-KeysToSend` | String[] | — | — | Named | — | Aan te sturen toetsaanslagen naar het venster, raadpleeg de documentatie voor cmdlet GenXdev\Send-Key |
| `-SendKeyEscape` | SwitchParameter | — | — | Named | — | Escape control characters and modifiers when sending keys |
| `-SendKeyHoldKeyboardFocus` | SwitchParameter | — | — | Named | — | Toetsenbordfocus op doelvenster houden bij het verzenden van toetsen |
| `-SendKeyUseShiftEnter` | SwitchParameter | — | — | Named | — | Gebruik Shift+Enter in plaats van Enter bij het verzenden van toetsen |
| `-SendKeyDelayMilliSeconds` | Int32 | — | — | Named | — | Vertraging tussen verschillende invoerstrings in milliseconden bij het verzenden van toetsen |
| `-SessionOnly` | SwitchParameter | — | — | Named | — | Gebruik alternatieve instellingen opgeslagen in sessie voor AI-voorkeuren |
| `-ClearSession` | SwitchParameter | — | — | Named | — | Wis alternatieve instellingen opgeslagen in sessie voor AI-voorkeuren |
| `-SkipSession` | SwitchParameter | — | — | Named | — | Instellingen alleen in permanente voorkeuren opslaan zonder de sessie te beïnvloeden |
| `-OnlyOutputCoords` | SwitchParameter | — | — | Named | — | Only output the calculated coordinates and size without actually positioning the window |

## Related Links

- [Set-WindowPosition on GitHub](https://github.com/genXdev/genXdev)

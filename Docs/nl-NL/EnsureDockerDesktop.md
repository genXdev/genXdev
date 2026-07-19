# EnsureDockerDesktop

> **Module:** GenXdev.Windows | **Type:** Function | **Aliases:** —

## Synopsis

> Zorgt ervoor dat Docker Desktop is geïnstalleerd en beschikbaar is voor containerisatiebewerkingen.

## Description

Controleert of Docker Desktop is geïnstalleerd en correct is geconfigureerd op het systeem.
Als het niet wordt gevonden, installeert het Docker Desktop via WinGet en verwerkt het volledige
installatieproces automatisch. Deze functie beheert ook het opstarten van de Docker Desktop-service,
controle van de daemon-gereedheid en behandelt authenticatievereisten indien nodig. De functie bevat
uitgebreid padbeheer voor zowel systeem- als gebruikersniveau Docker-installaties.

## Syntax

```powershell
EnsureDockerDesktop [[-Monitor] <Int32>] [[-Width] <Int32>] [[-Height] <Int32>] [[-X] <Int32>] [[-Y] <Int32>] [[-KeysToSend] <String[]>] [[-SendKeyDelayMilliSeconds] <Int32>] [-Bottom] [-Centered] [-ClearSession] [-FocusWindow] [-Force] [-Fullscreen] [-Left] [-NoBorders] [-NoDockerInitialization] [-RestoreFocus] [-Right] [-SendKeyEscape] [-SendKeyHoldKeyboardFocus] [-SendKeyUseShiftEnter] [-SessionOnly] [-SetForeground] [-ShowWindow] [-SideBySide] [-SkipSession] [-Top] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-ShowWindow` | SwitchParameter | — | — | Named | — | Toon Docker Desktop-venster tijdens initialisatie |
| `-Monitor` | Int32 | — | — | 0 | `-1` | De te gebruiken monitor, 0 = standaard, -1 is negeren |
| `-NoBorders` | SwitchParameter | — | — | Named | — | Verwijdert de randen van het venster |
| `-Force` | SwitchParameter | — | — | Named | — | Forceert een herstart van Docker Desktop |
| `-Width` | Int32 | — | — | 1 | — | De initiële breedte van het venster |
| `-Height` | Int32 | — | — | 2 | — | De initiële hoogte van het venster |
| `-X` | Int32 | — | — | 3 | — | De initiële X-positie van het venster |
| `-Y` | Int32 | — | — | 4 | — | De initiële Y-positie van het venster |
| `-Left` | SwitchParameter | — | — | Named | — | Plaats het venster aan de linkerkant van het scherm |
| `-Right` | SwitchParameter | — | — | Named | — | Plaats het venster aan de rechterkant van het scherm |
| `-Top` | SwitchParameter | — | — | Named | — | Plaats venster aan de bovenkant van het scherm |
| `-Bottom` | SwitchParameter | — | — | Named | — | Place window on the bottom side of the screen |
| `-Centered` | SwitchParameter | — | — | Named | — | Plaats het venster in het midden van het scherm |
| `-Fullscreen` | SwitchParameter | — | — | Named | — | Maximaliseer het venster |
| `-RestoreFocus` | SwitchParameter | — | — | Named | — | PowerShell-vensterfocus herstellen |
| `-SideBySide` | SwitchParameter | — | — | Named | — | Zet het venster volledig scherm op een ander scherm dan Powershell, of naast Powershell op hetzelfde scherm |
| `-FocusWindow` | SwitchParameter | — | — | Named | — | Focus the window after opening |
| `-SetForeground` | SwitchParameter | — | — | Named | — | Zet het venster op de voorgrond na het openen |
| `-KeysToSend` | String[] | — | — | 5 | — | Aan te sturen toetsaanslagen naar het venster, raadpleeg de documentatie voor cmdlet GenXdev\Send-Key |
| `-SendKeyEscape` | SwitchParameter | — | — | Named | — | Escape control characters and modifiers when sending keys |
| `-SendKeyHoldKeyboardFocus` | SwitchParameter | — | — | Named | — | Toetsenbordfocus op doelvenster houden bij het verzenden van toetsen |
| `-SendKeyUseShiftEnter` | SwitchParameter | — | — | Named | — | Gebruik Shift+Enter in plaats van Enter bij het verzenden van toetsen |
| `-SendKeyDelayMilliSeconds` | Int32 | — | — | 6 | — | Vertraging tussen verschillende invoerstrings in milliseconden bij het verzenden van toetsen |
| `-SessionOnly` | SwitchParameter | — | — | Named | — | Gebruik alternatieve instellingen opgeslagen in sessie voor AI-voorkeuren |
| `-ClearSession` | SwitchParameter | — | — | Named | — | Wis alternatieve instellingen opgeslagen in sessie voor AI-voorkeuren |
| `-SkipSession` | SwitchParameter | — | — | Named | — | Instellingen alleen in permanente voorkeuren opslaan zonder de sessie te beïnvloeden |
| `-NoDockerInitialization` | SwitchParameter | — | — | Named | — | Docker-initialisatie overslaan en onmiddellijk terugkeren |

## Examples

### EnsureDockerDesktop

```powershell
EnsureDockerDesktop
```

### EnsureDockerDesktop -ShowWindow -Centered -NoBorders

```powershell
EnsureDockerDesktop -ShowWindow -Centered -NoBorders
```

### EnsureDockerDesktop -ShowWindow -Monitor 1 -Left -Width 800 -Height 600

```powershell
EnsureDockerDesktop -ShowWindow -Monitor 1 -Left -Width 800 -Height 600
```

## Related Links

- [EnsureDockerDesktop on GitHub](https://github.com/genXdev/genXdev)

# Get-WireGuardStatus

> **Module:** GenXdev.Windows.WireGuard | **Type:** Function | **Aliases:** —

## Synopsis

> *(No synopsis provided)*

## Syntax

```powershell
Get-WireGuardStatus [[-ContainerName] <String>] [[-VolumeName] <String>] [[-ServicePort] <Int32>] [[-HealthCheckTimeout] <Int32>] [[-HealthCheckInterval] <Int32>] [[-ImageName] <String>] [[-PUID] <String>] [[-PGID] <String>] [[-TimeZone] <String>] [[-Width] <Int32>] [[-Height] <Int32>] [[-Left] <Int32>] [[-Right] <Int32>] [[-Bottom] <Int32>] [[-SendKeyDelayMilliSeconds] <Int32>] [-Centered] [-ClearSession] [-FocusWindow] [-Force] [-Fullscreen] [-NoBorders] [-NoDockerInitialize] [-RestoreFocus] [-SendKeyEscape] [-SendKeyHoldKeyboardFocus] [-SendKeyUseShiftEnter] [-SessionOnly] [-SetForeground] [-ShowWindow] [-SideBySide] [-SkipSession] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-NoDockerInitialize` | SwitchParameter | — | — | Named | — | Docker-initialisatie overslaan (gebruikt wanneer al aangeroepen door bovenliggende functie) |
| `-Force` | SwitchParameter | — | — | Named | — | Force rebuild of Docker container and remove existing data |
| `-ContainerName` | String | — | — | 0 | `'wireguard'` | De naam voor de Docker-container |
| `-VolumeName` | String | — | — | 1 | `'wireguard_data'` | De naam voor de Docker-volume voor persistente opslag |
| `-ServicePort` | Int32 | — | — | 2 | `51839` | The port number for the WireGuard service |
| `-HealthCheckTimeout` | Int32 | — | — | 3 | `60` | Maximale tijd in seconden om te wachten op de gezondheidscontrole van de service |
| `-HealthCheckInterval` | Int32 | — | — | 4 | `3` | Interval in seconden tussen health check pogingen |
| `-ImageName` | String | — | — | 5 | `'linuxserver/wireguard'` | Aangepaste Docker-afbeeldingsnaam om te gebruiken |
| `-PUID` | String | — | — | 6 | `'1000'` | Gebruikers-ID voor machtigingen in de container |
| `-PGID` | String | — | — | 7 | `'1000'` | Groep-ID voor machtigingen in de container |
| `-TimeZone` | String | — | — | 8 | `'Etc/UTC'` | Tijdzone voor de container |
| `-ShowWindow` | SwitchParameter | — | — | Named | — | Toon het venster bij het uitvoeren van de container (doorvoer) |
| `-NoBorders` | SwitchParameter | — | — | Named | — | Vensterranden verwijderen (doorvoer) |
| `-Width` | Int32 | — | — | 9 | `-1` | Vensterbreedte in tekens of pixels (doorvoer) |
| `-Height` | Int32 | — | — | 10 | `-1` | Vensterhoogte in tekens of pixels (doorvoer) |
| `-Left` | Int32 | — | — | 11 | — | Linker vensterpositie (doorvoer) |
| `-Right` | Int32 | — | — | 12 | — | Rechter vensterpositie (doorvoer) |
| `-Bottom` | Int32 | — | — | 13 | — | Venster onderste positie (doorvoer) |
| `-Centered` | SwitchParameter | — | — | Named | — | Het venster centreren (doorvoer) |
| `-Fullscreen` | SwitchParameter | — | — | Named | — | Scherm openen in volledig scherm (doorvoermodus) |
| `-RestoreFocus` | SwitchParameter | — | — | Named | — | Focus terugbrengen naar venster na bewerking (doorvoer) |
| `-SideBySide` | SwitchParameter | — | — | Named | — | Show side-by-side window (pass-through) |
| `-FocusWindow` | SwitchParameter | — | — | Named | — | Focus the window after opening (pass-through) |
| `-SetForeground` | SwitchParameter | — | — | Named | — | Venster op de voorgrond zetten (doorvoer) |
| `-SendKeyEscape` | SwitchParameter | — | — | Named | — | Escape toets naar venster sturen (pass-through) |
| `-SendKeyHoldKeyboardFocus` | SwitchParameter | — | — | Named | — | Toetsenbordfocus behouden bij het verzenden van toetsen (doorvoer) |
| `-SendKeyUseShiftEnter` | SwitchParameter | — | — | Named | — | Gebruik Shift+Enter bij het versturen van toetsen (doorvoer) |
| `-SendKeyDelayMilliSeconds` | Int32 | — | — | 14 | — | Vertraging in milliseconden tussen het verzenden van toetsen (doorvoer) |
| `-SessionOnly` | SwitchParameter | — | — | Named | — | Alleen sessie-modus (doorvoer) |
| `-ClearSession` | SwitchParameter | — | — | Named | — | Sessiegegevens wissen (doorvoer) |
| `-SkipSession` | SwitchParameter | — | — | Named | — | Sessie-initialisatie overslaan (doorvoer) |

## Related Links

- [Get-WireGuardStatus on GitHub](https://github.com/genXdev/genXdev)

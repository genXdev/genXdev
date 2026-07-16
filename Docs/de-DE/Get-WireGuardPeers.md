# Get-WireGuardPeers

> **Module:** GenXdev.Windows.WireGuard | **Type:** Function | **Aliases:** —

## Synopsis

> *(No synopsis provided)*

## Syntax

```powershell
Get-WireGuardPeers [[-ContainerName] <String>] [[-VolumeName] <String>] [[-ServicePort] <Int32>] [[-HealthCheckTimeout] <Int32>] [[-HealthCheckInterval] <Int32>] [[-ImageName] <String>] [[-PUID] <String>] [[-PGID] <String>] [[-TimeZone] <String>] [[-Width] <Int32>] [[-Height] <Int32>] [[-Left] <Int32>] [[-Right] <Int32>] [[-Bottom] <Int32>] [[-SendKeyDelayMilliSeconds] <Int32>] [-Centered] [-ClearSession] [-FocusWindow] [-Force] [-Fullscreen] [-NoBorders] [-NoDockerInitialize] [-RestoreFocus] [-SendKeyEscape] [-SendKeyHoldKeyboardFocus] [-SendKeyUseShiftEnter] [-SessionOnly] [-SetForeground] [-ShowWindow] [-SideBySide] [-SkipSession] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-NoDockerInitialize` | SwitchParameter | — | — | Named | — | Docker-Initialisierung überspringen (wird verwendet, wenn bereits von der übergeordneten Funktion aufgerufen) |
| `-Force` | SwitchParameter | — | — | Named | — | Erzwungener Neubau des Docker-Containers und Entfernung vorhandener Daten |
| `-ContainerName` | String | — | — | 0 | `'wireguard'` | Der Name für den Docker-Container |
| `-VolumeName` | String | — | — | 1 | `'wireguard_data'` | Der Name für das Docker-Volume für persistenten Speicher |
| `-ServicePort` | Int32 | — | — | 2 | `51839` | Die Portnummer für den WireGuard-Dienst |
| `-HealthCheckTimeout` | Int32 | — | — | 3 | `60` | Maximale Zeit in Sekunden für die Überprüfung des Dienststatus |
| `-HealthCheckInterval` | Int32 | — | — | 4 | `3` | Intervall in Sekunden zwischen den Gesundheitsüberprüfungen |
| `-ImageName` | String | — | — | 5 | `'linuxserver/wireguard'` | Benutzerdefinierter Docker-Image-Name zur Verwendung |
| `-PUID` | String | — | — | 6 | `'1000'` | Benutzer-ID für Berechtigungen im Container |
| `-PGID` | String | — | — | 7 | `'1000'` | Gruppen-ID für Berechtigungen im Container |
| `-TimeZone` | String | — | — | 8 | `'Etc/UTC'` | Zeitzone für den Container |
| `-ShowWindow` | SwitchParameter | — | — | Named | — | 当运行 WireGuard 时显示 Docker 窗口 |
| `-NoBorders` | SwitchParameter | — | — | Named | — | Entferne die Fensterrahmen für das Docker-Fenster |
| `-Width` | Int32 | — | — | 9 | `-1` | Set the width of the Docker window |
| `-Height` | Int32 | — | — | 10 | `-1` | Set the height of the Docker window |
| `-Left` | Int32 | — | — | 11 | — | Legen Sie die linke Position des Docker-Fensters fest |
| `-Right` | Int32 | — | — | 12 | — | Set the right position of the Docker window |
| `-Bottom` | Int32 | — | — | 13 | — | Stellen Sie die untere Position des Docker-Fensters ein |
| `-Centered` | SwitchParameter | — | — | Named | — | Center the Docker window on the screen |
| `-Fullscreen` | SwitchParameter | — | — | Named | — | Run the Docker window in fullscreen mode |
| `-RestoreFocus` | SwitchParameter | — | — | Named | — | Stellen Sie den Fokus nach dem Ausführen von Docker wieder auf das vorherige Fenster zurück |
| `-SideBySide` | SwitchParameter | — | — | Named | — | Docker-Fenster nebeneinander mit anderen Fenstern anzeigen |
| `-FocusWindow` | SwitchParameter | — | — | Named | — | Docker-Fenster nach dem Start fokussieren |
| `-SetForeground` | SwitchParameter | — | — | Named | — | Set the Docker window as foreground window |
| `-SendKeyEscape` | SwitchParameter | — | — | Named | — | Senden Sie die Escape-Taste nach dem Start an das Docker-Fenster |
| `-SendKeyHoldKeyboardFocus` | SwitchParameter | — | — | Named | — | Hält den Tastaturfokus im Docker-Fenster nach dem Start |
| `-SendKeyUseShiftEnter` | SwitchParameter | — | — | Named | — | Drücken Sie Umschalt+Eingabe, um Tasten an das Docker-Fenster zu senden |
| `-SendKeyDelayMilliSeconds` | Int32 | — | — | 14 | — | Verzögerung in Millisekunden zwischen dem Senden von Tasten an das Docker-Fenster |
| `-SessionOnly` | SwitchParameter | — | — | Named | — | Use session only for Docker window |
| `-ClearSession` | SwitchParameter | — | — | Named | — | Sitzung für Docker-Fenster vor dem Ausführen löschen |
| `-SkipSession` | SwitchParameter | — | — | Named | — | Sitzung für Docker-Fenster überspringen |

## Related Links

- [Get-WireGuardPeers on GitHub](https://github.com/genXdev/genXdev)

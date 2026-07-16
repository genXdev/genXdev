# EnsureWireGuard

> **Module:** GenXdev.Windows.WireGuard | **Type:** Function | **Aliases:** —

## Synopsis

> *(No synopsis provided)*

## Syntax

```powershell
EnsureWireGuard [[-ContainerName] <String>] [[-VolumeName] <String>] [[-ServicePort] <Int32>] [[-HealthCheckTimeout] <Int32>] [[-HealthCheckInterval] <Int32>] [[-ImageName] <String>] [[-PUID] <String>] [[-PGID] <String>] [[-TimeZone] <String>] [-Bottom] [-Centered] [-ClearSession] [-FocusWindow] [-Force] [-Fullscreen] [-Height <Int32>] [-Left] [-NoBorders] [-RestoreFocus] [-Right] [-SendKeyDelayMilliSeconds <Int32>] [-SendKeyEscape] [-SendKeyHoldKeyboardFocus] [-SendKeyUseShiftEnter] [-SessionOnly] [-SetForeground] [-ShowWindow] [-SideBySide] [-SkipSession] [-Width <Int32>] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-ContainerName` | String | — | — | 0 | `'wireguard'` | Der Name für den Docker-Container |
| `-VolumeName` | String | — | — | 1 | `'wireguard_data'` | Der Name für das Docker-Volume für persistenten Speicher |
| `-ServicePort` | Int32 | — | — | 2 | `51839` | Die Portnummer für den WireGuard-Dienst |
| `-HealthCheckTimeout` | Int32 | — | — | 3 | `60` | Maximale Zeit in Sekunden für die Überprüfung des Dienststatus |
| `-HealthCheckInterval` | Int32 | — | — | 4 | `3` | Intervall in Sekunden zwischen den Gesundheitsüberprüfungen |
| `-ImageName` | String | — | — | 5 | `'linuxserver/wireguard'` | Benutzerdefinierter Docker-Image-Name zur Verwendung |
| `-PUID` | String | — | — | 6 | `'1000'` | Benutzer-ID für Berechtigungen im Container |
| `-PGID` | String | — | — | 7 | `'1000'` | Gruppen-ID für Berechtigungen im Container |
| `-TimeZone` | String | — | — | 8 | `'Etc/UTC'` | Zeitzone für den Container |
| `-ShowWindow` | SwitchParameter | — | — | Named | — | Docker Desktop-Fenster während der Initialisierung anzeigen |
| `-NoBorders` | SwitchParameter | — | — | Named | — | Entfernt die Rahmen des Fensters |
| `-Width` | Int32 | — | — | Named | `-1` | Die anfängliche Breite des Fensters |
| `-Height` | Int32 | — | — | Named | `-1` | Die Anfangshöhe des Fensters |
| `-Left` | SwitchParameter | — | — | Named | — | Place window on the left side of the screen |
| `-Right` | SwitchParameter | — | — | Named | — | Platzieren Sie das Fenster auf der rechten Seite des Bildschirms. |
| `-Bottom` | SwitchParameter | — | — | Named | — | Place window on the bottom side of the screen |
| `-Centered` | SwitchParameter | — | — | Named | — | Fenster in der Mitte des Bildschirms platzieren |
| `-Fullscreen` | SwitchParameter | — | — | Named | — | Das Fenster maximieren |
| `-RestoreFocus` | SwitchParameter | — | — | Named | — | PowerShell-Fokus wiederherstellen |
| `-SideBySide` | SwitchParameter | — | — | Named | — | Wird entweder das Fenster auf einem anderen Monitor als PowerShell im Vollbildmodus anzeigen oder auf demselben Monitor nebeneinander mit PowerShell platzieren. |
| `-FocusWindow` | SwitchParameter | — | — | Named | — | Fenster nach dem Öffnen fokussieren |
| `-SetForeground` | SwitchParameter | — | — | Named | — | Set the window to foreground after opening |
| `-SendKeyEscape` | SwitchParameter | — | — | Named | — | Escape control characters and modifiers when sending keys |
| `-SendKeyHoldKeyboardFocus` | SwitchParameter | — | — | Named | — | Behält den Tastaturfokus auf dem Zielfenster beim Senden von Tastenanschlägen |
| `-SendKeyUseShiftEnter` | SwitchParameter | — | — | Named | — | Use Shift+Enter instead of Enter when sending keys |
| `-SendKeyDelayMilliSeconds` | Int32 | — | — | Named | — | Verzögerung zwischen verschiedenen Eingabezeichenfolgen in Millisekunden beim Senden von Tasten |
| `-SessionOnly` | SwitchParameter | — | — | Named | — | Use alternative settings stored in session for AI preferences |
| `-ClearSession` | SwitchParameter | — | — | Named | — | In der Sitzung gespeicherte alternative Einstellungen für KI-Präferenzen löschen |
| `-SkipSession` | SwitchParameter | — | — | Named | — | Nur Einstellungen in dauerhaften Präferenzen speichern, ohne die Sitzung zu beeinflussen |
| `-Force` | SwitchParameter | — | — | Named | — | Erzwungener Neubau des Docker-Containers und Entfernung vorhandener Daten |

## Outputs

- `Boolean`

## Related Links

- [EnsureWireGuard on GitHub](https://github.com/genXdev/genXdev)

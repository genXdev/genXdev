# Add-WireGuardPeer

> **Module:** GenXdev.Windows.WireGuard | **Type:** Function | **Aliases:** —

## Synopsis

> *(No synopsis provided)*

## Syntax

```powershell
Add-WireGuardPeer -PeerName <String> [[-AllowedIPs] <String>] [[-DNS] <String>] [[-OutputPath] <String>] [[-ContainerName] <String>] [[-VolumeName] <String>] [[-ServicePort] <Int32>] [[-HealthCheckTimeout] <Int32>] [[-HealthCheckInterval] <Int32>] [[-ImageName] <String>] [[-PUID] <String>] [[-PGID] <String>] [[-TimeZone] <String>] [-Bottom <Int32>] [-Centered] [-ClearSession] [-FocusWindow] [-Force] [-Fullscreen] [-Height <Int32>] [-Left <Int32>] [-NoBorders] [-NoDockerInitialize] [-RestoreFocus] [-Right <Int32>] [-SaveConfig] [-SendKeyDelayMilliSeconds <Int32>] [-SendKeyEscape] [-SendKeyHoldKeyboardFocus] [-SendKeyUseShiftEnter] [-SessionOnly] [-SetForeground] [-ShowQRCode] [-ShowWindow] [-SideBySide] [-SkipSession] [-Width <Int32>] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-PeerName` | String | ✅ | — | 0 | — | Ein eindeutiger Name für den Peer |
| `-AllowedIPs` | String | — | — | 1 | `'0.0.0.0/0, ::/0'` | Die IP-Bereiche, die über das VPN geroutet werden |
| `-DNS` | String | — | — | 2 | `'1.1.1.1, 1.0.0.1'` | DNS-Server, die für diesen Peer verwendet werden sollen |
| `-OutputPath` | String | — | — | 3 | `"$env:USERPROFILE\WireGuardConfigs"` | Der Pfad, in dem die Peerkonfigurationsdatei gespeichert werden soll |
| `-ContainerName` | String | — | — | 4 | `'wireguard'` | Der Name für den Docker-Container |
| `-VolumeName` | String | — | — | 5 | `'wireguard_data'` | Der Name für das Docker-Volume für persistenten Speicher |
| `-ServicePort` | Int32 | — | — | 6 | `51839` | Die Portnummer für den WireGuard-Dienst |
| `-HealthCheckTimeout` | Int32 | — | — | 7 | `60` | Maximale Zeit in Sekunden für die Überprüfung des Dienststatus |
| `-HealthCheckInterval` | Int32 | — | — | 8 | `3` | Intervall in Sekunden zwischen den Gesundheitsüberprüfungen |
| `-ImageName` | String | — | — | 9 | `'linuxserver/wireguard'` | Benutzerdefinierter Docker-Image-Name zur Verwendung |
| `-PUID` | String | — | — | 10 | `'1000'` | Benutzer-ID für Berechtigungen im Container |
| `-PGID` | String | — | — | 11 | `'1000'` | Gruppen-ID für Berechtigungen im Container |
| `-TimeZone` | String | — | — | 12 | `'Etc/UTC'` | Zeitzone für den Container |
| `-SaveConfig` | SwitchParameter | — | — | Named | — | Speichern Sie die Peer-Konfiguration in einer Datei |
| `-ShowWindow` | SwitchParameter | — | — | Named | — | Show the WireGuard window when initializing the service |
| `-NoBorders` | SwitchParameter | — | — | Named | — | Remove window borders when initializing the service |
| `-Width` | Int32 | — | — | Named | `-1` | Legen Sie die Fensterbreite beim Initialisieren des Dienstes fest |
| `-Height` | Int32 | — | — | Named | `-1` | Legen Sie die Fensterhöhe bei der Initialisierung des Dienstes fest. |
| `-Left` | Int32 | — | — | Named | — | Setzen Sie die linke Fensterposition bei der Initialisierung des Dienstes |
| `-Right` | Int32 | — | — | Named | — | Legen Sie die richtige Fensterposition fest, wenn der Dienst initialisiert wird |
| `-Bottom` | Int32 | — | — | Named | — | Set the window bottom position when initializing the service |
| `-Centered` | SwitchParameter | — | — | Named | — | Zentrieren Sie das Fenster beim Initialisieren des Dienstes. |
| `-Fullscreen` | SwitchParameter | — | — | Named | — | Start the service in fullscreen mode |
| `-RestoreFocus` | SwitchParameter | — | — | Named | — | Stellen Sie den Fokus nach der Initialisierung des Dienstes auf das Fenster zurück |
| `-SideBySide` | SwitchParameter | — | — | Named | — | Bei der Initialisierung des Dienstes das Fenster nebeneinander anzeigen |
| `-FocusWindow` | SwitchParameter | — | — | Named | — | Fokusieren Sie das Fenster, nachdem der Dienst initialisiert wurde |
| `-SetForeground` | SwitchParameter | — | — | Named | — | Set the window to foreground after initializing the service |
| `-SendKeyEscape` | SwitchParameter | — | — | Named | — | Senden Sie die Escape-Taste an das Fenster, nachdem Sie den Dienst initialisiert haben |
| `-SendKeyHoldKeyboardFocus` | SwitchParameter | — | — | Named | — | Behalten Sie den Tastaturfokus, wenn Sie nach der Initialisierung des Dienstes Tasten senden. |
| `-SendKeyUseShiftEnter` | SwitchParameter | — | — | Named | — | Verwenden Sie Umschalt+Eingabe, wenn Sie nach dem Initialisieren des Dienstes Tasten senden |
| `-SendKeyDelayMilliSeconds` | Int32 | — | — | Named | — | Verzögerung in Millisekunden beim Senden von Tasten nach dem Initialisieren des Dienstes |
| `-SessionOnly` | SwitchParameter | — | — | Named | — | Sitzung nur für den WireGuard-Dienst verwenden |
| `-ClearSession` | SwitchParameter | — | — | Named | — | Sitzung löschen, wenn der Dienst initialisiert wird |
| `-SkipSession` | SwitchParameter | — | — | Named | — | Sitzung beim Initialisieren des Dienstes überspringen |
| `-ShowQRCode` | SwitchParameter | — | — | Named | — | QR code for easy mobile setup |
| `-NoDockerInitialize` | SwitchParameter | — | — | Named | — | Docker-Initialisierung überspringen (wird verwendet, wenn bereits von der übergeordneten Funktion aufgerufen) |
| `-Force` | SwitchParameter | — | — | Named | — | Erzwungener Neubau des Docker-Containers und Entfernung vorhandener Daten |

## Related Links

- [Add-WireGuardPeer on GitHub](https://github.com/genXdev/genXdev)

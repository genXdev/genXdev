# Get-WireGuardStatus

> **Module:** GenXdev.Windows.WireGuard | **Type:** Function | **Aliases:** —

## Synopsis

> Ruft detaillierte Statusinformationen über den WireGuard VPN-Server ab.

## Description

Diese Funktion ruft detaillierte Statusinformationen über den WireGuard-VPN-Server ab, der in einem Docker-Container läuft, einschließlich Schnittstellendetails, Listening-Port, verbundene Peers und Serverzustand. Sie bietet umfassende Informationen über den WireGuard-Dienst, einschließlich Serverstatus, Peer-Anzahl, Betriebszeit und Netzwerkkonfigurationsdetails.

## Syntax

```powershell
Get-WireGuardStatus [[-ContainerName] <String>] [[-VolumeName] <String>] [[-ServicePort] <Int32>] [[-HealthCheckTimeout] <Int32>] [[-HealthCheckInterval] <Int32>] [[-ImageName] <String>] [[-PUID] <String>] [[-PGID] <String>] [[-TimeZone] <String>] [[-Width] <Int32>] [[-Height] <Int32>] [[-Left] <Int32>] [[-Right] <Int32>] [[-Bottom] <Int32>] [[-SendKeyDelayMilliSeconds] <Int32>] [-Centered] [-ClearSession] [-FocusWindow] [-Force] [-Fullscreen] [-NoBorders] [-NoDockerInitialize] [-RestoreFocus] [-SendKeyEscape] [-SendKeyHoldKeyboardFocus] [-SendKeyUseShiftEnter] [-SessionOnly] [-SetForeground] [-ShowWindow] [-SideBySide] [-SkipSession] [<CommonParameters>]
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
| `-ShowWindow` | SwitchParameter | — | — | Named | — | Zeigen Sie das Fenster beim Ausführen des Containers an (Durchleitung) |
| `-NoBorders` | SwitchParameter | — | — | Named | — | Entferne Fensterrahmen (Durchlass) |
| `-Width` | Int32 | — | — | 9 | `-1` | Fensterbreite in Zeichen oder Pixel (Durchlass) |
| `-Height` | Int32 | — | — | 10 | `-1` | Fensterhöhe in Zeichen oder Pixeln (Durchreichung) |
| `-Left` | Int32 | — | — | 11 | — | Fenster linke Position (Durchlass) |
| `-Right` | Int32 | — | — | 12 | — | Rechte Fensterposition (Durchgang) |
| `-Bottom` | Int32 | — | — | 13 | — | Untere Fensterposition (Durchgang) |
| `-Centered` | SwitchParameter | — | — | Named | — | Fenster zentrieren (Durchreichung) |
| `-Fullscreen` | SwitchParameter | — | — | Named | — | Fenster im Vollbildmodus öffnen (Durchreichen) |
| `-RestoreFocus` | SwitchParameter | — | — | Named | — | Fokus nach dem Vorgang auf das Fenster zurückgeben (Durchreichen) |
| `-SideBySide` | SwitchParameter | — | — | Named | — | Show side-by-side window (pass-through) |
| `-FocusWindow` | SwitchParameter | — | — | Named | — | Fenster nach dem Öffnen fokussieren (Durchreichen) |
| `-SetForeground` | SwitchParameter | — | — | Named | — | Fenster in den Vordergrund bringen (Durchreichen) |
| `-SendKeyEscape` | SwitchParameter | — | — | Named | — | Sende Escape-Taste an Fenster (Durchreichen) |
| `-SendKeyHoldKeyboardFocus` | SwitchParameter | — | — | Named | — | Tastaturfokus beim Senden von Tasten beibehalten (Durchlässig) |
| `-SendKeyUseShiftEnter` | SwitchParameter | — | — | Named | — | Use Shift+Enter when sending keys (pass-through) |
| `-SendKeyDelayMilliSeconds` | Int32 | — | — | 14 | — | Verzögerung in Millisekunden zwischen dem Senden von Tasten (Durchleitung) |
| `-SessionOnly` | SwitchParameter | — | — | Named | — | Nur-Sitzungs-Modus (Pass-Through) |
| `-ClearSession` | SwitchParameter | — | — | Named | — | Sitzungsdaten löschen (Durchreichen) |
| `-SkipSession` | SwitchParameter | — | — | Named | — | Sitzungsinitialisierung überspringen (Durchreichen) |

## Examples

### Get-WireGuardStatus

```powershell
Get-WireGuardStatus
```

Gibt den Status des WireGuard-Servers mit Standardeinstellungen zurück.

### Get-WireGuardStatus -NoDockerInitialize -ContainerName "custom_wireguard"

```powershell
Get-WireGuardStatus -NoDockerInitialize -ContainerName "custom_wireguard"
```

Ruft den Status eines benutzerdefinierten Containers ab, ohne Docker zu initialisieren.

## Related Links

- [Get-WireGuardStatus on GitHub](https://github.com/genXdev/genXdev)

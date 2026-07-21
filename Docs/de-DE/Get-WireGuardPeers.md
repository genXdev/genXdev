# Get-WireGuardPeers

> **Module:** GenXdev.Windows.WireGuard | **Type:** Function | **Aliases:** —

## Synopsis

> Ruft Informationen über alle auf dem System konfigurierten WireGuard-VPN-Peers ab.

## Description

Diese Funktion ruft umfassende Informationen über alle WireGuard-VPN-Peers ab, die auf dem in einem Docker-Container ausgeführten Server konfiguriert sind. Sie bietet detaillierte Informationen einschließlich Peer-Namen, öffentlicher Schlüssel, zulässiger IP-Adressen, Verbindungsendpunkte, Handshake-Status, Datenübertragungsstatistiken und aktuellem Verbindungsstatus. Die Funktion kann entweder in Verbindung mit übergeordneten Funktionen oder unabhängig arbeiten, um die Docker-Container-Initialisierung zu verwalten.

## Syntax

```powershell
Get-WireGuardPeers [[-ContainerName] <String>] [[-VolumeName] <String>] [[-ServicePort] <Int32>] [[-HealthCheckTimeout] <Int32>] [[-HealthCheckInterval] <Int32>] [[-ImageName] <String>] [[-PUID] <String>] [[-PGID] <String>] [[-TimeZone] <String>] [[-Width] <Int32>] [[-Height] <Int32>] [[-Left] <Int32>] [[-Right] <Int32>] [[-Bottom] <Int32>] [[-SendKeyDelayMilliSeconds] <Int32>] [-Centered] [-ClearSession] [-FocusWindow] [-Force] [-Fullscreen] [-NoBorders] [-NoDockerInitialize] [-RestoreFocus] [-SendKeyEscape] [-SendKeyHoldKeyboardFocus] [-SendKeyUseShiftEnter] [-SessionOnly] [-SetForeground] [-ShowWindow] [-SideBySide] [-SkipSession] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-NoDockerInitialize` | SwitchParameter | — | — | Named | — | Docker-Initialisierung überspringen (verwendet, wenn bereits von einer übergeordneten Funktion aufgerufen) |
| `-Force` | SwitchParameter | — | — | Named | — | Erzwingen Sie den Neubau des Docker-Containers und entfernen Sie vorhandene Daten |
| `-ContainerName` | String | — | — | 0 | `'wireguard'` | Der Name für den Docker-Container |
| `-VolumeName` | String | — | — | 1 | `'wireguard_data'` | Der Name für das Docker-Volume für dauerhaften Speicher |
| `-ServicePort` | Int32 | — | — | 2 | `51839` | Die Portnummer für den WireGuard-Dienst |
| `-HealthCheckTimeout` | Int32 | — | — | 3 | `60` | Maximale Zeit in Sekunden, die auf die Dienststatusüberprüfung gewartet wird |
| `-HealthCheckInterval` | Int32 | — | — | 4 | `3` | Intervall in Sekunden zwischen den Integritätsprüfungen |
| `-ImageName` | String | — | — | 5 | `'linuxserver/wireguard'` | Benutzerdefinierter Docker-Image-Name zur Verwendung |
| `-PUID` | String | — | — | 6 | `'1000'` | Benutzer-ID für Berechtigungen im Container |
| `-PGID` | String | — | — | 7 | `'1000'` | Gruppen-ID für Berechtigungen im Container |
| `-TimeZone` | String | — | — | 8 | `'Etc/UTC'` | Für den Container zu verwendende Zeitzone |
| `-ShowWindow` | SwitchParameter | — | — | Named | — | Zeigen Sie das Docker-Fenster beim Ausführen von WireGuard an |
| `-NoBorders` | SwitchParameter | — | — | Named | — | Entfernen Sie die Fensterrahmen für das Docker-Fenster |
| `-Width` | Int32 | — | — | 9 | `-1` | Legen Sie die Breite des Docker-Fensters fest |
| `-Height` | Int32 | — | — | 10 | `-1` | Legen Sie die Höhe des Docker-Fensters fest |
| `-Left` | Int32 | — | — | 11 | — | Legt die linke Position des Docker-Fensters fest |
| `-Right` | Int32 | — | — | 12 | — | Legt die rechte Position des Docker-Fensters fest |
| `-Bottom` | Int32 | — | — | 13 | — | Legt die untere Position des Docker-Fensters fest |
| `-Centered` | SwitchParameter | — | — | Named | — | Das Docker-Fenster auf dem Bildschirm zentrieren |
| `-Fullscreen` | SwitchParameter | — | — | Named | — | Führen Sie das Docker-Fenster im Vollbildmodus aus |
| `-RestoreFocus` | SwitchParameter | — | — | Named | — | Fokus nach dem Ausführen von Docker auf das vorherige Fenster zurückversetzen |
| `-SideBySide` | SwitchParameter | — | — | Named | — | Docker-Fenster nebeneinander mit anderen Fenstern anzeigen |
| `-FocusWindow` | SwitchParameter | — | — | Named | — | Docker-Fenster nach dem Start fokussieren |
| `-SetForeground` | SwitchParameter | — | — | Named | — | Docker-Fenster als Vordergrundfenster festlegen |
| `-SendKeyEscape` | SwitchParameter | — | — | Named | — | Escape-Taste an das Docker-Fenster senden nach dem Start |
| `-SendKeyHoldKeyboardFocus` | SwitchParameter | — | — | Named | — | Tastaturfokus nach dem Start im Docker-Fenster behalten |
| `-SendKeyUseShiftEnter` | SwitchParameter | — | — | Named | — | Verwenden Sie Umschalt+Eingabe, wenn Sie Tasten an das Docker-Fenster senden |
| `-SendKeyDelayMilliSeconds` | Int32 | — | — | 14 | — | Verzögerung in Millisekunden zwischen dem Senden von Tasten an das Docker-Fenster |
| `-SessionOnly` | SwitchParameter | — | — | Named | — | Sitzung nur für das Docker-Fenster verwenden |
| `-ClearSession` | SwitchParameter | — | — | Named | — | Sitzung für das Docker-Fenster löschen, bevor Sie ausführen |
| `-SkipSession` | SwitchParameter | — | — | Named | — | Sitzung für Docker-Fenster überspringen |

## Examples

### Get-WireGuardPeers

```powershell
Get-WireGuardPeers
```

### Get-WireGuardPeers -NoDockerInitialize -ContainerName "custom_wireguard" `                    -ServicePort 55555

```powershell
Get-WireGuardPeers -NoDockerInitialize -ContainerName "custom_wireguard" `
                   -ServicePort 55555
```

## Parameter Details

### `-NoDockerInitialize`

> Docker-Initialisierung überspringen (verwendet, wenn bereits von einer übergeordneten Funktion aufgerufen)

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-Force`

> Erzwingen Sie den Neubau des Docker-Containers und entfernen Sie vorhandene Daten

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | `ForceRebuild` |
| **Accept wildcard characters?** | No |

<hr/>
### `-ContainerName <String>`

> Der Name für den Docker-Container

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | 0 |
| **Default value** | `'wireguard'` |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-VolumeName <String>`

> Der Name für das Docker-Volume für dauerhaften Speicher

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | 1 |
| **Default value** | `'wireguard_data'` |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-ServicePort <Int32>`

> Die Portnummer für den WireGuard-Dienst

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | 2 |
| **Default value** | `51839` |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-HealthCheckTimeout <Int32>`

> Maximale Zeit in Sekunden, die auf die Dienststatusüberprüfung gewartet wird

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | 3 |
| **Default value** | `60` |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-HealthCheckInterval <Int32>`

> Intervall in Sekunden zwischen den Integritätsprüfungen

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | 4 |
| **Default value** | `3` |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-ImageName <String>`

> Benutzerdefinierter Docker-Image-Name zur Verwendung

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | 5 |
| **Default value** | `'linuxserver/wireguard'` |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-PUID <String>`

> Benutzer-ID für Berechtigungen im Container

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | 6 |
| **Default value** | `'1000'` |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-PGID <String>`

> Gruppen-ID für Berechtigungen im Container

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | 7 |
| **Default value** | `'1000'` |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-TimeZone <String>`

> Für den Container zu verwendende Zeitzone

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | 8 |
| **Default value** | `'Etc/UTC'` |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-ShowWindow`

> Zeigen Sie das Docker-Fenster beim Ausführen von WireGuard an

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-NoBorders`

> Entfernen Sie die Fensterrahmen für das Docker-Fenster

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | `nb` |
| **Accept wildcard characters?** | No |

<hr/>
### `-Width <Int32>`

> Legen Sie die Breite des Docker-Fensters fest

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | 9 |
| **Default value** | `-1` |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-Height <Int32>`

> Legen Sie die Höhe des Docker-Fensters fest

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | 10 |
| **Default value** | `-1` |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-Left <Int32>`

> Legt die linke Position des Docker-Fensters fest

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | 11 |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-Right <Int32>`

> Legt die rechte Position des Docker-Fensters fest

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | 12 |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-Bottom <Int32>`

> Legt die untere Position des Docker-Fensters fest

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | 13 |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-Centered`

> Das Docker-Fenster auf dem Bildschirm zentrieren

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-Fullscreen`

> Führen Sie das Docker-Fenster im Vollbildmodus aus

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | `fs` |
| **Accept wildcard characters?** | No |

<hr/>
### `-RestoreFocus`

> Fokus nach dem Ausführen von Docker auf das vorherige Fenster zurückversetzen

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | `rf`, `bg` |
| **Accept wildcard characters?** | No |

<hr/>
### `-SideBySide`

> Docker-Fenster nebeneinander mit anderen Fenstern anzeigen

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | `sbs` |
| **Accept wildcard characters?** | No |

<hr/>
### `-FocusWindow`

> Docker-Fenster nach dem Start fokussieren

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | `fw`, `focus` |
| **Accept wildcard characters?** | No |

<hr/>
### `-SetForeground`

> Docker-Fenster als Vordergrundfenster festlegen

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | `fg` |
| **Accept wildcard characters?** | No |

<hr/>
### `-SendKeyEscape`

> Escape-Taste an das Docker-Fenster senden nach dem Start

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | `Escape` |
| **Accept wildcard characters?** | No |

<hr/>
### `-SendKeyHoldKeyboardFocus`

> Tastaturfokus nach dem Start im Docker-Fenster behalten

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | `HoldKeyboardFocus` |
| **Accept wildcard characters?** | No |

<hr/>
### `-SendKeyUseShiftEnter`

> Verwenden Sie Umschalt+Eingabe, wenn Sie Tasten an das Docker-Fenster senden

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | `UseShiftEnter` |
| **Accept wildcard characters?** | No |

<hr/>
### `-SendKeyDelayMilliSeconds <Int32>`

> Verzögerung in Millisekunden zwischen dem Senden von Tasten an das Docker-Fenster

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | 14 |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | `DelayMilliSeconds` |
| **Accept wildcard characters?** | No |

<hr/>
### `-SessionOnly`

> Sitzung nur für das Docker-Fenster verwenden

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-ClearSession`

> Sitzung für das Docker-Fenster löschen, bevor Sie ausführen

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-SkipSession`

> Sitzung für Docker-Fenster überspringen

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | `FromPreferences` |
| **Accept wildcard characters?** | No |

<hr/>
## Related Links

- [Add-WireGuardPeer](https://github.com/genXdev/genXdev/blob/main/de-DE/Add-WireGuardPeer.md)
- [EnsureWireGuard](https://github.com/genXdev/genXdev/blob/main/de-DE/EnsureWireGuard.md)
- [Get-WireGuardPeerQRCode](https://github.com/genXdev/genXdev/blob/main/de-DE/Get-WireGuardPeerQRCode.md)
- [Get-WireGuardStatus](https://github.com/genXdev/genXdev/blob/main/de-DE/Get-WireGuardStatus.md)
- [Remove-WireGuardPeer](https://github.com/genXdev/genXdev/blob/main/de-DE/Remove-WireGuardPeer.md)
- [Reset-WireGuardConfiguration](https://github.com/genXdev/genXdev/blob/main/de-DE/Reset-WireGuardConfiguration.md)

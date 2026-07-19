# Remove-WireGuardPeer

> **Module:** GenXdev.Windows.WireGuard | **Type:** Function | **Aliases:** —

## Synopsis

> Verwijdert een WireGuard VPN peerconfiguratie.

## Description

Deze functie verwijdert een WireGuard VPN-peerconfiguratie van de server die in een Docker-container draait. Het verwijdert de configuratiebestanden van de peer en werkt de WireGuard-server bij om geen verbindingen meer van deze peer te accepteren. De functie valideert het bestaan van de peer voordat deze wordt verwijderd en vraagt om bevestiging, tenzij de parameter Force is opgegeven.

## Syntax

```powershell
Remove-WireGuardPeer -PeerName <String> [-Bottom] [-Centered] [-ClearSession] [-ContainerName <String>] [-FocusWindow] [-Force] [-Fullscreen] [-HealthCheckInterval <Int32>] [-HealthCheckTimeout <Int32>] [-Height <Int32>] [-ImageName <String>] [-Left] [-NoBorders] [-NoDockerInitialize] [-PGID <String>] [-PUID <String>] [-RestoreFocus] [-Right] [-SendKeyDelayMilliSeconds <Int32>] [-SendKeyEscape] [-SendKeyHoldKeyboardFocus] [-SendKeyUseShiftEnter] [-ServicePort <Int32>] [-SessionOnly] [-SetForeground] [-ShowWindow] [-SideBySide] [-SkipSession] [-TimeZone <String>] [-VolumeName <String>] [-Width <Int32>] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-PeerName` | String | ✅ | — | 0 | — | De naam van de peer die verwijderd moet worden |
| `-ContainerName` | String | — | — | Named | `'wireguard'` | De naam voor de Docker-container |
| `-VolumeName` | String | — | — | Named | `'wireguard_data'` | De naam voor de Docker-volume voor persistente opslag |
| `-ServicePort` | Int32 | — | — | Named | `51839` | The port number for the WireGuard service |
| `-HealthCheckTimeout` | Int32 | — | — | Named | `60` | Maximale tijd in seconden om te wachten op de gezondheidscontrole van de service |
| `-HealthCheckInterval` | Int32 | — | — | Named | `3` | Interval in seconden tussen health check pogingen |
| `-ImageName` | String | — | — | Named | `'linuxserver/wireguard'` | Aangepaste Docker-afbeeldingsnaam om te gebruiken |
| `-PUID` | String | — | — | Named | `'1000'` | Gebruikers-ID voor machtigingen in de container |
| `-PGID` | String | — | — | Named | `'1000'` | Groep-ID voor machtigingen in de container |
| `-TimeZone` | String | — | — | Named | `'Etc/UTC'` | Tijdzone voor de container |
| `-Force` | SwitchParameter | — | — | Named | — | Force removal without confirmation |
| `-NoDockerInitialize` | SwitchParameter | — | — | Named | — | Docker-initialisatie overslaan wanneer aangeroepen door bovenliggende functie |
| `-ShowWindow` | SwitchParameter | — | — | Named | — | Toon Docker Desktop-venster tijdens initialisatie |
| `-NoBorders` | SwitchParameter | — | — | Named | — | Verwijdert de randen van het venster |
| `-Width` | Int32 | — | — | Named | `-1` | De initiële breedte van het venster |
| `-Height` | Int32 | — | — | Named | `-1` | De initiële hoogte van het venster |
| `-Left` | SwitchParameter | — | — | Named | — | Plaats het venster aan de linkerkant van het scherm |
| `-Right` | SwitchParameter | — | — | Named | — | Plaats het venster aan de rechterkant van het scherm |
| `-Bottom` | SwitchParameter | — | — | Named | — | Place window on the bottom side of the screen |
| `-Centered` | SwitchParameter | — | — | Named | — | Plaats het venster in het midden van het scherm |
| `-Fullscreen` | SwitchParameter | — | — | Named | — | Maximaliseer het venster |
| `-RestoreFocus` | SwitchParameter | — | — | Named | — | PowerShell-vensterfocus herstellen |
| `-SideBySide` | SwitchParameter | — | — | Named | — | Zet het venster volledig scherm op een ander scherm dan Powershell, of naast Powershell op hetzelfde scherm |
| `-FocusWindow` | SwitchParameter | — | — | Named | — | Focus the window after opening |
| `-SetForeground` | SwitchParameter | — | — | Named | — | Zet het venster op de voorgrond na het openen |
| `-SendKeyEscape` | SwitchParameter | — | — | Named | — | Escape control characters and modifiers when sending keys |
| `-SendKeyHoldKeyboardFocus` | SwitchParameter | — | — | Named | — | Toetsenbordfocus op doelvenster houden bij het verzenden van toetsen |
| `-SendKeyUseShiftEnter` | SwitchParameter | — | — | Named | — | Gebruik Shift+Enter in plaats van Enter bij het verzenden van toetsen |
| `-SendKeyDelayMilliSeconds` | Int32 | — | — | Named | — | Vertraging tussen verschillende invoerstrings in milliseconden bij het verzenden van toetsen |
| `-SessionOnly` | SwitchParameter | — | — | Named | — | Gebruik alternatieve instellingen opgeslagen in sessie voor AI-voorkeuren |
| `-ClearSession` | SwitchParameter | — | — | Named | — | Wis alternatieve instellingen opgeslagen in sessie voor AI-voorkeuren |
| `-SkipSession` | SwitchParameter | — | — | Named | — | Instellingen alleen in permanente voorkeuren opslaan zonder de sessie te beïnvloeden |

## Examples

### Remove-WireGuardPeer -PeerName "MyPhone"

```powershell
Remove-WireGuardPeer -PeerName "MyPhone"
```

Verwijdert de peer genaamd "MyPhone" met een bevestigingsprompt.

### Remove-WireGuardPeer -PeerName "Tablet" -Force

```powershell
Remove-WireGuardPeer -PeerName "Tablet" -Force
```

Verwijdert de peer genaamd "Tablet" zonder bevestigingsprompt.

### Remove-WireGuardPeer "WorkLaptop"

```powershell
Remove-WireGuardPeer "WorkLaptop"
```

Verwijdert de peer met behulp van positionele parametersyntaxis.

## Related Links

- [Remove-WireGuardPeer on GitHub](https://github.com/genXdev/genXdev)

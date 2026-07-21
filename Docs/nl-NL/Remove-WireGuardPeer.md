# Remove-WireGuardPeer

> **Module:** GenXdev.Windows.WireGuard | **Type:** Function | **Aliases:** —

## Synopsis

> Verwijdert een WireGuard VPN-peerconfiguratie.

## Description

Deze functie verwijdert een WireGuard VPN-peerconfiguratie van de server die in een Docker-container draait. Het verwijdert de configuratiebestanden van de peer en werkt de WireGuard-server bij om geen verbindingen meer van deze peer te accepteren. De functie valideert het bestaan van de peer voordat deze wordt verwijderd en geeft bevestigingsprompts tenzij de parameter Force is opgegeven.

## Syntax

```powershell
Remove-WireGuardPeer -PeerName <String> [-Bottom] [-Centered] [-ClearSession] [-ContainerName <String>] [-FocusWindow] [-Force] [-Fullscreen] [-HealthCheckInterval <Int32>] [-HealthCheckTimeout <Int32>] [-Height <Int32>] [-ImageName <String>] [-Left] [-NoBorders] [-NoDockerInitialize] [-PGID <String>] [-PUID <String>] [-RestoreFocus] [-Right] [-SendKeyDelayMilliSeconds <Int32>] [-SendKeyEscape] [-SendKeyHoldKeyboardFocus] [-SendKeyUseShiftEnter] [-ServicePort <Int32>] [-SessionOnly] [-SetForeground] [-ShowWindow] [-SideBySide] [-SkipSession] [-TimeZone <String>] [-VolumeName <String>] [-Width <Int32>] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-PeerName` | String | ✅ | — | 0 | — | De naam van de peer die moet worden verwijderd |
| `-ContainerName` | String | — | — | Named | `'wireguard'` | De naam voor de Docker-container |
| `-VolumeName` | String | — | — | Named | `'wireguard_data'` | De naam voor de Docker-volume voor persistente opslag |
| `-ServicePort` | Int32 | — | — | Named | `51839` | Het poortnummer voor de WireGuard-service |
| `-HealthCheckTimeout` | Int32 | — | — | Named | `60` | Maximale tijd in seconden om te wachten op de statuscontrole van de service |
| `-HealthCheckInterval` | Int32 | — | — | Named | `3` | Interval in seconden tussen health check-pogingen |
| `-ImageName` | String | — | — | Named | `'linuxserver/wireguard'` | Aangepaste Docker-image naam om te gebruiken |
| `-PUID` | String | — | — | Named | `'1000'` | Gebruikers-ID voor machtigingen in de container |
| `-PGID` | String | — | — | Named | `'1000'` | Groeps-ID voor machtigingen in de container |
| `-TimeZone` | String | — | — | Named | `'Etc/UTC'` | Tijdzone voor de container |
| `-Force` | SwitchParameter | — | — | Named | — | Force verwijderen zonder bevestiging |
| `-NoDockerInitialize` | SwitchParameter | — | — | Named | — | Initialisatie van Docker overslaan wanneer aangeroepen door bovenliggende functie |
| `-ShowWindow` | SwitchParameter | — | — | Named | — | Docker Desktop-venster weergeven tijdens initialisatie |
| `-NoBorders` | SwitchParameter | — | — | Named | — | Verwijdert de randen van het venster |
| `-Width` | Int32 | — | — | Named | `-1` | De initiële breedte van het venster |
| `-Height` | Int32 | — | — | Named | `-1` | De initiële hoogte van het venster |
| `-Left` | SwitchParameter | — | — | Named | — | Plaats venster aan de linkerkant van het scherm |
| `-Right` | SwitchParameter | — | — | Named | — | Plaats venster aan de rechterkant van het scherm |
| `-Bottom` | SwitchParameter | — | — | Named | — | Venster aan de onderkant van het scherm plaatsen |
| `-Centered` | SwitchParameter | — | — | Named | — | Plaats het venster in het midden van het scherm |
| `-Fullscreen` | SwitchParameter | — | — | Named | — | Maximaliseer het venster |
| `-RestoreFocus` | SwitchParameter | — | — | Named | — | PowerShell-vensterfocus herstellen |
| `-SideBySide` | SwitchParameter | — | — | Named | — | Zet het venster op volledig scherm op een andere monitor dan PowerShell, of naast elkaar met PowerShell op dezelfde monitor. |
| `-FocusWindow` | SwitchParameter | — | — | Named | — | Het venster focussen na het openen |
| `-SetForeground` | SwitchParameter | — | — | Named | — | Het venster op de voorgrond zetten na het openen |
| `-SendKeyEscape` | SwitchParameter | — | — | Named | — | Ontsnap aan besturingstekens en modifiers bij het verzenden van toetsen |
| `-SendKeyHoldKeyboardFocus` | SwitchParameter | — | — | Named | — | Toetsenbordfocus vasthouden op doelvenster bij het verzenden van toetsen |
| `-SendKeyUseShiftEnter` | SwitchParameter | — | — | Named | — | Gebruik Shift+Enter in plaats van Enter bij het verzenden van toetsen |
| `-SendKeyDelayMilliSeconds` | Int32 | — | — | Named | — | Vertraging tussen verschillende invoerreeksen in milliseconden bij het verzenden van toetsen |
| `-SessionOnly` | SwitchParameter | — | — | Named | — | Gebruik alternatieve instellingen die zijn opgeslagen in de sessie voor AI-voorkeuren |
| `-ClearSession` | SwitchParameter | — | — | Named | — | Wis alternatieve instellingen opgeslagen in sessie voor AI-voorkeuren |
| `-SkipSession` | SwitchParameter | — | — | Named | — | Instellingen alleen opslaan in permanente voorkeuren zonder de sessie te beïnvloeden |

## Examples

### Remove-WireGuardPeer -PeerName "MyPhone"

```powershell
Remove-WireGuardPeer -PeerName "MyPhone"
```

Verwijdert de peer met de naam "MyPhone" met een bevestigingsprompt.

### Remove-WireGuardPeer -PeerName "Tablet" -Force

```powershell
Remove-WireGuardPeer -PeerName "Tablet" -Force
```

Verwijdert de peer met de naam 'Tablet' zonder bevestigingsprompt.

### Remove-WireGuardPeer "WorkLaptop"

```powershell
Remove-WireGuardPeer "WorkLaptop"
```

Verwijdert de peer met behulp van positionele parametersyntaxis.

## Parameter Details

### `-PeerName <String>`

> De naam van de peer die moet worden verwijderd

| Property | Value |
|:---|:---|
| **Required?** | Yes |
| **Position?** | 0 |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-ContainerName <String>`

> De naam voor de Docker-container

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | `'wireguard'` |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-VolumeName <String>`

> De naam voor de Docker-volume voor persistente opslag

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | `'wireguard_data'` |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-ServicePort <Int32>`

> Het poortnummer voor de WireGuard-service

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | `51839` |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-HealthCheckTimeout <Int32>`

> Maximale tijd in seconden om te wachten op de statuscontrole van de service

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | `60` |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-HealthCheckInterval <Int32>`

> Interval in seconden tussen health check-pogingen

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | `3` |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-ImageName <String>`

> Aangepaste Docker-image naam om te gebruiken

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | `'linuxserver/wireguard'` |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-PUID <String>`

> Gebruikers-ID voor machtigingen in de container

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | `'1000'` |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-PGID <String>`

> Groeps-ID voor machtigingen in de container

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | `'1000'` |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-TimeZone <String>`

> Tijdzone voor de container

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | `'Etc/UTC'` |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-Force`

> Force verwijderen zonder bevestiging

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | `ForceRebuild` |
| **Accept wildcard characters?** | No |

<hr/>
### `-NoDockerInitialize`

> Initialisatie van Docker overslaan wanneer aangeroepen door bovenliggende functie

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-ShowWindow`

> Docker Desktop-venster weergeven tijdens initialisatie

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

> Verwijdert de randen van het venster

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

> De initiële breedte van het venster

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | `-1` |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-Height <Int32>`

> De initiële hoogte van het venster

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | `-1` |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-Left`

> Plaats venster aan de linkerkant van het scherm

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-Right`

> Plaats venster aan de rechterkant van het scherm

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-Bottom`

> Venster aan de onderkant van het scherm plaatsen

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-Centered`

> Plaats het venster in het midden van het scherm

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

> Maximaliseer het venster

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

> PowerShell-vensterfocus herstellen

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

> Zet het venster op volledig scherm op een andere monitor dan PowerShell, of naast elkaar met PowerShell op dezelfde monitor.

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

> Het venster focussen na het openen

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

> Het venster op de voorgrond zetten na het openen

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

> Ontsnap aan besturingstekens en modifiers bij het verzenden van toetsen

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

> Toetsenbordfocus vasthouden op doelvenster bij het verzenden van toetsen

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

> Gebruik Shift+Enter in plaats van Enter bij het verzenden van toetsen

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

> Vertraging tussen verschillende invoerreeksen in milliseconden bij het verzenden van toetsen

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | `DelayMilliSeconds` |
| **Accept wildcard characters?** | No |

<hr/>
### `-SessionOnly`

> Gebruik alternatieve instellingen die zijn opgeslagen in de sessie voor AI-voorkeuren

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

> Wis alternatieve instellingen opgeslagen in sessie voor AI-voorkeuren

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

> Instellingen alleen opslaan in permanente voorkeuren zonder de sessie te beïnvloeden

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

- [Add-WireGuardPeer](https://github.com/genXdev/genXdev/blob/main/Docs/nl-NL/Add-WireGuardPeer.md)
- [EnsureWireGuard](https://github.com/genXdev/genXdev/blob/main/Docs/nl-NL/EnsureWireGuard.md)
- [Get-WireGuardPeerQRCode](https://github.com/genXdev/genXdev/blob/main/Docs/nl-NL/Get-WireGuardPeerQRCode.md)
- [Get-WireGuardPeers](https://github.com/genXdev/genXdev/blob/main/Docs/nl-NL/Get-WireGuardPeers.md)
- [Get-WireGuardStatus](https://github.com/genXdev/genXdev/blob/main/Docs/nl-NL/Get-WireGuardStatus.md)
- [Reset-WireGuardConfiguration](https://github.com/genXdev/genXdev/blob/main/Docs/nl-NL/Reset-WireGuardConfiguration.md)

# Get-WireGuardStatus

> **Module:** GenXdev.Windows.WireGuard | **Type:** Function | **Aliases:** —

## Synopsis

> Hämtar detaljerad statusinformation om WireGuard VPN-servern.

## Description

Denna funktion hämtar detaljerad statusinformation om WireGuard VPN-servern som körs i en Docker-container, inklusive gränssnittsdetaljer, lyssningsport, anslutna peers och serverhälsa. Den ger omfattande information om WireGuard-tjänsten inklusive serverstatus, peer-antal, drifttid och nätverkskonfigurationsdetaljer.

## Syntax

```powershell
Get-WireGuardStatus [[-ContainerName] <String>] [[-VolumeName] <String>] [[-ServicePort] <Int32>] [[-HealthCheckTimeout] <Int32>] [[-HealthCheckInterval] <Int32>] [[-ImageName] <String>] [[-PUID] <String>] [[-PGID] <String>] [[-TimeZone] <String>] [[-Width] <Int32>] [[-Height] <Int32>] [[-Left] <Int32>] [[-Right] <Int32>] [[-Bottom] <Int32>] [[-SendKeyDelayMilliSeconds] <Int32>] [-Centered] [-ClearSession] [-FocusWindow] [-Force] [-Fullscreen] [-NoBorders] [-NoDockerInitialize] [-RestoreFocus] [-SendKeyEscape] [-SendKeyHoldKeyboardFocus] [-SendKeyUseShiftEnter] [-SessionOnly] [-SetForeground] [-ShowWindow] [-SideBySide] [-SkipSession] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-NoDockerInitialize` | SwitchParameter | — | — | Named | — | Hoppa över Docker-initiering (används när den redan anropats av överordnad funktion) |
| `-Force` | SwitchParameter | — | — | Named | — | Tvinga återuppbyggnad av Docker-container och ta bort befintliga data |
| `-ContainerName` | String | — | — | 0 | `'wireguard'` | Namnet för Docker-behållaren |
| `-VolumeName` | String | — | — | 1 | `'wireguard_data'` | Namnet för Docker-volymen för beständig lagring |
| `-ServicePort` | Int32 | — | — | 2 | `51839` | Portnumret för WireGuard-tjänsten |
| `-HealthCheckTimeout` | Int32 | — | — | 3 | `60` | Maximal tid i sekunder att vänta på tjänstens hälsokontroll |
| `-HealthCheckInterval` | Int32 | — | — | 4 | `3` | Intervall i sekunder mellan hälsoökningsförsök |
| `-ImageName` | String | — | — | 5 | `'linuxserver/wireguard'` | Anpassat Docker-avbildningsnamn att använda |
| `-PUID` | String | — | — | 6 | `'1000'` | Användar-ID för behörigheter i containern |
| `-PGID` | String | — | — | 7 | `'1000'` | Grupp-ID för behörigheter i containern |
| `-TimeZone` | String | — | — | 8 | `'Etc/UTC'` | Tidszon att använda för containern |
| `-ShowWindow` | SwitchParameter | — | — | Named | — | Visa fönstret när behållaren körs (genomströmning) |
| `-NoBorders` | SwitchParameter | — | — | Named | — | Ta bort fönsterkanter (genomsläpp) |
| `-Width` | Int32 | — | — | 9 | `-1` | Fönsterbredd i tecken eller pixlar (genomströmning) |
| `-Height` | Int32 | — | — | 10 | `-1` | Fönsterhöjd i tecken eller pixlar (genomströmning) |
| `-Left` | Int32 | — | — | 11 | — | Fönstrets vänstra position (direktgenomströmning) |
| `-Right` | Int32 | — | — | 12 | — | Fönster höger position (genomströmning) |
| `-Bottom` | Int32 | — | — | 13 | — | Fönstrets nedre position (genomströmning) |
| `-Centered` | SwitchParameter | — | — | Named | — | Centrera fönstret (genomsläpp) |
| `-Fullscreen` | SwitchParameter | — | — | Named | — | Öppna fönster i helskärmsläge (genomsläpp) |
| `-RestoreFocus` | SwitchParameter | — | — | Named | — | Återställ fokus till fönstret efter åtgärd (genomsläpp) |
| `-SideBySide` | SwitchParameter | — | — | Named | — | Visa sida vid sida-fönster (genomströmning) |
| `-FocusWindow` | SwitchParameter | — | — | Named | — | Fokusera fönstret efter öppning (genomsläpp) |
| `-SetForeground` | SwitchParameter | — | — | Named | — | Ställ fönster i förgrunden (genomsläppning) |
| `-SendKeyEscape` | SwitchParameter | — | — | Named | — | Skicka Escape-tangenten till fönstret (genomsläpp) |
| `-SendKeyHoldKeyboardFocus` | SwitchParameter | — | — | Named | — | Behåll tangentbordsfokus vid sändning av tangenter (genomströmning) |
| `-SendKeyUseShiftEnter` | SwitchParameter | — | — | Named | — | Använda Skift+Enter när du skickar tangenter (genomsläpp) |
| `-SendKeyDelayMilliSeconds` | Int32 | — | — | 14 | — | Fördröjning i millisekunder mellan att skicka tangenter (genomströmning) |
| `-SessionOnly` | SwitchParameter | — | — | Named | — | Endast sessionsläge (genomströmning) |
| `-ClearSession` | SwitchParameter | — | — | Named | — | Rensa sessionsdata (genomströmning) |
| `-SkipSession` | SwitchParameter | — | — | Named | — | Hoppa över sessionsinitiering (genomströmning) |

## Examples

### Get-WireGuardStatus

```powershell
Get-WireGuardStatus
```

Returnerar statusen för WireGuard-servern med standardinställningar.

### Get-WireGuardStatus -NoDockerInitialize -ContainerName "custom_wireguard"

```powershell
Get-WireGuardStatus -NoDockerInitialize -ContainerName "custom_wireguard"
```

Hämtar status för en anpassad container utan att initiera Docker.

## Parameter Details

### `-NoDockerInitialize`

> Hoppa över Docker-initiering (används när den redan anropats av överordnad funktion)

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

> Tvinga återuppbyggnad av Docker-container och ta bort befintliga data

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

> Namnet för Docker-behållaren

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

> Namnet för Docker-volymen för beständig lagring

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

> Portnumret för WireGuard-tjänsten

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

> Maximal tid i sekunder att vänta på tjänstens hälsokontroll

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

> Intervall i sekunder mellan hälsoökningsförsök

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

> Anpassat Docker-avbildningsnamn att använda

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

> Användar-ID för behörigheter i containern

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

> Grupp-ID för behörigheter i containern

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

> Tidszon att använda för containern

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

> Visa fönstret när behållaren körs (genomströmning)

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

> Ta bort fönsterkanter (genomsläpp)

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

> Fönsterbredd i tecken eller pixlar (genomströmning)

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

> Fönsterhöjd i tecken eller pixlar (genomströmning)

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

> Fönstrets vänstra position (direktgenomströmning)

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

> Fönster höger position (genomströmning)

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

> Fönstrets nedre position (genomströmning)

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

> Centrera fönstret (genomsläpp)

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

> Öppna fönster i helskärmsläge (genomsläpp)

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

> Återställ fokus till fönstret efter åtgärd (genomsläpp)

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

> Visa sida vid sida-fönster (genomströmning)

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

> Fokusera fönstret efter öppning (genomsläpp)

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

> Ställ fönster i förgrunden (genomsläppning)

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

> Skicka Escape-tangenten till fönstret (genomsläpp)

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

> Behåll tangentbordsfokus vid sändning av tangenter (genomströmning)

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

> Använda Skift+Enter när du skickar tangenter (genomsläpp)

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

> Fördröjning i millisekunder mellan att skicka tangenter (genomströmning)

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

> Endast sessionsläge (genomströmning)

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

> Rensa sessionsdata (genomströmning)

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

> Hoppa över sessionsinitiering (genomströmning)

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

- [Add-WireGuardPeer](https://github.com/genXdev/genXdev/blob/main/Docs/sv-SE/Add-WireGuardPeer.md)
- [EnsureWireGuard](https://github.com/genXdev/genXdev/blob/main/Docs/sv-SE/EnsureWireGuard.md)
- [Get-WireGuardPeerQRCode](https://github.com/genXdev/genXdev/blob/main/Docs/sv-SE/Get-WireGuardPeerQRCode.md)
- [Get-WireGuardPeers](https://github.com/genXdev/genXdev/blob/main/Docs/sv-SE/Get-WireGuardPeers.md)
- [Remove-WireGuardPeer](https://github.com/genXdev/genXdev/blob/main/Docs/sv-SE/Remove-WireGuardPeer.md)
- [Reset-WireGuardConfiguration](https://github.com/genXdev/genXdev/blob/main/Docs/sv-SE/Reset-WireGuardConfiguration.md)

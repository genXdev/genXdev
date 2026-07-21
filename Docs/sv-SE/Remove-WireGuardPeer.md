# Remove-WireGuardPeer

> **Module:** GenXdev.Windows.WireGuard | **Type:** Function | **Aliases:** —

## Synopsis

> Tar bort en WireGuard VPN-peer-konfiguration.

## Description

Denna funktion tar bort en WireGuard VPN-peer-konfiguration från servern som körs i en Docker-container. Den tar bort peerens konfigurationsfiler och uppdaterar WireGuard-servern för att sluta acceptera anslutningar från denna peer. Funktionen validerar peerens existens före borttagning och ger bekräftelseprompter om inte Force-parametern anges.

## Syntax

```powershell
Remove-WireGuardPeer -PeerName <String> [-Bottom] [-Centered] [-ClearSession] [-ContainerName <String>] [-FocusWindow] [-Force] [-Fullscreen] [-HealthCheckInterval <Int32>] [-HealthCheckTimeout <Int32>] [-Height <Int32>] [-ImageName <String>] [-Left] [-NoBorders] [-NoDockerInitialize] [-PGID <String>] [-PUID <String>] [-RestoreFocus] [-Right] [-SendKeyDelayMilliSeconds <Int32>] [-SendKeyEscape] [-SendKeyHoldKeyboardFocus] [-SendKeyUseShiftEnter] [-ServicePort <Int32>] [-SessionOnly] [-SetForeground] [-ShowWindow] [-SideBySide] [-SkipSession] [-TimeZone <String>] [-VolumeName <String>] [-Width <Int32>] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-PeerName` | String | ✅ | — | 0 | — | Namnet på den peer som ska tas bort |
| `-ContainerName` | String | — | — | Named | `'wireguard'` | Namnet för Docker-behållaren |
| `-VolumeName` | String | — | — | Named | `'wireguard_data'` | Namnet för Docker-volymen för beständig lagring |
| `-ServicePort` | Int32 | — | — | Named | `51839` | Portnumret för WireGuard-tjänsten |
| `-HealthCheckTimeout` | Int32 | — | — | Named | `60` | Maximal tid i sekunder att vänta på tjänstens hälsokontroll |
| `-HealthCheckInterval` | Int32 | — | — | Named | `3` | Intervall i sekunder mellan hälsoökningsförsök |
| `-ImageName` | String | — | — | Named | `'linuxserver/wireguard'` | Anpassat Docker-avbildningsnamn att använda |
| `-PUID` | String | — | — | Named | `'1000'` | Användar-ID för behörigheter i containern |
| `-PGID` | String | — | — | Named | `'1000'` | Grupp-ID för behörigheter i containern |
| `-TimeZone` | String | — | — | Named | `'Etc/UTC'` | Tidszon att använda för containern |
| `-Force` | SwitchParameter | — | — | Named | — | Tvinga borttagning utan bekräftelse |
| `-NoDockerInitialize` | SwitchParameter | — | — | Named | — | Hoppa över Docker-initiering när den anropas av överordnad funktion |
| `-ShowWindow` | SwitchParameter | — | — | Named | — | Visa Docker Desktop-fönstret under initiering |
| `-NoBorders` | SwitchParameter | — | — | Named | — | Tar bort fönstrets ramar |
| `-Width` | Int32 | — | — | Named | `-1` | Fönstrets initiala bredd |
| `-Height` | Int32 | — | — | Named | `-1` | Fönstrets initialhöjd |
| `-Left` | SwitchParameter | — | — | Named | — | Placera fönstret på vänstra sidan av skärmen |
| `-Right` | SwitchParameter | — | — | Named | — | Placera fönstret på höger sida av skärmen |
| `-Bottom` | SwitchParameter | — | — | Named | — | Placera fönstret på skärmens nedre sida |
| `-Centered` | SwitchParameter | — | — | Named | — | Placera fönstret i mitten av skärmen |
| `-Fullscreen` | SwitchParameter | — | — | Named | — | Maximera fönstret |
| `-RestoreFocus` | SwitchParameter | — | — | Named | — | Återställ fönsterfokus för PowerShell |
| `-SideBySide` | SwitchParameter | — | — | Named | — | Kommer antingen att ställa in en app i helskärm på en annan bildskärm än Powershell, eller sida vid sida med Powershell på samma bildskärm |
| `-FocusWindow` | SwitchParameter | — | — | Named | — | Fokusera fönstret efter öppning |
| `-SetForeground` | SwitchParameter | — | — | Named | — | Öppna fönstret i förgrunden |
| `-SendKeyEscape` | SwitchParameter | — | — | Named | — | Undvik kontrolltecken och modifierare när du skickar tangenter |
| `-SendKeyHoldKeyboardFocus` | SwitchParameter | — | — | Named | — | Behåll tangentbordsfokus på målrutan när du skickar tangenter |
| `-SendKeyUseShiftEnter` | SwitchParameter | — | — | Named | — | Använd Skift+Retur istället för Retur när du skickar tangenter |
| `-SendKeyDelayMilliSeconds` | Int32 | — | — | Named | — | Fördröjning mellan olika indatasträngar i millisekunder vid sändning av tangenttryckningar |
| `-SessionOnly` | SwitchParameter | — | — | Named | — | Använd alternativa inställningar som lagras i sessionen för AI-preferenser |
| `-ClearSession` | SwitchParameter | — | — | Named | — | Rensa alternativa inställningar som lagrats i sessionen för AI-preferenser |
| `-SkipSession` | SwitchParameter | — | — | Named | — | Lagra inställningar endast i beständiga inställningar utan att påverka sessionen |

## Examples

### Remove-WireGuardPeer -PeerName "MyPhone"

```powershell
Remove-WireGuardPeer -PeerName "MyPhone"
```

Tar bort peeren med namnet "MyPhone" efter bekräftelse.

### Remove-WireGuardPeer -PeerName "Tablet" -Force

```powershell
Remove-WireGuardPeer -PeerName "Tablet" -Force
```

Tar bort den namngivna peeren "Tablet" utan bekräftelse.

### Remove-WireGuardPeer "WorkLaptop"

```powershell
Remove-WireGuardPeer "WorkLaptop"
```

Tar bort peern med positionsparameterns syntax.

## Parameter Details

### `-PeerName <String>`

> Namnet på den peer som ska tas bort

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

> Namnet för Docker-behållaren

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

> Namnet för Docker-volymen för beständig lagring

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

> Portnumret för WireGuard-tjänsten

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

> Maximal tid i sekunder att vänta på tjänstens hälsokontroll

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

> Intervall i sekunder mellan hälsoökningsförsök

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

> Anpassat Docker-avbildningsnamn att använda

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

> Användar-ID för behörigheter i containern

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

> Grupp-ID för behörigheter i containern

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

> Tidszon att använda för containern

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

> Tvinga borttagning utan bekräftelse

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

> Hoppa över Docker-initiering när den anropas av överordnad funktion

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

> Visa Docker Desktop-fönstret under initiering

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

> Tar bort fönstrets ramar

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

> Fönstrets initiala bredd

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

> Fönstrets initialhöjd

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

> Placera fönstret på vänstra sidan av skärmen

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

> Placera fönstret på höger sida av skärmen

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

> Placera fönstret på skärmens nedre sida

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

> Placera fönstret i mitten av skärmen

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

> Maximera fönstret

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

> Återställ fönsterfokus för PowerShell

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

> Kommer antingen att ställa in en app i helskärm på en annan bildskärm än Powershell, eller sida vid sida med Powershell på samma bildskärm

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

> Fokusera fönstret efter öppning

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

> Öppna fönstret i förgrunden

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

> Undvik kontrolltecken och modifierare när du skickar tangenter

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

> Behåll tangentbordsfokus på målrutan när du skickar tangenter

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

> Använd Skift+Retur istället för Retur när du skickar tangenter

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

> Fördröjning mellan olika indatasträngar i millisekunder vid sändning av tangenttryckningar

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

> Använd alternativa inställningar som lagras i sessionen för AI-preferenser

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

> Rensa alternativa inställningar som lagrats i sessionen för AI-preferenser

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

> Lagra inställningar endast i beständiga inställningar utan att påverka sessionen

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
- [Get-WireGuardStatus](https://github.com/genXdev/genXdev/blob/main/Docs/sv-SE/Get-WireGuardStatus.md)
- [Reset-WireGuardConfiguration](https://github.com/genXdev/genXdev/blob/main/Docs/sv-SE/Reset-WireGuardConfiguration.md)

# Add-WireGuardPeer

> **Module:** GenXdev.Windows.WireGuard | **Type:** Function | **Aliases:** —

## Synopsis

> Lägger till en ny WireGuard VPN-peerkonfiguration (klient) till servern.

## Description

Denna funktion lägger till en ny peer till WireGuard VPN-servern som körs i en Docker-container. Den genererar en ny klientkonfiguration med en unik IP-adress, skapar nödvändiga kryptografiska nycklar och returnerar konfigurationsdetaljerna. Funktionen kan eventuellt spara konfigurationen till en fil eller generera en QR-kod för enkel installation på mobila enheter. Funktionen validerar peernamn, kontrollerar dubbletter och hanterar olika feltillstånd på ett smidigt sätt.

## Syntax

```powershell
Add-WireGuardPeer -PeerName <String> [[-AllowedIPs] <String>] [[-DNS] <String>] [[-OutputPath] <String>] [[-ContainerName] <String>] [[-VolumeName] <String>] [[-ServicePort] <Int32>] [[-HealthCheckTimeout] <Int32>] [[-HealthCheckInterval] <Int32>] [[-ImageName] <String>] [[-PUID] <String>] [[-PGID] <String>] [[-TimeZone] <String>] [-Bottom <Int32>] [-Centered] [-ClearSession] [-FocusWindow] [-Force] [-Fullscreen] [-Height <Int32>] [-Left <Int32>] [-NoBorders] [-NoDockerInitialize] [-RestoreFocus] [-Right <Int32>] [-SaveConfig] [-SendKeyDelayMilliSeconds <Int32>] [-SendKeyEscape] [-SendKeyHoldKeyboardFocus] [-SendKeyUseShiftEnter] [-SessionOnly] [-SetForeground] [-ShowQRCode] [-ShowWindow] [-SideBySide] [-SkipSession] [-Width <Int32>] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-PeerName` | String | ✅ | — | 0 | — | Ett unikt namn för peern |
| `-AllowedIPs` | String | — | — | 1 | `'0.0.0.0/0, ::/0'` | IP-intervall som kommer att dirigeras via VPN |
| `-DNS` | String | — | — | 2 | `'1.1.1.1, 1.0.0.1'` | DNS-servrar att använda för denna peer |
| `-OutputPath` | String | — | — | 3 | `"$env:USERPROFILE\WireGuardConfigs"` | Sökvägen där peer-konfigurationsfilen ska sparas |
| `-ContainerName` | String | — | — | 4 | `'wireguard'` | Namnet för Docker-behållaren |
| `-VolumeName` | String | — | — | 5 | `'wireguard_data'` | Namnet för Docker-volymen för beständig lagring |
| `-ServicePort` | Int32 | — | — | 6 | `51839` | Portnumret för WireGuard-tjänsten |
| `-HealthCheckTimeout` | Int32 | — | — | 7 | `60` | Maximal tid i sekunder att vänta på tjänstens hälsokontroll |
| `-HealthCheckInterval` | Int32 | — | — | 8 | `3` | Intervall i sekunder mellan hälsoökningsförsök |
| `-ImageName` | String | — | — | 9 | `'linuxserver/wireguard'` | Anpassat Docker-avbildningsnamn att använda |
| `-PUID` | String | — | — | 10 | `'1000'` | Användar-ID för behörigheter i containern |
| `-PGID` | String | — | — | 11 | `'1000'` | Grupp-ID för behörigheter i containern |
| `-TimeZone` | String | — | — | 12 | `'Etc/UTC'` | Tidszon att använda för containern |
| `-SaveConfig` | SwitchParameter | — | — | Named | — | Spara peer-konfigurationen till en fil |
| `-ShowWindow` | SwitchParameter | — | — | Named | — | Visa WireGuard-fönstret när tjänsten initieras |
| `-NoBorders` | SwitchParameter | — | — | Named | — | Ta bort fönsterramar när tjänsten initieras |
| `-Width` | Int32 | — | — | Named | `-1` | Ange fönsterbredden när tjänsten initieras |
| `-Height` | Int32 | — | — | Named | `-1` | Ange fönsterhöjden när tjänsten initieras |
| `-Left` | Int32 | — | — | Named | — | Ställ in fönstrets vänstra position vid initiering av tjänsten |
| `-Right` | Int32 | — | — | Named | — | Ställ in fönstrets rätta position när tjänsten initieras |
| `-Bottom` | Int32 | — | — | Named | — | Ange fönstrets bottenposition när tjänsten initieras |
| `-Centered` | SwitchParameter | — | — | Named | — | Centrera fönstret när tjänsten initieras |
| `-Fullscreen` | SwitchParameter | — | — | Named | — | Starta tjänsten i fullskärmsläge |
| `-RestoreFocus` | SwitchParameter | — | — | Named | — | Återställ fokus till fönstret efter att ha initierat tjänsten |
| `-SideBySide` | SwitchParameter | — | — | Named | — | Visa fönstret sida vid sida när tjänsten initieras. |
| `-FocusWindow` | SwitchParameter | — | — | Named | — | Fokusera fönstret efter att ha initierat tjänsten |
| `-SetForeground` | SwitchParameter | — | — | Named | — | Ställ fönstret i förgrunden efter initiering av tjänsten |
| `-SendKeyEscape` | SwitchParameter | — | — | Named | — | Skicka Escape-tangenten till fönstret efter att ha initierat tjänsten |
| `-SendKeyHoldKeyboardFocus` | SwitchParameter | — | — | Named | — | Behåll tangentbordsfokus när du skickar tangenter efter att tjänsten initierats |
| `-SendKeyUseShiftEnter` | SwitchParameter | — | — | Named | — | Använd Shift+Enter när du skickar tangenter efter att ha initierat tjänsten. |
| `-SendKeyDelayMilliSeconds` | Int32 | — | — | Named | — | Fördröjning i millisekunder vid sändning av tangenter efter att tjänsten har initierats |
| `-SessionOnly` | SwitchParameter | — | — | Named | — | Använd session endast för WireGuard-tjänsten |
| `-ClearSession` | SwitchParameter | — | — | Named | — | Rensa sessionen när tjänsten initieras |
| `-SkipSession` | SwitchParameter | — | — | Named | — | Hoppa över sessionen när tjänsten initieras |
| `-ShowQRCode` | SwitchParameter | — | — | Named | — | Generera QR-kod för enkel mobilinstallation |
| `-NoDockerInitialize` | SwitchParameter | — | — | Named | — | Hoppa över Docker-initiering (används när den redan anropats av överordnad funktion) |
| `-Force` | SwitchParameter | — | — | Named | — | Tvinga återuppbyggnad av Docker-container och ta bort befintliga data |

## Examples

### Add-WireGuardPeer -PeerName "MyPhone" -AllowedIPs "0.0.0.0/0, ::/0" `     -DNS "1.1.1.1, 1.0.0.1" -SaveConfig -OutputPath `     "$env:USERPROFILE\WireGuardConfigs" -ShowQRCode -ContainerName "wireguard" `     -VolumeName "wireguard_data" -ServicePort 51839 -HealthCheckTimeout 60 `     -HealthCheckInterval 3 -ImageName "linuxserver/wireguard" -PUID "1000" `     -PGID "1000" -TimeZone "Etc/UTC"

```powershell
Add-WireGuardPeer -PeerName "MyPhone" -AllowedIPs "0.0.0.0/0, ::/0" `
    -DNS "1.1.1.1, 1.0.0.1" -SaveConfig -OutputPath `
    "$env:USERPROFILE\WireGuardConfigs" -ShowQRCode -ContainerName "wireguard" `
    -VolumeName "wireguard_data" -ServicePort 51839 -HealthCheckTimeout 60 `
    -HealthCheckInterval 3 -ImageName "linuxserver/wireguard" -PUID "1000" `
    -PGID "1000" -TimeZone "Etc/UTC"
```

### Add-WireGuardPeer "MyTablet" -ShowQRCode

```powershell
Add-WireGuardPeer "MyTablet" -ShowQRCode
```

## Parameter Details

### `-PeerName <String>`

> Ett unikt namn för peern

| Property | Value |
|:---|:---|
| **Required?** | Yes |
| **Position?** | 0 |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-AllowedIPs <String>`

> IP-intervall som kommer att dirigeras via VPN

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | 1 |
| **Default value** | `'0.0.0.0/0, ::/0'` |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-DNS <String>`

> DNS-servrar att använda för denna peer

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | 2 |
| **Default value** | `'1.1.1.1, 1.0.0.1'` |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-OutputPath <String>`

> Sökvägen där peer-konfigurationsfilen ska sparas

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | 3 |
| **Default value** | `"$env:USERPROFILE\WireGuardConfigs"` |
| **Accept pipeline input?** | False |
| **Aliases** | `outfile`, `OutputFile` |
| **Accept wildcard characters?** | No |

<hr/>
### `-ContainerName <String>`

> Namnet för Docker-behållaren

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | 4 |
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
| **Position?** | 5 |
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
| **Position?** | 6 |
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
| **Position?** | 7 |
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
| **Position?** | 8 |
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
| **Position?** | 9 |
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
| **Position?** | 10 |
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
| **Position?** | 11 |
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
| **Position?** | 12 |
| **Default value** | `'Etc/UTC'` |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-SaveConfig`

> Spara peer-konfigurationen till en fil

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

> Visa WireGuard-fönstret när tjänsten initieras

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

> Ta bort fönsterramar när tjänsten initieras

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

> Ange fönsterbredden när tjänsten initieras

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

> Ange fönsterhöjden när tjänsten initieras

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | `-1` |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-Left <Int32>`

> Ställ in fönstrets vänstra position vid initiering av tjänsten

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-Right <Int32>`

> Ställ in fönstrets rätta position när tjänsten initieras

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-Bottom <Int32>`

> Ange fönstrets bottenposition när tjänsten initieras

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

> Centrera fönstret när tjänsten initieras

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

> Starta tjänsten i fullskärmsläge

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

> Återställ fokus till fönstret efter att ha initierat tjänsten

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

> Visa fönstret sida vid sida när tjänsten initieras.

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

> Fokusera fönstret efter att ha initierat tjänsten

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

> Ställ fönstret i förgrunden efter initiering av tjänsten

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

> Skicka Escape-tangenten till fönstret efter att ha initierat tjänsten

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

> Behåll tangentbordsfokus när du skickar tangenter efter att tjänsten initierats

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

> Använd Shift+Enter när du skickar tangenter efter att ha initierat tjänsten.

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

> Fördröjning i millisekunder vid sändning av tangenter efter att tjänsten har initierats

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

> Använd session endast för WireGuard-tjänsten

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

> Rensa sessionen när tjänsten initieras

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

> Hoppa över sessionen när tjänsten initieras

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | `FromPreferences` |
| **Accept wildcard characters?** | No |

<hr/>
### `-ShowQRCode`

> Generera QR-kod för enkel mobilinstallation

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
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
## Related Links

- [EnsureWireGuard](https://github.com/genXdev/genXdev/blob/main/Docs/sv-SE/EnsureWireGuard.md)
- [Get-WireGuardPeerQRCode](https://github.com/genXdev/genXdev/blob/main/Docs/sv-SE/Get-WireGuardPeerQRCode.md)
- [Get-WireGuardPeers](https://github.com/genXdev/genXdev/blob/main/Docs/sv-SE/Get-WireGuardPeers.md)
- [Get-WireGuardStatus](https://github.com/genXdev/genXdev/blob/main/Docs/sv-SE/Get-WireGuardStatus.md)
- [Remove-WireGuardPeer](https://github.com/genXdev/genXdev/blob/main/Docs/sv-SE/Remove-WireGuardPeer.md)
- [Reset-WireGuardConfiguration](https://github.com/genXdev/genXdev/blob/main/Docs/sv-SE/Reset-WireGuardConfiguration.md)

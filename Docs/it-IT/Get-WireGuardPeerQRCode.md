# Get-WireGuardPeerQRCode

> **Module:** GenXdev.Windows.WireGuard | **Type:** Function | **Aliases:** —

## Synopsis

> Genera un codice QR per la configurazione di un peer VPN WireGuard.

## Description

Questa funzione genera un codice QR per la configurazione di un peer WireGuard VPN che può essere scansionato dai dispositivi mobili per una configurazione facile. Il codice QR viene visualizzato nella console e può essere utilizzato per configurare rapidamente i client WireGuard su smartphone e tablet. La funzione interagisce con il contenitore Docker linuxserver/wireguard per generare codici QR per le configurazioni dei peer.

## Syntax

```powershell
Get-WireGuardPeerQRCode -PeerName <String> [-ContainerName <String>] [-Force] [-HealthCheckInterval <Int32>] [-HealthCheckTimeout <Int32>] [-ImageName <String>] [-NoDockerInitialize] [-PGID <String>] [-PUID <String>] [-ServicePort <Int32>] [-TimeZone <String>] [-VolumeName <String>] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-PeerName` | String | ✅ | — | 0 | — | Il nome del peer per cui generare un codice QR |
| `-NoDockerInitialize` | SwitchParameter | — | — | Named | — | Ignora l'inizializzazione di Docker (utilizzata quando già chiamata dalla funzione genitore) |
| `-Force` | SwitchParameter | — | — | Named | — | Forza la ricostruzione del container Docker e rimuovi i dati esistenti |
| `-ContainerName` | String | — | — | Named | `'wireguard'` | Il nome del contenitore Docker |
| `-VolumeName` | String | — | — | Named | `'wireguard_data'` | Il nome del volume Docker per l'archiviazione persistente |
| `-ServicePort` | Int32 | — | — | Named | `51839` | Il numero di porta per il servizio WireGuard |
| `-HealthCheckTimeout` | Int32 | — | — | Named | `60` | Tempo massimo in secondi per attendere il controllo di integrità del servizio |
| `-HealthCheckInterval` | Int32 | — | — | Named | `3` | Intervallo in secondi tra i tentativi di controllo dello stato |
| `-ImageName` | String | — | — | Named | `'linuxserver/wireguard'` | Nome personalizzato dell'immagine Docker da utilizzare |
| `-PUID` | String | — | — | Named | `'1000'` | ID utente per le autorizzazioni nel contenitore |
| `-PGID` | String | — | — | Named | `'1000'` | ID del gruppo per le autorizzazioni nel contenitore |
| `-TimeZone` | String | — | — | Named | `'Etc/UTC'` | Fuso orario da utilizzare per il contenitore |

## Examples

### Get-WireGuardPeerQRCode -PeerName "MyPhone"

```powershell
Get-WireGuardPeerQRCode -PeerName "MyPhone"
```

### Get-WireGuardPeerQRCode -PeerName "Tablet" -NoDockerInitialize

```powershell
Get-WireGuardPeerQRCode -PeerName "Tablet" -NoDockerInitialize
```

## Parameter Details

### `-PeerName <String>`

> Il nome del peer per cui generare un codice QR

| Property | Value |
|:---|:---|
| **Required?** | Yes |
| **Position?** | 0 |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-NoDockerInitialize`

> Ignora l'inizializzazione di Docker (utilizzata quando già chiamata dalla funzione genitore)

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

> Forza la ricostruzione del container Docker e rimuovi i dati esistenti

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

> Il nome del contenitore Docker

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

> Il nome del volume Docker per l'archiviazione persistente

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

> Il numero di porta per il servizio WireGuard

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

> Tempo massimo in secondi per attendere il controllo di integrità del servizio

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

> Intervallo in secondi tra i tentativi di controllo dello stato

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

> Nome personalizzato dell'immagine Docker da utilizzare

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

> ID utente per le autorizzazioni nel contenitore

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

> ID del gruppo per le autorizzazioni nel contenitore

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

> Fuso orario da utilizzare per il contenitore

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | `'Etc/UTC'` |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
## Related Links

- [Add-WireGuardPeer](https://github.com/genXdev/genXdev/blob/main/Docs/it-IT/Add-WireGuardPeer.md)
- [EnsureWireGuard](https://github.com/genXdev/genXdev/blob/main/Docs/it-IT/EnsureWireGuard.md)
- [Get-WireGuardPeers](https://github.com/genXdev/genXdev/blob/main/Docs/it-IT/Get-WireGuardPeers.md)
- [Get-WireGuardStatus](https://github.com/genXdev/genXdev/blob/main/Docs/it-IT/Get-WireGuardStatus.md)
- [Remove-WireGuardPeer](https://github.com/genXdev/genXdev/blob/main/Docs/it-IT/Remove-WireGuardPeer.md)
- [Reset-WireGuardConfiguration](https://github.com/genXdev/genXdev/blob/main/Docs/it-IT/Reset-WireGuardConfiguration.md)

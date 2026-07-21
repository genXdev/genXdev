# EnsureWireGuard

> **Module:** GenXdev.Windows.WireGuard | **Type:** Function | **Aliases:** —

## Synopsis

> Garantisce che il servizio VPN WireGuard sia installato e in esecuzione tramite container Docker.

## Description

Questa funzione configura e gestisce il servizio VPN WireGuard utilizzando Docker Desktop. Assicura automaticamente che Docker Desktop sia in esecuzione, scarica l'ultima immagine Docker di WireGuard, crea volumi di archiviazione persistenti e gestisce il ciclo di vita del contenitore, inclusi il monitoraggio dello stato e la possibilità di riavvio.

WireGuard è una VPN semplice, veloce e moderna che utilizza crittografia all'avanguardia. Offre prestazioni e semplicità superiori rispetto alle soluzioni VPN tradizionali come OpenVPN, con un sovraccarico di configurazione minimo e un eccellente supporto multipiattaforma.

## Syntax

```powershell
EnsureWireGuard [[-ContainerName] <String>] [[-VolumeName] <String>] [[-ServicePort] <Int32>] [[-HealthCheckTimeout] <Int32>] [[-HealthCheckInterval] <Int32>] [[-ImageName] <String>] [[-PUID] <String>] [[-PGID] <String>] [[-TimeZone] <String>] [-Bottom] [-Centered] [-ClearSession] [-FocusWindow] [-Force] [-Fullscreen] [-Height <Int32>] [-Left] [-NoBorders] [-RestoreFocus] [-Right] [-SendKeyDelayMilliSeconds <Int32>] [-SendKeyEscape] [-SendKeyHoldKeyboardFocus] [-SendKeyUseShiftEnter] [-SessionOnly] [-SetForeground] [-ShowWindow] [-SideBySide] [-SkipSession] [-Width <Int32>] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-ContainerName` | String | — | — | 0 | `'wireguard'` | Il nome del contenitore Docker |
| `-VolumeName` | String | — | — | 1 | `'wireguard_data'` | Il nome del volume Docker per l'archiviazione persistente |
| `-ServicePort` | Int32 | — | — | 2 | `51839` | Il numero di porta per il servizio WireGuard |
| `-HealthCheckTimeout` | Int32 | — | — | 3 | `60` | Tempo massimo in secondi per attendere il controllo di integrità del servizio |
| `-HealthCheckInterval` | Int32 | — | — | 4 | `3` | Intervallo in secondi tra i tentativi di controllo dello stato |
| `-ImageName` | String | — | — | 5 | `'linuxserver/wireguard'` | Nome personalizzato dell'immagine Docker da utilizzare |
| `-PUID` | String | — | — | 6 | `'1000'` | ID utente per le autorizzazioni nel contenitore |
| `-PGID` | String | — | — | 7 | `'1000'` | ID del gruppo per le autorizzazioni nel contenitore |
| `-TimeZone` | String | — | — | 8 | `'Etc/UTC'` | Fuso orario da utilizzare per il contenitore |
| `-ShowWindow` | SwitchParameter | — | — | Named | — | Mostra la finestra di Docker Desktop durante l'inizializzazione |
| `-NoBorders` | SwitchParameter | — | — | Named | — | Rimuove i bordi della finestra |
| `-Width` | Int32 | — | — | Named | `-1` | La larghezza iniziale della finestra |
| `-Height` | Int32 | — | — | Named | `-1` | L'altezza iniziale della finestra |
| `-Left` | SwitchParameter | — | — | Named | — | Posiziona la finestra sul lato sinistro dello schermo |
| `-Right` | SwitchParameter | — | — | Named | — | Posiziona la finestra sul lato destro dello schermo |
| `-Bottom` | SwitchParameter | — | — | Named | — | Posiziona la finestra sul lato inferiore dello schermo |
| `-Centered` | SwitchParameter | — | — | Named | — | Posiziona la finestra al centro dello schermo |
| `-Fullscreen` | SwitchParameter | — | — | Named | — | Massimizza la finestra |
| `-RestoreFocus` | SwitchParameter | — | — | Named | — | Ripristina il focus della finestra di PowerShell |
| `-SideBySide` | SwitchParameter | — | — | Named | — | Imposterà la finestra a schermo intero su un monitor diverso da Powershell, oppure affiancata a Powershell sullo stesso monitor. |
| `-FocusWindow` | SwitchParameter | — | — | Named | — | Messa a fuoco della finestra dopo l'apertura |
| `-SetForeground` | SwitchParameter | — | — | Named | — | Porta la finestra in primo piano dopo l'apertura |
| `-SendKeyEscape` | SwitchParameter | — | — | Named | — | Escape dei caratteri di controllo e modificatori quando si inviano i tasti |
| `-SendKeyHoldKeyboardFocus` | SwitchParameter | — | — | Named | — | Mantenere il focus della tastiera sulla finestra di destinazione quando si inviano tasti |
| `-SendKeyUseShiftEnter` | SwitchParameter | — | — | Named | — | Usa Shift+Invio invece di Invio quando invii i tasti |
| `-SendKeyDelayMilliSeconds` | Int32 | — | — | Named | — | Ritardo tra le diverse stringhe di input in millisecondi quando si inviano i tasti |
| `-SessionOnly` | SwitchParameter | — | — | Named | — | Utilizza impostazioni alternative memorizzate nella sessione per le preferenze AI |
| `-ClearSession` | SwitchParameter | — | — | Named | — | Cancella le impostazioni alternative memorizzate nella sessione per le preferenze AI |
| `-SkipSession` | SwitchParameter | — | — | Named | — | Salva le impostazioni solo nelle preferenze persistenti senza influenzare la sessione |
| `-Force` | SwitchParameter | — | — | Named | — | Forza la ricostruzione del container Docker e rimuovi i dati esistenti |

## Examples

### EnsureWireGuard

```powershell
EnsureWireGuard
```

### EnsureWireGuard -ContainerName "my_wireguard" -ServicePort 51821

```powershell
EnsureWireGuard -ContainerName "my_wireguard" -ServicePort 51821
```

### EnsureWireGuard -VolumeName "custom_vpn_data" -HealthCheckTimeout 120

```powershell
EnsureWireGuard -VolumeName "custom_vpn_data" -HealthCheckTimeout 120
```

### EnsureWireGuard -PUID 1001 -PGID 1001 -TimeZone "America/New_York"

```powershell
EnsureWireGuard -PUID 1001 -PGID 1001 -TimeZone "America/New_York"
```

### EnsureWireGuard -Force

```powershell
EnsureWireGuard -Force
```

## Parameter Details

### `-ContainerName <String>`

> Il nome del contenitore Docker

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

> Il nome del volume Docker per l'archiviazione persistente

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

> Il numero di porta per il servizio WireGuard

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

> Tempo massimo in secondi per attendere il controllo di integrità del servizio

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

> Intervallo in secondi tra i tentativi di controllo dello stato

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

> Nome personalizzato dell'immagine Docker da utilizzare

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

> ID utente per le autorizzazioni nel contenitore

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

> ID del gruppo per le autorizzazioni nel contenitore

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

> Fuso orario da utilizzare per il contenitore

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

> Mostra la finestra di Docker Desktop durante l'inizializzazione

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

> Rimuove i bordi della finestra

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

> La larghezza iniziale della finestra

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

> L'altezza iniziale della finestra

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

> Posiziona la finestra sul lato sinistro dello schermo

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

> Posiziona la finestra sul lato destro dello schermo

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

> Posiziona la finestra sul lato inferiore dello schermo

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

> Posiziona la finestra al centro dello schermo

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

> Massimizza la finestra

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

> Ripristina il focus della finestra di PowerShell

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

> Imposterà la finestra a schermo intero su un monitor diverso da Powershell, oppure affiancata a Powershell sullo stesso monitor.

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

> Messa a fuoco della finestra dopo l'apertura

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

> Porta la finestra in primo piano dopo l'apertura

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

> Escape dei caratteri di controllo e modificatori quando si inviano i tasti

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

> Mantenere il focus della tastiera sulla finestra di destinazione quando si inviano tasti

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

> Usa Shift+Invio invece di Invio quando invii i tasti

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

> Ritardo tra le diverse stringhe di input in millisecondi quando si inviano i tasti

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

> Utilizza impostazioni alternative memorizzate nella sessione per le preferenze AI

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

> Cancella le impostazioni alternative memorizzate nella sessione per le preferenze AI

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

> Salva le impostazioni solo nelle preferenze persistenti senza influenzare la sessione

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | `FromPreferences` |
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
## Outputs

- `Boolean`

## Related Links

- [Add-WireGuardPeer](https://github.com/genXdev/genXdev/blob/main/Docs/it-IT/Add-WireGuardPeer.md)
- [Get-WireGuardPeerQRCode](https://github.com/genXdev/genXdev/blob/main/Docs/it-IT/Get-WireGuardPeerQRCode.md)
- [Get-WireGuardPeers](https://github.com/genXdev/genXdev/blob/main/Docs/it-IT/Get-WireGuardPeers.md)
- [Get-WireGuardStatus](https://github.com/genXdev/genXdev/blob/main/Docs/it-IT/Get-WireGuardStatus.md)
- [Remove-WireGuardPeer](https://github.com/genXdev/genXdev/blob/main/Docs/it-IT/Remove-WireGuardPeer.md)
- [Reset-WireGuardConfiguration](https://github.com/genXdev/genXdev/blob/main/Docs/it-IT/Reset-WireGuardConfiguration.md)

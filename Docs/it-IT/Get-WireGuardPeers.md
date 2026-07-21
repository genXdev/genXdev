# Get-WireGuardPeers

> **Module:** GenXdev.Windows.WireGuard | **Type:** Function | **Aliases:** —

## Synopsis

> Ottiene informazioni su tutti i peer VPN WireGuard configurati nel sistema.

## Description

Questa funzione recupera informazioni complete su tutti i peer VPN WireGuard configurati sul server in esecuzione in un contenitore Docker. Fornisce informazioni dettagliate inclusi nomi dei peer, chiavi pubbliche, indirizzi IP consentiti, endpoint di connessione, stato dell'handshake, statistiche di trasferimento dati e stato corrente della connessione. La funzione può operare in combinazione con funzioni genitore o gestire autonomamente l'inizializzazione del contenitore Docker.

## Syntax

```powershell
Get-WireGuardPeers [[-ContainerName] <String>] [[-VolumeName] <String>] [[-ServicePort] <Int32>] [[-HealthCheckTimeout] <Int32>] [[-HealthCheckInterval] <Int32>] [[-ImageName] <String>] [[-PUID] <String>] [[-PGID] <String>] [[-TimeZone] <String>] [[-Width] <Int32>] [[-Height] <Int32>] [[-Left] <Int32>] [[-Right] <Int32>] [[-Bottom] <Int32>] [[-SendKeyDelayMilliSeconds] <Int32>] [-Centered] [-ClearSession] [-FocusWindow] [-Force] [-Fullscreen] [-NoBorders] [-NoDockerInitialize] [-RestoreFocus] [-SendKeyEscape] [-SendKeyHoldKeyboardFocus] [-SendKeyUseShiftEnter] [-SessionOnly] [-SetForeground] [-ShowWindow] [-SideBySide] [-SkipSession] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-NoDockerInitialize` | SwitchParameter | — | — | Named | — | Ignora l'inizializzazione di Docker (utilizzata quando già chiamata dalla funzione genitore) |
| `-Force` | SwitchParameter | — | — | Named | — | Forza la ricostruzione del container Docker e rimuovi i dati esistenti |
| `-ContainerName` | String | — | — | 0 | `'wireguard'` | Il nome del contenitore Docker |
| `-VolumeName` | String | — | — | 1 | `'wireguard_data'` | Il nome del volume Docker per l'archiviazione persistente |
| `-ServicePort` | Int32 | — | — | 2 | `51839` | Il numero di porta per il servizio WireGuard |
| `-HealthCheckTimeout` | Int32 | — | — | 3 | `60` | Tempo massimo in secondi per attendere il controllo di integrità del servizio |
| `-HealthCheckInterval` | Int32 | — | — | 4 | `3` | Intervallo in secondi tra i tentativi di controllo dello stato |
| `-ImageName` | String | — | — | 5 | `'linuxserver/wireguard'` | Nome personalizzato dell'immagine Docker da utilizzare |
| `-PUID` | String | — | — | 6 | `'1000'` | ID utente per le autorizzazioni nel contenitore |
| `-PGID` | String | — | — | 7 | `'1000'` | ID del gruppo per le autorizzazioni nel contenitore |
| `-TimeZone` | String | — | — | 8 | `'Etc/UTC'` | Fuso orario da utilizzare per il contenitore |
| `-ShowWindow` | SwitchParameter | — | — | Named | — | Mostra la finestra di Docker quando si esegue WireGuard |
| `-NoBorders` | SwitchParameter | — | — | Named | — | Rimuovi i bordi della finestra per la finestra di Docker |
| `-Width` | Int32 | — | — | 9 | `-1` | Imposta la larghezza della finestra di Docker |
| `-Height` | Int32 | — | — | 10 | `-1` | Imposta l'altezza della finestra di Docker |
| `-Left` | Int32 | — | — | 11 | — | Imposta la posizione sinistra della finestra di Docker |
| `-Right` | Int32 | — | — | 12 | — | Imposta la posizione destra della finestra di Docker |
| `-Bottom` | Int32 | — | — | 13 | — | Imposta la posizione inferiore della finestra di Docker |
| `-Centered` | SwitchParameter | — | — | Named | — | Centrare la finestra di Docker sullo schermo |
| `-Fullscreen` | SwitchParameter | — | — | Named | — | Esegui la finestra Docker in modalità a schermo intero |
| `-RestoreFocus` | SwitchParameter | — | — | Named | — | Ripristina il focus sulla finestra precedente dopo l'esecuzione di Docker |
| `-SideBySide` | SwitchParameter | — | — | Named | — | Mostra la finestra di Docker affiancata ad altre finestre |
| `-FocusWindow` | SwitchParameter | — | — | Named | — | Metti a fuoco la finestra di Docker dopo l'avvio |
| `-SetForeground` | SwitchParameter | — | — | Named | — | Imposta la finestra di Docker come finestra in primo piano |
| `-SendKeyEscape` | SwitchParameter | — | — | Named | — | Invia il tasto Esc alla finestra di Docker dopo l'avvio |
| `-SendKeyHoldKeyboardFocus` | SwitchParameter | — | — | Named | — | Mantieni il focus della tastiera sulla finestra di Docker dopo l'avvio |
| `-SendKeyUseShiftEnter` | SwitchParameter | — | — | Named | — | Utilizza Shift+Invio durante l'invio dei tasti alla finestra di Docker |
| `-SendKeyDelayMilliSeconds` | Int32 | — | — | 14 | — | Ritardo in millisecondi tra l'invio dei tasti alla finestra di Docker |
| `-SessionOnly` | SwitchParameter | — | — | Named | — | Usa la sessione solo per la finestra Docker |
| `-ClearSession` | SwitchParameter | — | — | Named | — | Pulisci la sessione per la finestra di Docker prima di eseguire |
| `-SkipSession` | SwitchParameter | — | — | Named | — | Salta la sessione per la finestra di Docker |

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

> Mostra la finestra di Docker quando si esegue WireGuard

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

> Rimuovi i bordi della finestra per la finestra di Docker

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

> Imposta la larghezza della finestra di Docker

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

> Imposta l'altezza della finestra di Docker

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

> Imposta la posizione sinistra della finestra di Docker

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

> Imposta la posizione destra della finestra di Docker

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

> Imposta la posizione inferiore della finestra di Docker

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

> Centrare la finestra di Docker sullo schermo

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

> Esegui la finestra Docker in modalità a schermo intero

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

> Ripristina il focus sulla finestra precedente dopo l'esecuzione di Docker

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

> Mostra la finestra di Docker affiancata ad altre finestre

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

> Metti a fuoco la finestra di Docker dopo l'avvio

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

> Imposta la finestra di Docker come finestra in primo piano

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

> Invia il tasto Esc alla finestra di Docker dopo l'avvio

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

> Mantieni il focus della tastiera sulla finestra di Docker dopo l'avvio

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

> Utilizza Shift+Invio durante l'invio dei tasti alla finestra di Docker

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

> Ritardo in millisecondi tra l'invio dei tasti alla finestra di Docker

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

> Usa la sessione solo per la finestra Docker

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

> Pulisci la sessione per la finestra di Docker prima di eseguire

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

> Salta la sessione per la finestra di Docker

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

- [Add-WireGuardPeer](https://github.com/genXdev/genXdev/blob/main/Docs/it-IT/Add-WireGuardPeer.md)
- [EnsureWireGuard](https://github.com/genXdev/genXdev/blob/main/Docs/it-IT/EnsureWireGuard.md)
- [Get-WireGuardPeerQRCode](https://github.com/genXdev/genXdev/blob/main/Docs/it-IT/Get-WireGuardPeerQRCode.md)
- [Get-WireGuardStatus](https://github.com/genXdev/genXdev/blob/main/Docs/it-IT/Get-WireGuardStatus.md)
- [Remove-WireGuardPeer](https://github.com/genXdev/genXdev/blob/main/Docs/it-IT/Remove-WireGuardPeer.md)
- [Reset-WireGuardConfiguration](https://github.com/genXdev/genXdev/blob/main/Docs/it-IT/Reset-WireGuardConfiguration.md)

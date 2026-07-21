# Add-WireGuardPeer

> **Module:** GenXdev.Windows.WireGuard | **Type:** Function | **Aliases:** —

## Synopsis

> Aggiunge una nuova configurazione peer (client) WireGuard VPN al server.

## Description

Questa funzione aggiunge un nuovo peer al server VPN WireGuard in esecuzione in un contenitore Docker. Genera una nuova configurazione client con un indirizzo IP univoco, crea le chiavi crittografiche necessarie e restituisce i dettagli della configurazione. La funzione può opzionalmente salvare la configurazione in un file o generare un codice QR per una facile configurazione su dispositivi mobili. La funzione convalida i nomi dei peer, verifica la presenza di duplicati e gestisce varie condizioni di errore in modo elegante.

## Syntax

```powershell
Add-WireGuardPeer -PeerName <String> [[-AllowedIPs] <String>] [[-DNS] <String>] [[-OutputPath] <String>] [[-ContainerName] <String>] [[-VolumeName] <String>] [[-ServicePort] <Int32>] [[-HealthCheckTimeout] <Int32>] [[-HealthCheckInterval] <Int32>] [[-ImageName] <String>] [[-PUID] <String>] [[-PGID] <String>] [[-TimeZone] <String>] [-Bottom <Int32>] [-Centered] [-ClearSession] [-FocusWindow] [-Force] [-Fullscreen] [-Height <Int32>] [-Left <Int32>] [-NoBorders] [-NoDockerInitialize] [-RestoreFocus] [-Right <Int32>] [-SaveConfig] [-SendKeyDelayMilliSeconds <Int32>] [-SendKeyEscape] [-SendKeyHoldKeyboardFocus] [-SendKeyUseShiftEnter] [-SessionOnly] [-SetForeground] [-ShowQRCode] [-ShowWindow] [-SideBySide] [-SkipSession] [-Width <Int32>] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-PeerName` | String | ✅ | — | 0 | — | Un nome univoco per il peer |
| `-AllowedIPs` | String | — | — | 1 | `'0.0.0.0/0, ::/0'` | Gli intervalli IP che verranno instradati attraverso la VPN |
| `-DNS` | String | — | — | 2 | `'1.1.1.1, 1.0.0.1'` | Server DNS da utilizzare per questo peer |
| `-OutputPath` | String | — | — | 3 | `"$env:USERPROFILE\WireGuardConfigs"` | Il percorso in cui salvare il file di configurazione del peer |
| `-ContainerName` | String | — | — | 4 | `'wireguard'` | Il nome del contenitore Docker |
| `-VolumeName` | String | — | — | 5 | `'wireguard_data'` | Il nome del volume Docker per l'archiviazione persistente |
| `-ServicePort` | Int32 | — | — | 6 | `51839` | Il numero di porta per il servizio WireGuard |
| `-HealthCheckTimeout` | Int32 | — | — | 7 | `60` | Tempo massimo in secondi per attendere il controllo di integrità del servizio |
| `-HealthCheckInterval` | Int32 | — | — | 8 | `3` | Intervallo in secondi tra i tentativi di controllo dello stato |
| `-ImageName` | String | — | — | 9 | `'linuxserver/wireguard'` | Nome personalizzato dell'immagine Docker da utilizzare |
| `-PUID` | String | — | — | 10 | `'1000'` | ID utente per le autorizzazioni nel contenitore |
| `-PGID` | String | — | — | 11 | `'1000'` | ID del gruppo per le autorizzazioni nel contenitore |
| `-TimeZone` | String | — | — | 12 | `'Etc/UTC'` | Fuso orario da utilizzare per il contenitore |
| `-SaveConfig` | SwitchParameter | — | — | Named | — | Salvare la configurazione peer in un file |
| `-ShowWindow` | SwitchParameter | — | — | Named | — | Mostra la finestra di WireGuard quando si inizializza il servizio |
| `-NoBorders` | SwitchParameter | — | — | Named | — | Rimuovi i bordi della finestra durante l'inizializzazione del servizio |
| `-Width` | Int32 | — | — | Named | `-1` | Imposta la larghezza della finestra durante l'inizializzazione del servizio |
| `-Height` | Int32 | — | — | Named | `-1` | Imposta l'altezza della finestra durante l'inizializzazione del servizio |
| `-Left` | Int32 | — | — | Named | — | Imposta la posizione sinistra della finestra durante l'inizializzazione del servizio |
| `-Right` | Int32 | — | — | Named | — | Imposta la posizione corretta della finestra durante l'inizializzazione del servizio |
| `-Bottom` | Int32 | — | — | Named | — | Imposta la posizione inferiore della finestra durante l'inizializzazione del servizio |
| `-Centered` | SwitchParameter | — | — | Named | — | Centrare la finestra quando si inizializza il servizio |
| `-Fullscreen` | SwitchParameter | — | — | Named | — | Avvia il servizio in modalità schermo intero |
| `-RestoreFocus` | SwitchParameter | — | — | Named | — | Ripristina lo stato attivo della finestra dopo l'inizializzazione del servizio |
| `-SideBySide` | SwitchParameter | — | — | Named | — | Mostra la finestra affiancata durante l'inizializzazione del servizio |
| `-FocusWindow` | SwitchParameter | — | — | Named | — | Metti a fuoco la finestra dopo l'inizializzazione del servizio |
| `-SetForeground` | SwitchParameter | — | — | Named | — | Porta la finestra in primo piano dopo l'inizializzazione del servizio |
| `-SendKeyEscape` | SwitchParameter | — | — | Named | — | Invia il tasto Escape alla finestra dopo l'inizializzazione del servizio |
| `-SendKeyHoldKeyboardFocus` | SwitchParameter | — | — | Named | — | Mantenere il focus della tastiera durante l'invio dei tasti dopo l'inizializzazione del servizio |
| `-SendKeyUseShiftEnter` | SwitchParameter | — | — | Named | — | Utilizzare Maiusc+Invio quando si inviano tasti dopo aver inizializzato il servizio |
| `-SendKeyDelayMilliSeconds` | Int32 | — | — | Named | — | Ritardo in millisecondi durante l'invio dei tasti dopo l'inizializzazione del servizio |
| `-SessionOnly` | SwitchParameter | — | — | Named | — | Utilizza la sessione solo per il servizio WireGuard |
| `-ClearSession` | SwitchParameter | — | — | Named | — | Pulisci la sessione durante l'inizializzazione del servizio |
| `-SkipSession` | SwitchParameter | — | — | Named | — | Salta la sessione durante l'inizializzazione del servizio |
| `-ShowQRCode` | SwitchParameter | — | — | Named | — | Genera un codice QR per una configurazione mobile facile |
| `-NoDockerInitialize` | SwitchParameter | — | — | Named | — | Ignora l'inizializzazione di Docker (utilizzata quando già chiamata dalla funzione genitore) |
| `-Force` | SwitchParameter | — | — | Named | — | Forza la ricostruzione del container Docker e rimuovi i dati esistenti |

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

> Un nome univoco per il peer

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

> Gli intervalli IP che verranno instradati attraverso la VPN

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

> Server DNS da utilizzare per questo peer

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

> Il percorso in cui salvare il file di configurazione del peer

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

> Il nome del contenitore Docker

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

> Il nome del volume Docker per l'archiviazione persistente

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

> Il numero di porta per il servizio WireGuard

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

> Tempo massimo in secondi per attendere il controllo di integrità del servizio

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

> Intervallo in secondi tra i tentativi di controllo dello stato

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

> Nome personalizzato dell'immagine Docker da utilizzare

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

> ID utente per le autorizzazioni nel contenitore

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

> ID del gruppo per le autorizzazioni nel contenitore

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

> Fuso orario da utilizzare per il contenitore

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

> Salvare la configurazione peer in un file

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

> Mostra la finestra di WireGuard quando si inizializza il servizio

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

> Rimuovi i bordi della finestra durante l'inizializzazione del servizio

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

> Imposta la larghezza della finestra durante l'inizializzazione del servizio

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

> Imposta l'altezza della finestra durante l'inizializzazione del servizio

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

> Imposta la posizione sinistra della finestra durante l'inizializzazione del servizio

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

> Imposta la posizione corretta della finestra durante l'inizializzazione del servizio

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

> Imposta la posizione inferiore della finestra durante l'inizializzazione del servizio

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

> Centrare la finestra quando si inizializza il servizio

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

> Avvia il servizio in modalità schermo intero

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

> Ripristina lo stato attivo della finestra dopo l'inizializzazione del servizio

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

> Mostra la finestra affiancata durante l'inizializzazione del servizio

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

> Metti a fuoco la finestra dopo l'inizializzazione del servizio

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

> Porta la finestra in primo piano dopo l'inizializzazione del servizio

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

> Invia il tasto Escape alla finestra dopo l'inizializzazione del servizio

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

> Mantenere il focus della tastiera durante l'invio dei tasti dopo l'inizializzazione del servizio

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

> Utilizzare Maiusc+Invio quando si inviano tasti dopo aver inizializzato il servizio

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

> Ritardo in millisecondi durante l'invio dei tasti dopo l'inizializzazione del servizio

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

> Utilizza la sessione solo per il servizio WireGuard

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

> Pulisci la sessione durante l'inizializzazione del servizio

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

> Salta la sessione durante l'inizializzazione del servizio

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

> Genera un codice QR per una configurazione mobile facile

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
## Related Links

- [EnsureWireGuard](https://github.com/genXdev/genXdev/blob/main/Docs/it-IT/EnsureWireGuard.md)
- [Get-WireGuardPeerQRCode](https://github.com/genXdev/genXdev/blob/main/Docs/it-IT/Get-WireGuardPeerQRCode.md)
- [Get-WireGuardPeers](https://github.com/genXdev/genXdev/blob/main/Docs/it-IT/Get-WireGuardPeers.md)
- [Get-WireGuardStatus](https://github.com/genXdev/genXdev/blob/main/Docs/it-IT/Get-WireGuardStatus.md)
- [Remove-WireGuardPeer](https://github.com/genXdev/genXdev/blob/main/Docs/it-IT/Remove-WireGuardPeer.md)
- [Reset-WireGuardConfiguration](https://github.com/genXdev/genXdev/blob/main/Docs/it-IT/Reset-WireGuardConfiguration.md)

# Compare-ImageFaces

> **Module:** GenXdev.AI.DeepStack | **Type:** Function | **Aliases:** `comparefaces`

## Synopsis

> Confronta i volti in due diverse immagini e restituisce la loro somiglianza utilizzando DeepStack.

## Description

Questa funzione confronta i volti tra due immagini per determinare la somiglianza. Utilizza un'API locale di DeepStack per il riconoscimento facciale in esecuzione su una porta configurabile e restituisce un punteggio di somiglianza compreso tra 0.0 e 1.0. Viene tipicamente utilizzata per abbinare documenti di identità con foto di una persona o per verificare se due foto mostrano la stessa persona.

## Syntax

```powershell
Compare-ImageFaces -ImagePath1 <String> -ImagePath2 <String> [[-ContainerName] <String>] [[-VolumeName] <String>] [[-ServicePort] <Int32>] [[-HealthCheckTimeout] <Int32>] [[-HealthCheckInterval] <Int32>] [[-ImageName] <String>] [-Force] [-NoDockerInitialize] [-ShowWindow] [-UseGPU] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-ImagePath1` | String | ✅ | — | 0 | — | Il percorso locale del primo file immagine da confrontare |
| `-ImagePath2` | String | ✅ | — | 1 | — | Percorso locale del secondo file immagine da confrontare |
| `-ContainerName` | String | — | — | 2 | `'deepstack_face_recognition'` | Il nome del contenitore Docker |
| `-VolumeName` | String | — | — | 3 | `'deepstack_face_data'` | Il nome del volume Docker per l'archiviazione persistente |
| `-ServicePort` | Int32 | — | — | 4 | `5000` | Il numero di porta per il servizio DeepStack |
| `-HealthCheckTimeout` | Int32 | — | — | 5 | `60` | Tempo massimo in secondi per attendere il controllo di integrità del servizio |
| `-HealthCheckInterval` | Int32 | — | — | 6 | `3` | Intervallo in secondi tra i tentativi di controllo dello stato |
| `-ImageName` | String | — | — | 7 | — | Nome personalizzato dell'immagine Docker da utilizzare |
| `-NoDockerInitialize` | SwitchParameter | — | — | Named | — | Ignora l'inizializzazione di Docker (utilizzata quando già chiamata dalla funzione genitore) |
| `-Force` | SwitchParameter | — | — | Named | — | Forza la ricostruzione del container Docker e rimuovi i dati esistenti |
| `-UseGPU` | SwitchParameter | — | — | Named | — | Utilizza la versione accelerata via GPU (richiede una GPU NVIDIA) |
| `-ShowWindow` | SwitchParameter | — | — | Named | — | Mostra la finestra di Docker Desktop durante l'inizializzazione |

## Examples

### Compare-ImageFaces -ImagePath1 "C:\Users\YourName\photo1.jpg" `                    -ImagePath2 "C:\Users\YourName\photo2.jpg"

```powershell
Compare-ImageFaces -ImagePath1 "C:\Users\YourName\photo1.jpg" `
                   -ImagePath2 "C:\Users\YourName\photo2.jpg"
```

Confronta i volti tra due immagini utilizzando le impostazioni predefinite.

### comparefaces "C:\docs\id_photo.jpg" "C:\photos\person.jpg" -UseGPU

```powershell
comparefaces "C:\docs\id_photo.jpg" "C:\photos\person.jpg" -UseGPU
```

Confronta i volti utilizzando l'accelerazione GPU per la verifica dell'identità con alias e parametri posizionali.

## Parameter Details

### `-ImagePath1 <String>`

> Il percorso locale del primo file immagine da confrontare

| Property | Value |
|:---|:---|
| **Required?** | Yes |
| **Position?** | 0 |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-ImagePath2 <String>`

> Percorso locale del secondo file immagine da confrontare

| Property | Value |
|:---|:---|
| **Required?** | Yes |
| **Position?** | 1 |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-ContainerName <String>`

> Il nome del contenitore Docker

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | 2 |
| **Default value** | `'deepstack_face_recognition'` |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-VolumeName <String>`

> Il nome del volume Docker per l'archiviazione persistente

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | 3 |
| **Default value** | `'deepstack_face_data'` |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-ServicePort <Int32>`

> Il numero di porta per il servizio DeepStack

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | 4 |
| **Default value** | `5000` |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-HealthCheckTimeout <Int32>`

> Tempo massimo in secondi per attendere il controllo di integrità del servizio

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | 5 |
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
| **Position?** | 6 |
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
| **Position?** | 7 |
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
### `-UseGPU`

> Utilizza la versione accelerata via GPU (richiede una GPU NVIDIA)

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

> Mostra la finestra di Docker Desktop durante l'inizializzazione

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | `sw` |
| **Accept wildcard characters?** | No |

<hr/>
## Outputs

- `Collections.Hashtable`

## Related Links

- [Get-ImageDetectedFaces](https://github.com/genXdev/genXdev/blob/main/Docs/it-IT/Get-ImageDetectedFaces.md)
- [Get-ImageDetectedObjects](https://github.com/genXdev/genXdev/blob/main/Docs/it-IT/Get-ImageDetectedObjects.md)
- [Get-ImageDetectedScenes](https://github.com/genXdev/genXdev/blob/main/Docs/it-IT/Get-ImageDetectedScenes.md)
- [Get-RegisteredFaces](https://github.com/genXdev/genXdev/blob/main/Docs/it-IT/Get-RegisteredFaces.md)
- [Invoke-ImageEnhancement](https://github.com/genXdev/genXdev/blob/main/Docs/it-IT/Invoke-ImageEnhancement.md)
- [Register-AllFaces](https://github.com/genXdev/genXdev/blob/main/Docs/it-IT/Register-AllFaces.md)
- [Register-Face](https://github.com/genXdev/genXdev/blob/main/Docs/it-IT/Register-Face.md)
- [Unregister-AllFaces](https://github.com/genXdev/genXdev/blob/main/Docs/it-IT/Unregister-AllFaces.md)
- [Unregister-Face](https://github.com/genXdev/genXdev/blob/main/Docs/it-IT/Unregister-Face.md)

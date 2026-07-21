# Unregister-AllFaces

> **Module:** GenXdev.AI.DeepStack | **Type:** Function | **Aliases:** —

## Synopsis

> Rimuove tutti i volti registrati dal sistema di riconoscimento facciale DeepStack.

## Description

Questa funzione cancella tutte le facce registrate dal database di riconoscimento facciale di DeepStack rimuovendo tutti i file delle facce dalla directory del datastore e riavviando il servizio per ricaricare un registro facce vuoto. Questa è un'operazione distruttiva che non può essere annullata e rimuoverà in modo permanente tutti i dati delle facce registrate.

## Syntax

```powershell
Unregister-AllFaces [[-ContainerName] <String>] [[-VolumeName] <String>] [[-ServicePort] <Int32>] [[-HealthCheckTimeout] <Int32>] [[-HealthCheckInterval] <Int32>] [[-ImageName] <String>] [-Force] [-ForceRebuild] [-NoDockerInitialize] [-ShowWindow] [-UseGPU] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-Force` | SwitchParameter | — | — | Named | — | Ignora le richieste di conferma durante la rimozione di tutti i volti registrati |
| `-NoDockerInitialize` | SwitchParameter | — | — | Named | — | Salta l'inizializzazione di Docker Desktop (usata quando già richiamata dalla funzione genitrice) |
| `-ForceRebuild` | SwitchParameter | — | — | Named | — | Forza la ricostruzione del container Docker e rimuovi i dati esistenti |
| `-UseGPU` | SwitchParameter | — | — | Named | — | Utilizza la versione accelerata via GPU (richiede una GPU NVIDIA) |
| `-ContainerName` | String | — | — | 0 | `'deepstack_face_recognition'` | Il nome del contenitore Docker |
| `-VolumeName` | String | — | — | 1 | `'deepstack_face_data'` | Il nome del volume Docker per l'archiviazione persistente |
| `-ServicePort` | Int32 | — | — | 2 | `5000` | Il numero di porta per il servizio DeepStack |
| `-HealthCheckTimeout` | Int32 | — | — | 3 | `60` | Tempo massimo in secondi per attendere il controllo di integrità del servizio |
| `-HealthCheckInterval` | Int32 | — | — | 4 | `3` | Intervallo in secondi tra i tentativi di controllo dello stato |
| `-ImageName` | String | — | — | 5 | — | Nome personalizzato dell'immagine Docker da utilizzare |
| `-ShowWindow` | SwitchParameter | — | — | Named | — | Mostra la finestra di Docker Desktop durante l'inizializzazione |

## Examples

### Unregister-AllFaces

```powershell
Unregister-AllFaces
```

Rimuove tutte le facce registrate con richiesta di conferma.

### Unregister-AllFaces -Force

```powershell
Unregister-AllFaces -Force
```

Rimuove tutti i volti registrati senza richiesta di conferma.

### unregall -Force

```powershell
unregall -Force
```

Usa l'alias per rimuovere tutte le facce senza conferma.

## Parameter Details

### `-Force`

> Ignora le richieste di conferma durante la rimozione di tutti i volti registrati

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

> Salta l'inizializzazione di Docker Desktop (usata quando già richiamata dalla funzione genitrice)

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-ForceRebuild`

> Forza la ricostruzione del container Docker e rimuovi i dati esistenti

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
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
### `-ContainerName <String>`

> Il nome del contenitore Docker

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | 0 |
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
| **Position?** | 1 |
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
| **Position?** | 2 |
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
## Related Links

- [Compare-ImageFaces](https://github.com/genXdev/genXdev/blob/main/Docs/it-IT/Compare-ImageFaces.md)
- [Get-ImageDetectedFaces](https://github.com/genXdev/genXdev/blob/main/Docs/it-IT/Get-ImageDetectedFaces.md)
- [Get-ImageDetectedObjects](https://github.com/genXdev/genXdev/blob/main/Docs/it-IT/Get-ImageDetectedObjects.md)
- [Get-ImageDetectedScenes](https://github.com/genXdev/genXdev/blob/main/Docs/it-IT/Get-ImageDetectedScenes.md)
- [Get-RegisteredFaces](https://github.com/genXdev/genXdev/blob/main/Docs/it-IT/Get-RegisteredFaces.md)
- [Invoke-ImageEnhancement](https://github.com/genXdev/genXdev/blob/main/Docs/it-IT/Invoke-ImageEnhancement.md)
- [Register-AllFaces](https://github.com/genXdev/genXdev/blob/main/Docs/it-IT/Register-AllFaces.md)
- [Register-Face](https://github.com/genXdev/genXdev/blob/main/Docs/it-IT/Register-Face.md)
- [Unregister-Face](https://github.com/genXdev/genXdev/blob/main/Docs/it-IT/Unregister-Face.md)

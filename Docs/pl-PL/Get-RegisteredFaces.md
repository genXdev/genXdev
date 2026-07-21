# Get-RegisteredFaces

> **Module:** GenXdev.AI.DeepStack | **Type:** Function | **Aliases:** —

## Synopsis

> Pobiera listę wszystkich zarejestrowanych identyfikatorów twarzy z DeepStack.

## Description

Ta funkcja łączy się z lokalnym API rozpoznawania twarzy DeepStack i pobiera wszystkie zarejestrowane identyfikatory twarzy. Używa punktu końcowego /v1/vision/face/list do zapytania usługi DeepStack i zwraca tablicę ciągów identyfikatorów twarzy. Funkcja obsługuje inicjalizację kontenera Docker, komunikację API oraz obsługę błędów dla różnych scenariuszy awarii.

## Syntax

```powershell
Get-RegisteredFaces [[-ContainerName] <String>] [[-VolumeName] <String>] [[-ServicePort] <Int32>] [[-HealthCheckTimeout] <Int32>] [[-HealthCheckInterval] <Int32>] [[-ImageName] <String>] [-Force] [-NoDockerInitialize] [-ShowWindow] [-UseGPU] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-NoDockerInitialize` | SwitchParameter | — | — | Named | — | Pomiń inicjalizację Dockera (używane, gdy już wywołane przez funkcję nadrzędną) |
| `-Force` | SwitchParameter | — | — | Named | — | Wymuś przebudowę kontenera Docker i usuń istniejące dane |
| `-UseGPU` | SwitchParameter | — | — | Named | — | Użyj wersji przyspieszonej przez GPU (wymaga karty NVIDIA GPU) |
| `-ContainerName` | String | — | — | 0 | `'deepstack_face_recognition'` | Nazwa kontenera Docker |
| `-VolumeName` | String | — | — | 1 | `'deepstack_face_data'` | Nazwa wolumenu Dockera dla trwałego przechowywania |
| `-ServicePort` | Int32 | — | — | 2 | `5000` | Numer portu dla usługi DeepStack |
| `-HealthCheckTimeout` | Int32 | — | — | 3 | `60` | Maksymalny czas w sekundach oczekiwania na sprawdzenie stanu usługi |
| `-HealthCheckInterval` | Int32 | — | — | 4 | `3` | Interwał w sekundach między próbami sprawdzenia kondycji |
| `-ImageName` | String | — | — | 5 | — | Niestandardowa nazwa obrazu Docker do użycia |
| `-ShowWindow` | SwitchParameter | — | — | Named | — | Pokaż okno Docker Desktop podczas inicjalizacji |

## Examples

### Get-RegisteredFaces

```powershell
Get-RegisteredFaces
```

Ten przykład pobiera wszystkie zarejestrowane twarze przy użyciu domyślnych parametrów.

### Get-RegisteredFaces -Force -UseGPU

```powershell
Get-RegisteredFaces -Force -UseGPU
```

Ten przykład wymusza przebudowę kontenera i wykorzystuje akcelerację GPU.

### Get-RegisteredFaces -ContainerName "my_deepstack" -ServicePort 8080

```powershell
Get-RegisteredFaces -ContainerName "my_deepstack" -ServicePort 8080
```

Ten przykład używa niestandardowej nazwy kontenera i numeru portu.

### Get-RegisteredFaces | Where-Object { $_ -like "John*" }

```powershell
Get-RegisteredFaces |
Where-Object { $_ -like "John*" }
```

Ten przykład pobiera wszystkie twarze i filtruje te zaczynające się od „John”.

## Parameter Details

### `-NoDockerInitialize`

> Pomiń inicjalizację Dockera (używane, gdy już wywołane przez funkcję nadrzędną)

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

> Wymuś przebudowę kontenera Docker i usuń istniejące dane

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

> Użyj wersji przyspieszonej przez GPU (wymaga karty NVIDIA GPU)

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

> Nazwa kontenera Docker

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

> Nazwa wolumenu Dockera dla trwałego przechowywania

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

> Numer portu dla usługi DeepStack

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

> Maksymalny czas w sekundach oczekiwania na sprawdzenie stanu usługi

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

> Interwał w sekundach między próbami sprawdzenia kondycji

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

> Niestandardowa nazwa obrazu Docker do użycia

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

> Pokaż okno Docker Desktop podczas inicjalizacji

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

- [Compare-ImageFaces](https://github.com/genXdev/genXdev/blob/main/Docs/pl-PL/Compare-ImageFaces.md)
- [Get-ImageDetectedFaces](https://github.com/genXdev/genXdev/blob/main/Docs/pl-PL/Get-ImageDetectedFaces.md)
- [Get-ImageDetectedObjects](https://github.com/genXdev/genXdev/blob/main/Docs/pl-PL/Get-ImageDetectedObjects.md)
- [Get-ImageDetectedScenes](https://github.com/genXdev/genXdev/blob/main/Docs/pl-PL/Get-ImageDetectedScenes.md)
- [Invoke-ImageEnhancement](https://github.com/genXdev/genXdev/blob/main/Docs/pl-PL/Invoke-ImageEnhancement.md)
- [Register-AllFaces](https://github.com/genXdev/genXdev/blob/main/Docs/pl-PL/Register-AllFaces.md)
- [Register-Face](https://github.com/genXdev/genXdev/blob/main/Docs/pl-PL/Register-Face.md)
- [Unregister-AllFaces](https://github.com/genXdev/genXdev/blob/main/Docs/pl-PL/Unregister-AllFaces.md)
- [Unregister-Face](https://github.com/genXdev/genXdev/blob/main/Docs/pl-PL/Unregister-Face.md)

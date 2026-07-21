# Unregister-Face

> **Module:** GenXdev.AI.DeepStack | **Type:** Function | **Aliases:** —

## Synopsis

> Usuwa zarejestrowaną twarz według jej identyfikatora z DeepStack.

## Description

Ta funkcja usuwa twarz z systemu rozpoznawania twarzy DeepStack przy użyciu jej unikalnego identyfikatora. Komunikuje się z punktem końcowym API, aby trwale usunąć zarejestrowane dane twarzy z systemu.

## Syntax

```powershell
Unregister-Face -Identifier <String> [[-ContainerName] <String>] [[-VolumeName] <String>] [[-ServicePort] <Int32>] [[-HealthCheckTimeout] <Int32>] [[-HealthCheckInterval] <Int32>] [[-ImageName] <String>] [-Force] [-NoDockerInitialize] [-ShowWindow] [-UseGPU] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-Identifier` | String | ✅ | ✅ (ByValue, ByPropertyName) | 0 | — | Unikalny identyfikator twarzy do usunięcia z systemu DeepStack. |
| `-ContainerName` | String | — | — | 1 | `'deepstack_face_recognition'` | Nazwa kontenera Docker |
| `-VolumeName` | String | — | — | 2 | `'deepstack_face_data'` | Nazwa wolumenu Dockera dla trwałego przechowywania |
| `-ServicePort` | Int32 | — | — | 3 | `5000` | Numer portu dla usługi DeepStack |
| `-HealthCheckTimeout` | Int32 | — | — | 4 | `60` | Maksymalny czas w sekundach oczekiwania na sprawdzenie stanu usługi |
| `-HealthCheckInterval` | Int32 | — | — | 5 | `3` | Interwał w sekundach między próbami sprawdzenia kondycji |
| `-ImageName` | String | — | — | 6 | — | Niestandardowa nazwa obrazu Docker do użycia |
| `-NoDockerInitialize` | SwitchParameter | — | — | Named | — | Pomiń inicjalizację Dockera (używane, gdy już wywołane przez funkcję nadrzędną) |
| `-Force` | SwitchParameter | — | — | Named | — | Wymuś przebudowę kontenera Docker i usuń istniejące dane |
| `-UseGPU` | SwitchParameter | — | — | Named | — | Użyj wersji przyspieszonej przez GPU (wymaga karty NVIDIA GPU) |
| `-ShowWindow` | SwitchParameter | — | — | Named | — | Pokaż okno Docker Desktop podczas inicjalizacji |

## Examples

### Unregister-Face -Identifier "JohnDoe" -NoDockerInitialize $false `     -ContainerName "deepstack_face_recognition" -ServicePort 5000

```powershell
Unregister-Face -Identifier "JohnDoe" -NoDockerInitialize $false `
    -ContainerName "deepstack_face_recognition" -ServicePort 5000
```

### rface "JohnDoe"

```powershell
rface "JohnDoe"
```

## Parameter Details

### `-Identifier <String>`

> Unikalny identyfikator twarzy do usunięcia z systemu DeepStack.

| Property | Value |
|:---|:---|
| **Required?** | Yes |
| **Position?** | 0 |
| **Default value** | *(none)* |
| **Accept pipeline input?** | True (ByValue, ByPropertyName) |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-ContainerName <String>`

> Nazwa kontenera Docker

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | 1 |
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
| **Position?** | 2 |
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
| **Position?** | 3 |
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
| **Position?** | 4 |
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
| **Position?** | 5 |
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
| **Position?** | 6 |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
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
## Outputs

- `Boolean`

## Related Links

- [Compare-ImageFaces](https://github.com/genXdev/genXdev/blob/main/Docs/pl-PL/Compare-ImageFaces.md)
- [Get-ImageDetectedFaces](https://github.com/genXdev/genXdev/blob/main/Docs/pl-PL/Get-ImageDetectedFaces.md)
- [Get-ImageDetectedObjects](https://github.com/genXdev/genXdev/blob/main/Docs/pl-PL/Get-ImageDetectedObjects.md)
- [Get-ImageDetectedScenes](https://github.com/genXdev/genXdev/blob/main/Docs/pl-PL/Get-ImageDetectedScenes.md)
- [Get-RegisteredFaces](https://github.com/genXdev/genXdev/blob/main/Docs/pl-PL/Get-RegisteredFaces.md)
- [Invoke-ImageEnhancement](https://github.com/genXdev/genXdev/blob/main/Docs/pl-PL/Invoke-ImageEnhancement.md)
- [Register-AllFaces](https://github.com/genXdev/genXdev/blob/main/Docs/pl-PL/Register-AllFaces.md)
- [Register-Face](https://github.com/genXdev/genXdev/blob/main/Docs/pl-PL/Register-Face.md)
- [Unregister-AllFaces](https://github.com/genXdev/genXdev/blob/main/Docs/pl-PL/Unregister-AllFaces.md)

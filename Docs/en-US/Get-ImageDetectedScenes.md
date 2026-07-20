# Get-ImageDetectedScenes

> **Module:** GenXdev.AI.DeepStack | **Type:** Function | **Aliases:** —

## Synopsis

> Classifies an image into one of 365 scene categories using DeepStack.

## Description

This function analyzes an image file to classify it into one of 365 different
scene categories. It uses a local DeepStack scene recognition API running on a
configurable port and returns the scene classification with confidence score.
The function supports GPU acceleration and Docker container management.

## Syntax

```powershell
Get-ImageDetectedScenes -ImagePath <String> [[-ConfidenceThreshold] <Double>] [[-ContainerName] <String>] [[-VolumeName] <String>] [[-ServicePort] <Int32>] [[-HealthCheckTimeout] <Int32>] [[-HealthCheckInterval] <Int32>] [-Force] [-ImageName <String>] [-NoDockerInitialize] [-ShowWindow] [-UseGPU] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-ImagePath` | String | ✅ | ✅ (ByValue, ByPropertyName) | 0 | — | The local path to the image file to analyze |
| `-ConfidenceThreshold` | Double | — | — | 1 | `0.0` | Minimum confidence threshold (0.0-1.0). Default is 0.0 |
| `-ContainerName` | String | — | — | 2 | `'deepstack_face_recognition'` | The name for the Docker container |
| `-VolumeName` | String | — | — | 3 | `'deepstack_face_data'` | The name for the Docker volume for persistent storage |
| `-ServicePort` | Int32 | — | — | 4 | `5000` | The port number for the DeepStack service |
| `-HealthCheckTimeout` | Int32 | — | — | 5 | `60` | Maximum time in seconds to wait for service health check |
| `-HealthCheckInterval` | Int32 | — | — | 6 | `3` | Interval in seconds between health check attempts |
| `-ImageName` | String | — | — | Named | — | Custom Docker image name to use |
| `-NoDockerInitialize` | SwitchParameter | — | — | Named | — | Skip Docker initialization (used when already called by parent function) |
| `-Force` | SwitchParameter | — | — | Named | — | Force rebuild of Docker container and remove existing data |
| `-UseGPU` | SwitchParameter | — | — | Named | — | Use GPU-accelerated version (requires NVIDIA GPU) |
| `-ShowWindow` | SwitchParameter | — | — | Named | — | Show Docker Desktop window during initialization |

## Examples

### Get-ImageDetectedScenes -ImagePath "C:\Users\YourName\landscape.jpg" Classifies the scene in the specified image using default settings.

```powershell
Get-ImageDetectedScenes -ImagePath "C:\Users\YourName\landscape.jpg"
Classifies the scene in the specified image using default settings.
```

### Get-ImageDetectedScenes -ImagePath "C:\photos\vacation.jpg" -ConfidenceThreshold 0.6 -UseGPU Classifies the scene using GPU acceleration and only accepts results with confidence >= 60%.

```powershell
Get-ImageDetectedScenes -ImagePath "C:\photos\vacation.jpg" -ConfidenceThreshold 0.6 -UseGPU
Classifies the scene using GPU acceleration and only accepts results with confidence >= 60%.
```

### Get-ImageDetectedScenes -ImagePath "C:\photos\vacation.jpg" -UseGPU Classifies the scene using GPU acceleration for faster processing.

```powershell
Get-ImageDetectedScenes -ImagePath "C:\photos\vacation.jpg" -UseGPU
Classifies the scene using GPU acceleration for faster processing.
```

### "C:\Users\YourName\beach.jpg" | Get-ImageDetectedScenes Pipeline support for processing multiple images.

```powershell
"C:\Users\YourName\beach.jpg" | Get-ImageDetectedScenes
Pipeline support for processing multiple images.
```

## Parameter Details

### `-ImagePath <String>`

> The local path to the image file to analyze

| Property | Value |
|:---|:---|
| **Required?** | Yes |
| **Position?** | 0 |
| **Default value** | *(none)* |
| **Accept pipeline input?** | True (ByValue, ByPropertyName) |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-ConfidenceThreshold <Double>`

> Minimum confidence threshold (0.0-1.0). Default is 0.0

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | 1 |
| **Default value** | `0.0` |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-ContainerName <String>`

> The name for the Docker container

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

> The name for the Docker volume for persistent storage

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

> The port number for the DeepStack service

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

> Maximum time in seconds to wait for service health check

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

> Interval in seconds between health check attempts

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

> Custom Docker image name to use

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

> Skip Docker initialization (used when already called by parent function)

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

> Force rebuild of Docker container and remove existing data

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

> Use GPU-accelerated version (requires NVIDIA GPU)

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

> Show Docker Desktop window during initialization

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

- [Compare-ImageFaces](https://github.com/genXdev/genXdev/blob/main/Docs/en-US/Compare-ImageFaces.md)
- [EnsureDeepStack](https://github.com/genXdev/genXdev/blob/main/Docs/en-US/EnsureDeepStack.md)
- [Get-ImageDetectedFaces](https://github.com/genXdev/genXdev/blob/main/Docs/en-US/Get-ImageDetectedFaces.md)
- [Get-ImageDetectedObjects](https://github.com/genXdev/genXdev/blob/main/Docs/en-US/Get-ImageDetectedObjects.md)
- [Get-RegisteredFaces](https://github.com/genXdev/genXdev/blob/main/Docs/en-US/Get-RegisteredFaces.md)
- [Invoke-ImageEnhancement](https://github.com/genXdev/genXdev/blob/main/Docs/en-US/Invoke-ImageEnhancement.md)
- [Register-AllFaces](https://github.com/genXdev/genXdev/blob/main/Docs/en-US/Register-AllFaces.md)
- [Register-Face](https://github.com/genXdev/genXdev/blob/main/Docs/en-US/Register-Face.md)
- [Unregister-AllFaces](https://github.com/genXdev/genXdev/blob/main/Docs/en-US/Unregister-AllFaces.md)
- [Unregister-Face](https://github.com/genXdev/genXdev/blob/main/Docs/en-US/Unregister-Face.md)

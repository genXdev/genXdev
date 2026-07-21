# Get-ImageDetectedScenes

> **Module:** GenXdev.AI.DeepStack | **Type:** Function | **Aliases:** —

## Synopsis

> DeepStack kullanarak bir görüntüyü 365 sahne kategorisinden birine sınıflandırır.

## Description

Bu fonksiyon, bir görüntü dosyasını 365 farklı sahne kategorisinden birine sınıflandırmak için analiz eder. Yapılandırılabilir bir bağlantı noktasında çalışan yerel bir DeepStack sahne tanıma API'sini kullanır ve güven puanıyla birlikte sahne sınıflandırmasını döndürür. Fonksiyon, GPU hızlandırmasını ve Docker konteyner yönetimini destekler.

## Syntax

```powershell
Get-ImageDetectedScenes -ImagePath <String> [[-ConfidenceThreshold] <Double>] [[-ContainerName] <String>] [[-VolumeName] <String>] [[-ServicePort] <Int32>] [[-HealthCheckTimeout] <Int32>] [[-HealthCheckInterval] <Int32>] [-Force] [-ImageName <String>] [-NoDockerInitialize] [-ShowWindow] [-UseGPU] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-ImagePath` | String | ✅ | ✅ (ByValue, ByPropertyName) | 0 | — | Analiz edilecek görüntü dosyasının yerel yolu |
| `-ConfidenceThreshold` | Double | — | — | 1 | `0.0` | Minimum güven eşiği (0.0-1.0). Varsayılan değer: 0.0 |
| `-ContainerName` | String | — | — | 2 | `'deepstack_face_recognition'` | Docker kapsayıcısının adı |
| `-VolumeName` | String | — | — | 3 | `'deepstack_face_data'` | Kalıcı depolama için Docker birim adı |
| `-ServicePort` | Int32 | — | — | 4 | `5000` | DeepStack hizmeti için bağlantı noktası numarası |
| `-HealthCheckTimeout` | Int32 | — | — | 5 | `60` | Hizmet sağlık kontrolü için beklenecek maksimum süre (saniye) |
| `-HealthCheckInterval` | Int32 | — | — | 6 | `3` | Sağlık denetimleri arasındaki saniye cinsinden aralık |
| `-ImageName` | String | — | — | Named | — | Kullanılacak özel Docker görüntü adı |
| `-NoDockerInitialize` | SwitchParameter | — | — | Named | — | Docker başlatma işlemini atla (zaten üst işlev tarafından çağrılmışsa kullanılır) |
| `-Force` | SwitchParameter | — | — | Named | — | Docker kabının zorla yeniden oluşturulması ve mevcut verilerin kaldırılması |
| `-UseGPU` | SwitchParameter | — | — | Named | — | GPU hızlandırmalı sürümü kullan (NVIDIA GPU gerektirir) |
| `-ShowWindow` | SwitchParameter | — | — | Named | — | Başlatma sırasında Docker Desktop penceresini göster |

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

> Analiz edilecek görüntü dosyasının yerel yolu

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

> Minimum güven eşiği (0.0-1.0). Varsayılan değer: 0.0

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

> Docker kapsayıcısının adı

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

> Kalıcı depolama için Docker birim adı

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

> DeepStack hizmeti için bağlantı noktası numarası

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

> Hizmet sağlık kontrolü için beklenecek maksimum süre (saniye)

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

> Sağlık denetimleri arasındaki saniye cinsinden aralık

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

> Kullanılacak özel Docker görüntü adı

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

> Docker başlatma işlemini atla (zaten üst işlev tarafından çağrılmışsa kullanılır)

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

> Docker kabının zorla yeniden oluşturulması ve mevcut verilerin kaldırılması

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

> GPU hızlandırmalı sürümü kullan (NVIDIA GPU gerektirir)

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

> Başlatma sırasında Docker Desktop penceresini göster

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

- [Compare-ImageFaces](https://github.com/genXdev/genXdev/blob/main/Docs/tr-TR/Compare-ImageFaces.md)
- [Get-ImageDetectedFaces](https://github.com/genXdev/genXdev/blob/main/Docs/tr-TR/Get-ImageDetectedFaces.md)
- [Get-ImageDetectedObjects](https://github.com/genXdev/genXdev/blob/main/Docs/tr-TR/Get-ImageDetectedObjects.md)
- [Get-RegisteredFaces](https://github.com/genXdev/genXdev/blob/main/Docs/tr-TR/Get-RegisteredFaces.md)
- [Invoke-ImageEnhancement](https://github.com/genXdev/genXdev/blob/main/Docs/tr-TR/Invoke-ImageEnhancement.md)
- [Register-AllFaces](https://github.com/genXdev/genXdev/blob/main/Docs/tr-TR/Register-AllFaces.md)
- [Register-Face](https://github.com/genXdev/genXdev/blob/main/Docs/tr-TR/Register-Face.md)
- [Unregister-AllFaces](https://github.com/genXdev/genXdev/blob/main/Docs/tr-TR/Unregister-AllFaces.md)
- [Unregister-Face](https://github.com/genXdev/genXdev/blob/main/Docs/tr-TR/Unregister-Face.md)

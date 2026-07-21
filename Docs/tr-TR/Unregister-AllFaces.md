# Unregister-AllFaces

> **Module:** GenXdev.AI.DeepStack | **Type:** Function | **Aliases:** —

## Synopsis

> DeepStack yüz tanıma sisteminden kayıtlı tüm yüzleri kaldırır.

## Description

Bu işlev, DeepStack yüz tanıma veritabanındaki kayıtlı tüm yüzleri, veri deposu dizinindeki tüm yüz dosyalarını kaldırarak ve boş bir yüz kaydını yeniden yüklemek için hizmeti yeniden başlatarak temizler. Bu, geri alınamayacak yıkıcı bir işlemdir ve kayıtlı tüm yüz verilerini kalıcı olarak siler.

## Syntax

```powershell
Unregister-AllFaces [[-ContainerName] <String>] [[-VolumeName] <String>] [[-ServicePort] <Int32>] [[-HealthCheckTimeout] <Int32>] [[-HealthCheckInterval] <Int32>] [[-ImageName] <String>] [-Force] [-ForceRebuild] [-NoDockerInitialize] [-ShowWindow] [-UseGPU] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-Force` | SwitchParameter | — | — | Named | — | Kayıtlı tüm yüzler kaldırılırken onay istemlerini atla |
| `-NoDockerInitialize` | SwitchParameter | — | — | Named | — | Docker Desktop başlatmasını atla (zaten üst işlev tarafından çağrıldığında kullanılır) |
| `-ForceRebuild` | SwitchParameter | — | — | Named | — | Docker kabının zorla yeniden oluşturulması ve mevcut verilerin kaldırılması |
| `-UseGPU` | SwitchParameter | — | — | Named | — | GPU hızlandırmalı sürümü kullan (NVIDIA GPU gerektirir) |
| `-ContainerName` | String | — | — | 0 | `'deepstack_face_recognition'` | Docker kapsayıcısının adı |
| `-VolumeName` | String | — | — | 1 | `'deepstack_face_data'` | Kalıcı depolama için Docker birim adı |
| `-ServicePort` | Int32 | — | — | 2 | `5000` | DeepStack hizmeti için bağlantı noktası numarası |
| `-HealthCheckTimeout` | Int32 | — | — | 3 | `60` | Hizmet sağlık kontrolü için beklenecek maksimum süre (saniye) |
| `-HealthCheckInterval` | Int32 | — | — | 4 | `3` | Sağlık denetimleri arasındaki saniye cinsinden aralık |
| `-ImageName` | String | — | — | 5 | — | Kullanılacak özel Docker görüntü adı |
| `-ShowWindow` | SwitchParameter | — | — | Named | — | Başlatma sırasında Docker Desktop penceresini göster |

## Examples

### Unregister-AllFaces

```powershell
Unregister-AllFaces
```

Onay istemi ile tüm kayıtlı yüzleri kaldırır.

### Unregister-AllFaces -Force

```powershell
Unregister-AllFaces -Force
```

Kayıtlı tüm yüzleri onay istemeden kaldırır.

### unregall -Force

```powershell
unregall -Force
```

Onay almadan tüm yüzleri kaldırmak için diğer adı kullanır.

## Parameter Details

### `-Force`

> Kayıtlı tüm yüzler kaldırılırken onay istemlerini atla

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

> Docker Desktop başlatmasını atla (zaten üst işlev tarafından çağrıldığında kullanılır)

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

> Docker kabının zorla yeniden oluşturulması ve mevcut verilerin kaldırılması

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
### `-ContainerName <String>`

> Docker kapsayıcısının adı

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

> Kalıcı depolama için Docker birim adı

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

> DeepStack hizmeti için bağlantı noktası numarası

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

> Hizmet sağlık kontrolü için beklenecek maksimum süre (saniye)

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

> Sağlık denetimleri arasındaki saniye cinsinden aralık

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

> Kullanılacak özel Docker görüntü adı

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
- [Get-ImageDetectedScenes](https://github.com/genXdev/genXdev/blob/main/Docs/tr-TR/Get-ImageDetectedScenes.md)
- [Get-RegisteredFaces](https://github.com/genXdev/genXdev/blob/main/Docs/tr-TR/Get-RegisteredFaces.md)
- [Invoke-ImageEnhancement](https://github.com/genXdev/genXdev/blob/main/Docs/tr-TR/Invoke-ImageEnhancement.md)
- [Register-AllFaces](https://github.com/genXdev/genXdev/blob/main/Docs/tr-TR/Register-AllFaces.md)
- [Register-Face](https://github.com/genXdev/genXdev/blob/main/Docs/tr-TR/Register-Face.md)
- [Unregister-Face](https://github.com/genXdev/genXdev/blob/main/Docs/tr-TR/Unregister-Face.md)

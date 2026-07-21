# Compare-ImageFaces

> **Module:** GenXdev.AI.DeepStack | **Type:** Function | **Aliases:** `comparefaces`

## Synopsis

> DeepStack kullanarak iki farklı görüntüdeki yüzleri karşılaştırır ve benzerliklerini döndürür.

## Description

Bu işlev, iki görüntü arasındaki yüzleri karşılaştırarak benzerliği belirler. Yapılandırılabilir bir bağlantı noktasında çalışan yerel bir DeepStack yüz eşleme API'sini kullanır ve 0.0 ile 1.0 arasında bir benzerlik puanı döndürür. Bu genellikle kimlik belgelerini bir kişinin fotoğraflarıyla eşleştirmek veya iki fotoğrafın aynı kişiyi gösterip göstermediğini doğrulamak için kullanılır.

## Syntax

```powershell
Compare-ImageFaces -ImagePath1 <String> -ImagePath2 <String> [[-ContainerName] <String>] [[-VolumeName] <String>] [[-ServicePort] <Int32>] [[-HealthCheckTimeout] <Int32>] [[-HealthCheckInterval] <Int32>] [[-ImageName] <String>] [-Force] [-NoDockerInitialize] [-ShowWindow] [-UseGPU] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-ImagePath1` | String | ✅ | — | 0 | — | Karşılaştırılacak ilk resim dosyasının yerel yolu |
| `-ImagePath2` | String | ✅ | — | 1 | — | Karşılaştırılacak ikinci görüntü dosyasının yerel yolu |
| `-ContainerName` | String | — | — | 2 | `'deepstack_face_recognition'` | Docker kapsayıcısının adı |
| `-VolumeName` | String | — | — | 3 | `'deepstack_face_data'` | Kalıcı depolama için Docker birim adı |
| `-ServicePort` | Int32 | — | — | 4 | `5000` | DeepStack hizmeti için bağlantı noktası numarası |
| `-HealthCheckTimeout` | Int32 | — | — | 5 | `60` | Hizmet sağlık kontrolü için beklenecek maksimum süre (saniye) |
| `-HealthCheckInterval` | Int32 | — | — | 6 | `3` | Sağlık denetimleri arasındaki saniye cinsinden aralık |
| `-ImageName` | String | — | — | 7 | — | Kullanılacak özel Docker görüntü adı |
| `-NoDockerInitialize` | SwitchParameter | — | — | Named | — | Docker başlatma işlemini atla (zaten üst işlev tarafından çağrılmışsa kullanılır) |
| `-Force` | SwitchParameter | — | — | Named | — | Docker kabının zorla yeniden oluşturulması ve mevcut verilerin kaldırılması |
| `-UseGPU` | SwitchParameter | — | — | Named | — | GPU hızlandırmalı sürümü kullan (NVIDIA GPU gerektirir) |
| `-ShowWindow` | SwitchParameter | — | — | Named | — | Başlatma sırasında Docker Desktop penceresini göster |

## Examples

### Compare-ImageFaces -ImagePath1 "C:\Users\YourName\photo1.jpg" `                    -ImagePath2 "C:\Users\YourName\photo2.jpg"

```powershell
Compare-ImageFaces -ImagePath1 "C:\Users\YourName\photo1.jpg" `
                   -ImagePath2 "C:\Users\YourName\photo2.jpg"
```

Varsayılan ayarları kullanarak iki resim arasındaki yüzleri karşılaştırır.

### comparefaces "C:\docs\id_photo.jpg" "C:\photos\person.jpg" -UseGPU

```powershell
comparefaces "C:\docs\id_photo.jpg" "C:\photos\person.jpg" -UseGPU
```

Kimlik doğrulama için GPU hızlandırması kullanarak yüzleri takma ad ve konumsal parametrelerle karşılaştırır.

## Parameter Details

### `-ImagePath1 <String>`

> Karşılaştırılacak ilk resim dosyasının yerel yolu

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

> Karşılaştırılacak ikinci görüntü dosyasının yerel yolu

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
| **Position?** | 7 |
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
## Outputs

- `Collections.Hashtable`

## Related Links

- [Get-ImageDetectedFaces](https://github.com/genXdev/genXdev/blob/main/Docs/tr-TR/Get-ImageDetectedFaces.md)
- [Get-ImageDetectedObjects](https://github.com/genXdev/genXdev/blob/main/Docs/tr-TR/Get-ImageDetectedObjects.md)
- [Get-ImageDetectedScenes](https://github.com/genXdev/genXdev/blob/main/Docs/tr-TR/Get-ImageDetectedScenes.md)
- [Get-RegisteredFaces](https://github.com/genXdev/genXdev/blob/main/Docs/tr-TR/Get-RegisteredFaces.md)
- [Invoke-ImageEnhancement](https://github.com/genXdev/genXdev/blob/main/Docs/tr-TR/Invoke-ImageEnhancement.md)
- [Register-AllFaces](https://github.com/genXdev/genXdev/blob/main/Docs/tr-TR/Register-AllFaces.md)
- [Register-Face](https://github.com/genXdev/genXdev/blob/main/Docs/tr-TR/Register-Face.md)
- [Unregister-AllFaces](https://github.com/genXdev/genXdev/blob/main/Docs/tr-TR/Unregister-AllFaces.md)
- [Unregister-Face](https://github.com/genXdev/genXdev/blob/main/Docs/tr-TR/Unregister-Face.md)

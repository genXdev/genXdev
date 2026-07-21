# Get-ImageDetectedScenes

> **Module:** GenXdev.AI.DeepStack | **Type:** Function | **Aliases:** —

## Synopsis

> Mengklasifikasikan gambar ke dalam salah satu dari 365 kategori pemandangan menggunakan DeepStack.

## Description

Fungsi ini menganalisis file gambar untuk mengelompokkannya ke dalam salah satu dari 365 kategori pemandangan yang berbeda. Fungsi ini menggunakan API pengenalan pemandangan DeepStack lokal yang berjalan pada port yang dapat dikonfigurasi dan mengembalikan klasifikasi pemandangan dengan skor kepercayaan. Fungsi ini mendukung akselerasi GPU dan manajemen kontainer Docker.

## Syntax

```powershell
Get-ImageDetectedScenes -ImagePath <String> [[-ConfidenceThreshold] <Double>] [[-ContainerName] <String>] [[-VolumeName] <String>] [[-ServicePort] <Int32>] [[-HealthCheckTimeout] <Int32>] [[-HealthCheckInterval] <Int32>] [-Force] [-ImageName <String>] [-NoDockerInitialize] [-ShowWindow] [-UseGPU] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-ImagePath` | String | ✅ | ✅ (ByValue, ByPropertyName) | 0 | — | Jalur lokal ke file gambar yang akan dianalisis |
| `-ConfidenceThreshold` | Double | — | — | 1 | `0.0` | Ambang batas kepercayaan minimum (0.0-1.0). Default adalah 0.0 |
| `-ContainerName` | String | — | — | 2 | `'deepstack_face_recognition'` | Nama untuk kontainer Docker |
| `-VolumeName` | String | — | — | 3 | `'deepstack_face_data'` | Nama untuk volume Docker untuk penyimpanan persisten |
| `-ServicePort` | Int32 | — | — | 4 | `5000` | Nomor port untuk layanan DeepStack |
| `-HealthCheckTimeout` | Int32 | — | — | 5 | `60` | Waktu maksimum dalam detik untuk menunggu pemeriksaan kesehatan layanan |
| `-HealthCheckInterval` | Int32 | — | — | 6 | `3` | Interval dalam detik antara percobaan pemeriksaan kesehatan |
| `-ImageName` | String | — | — | Named | — | Nama gambar Docker kustom yang akan digunakan |
| `-NoDockerInitialize` | SwitchParameter | — | — | Named | — | Lewati inisialisasi Docker (digunakan ketika sudah dipanggil oleh fungsi induk) |
| `-Force` | SwitchParameter | — | — | Named | — | Bangun ulang paksa kontainer Docker dan hapus data yang ada |
| `-UseGPU` | SwitchParameter | — | — | Named | — | Gunakan versi yang dipercepat GPU (memerlukan GPU NVIDIA) |
| `-ShowWindow` | SwitchParameter | — | — | Named | — | Tampilkan jendela Docker Desktop selama inisialisasi |

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

> Jalur lokal ke file gambar yang akan dianalisis

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

> Ambang batas kepercayaan minimum (0.0-1.0). Default adalah 0.0

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

> Nama untuk kontainer Docker

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

> Nama untuk volume Docker untuk penyimpanan persisten

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

> Nomor port untuk layanan DeepStack

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

> Waktu maksimum dalam detik untuk menunggu pemeriksaan kesehatan layanan

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

> Interval dalam detik antara percobaan pemeriksaan kesehatan

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

> Nama gambar Docker kustom yang akan digunakan

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

> Lewati inisialisasi Docker (digunakan ketika sudah dipanggil oleh fungsi induk)

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

> Bangun ulang paksa kontainer Docker dan hapus data yang ada

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

> Gunakan versi yang dipercepat GPU (memerlukan GPU NVIDIA)

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

> Tampilkan jendela Docker Desktop selama inisialisasi

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

- [Compare-ImageFaces](https://github.com/genXdev/genXdev/blob/main/Docs/id-ID/Compare-ImageFaces.md)
- [Get-ImageDetectedFaces](https://github.com/genXdev/genXdev/blob/main/Docs/id-ID/Get-ImageDetectedFaces.md)
- [Get-ImageDetectedObjects](https://github.com/genXdev/genXdev/blob/main/Docs/id-ID/Get-ImageDetectedObjects.md)
- [Get-RegisteredFaces](https://github.com/genXdev/genXdev/blob/main/Docs/id-ID/Get-RegisteredFaces.md)
- [Invoke-ImageEnhancement](https://github.com/genXdev/genXdev/blob/main/Docs/id-ID/Invoke-ImageEnhancement.md)
- [Register-AllFaces](https://github.com/genXdev/genXdev/blob/main/Docs/id-ID/Register-AllFaces.md)
- [Register-Face](https://github.com/genXdev/genXdev/blob/main/Docs/id-ID/Register-Face.md)
- [Unregister-AllFaces](https://github.com/genXdev/genXdev/blob/main/Docs/id-ID/Unregister-AllFaces.md)
- [Unregister-Face](https://github.com/genXdev/genXdev/blob/main/Docs/id-ID/Unregister-Face.md)

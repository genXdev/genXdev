# Get-RegisteredFaces

> **Module:** GenXdev.AI.DeepStack | **Type:** Function | **Aliases:** —

## Synopsis

> Mengambil daftar semua pengenal wajah yang terdaftar dari DeepStack.

## Description

Fungsi ini terhubung ke API pengenalan wajah DeepStack lokal dan mengambil semua pengenal wajah yang terdaftar. Fungsi ini menggunakan titik akhir /v1/vision/face/list untuk menanyakan layanan DeepStack dan mengembalikan array string pengenal wajah. Fungsi ini menangani inisialisasi kontainer Docker, komunikasi API, dan penanganan kesalahan untuk berbagai skenario kegagalan.

## Syntax

```powershell
Get-RegisteredFaces [[-ContainerName] <String>] [[-VolumeName] <String>] [[-ServicePort] <Int32>] [[-HealthCheckTimeout] <Int32>] [[-HealthCheckInterval] <Int32>] [[-ImageName] <String>] [-Force] [-NoDockerInitialize] [-ShowWindow] [-UseGPU] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-NoDockerInitialize` | SwitchParameter | — | — | Named | — | Lewati inisialisasi Docker (digunakan ketika sudah dipanggil oleh fungsi induk) |
| `-Force` | SwitchParameter | — | — | Named | — | Bangun ulang paksa kontainer Docker dan hapus data yang ada |
| `-UseGPU` | SwitchParameter | — | — | Named | — | Gunakan versi yang dipercepat GPU (memerlukan GPU NVIDIA) |
| `-ContainerName` | String | — | — | 0 | `'deepstack_face_recognition'` | Nama untuk kontainer Docker |
| `-VolumeName` | String | — | — | 1 | `'deepstack_face_data'` | Nama untuk volume Docker untuk penyimpanan persisten |
| `-ServicePort` | Int32 | — | — | 2 | `5000` | Nomor port untuk layanan DeepStack |
| `-HealthCheckTimeout` | Int32 | — | — | 3 | `60` | Waktu maksimum dalam detik untuk menunggu pemeriksaan kesehatan layanan |
| `-HealthCheckInterval` | Int32 | — | — | 4 | `3` | Interval dalam detik antara percobaan pemeriksaan kesehatan |
| `-ImageName` | String | — | — | 5 | — | Nama gambar Docker kustom yang akan digunakan |
| `-ShowWindow` | SwitchParameter | — | — | Named | — | Tampilkan jendela Docker Desktop selama inisialisasi |

## Examples

### Get-RegisteredFaces

```powershell
Get-RegisteredFaces
```

Contoh ini mengambil semua wajah yang terdaftar menggunakan parameter bawaan.

### Get-RegisteredFaces -Force -UseGPU

```powershell
Get-RegisteredFaces -Force -UseGPU
```

Contoh ini memaksa pembangunan ulang kontainer dan menggunakan akselerasi GPU.

### Get-RegisteredFaces -ContainerName "my_deepstack" -ServicePort 8080

```powershell
Get-RegisteredFaces -ContainerName "my_deepstack" -ServicePort 8080
```

Contoh ini menggunakan nama kontainer dan nomor port khusus.

### Get-RegisteredFaces | Where-Object { $_ -like "John*" }

```powershell
Get-RegisteredFaces |
Where-Object { $_ -like "John*" }
```

Contoh ini mengambil semua wajah dan menyaring yang diawali dengan "John".

## Parameter Details

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
### `-ContainerName <String>`

> Nama untuk kontainer Docker

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

> Nama untuk volume Docker untuk penyimpanan persisten

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

> Nomor port untuk layanan DeepStack

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

> Waktu maksimum dalam detik untuk menunggu pemeriksaan kesehatan layanan

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

> Interval dalam detik antara percobaan pemeriksaan kesehatan

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

> Nama gambar Docker kustom yang akan digunakan

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
- [Get-ImageDetectedScenes](https://github.com/genXdev/genXdev/blob/main/Docs/id-ID/Get-ImageDetectedScenes.md)
- [Invoke-ImageEnhancement](https://github.com/genXdev/genXdev/blob/main/Docs/id-ID/Invoke-ImageEnhancement.md)
- [Register-AllFaces](https://github.com/genXdev/genXdev/blob/main/Docs/id-ID/Register-AllFaces.md)
- [Register-Face](https://github.com/genXdev/genXdev/blob/main/Docs/id-ID/Register-Face.md)
- [Unregister-AllFaces](https://github.com/genXdev/genXdev/blob/main/Docs/id-ID/Unregister-AllFaces.md)
- [Unregister-Face](https://github.com/genXdev/genXdev/blob/main/Docs/id-ID/Unregister-Face.md)

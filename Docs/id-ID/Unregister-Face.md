# Unregister-Face

> **Module:** GenXdev.AI.DeepStack | **Type:** Function | **Aliases:** —

## Synopsis

> Menghapus wajah yang terdaftar berdasarkan pengenalnya dari DeepStack.

## Description

Fungsi ini menghapus wajah dari sistem pengenalan wajah DeepStack menggunakan pengidentifikasi uniknya. Fungsi ini berkomunikasi dengan titik akhir API untuk menghapus data wajah yang terdaftar dari sistem secara permanen.

## Syntax

```powershell
Unregister-Face -Identifier <String> [[-ContainerName] <String>] [[-VolumeName] <String>] [[-ServicePort] <Int32>] [[-HealthCheckTimeout] <Int32>] [[-HealthCheckInterval] <Int32>] [[-ImageName] <String>] [-Force] [-NoDockerInitialize] [-ShowWindow] [-UseGPU] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-Identifier` | String | ✅ | ✅ (ByValue, ByPropertyName) | 0 | — | Pengidentifikasi unik dari wajah yang akan dihapus dari sistem DeepStack |
| `-ContainerName` | String | — | — | 1 | `'deepstack_face_recognition'` | Nama untuk kontainer Docker |
| `-VolumeName` | String | — | — | 2 | `'deepstack_face_data'` | Nama untuk volume Docker untuk penyimpanan persisten |
| `-ServicePort` | Int32 | — | — | 3 | `5000` | Nomor port untuk layanan DeepStack |
| `-HealthCheckTimeout` | Int32 | — | — | 4 | `60` | Waktu maksimum dalam detik untuk menunggu pemeriksaan kesehatan layanan |
| `-HealthCheckInterval` | Int32 | — | — | 5 | `3` | Interval dalam detik antara percobaan pemeriksaan kesehatan |
| `-ImageName` | String | — | — | 6 | — | Nama gambar Docker kustom yang akan digunakan |
| `-NoDockerInitialize` | SwitchParameter | — | — | Named | — | Lewati inisialisasi Docker (digunakan ketika sudah dipanggil oleh fungsi induk) |
| `-Force` | SwitchParameter | — | — | Named | — | Bangun ulang paksa kontainer Docker dan hapus data yang ada |
| `-UseGPU` | SwitchParameter | — | — | Named | — | Gunakan versi yang dipercepat GPU (memerlukan GPU NVIDIA) |
| `-ShowWindow` | SwitchParameter | — | — | Named | — | Tampilkan jendela Docker Desktop selama inisialisasi |

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

> Pengidentifikasi unik dari wajah yang akan dihapus dari sistem DeepStack

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

> Nama untuk kontainer Docker

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

> Nama untuk volume Docker untuk penyimpanan persisten

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

> Nomor port untuk layanan DeepStack

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

> Waktu maksimum dalam detik untuk menunggu pemeriksaan kesehatan layanan

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

> Interval dalam detik antara percobaan pemeriksaan kesehatan

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

> Nama gambar Docker kustom yang akan digunakan

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
## Outputs

- `Boolean`

## Related Links

- [Compare-ImageFaces](https://github.com/genXdev/genXdev/blob/main/Docs/id-ID/Compare-ImageFaces.md)
- [Get-ImageDetectedFaces](https://github.com/genXdev/genXdev/blob/main/Docs/id-ID/Get-ImageDetectedFaces.md)
- [Get-ImageDetectedObjects](https://github.com/genXdev/genXdev/blob/main/Docs/id-ID/Get-ImageDetectedObjects.md)
- [Get-ImageDetectedScenes](https://github.com/genXdev/genXdev/blob/main/Docs/id-ID/Get-ImageDetectedScenes.md)
- [Get-RegisteredFaces](https://github.com/genXdev/genXdev/blob/main/Docs/id-ID/Get-RegisteredFaces.md)
- [Invoke-ImageEnhancement](https://github.com/genXdev/genXdev/blob/main/Docs/id-ID/Invoke-ImageEnhancement.md)
- [Register-AllFaces](https://github.com/genXdev/genXdev/blob/main/Docs/id-ID/Register-AllFaces.md)
- [Register-Face](https://github.com/genXdev/genXdev/blob/main/Docs/id-ID/Register-Face.md)
- [Unregister-AllFaces](https://github.com/genXdev/genXdev/blob/main/Docs/id-ID/Unregister-AllFaces.md)

# Register-AllFaces

> **Module:** GenXdev.AI.DeepStack | **Type:** Function | **Aliases:** `UpdateFaces`

## Synopsis

> Memperbarui semua profil pengenalan wajah dari file gambar di direktori faces.

## Description

Fungsi ini memperbarui basis data pengenalan wajah dengan semua gambar yang ditemukan di direktori wajah yang ditentukan. Prosesnya meliputi:
1. Memastikan layanan pengenalan wajah berjalan
2. Memproses semua gambar di folder setiap orang, mendaftarkan semua wajah untuk orang tersebut dengan pengenal tunggal (nama folder) dalam operasi batch
3. Mendukung logika percobaan ulang untuk registrasi yang gagal

Setiap folder orang dapat berisi banyak gambar, dan semua gambar akan didaftarkan dengan pengenal yang sama (nama orang) dalam satu panggilan API, menghilangkan kebutuhan untuk sufiks _1, _2, dll.

## Syntax

```powershell
Register-AllFaces [[-FacesDirectory] <String>] [[-MaxRetries] <Int32>] [[-ContainerName] <String>] [[-VolumeName] <String>] [[-ServicePort] <Int32>] [[-HealthCheckTimeout] <Int32>] [[-HealthCheckInterval] <Int32>] [[-ImageName] <String>] [-ClearSession] [-Force] [-ForceRebuild] [-NoDockerInitialize] [-PreferencesDatabasePath <String>] [-RenameFailed] [-SessionOnly] [-ShowWindow] [-SkipSession] [-UseGPU] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-FacesDirectory` | String | — | — | 0 | — | Direktori yang berisi gambar wajah yang diorganisir berdasarkan folder orang. Jika tidak ditentukan, menggunakan preferensi direktori wajah yang telah dikonfigurasi. |
| `-MaxRetries` | Int32 | — | — | 1 | `3` | Jumlah maksimum percobaan ulang untuk registrasi yang gagal |
| `-ContainerName` | String | — | — | 2 | `'deepstack_face_recognition'` | Nama untuk kontainer Docker |
| `-VolumeName` | String | — | — | 3 | `'deepstack_face_data'` | Nama untuk volume Docker untuk penyimpanan persisten |
| `-ServicePort` | Int32 | — | — | 4 | `5000` | Nomor port untuk layanan DeepStack |
| `-HealthCheckTimeout` | Int32 | — | — | 5 | `60` | Waktu maksimum dalam detik untuk menunggu pemeriksaan kesehatan layanan |
| `-HealthCheckInterval` | Int32 | — | — | 6 | `3` | Interval dalam detik antara percobaan pemeriksaan kesehatan |
| `-ImageName` | String | — | — | 7 | — | Nama gambar Docker kustom yang akan digunakan |
| `-NoDockerInitialize` | SwitchParameter | — | — | Named | — | Lewati inisialisasi Docker Desktop (digunakan ketika sudah dipanggil oleh fungsi induk) |
| `-Force` | SwitchParameter | — | — | Named | — | Memaksa pendaftaran ulang semua wajah |
| `-RenameFailed` | SwitchParameter | — | — | Named | — | Ganti nama file gambar yang gagal diproses karena tidak ditemukan wajah |
| `-ForceRebuild` | SwitchParameter | — | — | Named | — | Bangun ulang paksa kontainer Docker dan hapus data yang ada |
| `-UseGPU` | SwitchParameter | — | — | Named | — | Gunakan versi yang dipercepat GPU (memerlukan GPU NVIDIA) |
| `-ShowWindow` | SwitchParameter | — | — | Named | — | Tampilkan jendela Docker Desktop selama inisialisasi |
| `-SessionOnly` | SwitchParameter | — | — | Named | — | Jika ditentukan, hanya gunakan sesi (jangan menyimpan perubahan ke basis data preferensi). |
| `-ClearSession` | SwitchParameter | — | — | Named | — | Jika ditentukan, hapus preferensi sesi saat ini sebelum digunakan. |
| `-PreferencesDatabasePath` | String | — | — | Named | — | Jalur ke database preferensi yang akan digunakan untuk jalur root wajah yang dikenal. |
| `-SkipSession` | SwitchParameter | — | — | Named | — | Jika ditentukan, lewati logika sesi saat mengambil jalur root wajah yang dikenal. |

## Examples

### Register-AllFaces -FacesDirectory "b:\media\faces\" -MaxRetries 3 `     -ContainerName "deepstack_face_recognition" -VolumeName "deepstack_face_data" `     -ServicePort 5000 -HealthCheckTimeout 60 -HealthCheckInterval 3

```powershell
Register-AllFaces -FacesDirectory "b:\media\faces\" -MaxRetries 3 `
    -ContainerName "deepstack_face_recognition" -VolumeName "deepstack_face_data" `
    -ServicePort 5000 -HealthCheckTimeout 60 -HealthCheckInterval 3
```

### Register-AllFaces Uses the configured faces directory from Set-AIKnownFacesRootpath or defaults to "b:\media\faces\"

```powershell
Register-AllFaces
Uses the configured faces directory from Set-AIKnownFacesRootpath or defaults to "b:\media\faces\"
```

### updatefaces -RenameFailed ##############################################################################

```powershell
updatefaces -RenameFailed
##############################################################################
```

## Parameter Details

### `-FacesDirectory <String>`

> Direktori yang berisi gambar wajah yang diorganisir berdasarkan folder orang. Jika tidak ditentukan, menggunakan preferensi direktori wajah yang telah dikonfigurasi.

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | 0 |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-MaxRetries <Int32>`

> Jumlah maksimum percobaan ulang untuk registrasi yang gagal

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | 1 |
| **Default value** | `3` |
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
| **Position?** | 7 |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-NoDockerInitialize`

> Lewati inisialisasi Docker Desktop (digunakan ketika sudah dipanggil oleh fungsi induk)

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

> Memaksa pendaftaran ulang semua wajah

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-RenameFailed`

> Ganti nama file gambar yang gagal diproses karena tidak ditemukan wajah

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

> Bangun ulang paksa kontainer Docker dan hapus data yang ada

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
### `-SessionOnly`

> Jika ditentukan, hanya gunakan sesi (jangan menyimpan perubahan ke basis data preferensi).

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-ClearSession`

> Jika ditentukan, hapus preferensi sesi saat ini sebelum digunakan.

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-PreferencesDatabasePath <String>`

> Jalur ke database preferensi yang akan digunakan untuk jalur root wajah yang dikenal.

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | `DatabasePath` |
| **Accept wildcard characters?** | No |

<hr/>
### `-SkipSession`

> Jika ditentukan, lewati logika sesi saat mengambil jalur root wajah yang dikenal.

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | `FromPreferences` |
| **Accept wildcard characters?** | No |

<hr/>
## Related Links

- [Compare-ImageFaces](https://github.com/genXdev/genXdev/blob/main/Docs/id-ID/Compare-ImageFaces.md)
- [Get-ImageDetectedFaces](https://github.com/genXdev/genXdev/blob/main/Docs/id-ID/Get-ImageDetectedFaces.md)
- [Get-ImageDetectedObjects](https://github.com/genXdev/genXdev/blob/main/Docs/id-ID/Get-ImageDetectedObjects.md)
- [Get-ImageDetectedScenes](https://github.com/genXdev/genXdev/blob/main/Docs/id-ID/Get-ImageDetectedScenes.md)
- [Get-RegisteredFaces](https://github.com/genXdev/genXdev/blob/main/Docs/id-ID/Get-RegisteredFaces.md)
- [Invoke-ImageEnhancement](https://github.com/genXdev/genXdev/blob/main/Docs/id-ID/Invoke-ImageEnhancement.md)
- [Register-Face](https://github.com/genXdev/genXdev/blob/main/Docs/id-ID/Register-Face.md)
- [Unregister-AllFaces](https://github.com/genXdev/genXdev/blob/main/Docs/id-ID/Unregister-AllFaces.md)
- [Unregister-Face](https://github.com/genXdev/genXdev/blob/main/Docs/id-ID/Unregister-Face.md)

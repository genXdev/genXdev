# Get-WireGuardPeers

> **Module:** GenXdev.Windows.WireGuard | **Type:** Function | **Aliases:** —

## Synopsis

> Mendapatkan informasi tentang semua rekan WireGuard VPN yang dikonfigurasi di sistem.

## Description

Fungsi ini mengambil informasi lengkap tentang semua rekan WireGuard VPN yang dikonfigurasi pada server yang berjalan di dalam kontainer Docker. Ini menyediakan informasi terperinci termasuk nama rekan, kunci publik, alamat IP yang diizinkan, titik akhir koneksi, status jabat tangan, statistik transfer data, dan status koneksi saat ini. Fungsi ini dapat beroperasi bersama dengan fungsi induk atau secara independen mengelola inisialisasi kontainer Docker.

## Syntax

```powershell
Get-WireGuardPeers [[-ContainerName] <String>] [[-VolumeName] <String>] [[-ServicePort] <Int32>] [[-HealthCheckTimeout] <Int32>] [[-HealthCheckInterval] <Int32>] [[-ImageName] <String>] [[-PUID] <String>] [[-PGID] <String>] [[-TimeZone] <String>] [[-Width] <Int32>] [[-Height] <Int32>] [[-Left] <Int32>] [[-Right] <Int32>] [[-Bottom] <Int32>] [[-SendKeyDelayMilliSeconds] <Int32>] [-Centered] [-ClearSession] [-FocusWindow] [-Force] [-Fullscreen] [-NoBorders] [-NoDockerInitialize] [-RestoreFocus] [-SendKeyEscape] [-SendKeyHoldKeyboardFocus] [-SendKeyUseShiftEnter] [-SessionOnly] [-SetForeground] [-ShowWindow] [-SideBySide] [-SkipSession] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-NoDockerInitialize` | SwitchParameter | — | — | Named | — | Lewati inisialisasi Docker (digunakan ketika sudah dipanggil oleh fungsi induk) |
| `-Force` | SwitchParameter | — | — | Named | — | Bangun ulang paksa kontainer Docker dan hapus data yang ada |
| `-ContainerName` | String | — | — | 0 | `'wireguard'` | Nama untuk kontainer Docker |
| `-VolumeName` | String | — | — | 1 | `'wireguard_data'` | Nama untuk volume Docker untuk penyimpanan persisten |
| `-ServicePort` | Int32 | — | — | 2 | `51839` | Nomor port untuk layanan WireGuard |
| `-HealthCheckTimeout` | Int32 | — | — | 3 | `60` | Waktu maksimum dalam detik untuk menunggu pemeriksaan kesehatan layanan |
| `-HealthCheckInterval` | Int32 | — | — | 4 | `3` | Interval dalam detik antara percobaan pemeriksaan kesehatan |
| `-ImageName` | String | — | — | 5 | `'linuxserver/wireguard'` | Nama gambar Docker kustom yang akan digunakan |
| `-PUID` | String | — | — | 6 | `'1000'` | ID Pengguna untuk izin di dalam kontainer |
| `-PGID` | String | — | — | 7 | `'1000'` | ID grup untuk izin di dalam kontainer |
| `-TimeZone` | String | — | — | 8 | `'Etc/UTC'` | Zona waktu yang akan digunakan untuk kontainer |
| `-ShowWindow` | SwitchParameter | — | — | Named | — | Tampilkan jendela Docker saat menjalankan WireGuard |
| `-NoBorders` | SwitchParameter | — | — | Named | — | Hapus batas jendela untuk jendela Docker |
| `-Width` | Int32 | — | — | 9 | `-1` | Mengatur lebar jendela Docker |
| `-Height` | Int32 | — | — | 10 | `-1` | Atur ketinggian jendela Docker |
| `-Left` | Int32 | — | — | 11 | — | Atur posisi kiri jendela Docker |
| `-Right` | Int32 | — | — | 12 | — | Atur posisi kanan jendela Docker |
| `-Bottom` | Int32 | — | — | 13 | — | Setel posisi bawah jendela Docker |
| `-Centered` | SwitchParameter | — | — | Named | — | Pusatkan jendela Docker pada layar |
| `-Fullscreen` | SwitchParameter | — | — | Named | — | Jalankan jendela Docker dalam mode layar penuh |
| `-RestoreFocus` | SwitchParameter | — | — | Named | — | Kembalikan fokus ke jendela sebelumnya setelah menjalankan Docker |
| `-SideBySide` | SwitchParameter | — | — | Named | — | Tampilkan jendela Docker berdampingan dengan jendela lainnya |
| `-FocusWindow` | SwitchParameter | — | — | Named | — | Mengarahkan jendela Docker setelah diluncurkan |
| `-SetForeground` | SwitchParameter | — | — | Named | — | Atur jendela Docker sebagai jendela latar depan |
| `-SendKeyEscape` | SwitchParameter | — | — | Named | — | Kirim tombol Escape ke jendela Docker setelah diluncurkan |
| `-SendKeyHoldKeyboardFocus` | SwitchParameter | — | — | Named | — | Pertahankan fokus keyboard di jendela Docker setelah peluncuran |
| `-SendKeyUseShiftEnter` | SwitchParameter | — | — | Named | — | Gunakan Shift+Enter saat mengirim tombol ke jendela Docker |
| `-SendKeyDelayMilliSeconds` | Int32 | — | — | 14 | — | Penundaan dalam milidetik antara pengiriman tombol ke jendela Docker |
| `-SessionOnly` | SwitchParameter | — | — | Named | — | Gunakan sesi hanya untuk jendela Docker |
| `-ClearSession` | SwitchParameter | — | — | Named | — | Hapus sesi untuk jendela Docker sebelum menjalankan |
| `-SkipSession` | SwitchParameter | — | — | Named | — | Lewati sesi untuk jendela Docker |

## Examples

### Get-WireGuardPeers

```powershell
Get-WireGuardPeers
```

### Get-WireGuardPeers -NoDockerInitialize -ContainerName "custom_wireguard" `                    -ServicePort 55555

```powershell
Get-WireGuardPeers -NoDockerInitialize -ContainerName "custom_wireguard" `
                   -ServicePort 55555
```

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
### `-ContainerName <String>`

> Nama untuk kontainer Docker

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | 0 |
| **Default value** | `'wireguard'` |
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
| **Default value** | `'wireguard_data'` |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-ServicePort <Int32>`

> Nomor port untuk layanan WireGuard

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | 2 |
| **Default value** | `51839` |
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
| **Default value** | `'linuxserver/wireguard'` |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-PUID <String>`

> ID Pengguna untuk izin di dalam kontainer

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | 6 |
| **Default value** | `'1000'` |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-PGID <String>`

> ID grup untuk izin di dalam kontainer

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | 7 |
| **Default value** | `'1000'` |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-TimeZone <String>`

> Zona waktu yang akan digunakan untuk kontainer

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | 8 |
| **Default value** | `'Etc/UTC'` |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-ShowWindow`

> Tampilkan jendela Docker saat menjalankan WireGuard

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-NoBorders`

> Hapus batas jendela untuk jendela Docker

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | `nb` |
| **Accept wildcard characters?** | No |

<hr/>
### `-Width <Int32>`

> Mengatur lebar jendela Docker

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | 9 |
| **Default value** | `-1` |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-Height <Int32>`

> Atur ketinggian jendela Docker

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | 10 |
| **Default value** | `-1` |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-Left <Int32>`

> Atur posisi kiri jendela Docker

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | 11 |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-Right <Int32>`

> Atur posisi kanan jendela Docker

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | 12 |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-Bottom <Int32>`

> Setel posisi bawah jendela Docker

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | 13 |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-Centered`

> Pusatkan jendela Docker pada layar

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-Fullscreen`

> Jalankan jendela Docker dalam mode layar penuh

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | `fs` |
| **Accept wildcard characters?** | No |

<hr/>
### `-RestoreFocus`

> Kembalikan fokus ke jendela sebelumnya setelah menjalankan Docker

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | `rf`, `bg` |
| **Accept wildcard characters?** | No |

<hr/>
### `-SideBySide`

> Tampilkan jendela Docker berdampingan dengan jendela lainnya

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | `sbs` |
| **Accept wildcard characters?** | No |

<hr/>
### `-FocusWindow`

> Mengarahkan jendela Docker setelah diluncurkan

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | `fw`, `focus` |
| **Accept wildcard characters?** | No |

<hr/>
### `-SetForeground`

> Atur jendela Docker sebagai jendela latar depan

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | `fg` |
| **Accept wildcard characters?** | No |

<hr/>
### `-SendKeyEscape`

> Kirim tombol Escape ke jendela Docker setelah diluncurkan

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | `Escape` |
| **Accept wildcard characters?** | No |

<hr/>
### `-SendKeyHoldKeyboardFocus`

> Pertahankan fokus keyboard di jendela Docker setelah peluncuran

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | `HoldKeyboardFocus` |
| **Accept wildcard characters?** | No |

<hr/>
### `-SendKeyUseShiftEnter`

> Gunakan Shift+Enter saat mengirim tombol ke jendela Docker

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | `UseShiftEnter` |
| **Accept wildcard characters?** | No |

<hr/>
### `-SendKeyDelayMilliSeconds <Int32>`

> Penundaan dalam milidetik antara pengiriman tombol ke jendela Docker

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | 14 |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | `DelayMilliSeconds` |
| **Accept wildcard characters?** | No |

<hr/>
### `-SessionOnly`

> Gunakan sesi hanya untuk jendela Docker

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

> Hapus sesi untuk jendela Docker sebelum menjalankan

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-SkipSession`

> Lewati sesi untuk jendela Docker

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

- [Add-WireGuardPeer](https://github.com/genXdev/genXdev/blob/main/Docs/id-ID/Add-WireGuardPeer.md)
- [EnsureWireGuard](https://github.com/genXdev/genXdev/blob/main/Docs/id-ID/EnsureWireGuard.md)
- [Get-WireGuardPeerQRCode](https://github.com/genXdev/genXdev/blob/main/Docs/id-ID/Get-WireGuardPeerQRCode.md)
- [Get-WireGuardStatus](https://github.com/genXdev/genXdev/blob/main/Docs/id-ID/Get-WireGuardStatus.md)
- [Remove-WireGuardPeer](https://github.com/genXdev/genXdev/blob/main/Docs/id-ID/Remove-WireGuardPeer.md)
- [Reset-WireGuardConfiguration](https://github.com/genXdev/genXdev/blob/main/Docs/id-ID/Reset-WireGuardConfiguration.md)

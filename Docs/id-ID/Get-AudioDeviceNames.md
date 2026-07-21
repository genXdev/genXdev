# Get-AudioDeviceNames

> **Module:** GenXdev.Hardware | **Type:** Cmdlet | **Aliases:** —

## Synopsis

> Mengambil nama perangkat audio yang tersedia untuk menangkap mikrofon atau audio desktop.

## Description

Menghitung perangkat audio yang dapat digunakan dengan cmdlet lain yang menerima parameter AudioDevice. Ini mendukung perangkat mikrofon dan perangkat penangkapan audio desktop.

## Syntax

```powershell
Get-AudioDeviceNames [-Passthru] [-UseDesktopAudioCapture] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-UseDesktopAudioCapture` | SwitchParameter | — | — | Named | `False` | Apakah akan menampilkan perangkat penangkap audio desktop, bukan perangkat mikrofon |
| `-Passthru` | SwitchParameter | — | — | Named | `False` | Mengembalikan objek perangkat terperinci, bukan hanya nama |

## Examples

### Example 1

```powershell
Get-AudioDeviceNames
```

Mengambil daftar nama perangkat mikrofon yang tersedia.

### Example 2

```powershell
Get-AudioDeviceNames -UseDesktopAudioCapture
```

Mengambil daftar nama perangkat penangkap audio desktop yang tersedia.

### Example 3

```powershell
Get-AudioDeviceNames -Passthru
```

Mengambil objek terperinci yang berisi informasi tentang perangkat mikrofon.

## Parameter Details

### `-UseDesktopAudioCapture`

> Apakah akan menampilkan perangkat penangkap audio desktop, bukan perangkat mikrofon

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | `False` |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-Passthru`

> Mengembalikan objek perangkat terperinci, bukan hanya nama

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | `False` |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
## Related Links

- [Get-CpuCore](https://github.com/genXdev/genXdev/blob/main/Docs/id-ID/Get-CpuCore.md)
- [Get-HasCapableGpu](https://github.com/genXdev/genXdev/blob/main/Docs/id-ID/Get-HasCapableGpu.md)
- [Get-MonitorCount](https://github.com/genXdev/genXdev/blob/main/Docs/id-ID/Get-MonitorCount.md)
- [Get-NumberOfCpuCores](https://github.com/genXdev/genXdev/blob/main/Docs/id-ID/Get-NumberOfCpuCores.md)
- [Test-CpuAvx](https://github.com/genXdev/genXdev/blob/main/Docs/id-ID/Test-CpuAvx.md)

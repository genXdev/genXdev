# Get-AudioDeviceNames

> **Module:** GenXdev.Hardware | **Type:** Cmdlet | **Aliases:** —

## Synopsis

> Mikrofon veya masaüstü ses yakalama için kullanılabilir ses cihazlarının adlarını alır.

## Description

Bir AudioDevice parametresini kabul eden diğer cmdlet'lerle kullanılabilecek ses cihazlarını numaralandırır. Hem mikrofon cihazlarını hem de masaüstü ses yakalama cihazlarını destekler.

## Syntax

```powershell
Get-AudioDeviceNames [-Passthru] [-UseDesktopAudioCapture] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-UseDesktopAudioCapture` | SwitchParameter | — | — | Named | `False` | Masaüstü ses yakalama cihazlarının mikrofon cihazları yerine listelenip listelenmeyeceği |
| `-Passthru` | SwitchParameter | — | — | Named | `False` | Sadece isimler yerine ayrıntılı cihaz nesnelerini döndürür |

## Examples

### Example 1

```powershell
Get-AudioDeviceNames
```

Kullanılabilir mikrofon cihaz adlarının listesini alır.

### Example 2

```powershell
Get-AudioDeviceNames -UseDesktopAudioCapture
```

Kullanılabilir masaüstü ses yakalama aygıt adlarının listesini alır.

### Example 3

```powershell
Get-AudioDeviceNames -Passthru
```

Mikrofon cihazları hakkında bilgi içeren ayrıntılı nesneleri alır.

## Parameter Details

### `-UseDesktopAudioCapture`

> Masaüstü ses yakalama cihazlarının mikrofon cihazları yerine listelenip listelenmeyeceği

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

> Sadece isimler yerine ayrıntılı cihaz nesnelerini döndürür

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

- [Get-CpuCore](https://github.com/genXdev/genXdev/blob/main/Docs/tr-TR/Get-CpuCore.md)
- [Get-HasCapableGpu](https://github.com/genXdev/genXdev/blob/main/Docs/tr-TR/Get-HasCapableGpu.md)
- [Get-MonitorCount](https://github.com/genXdev/genXdev/blob/main/Docs/tr-TR/Get-MonitorCount.md)
- [Get-NumberOfCpuCores](https://github.com/genXdev/genXdev/blob/main/Docs/tr-TR/Get-NumberOfCpuCores.md)
- [Test-CpuAvx](https://github.com/genXdev/genXdev/blob/main/Docs/tr-TR/Test-CpuAvx.md)

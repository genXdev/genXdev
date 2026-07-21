# Get-AudioDeviceNames

> **Module:** GenXdev.Hardware | **Type:** Cmdlet | **Aliases:** —

## Synopsis

> Truy xuất tên của các thiết bị âm thanh có sẵn để thu âm thanh từ micrô hoặc màn hình máy tính.

## Description

Liệt kê các thiết bị âm thanh có thể sử dụng với các lệnh ghép khác chấp nhận tham số AudioDevice. Nó hỗ trợ cả thiết bị micrô và thiết bị thu âm thanh máy tính.

## Syntax

```powershell
Get-AudioDeviceNames [-Passthru] [-UseDesktopAudioCapture] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-UseDesktopAudioCapture` | SwitchParameter | — | — | Named | `False` | Liệt kê các thiết bị thu âm màn hình thay vì thiết bị micrô |
| `-Passthru` | SwitchParameter | — | — | Named | `False` | Trả về các đối tượng thiết bị chi tiết thay vì chỉ tên |

## Examples

### Example 1

```powershell
Get-AudioDeviceNames
```

Truy xuất danh sách các tên thiết bị micro có sẵn.

### Example 2

```powershell
Get-AudioDeviceNames -UseDesktopAudioCapture
```

Truy xuất danh sách tên thiết bị thu âm màn hình có sẵn.

### Example 3

```powershell
Get-AudioDeviceNames -Passthru
```

Truy xuất các đối tượng chi tiết chứa thông tin về các thiết bị micro.

## Parameter Details

### `-UseDesktopAudioCapture`

> Liệt kê các thiết bị thu âm màn hình thay vì thiết bị micrô

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

> Trả về các đối tượng thiết bị chi tiết thay vì chỉ tên

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

- [Get-CpuCore](https://github.com/genXdev/genXdev/blob/main/Docs/vi-VN/Get-CpuCore.md)
- [Get-HasCapableGpu](https://github.com/genXdev/genXdev/blob/main/Docs/vi-VN/Get-HasCapableGpu.md)
- [Get-MonitorCount](https://github.com/genXdev/genXdev/blob/main/Docs/vi-VN/Get-MonitorCount.md)
- [Get-NumberOfCpuCores](https://github.com/genXdev/genXdev/blob/main/Docs/vi-VN/Get-NumberOfCpuCores.md)
- [Test-CpuAvx](https://github.com/genXdev/genXdev/blob/main/Docs/vi-VN/Test-CpuAvx.md)

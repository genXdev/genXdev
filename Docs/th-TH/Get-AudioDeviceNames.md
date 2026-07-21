# Get-AudioDeviceNames

> **Module:** GenXdev.Hardware | **Type:** Cmdlet | **Aliases:** —

## Synopsis

> เรียกดูชื่อของอุปกรณ์เสียงที่มีสำหรับการจับภาพเสียงจากไมโครโฟนหรือเดสก์ท็อป

## Description

แจกแจงอุปกรณ์เสียงที่สามารถใช้กับ cmdlet อื่นที่ยอมรับพารามิเตอร์ AudioDevice รองรับทั้งอุปกรณ์ไมโครโฟนและอุปกรณ์บันทึกเสียงเดสก์ท็อป

## Syntax

```powershell
Get-AudioDeviceNames [-Passthru] [-UseDesktopAudioCapture] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-UseDesktopAudioCapture` | SwitchParameter | — | — | Named | `False` | ว่าจะแสดงรายการอุปกรณ์บันทึกเสียงเดสก์ท็อปแทนอุปกรณ์ไมโครโฟน |
| `-Passthru` | SwitchParameter | — | — | Named | `False` | ส่งคืนวัตถุอุปกรณ์โดยละเอียดแทนที่จะเป็นเพียงชื่อ |

## Examples

### Example 1

```powershell
Get-AudioDeviceNames
```

ดึงรายชื่ออุปกรณ์ไมโครโฟนที่พร้อมใช้งาน

### Example 2

```powershell
Get-AudioDeviceNames -UseDesktopAudioCapture
```

ดึงรายการชื่ออุปกรณ์บันทึกเสียงเดสก์ท็อปที่พร้อมใช้งาน

### Example 3

```powershell
Get-AudioDeviceNames -Passthru
```

ดึงข้อมูลอ็อบเจ็กต์โดยละเอียดที่มีข้อมูลเกี่ยวกับอุปกรณ์ไมโครโฟน

## Parameter Details

### `-UseDesktopAudioCapture`

> ว่าจะแสดงรายการอุปกรณ์บันทึกเสียงเดสก์ท็อปแทนอุปกรณ์ไมโครโฟน

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

> ส่งคืนวัตถุอุปกรณ์โดยละเอียดแทนที่จะเป็นเพียงชื่อ

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

- [Get-CpuCore](https://github.com/genXdev/genXdev/blob/main/Docs/th-TH/Get-CpuCore.md)
- [Get-HasCapableGpu](https://github.com/genXdev/genXdev/blob/main/Docs/th-TH/Get-HasCapableGpu.md)
- [Get-MonitorCount](https://github.com/genXdev/genXdev/blob/main/Docs/th-TH/Get-MonitorCount.md)
- [Get-NumberOfCpuCores](https://github.com/genXdev/genXdev/blob/main/Docs/th-TH/Get-NumberOfCpuCores.md)
- [Test-CpuAvx](https://github.com/genXdev/genXdev/blob/main/Docs/th-TH/Test-CpuAvx.md)

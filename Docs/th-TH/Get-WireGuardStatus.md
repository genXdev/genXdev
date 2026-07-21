# Get-WireGuardStatus

> **Module:** GenXdev.Windows.WireGuard | **Type:** Function | **Aliases:** —

## Synopsis

> รับข้อมูลสถานะโดยละเอียดเกี่ยวกับเซิร์ฟเวอร์ WireGuard VPN

## Description

ฟังก์ชันนี้จะดึงข้อมูลสถานะโดยละเอียดเกี่ยวกับเซิร์ฟเวอร์ WireGuard VPN ที่ทำงานในคอนเทนเนอร์ Docker รวมถึงรายละเอียดอินเทอร์เฟซ พอร์ตที่รับฟัง เพียร์ที่เชื่อมต่อ และสถานะสุขภาพของเซิร์ฟเวอร์ โดยให้ข้อมูลที่ครอบคลุมเกี่ยวกับบริการ WireGuard รวมถึงสถานะเซิร์ฟเวอร์ จำนวนเพียร์ เวลาทำงาน และรายละเอียดการกำหนดค่าเครือข่าย

## Syntax

```powershell
Get-WireGuardStatus [[-ContainerName] <String>] [[-VolumeName] <String>] [[-ServicePort] <Int32>] [[-HealthCheckTimeout] <Int32>] [[-HealthCheckInterval] <Int32>] [[-ImageName] <String>] [[-PUID] <String>] [[-PGID] <String>] [[-TimeZone] <String>] [[-Width] <Int32>] [[-Height] <Int32>] [[-Left] <Int32>] [[-Right] <Int32>] [[-Bottom] <Int32>] [[-SendKeyDelayMilliSeconds] <Int32>] [-Centered] [-ClearSession] [-FocusWindow] [-Force] [-Fullscreen] [-NoBorders] [-NoDockerInitialize] [-RestoreFocus] [-SendKeyEscape] [-SendKeyHoldKeyboardFocus] [-SendKeyUseShiftEnter] [-SessionOnly] [-SetForeground] [-ShowWindow] [-SideBySide] [-SkipSession] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-NoDockerInitialize` | SwitchParameter | — | — | Named | — | ข้ามการเริ่มต้น Docker (ใช้เมื่อถูกเรียกจากฟังก์ชันหลักอยู่แล้ว) |
| `-Force` | SwitchParameter | — | — | Named | — | บังคับสร้าง Docker container ใหม่และลบข้อมูลที่มีอยู่ |
| `-ContainerName` | String | — | — | 0 | `'wireguard'` | ชื่อสำหรับคอนเทนเนอร์ Docker |
| `-VolumeName` | String | — | — | 1 | `'wireguard_data'` | ชื่อของวอลุ่ม Docker สำหรับที่เก็บข้อมูลแบบถาวร |
| `-ServicePort` | Int32 | — | — | 2 | `51839` | หมายเลขพอร์ตสำหรับบริการ WireGuard |
| `-HealthCheckTimeout` | Int32 | — | — | 3 | `60` | เวลาสูงสุดในหน่วยวินาทีที่รอการตรวจสอบสถานะบริการ |
| `-HealthCheckInterval` | Int32 | — | — | 4 | `3` | ช่วงเวลาเป็นวินาทีระหว่างการตรวจสอบสถานะ |
| `-ImageName` | String | — | — | 5 | `'linuxserver/wireguard'` | ชื่ออิมเมจ Docker ที่กำหนดเองที่จะใช้ |
| `-PUID` | String | — | — | 6 | `'1000'` | ID ผู้ใช้สำหรับสิทธิ์ในคอนเทนเนอร์ |
| `-PGID` | String | — | — | 7 | `'1000'` | รหัสกลุ่มสำหรับสิทธิ์ในคอนเทนเนอร์ |
| `-TimeZone` | String | — | — | 8 | `'Etc/UTC'` | เขตเวลาที่จะใช้สำหรับคอนเทนเนอร์ |
| `-ShowWindow` | SwitchParameter | — | — | Named | — | แสดงหน้าต่างเมื่อรันคอนเทนเนอร์ (pass-through) |
| `-NoBorders` | SwitchParameter | — | — | Named | — | ลบขอบหน้าต่าง (ทะลุผ่าน) |
| `-Width` | Int32 | — | — | 9 | `-1` | ความกว้างหน้าต่างในหน่วยอักขระหรือพิกเซล (ส่งผ่าน) |
| `-Height` | Int32 | — | — | 10 | `-1` | ความสูงของหน้าต่างเป็นตัวอักษรหรือพิกเซล (pass-through) |
| `-Left` | Int32 | — | — | 11 | — | ตำแหน่งหน้าต่างทางซ้าย (ผ่านผ่าน) |
| `-Right` | Int32 | — | — | 12 | — | ตำแหน่งหน้าต่างด้านขวา (ทะลุผ่าน) |
| `-Bottom` | Int32 | — | — | 13 | — | ตำแหน่งขอบล่างของหน้าต่าง (ทะลุผ่าน) |
| `-Centered` | SwitchParameter | — | — | Named | — | จัดหน้าต่างให้อยู่กึ่งกลาง (ส่งผ่าน) |
| `-Fullscreen` | SwitchParameter | — | — | Named | — | เปิดหน้าต่างในโหมดเต็มหน้าจอ (พาส-ทรู) |
| `-RestoreFocus` | SwitchParameter | — | — | Named | — | เรียกคืนโฟกัสไปยังหน้าต่างหลังจากการดำเนินการ (pass-through) |
| `-SideBySide` | SwitchParameter | — | — | Named | — | แสดงหน้าต่างแบบเคียงข้างกัน (ผ่านทะลุ) |
| `-FocusWindow` | SwitchParameter | — | — | Named | — | โฟกัสที่หน้าต่างหลังจากเปิด (แบบผ่าน) |
| `-SetForeground` | SwitchParameter | — | — | Named | — | ตั้งค่าหน้าต่างให้อยู่เบื้องหน้า (pass-through) |
| `-SendKeyEscape` | SwitchParameter | — | — | Named | — | ส่ง Escape key ไปที่หน้าต่าง (ส่งผ่าน) |
| `-SendKeyHoldKeyboardFocus` | SwitchParameter | — | — | Named | — | คงการโฟกัสของคีย์บอร์ดเมื่อส่งคีย์ (แบบทะลุผ่าน) |
| `-SendKeyUseShiftEnter` | SwitchParameter | — | — | Named | — | ใช้ Shift+Enter เมื่อส่งคีย์ (pass-through) |
| `-SendKeyDelayMilliSeconds` | Int32 | — | — | 14 | — | ความล่าช้าในหน่วยมิลลิวินาทีระหว่างการส่งคีย์ (pass-through) |
| `-SessionOnly` | SwitchParameter | — | — | Named | — | โหมดเฉพาะเซสชัน (ส่งผ่าน) |
| `-ClearSession` | SwitchParameter | — | — | Named | — | ล้างข้อมูลเซสชัน (ส่งผ่าน) |
| `-SkipSession` | SwitchParameter | — | — | Named | — | ข้ามการเริ่มต้นเซสชัน (pass-through) |

## Examples

### Get-WireGuardStatus

```powershell
Get-WireGuardStatus
```

ส่งคืนสถานะของเซิร์ฟเวอร์ WireGuard ด้วยการตั้งค่าเริ่มต้น

### Get-WireGuardStatus -NoDockerInitialize -ContainerName "custom_wireguard"

```powershell
Get-WireGuardStatus -NoDockerInitialize -ContainerName "custom_wireguard"
```

ดึงสถานะสำหรับคอนเทนเนอร์ที่กำหนดเองโดยไม่ต้องเริ่มต้น Docker

## Parameter Details

### `-NoDockerInitialize`

> ข้ามการเริ่มต้น Docker (ใช้เมื่อถูกเรียกจากฟังก์ชันหลักอยู่แล้ว)

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

> บังคับสร้าง Docker container ใหม่และลบข้อมูลที่มีอยู่

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

> ชื่อสำหรับคอนเทนเนอร์ Docker

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

> ชื่อของวอลุ่ม Docker สำหรับที่เก็บข้อมูลแบบถาวร

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

> หมายเลขพอร์ตสำหรับบริการ WireGuard

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

> เวลาสูงสุดในหน่วยวินาทีที่รอการตรวจสอบสถานะบริการ

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

> ช่วงเวลาเป็นวินาทีระหว่างการตรวจสอบสถานะ

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

> ชื่ออิมเมจ Docker ที่กำหนดเองที่จะใช้

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

> ID ผู้ใช้สำหรับสิทธิ์ในคอนเทนเนอร์

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

> รหัสกลุ่มสำหรับสิทธิ์ในคอนเทนเนอร์

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

> เขตเวลาที่จะใช้สำหรับคอนเทนเนอร์

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

> แสดงหน้าต่างเมื่อรันคอนเทนเนอร์ (pass-through)

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

> ลบขอบหน้าต่าง (ทะลุผ่าน)

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

> ความกว้างหน้าต่างในหน่วยอักขระหรือพิกเซล (ส่งผ่าน)

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

> ความสูงของหน้าต่างเป็นตัวอักษรหรือพิกเซล (pass-through)

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

> ตำแหน่งหน้าต่างทางซ้าย (ผ่านผ่าน)

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

> ตำแหน่งหน้าต่างด้านขวา (ทะลุผ่าน)

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

> ตำแหน่งขอบล่างของหน้าต่าง (ทะลุผ่าน)

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

> จัดหน้าต่างให้อยู่กึ่งกลาง (ส่งผ่าน)

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

> เปิดหน้าต่างในโหมดเต็มหน้าจอ (พาส-ทรู)

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

> เรียกคืนโฟกัสไปยังหน้าต่างหลังจากการดำเนินการ (pass-through)

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

> แสดงหน้าต่างแบบเคียงข้างกัน (ผ่านทะลุ)

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

> โฟกัสที่หน้าต่างหลังจากเปิด (แบบผ่าน)

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

> ตั้งค่าหน้าต่างให้อยู่เบื้องหน้า (pass-through)

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

> ส่ง Escape key ไปที่หน้าต่าง (ส่งผ่าน)

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

> คงการโฟกัสของคีย์บอร์ดเมื่อส่งคีย์ (แบบทะลุผ่าน)

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

> ใช้ Shift+Enter เมื่อส่งคีย์ (pass-through)

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

> ความล่าช้าในหน่วยมิลลิวินาทีระหว่างการส่งคีย์ (pass-through)

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

> โหมดเฉพาะเซสชัน (ส่งผ่าน)

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

> ล้างข้อมูลเซสชัน (ส่งผ่าน)

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

> ข้ามการเริ่มต้นเซสชัน (pass-through)

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

- [Add-WireGuardPeer](https://github.com/genXdev/genXdev/blob/main/Docs/th-TH/Add-WireGuardPeer.md)
- [EnsureWireGuard](https://github.com/genXdev/genXdev/blob/main/Docs/th-TH/EnsureWireGuard.md)
- [Get-WireGuardPeerQRCode](https://github.com/genXdev/genXdev/blob/main/Docs/th-TH/Get-WireGuardPeerQRCode.md)
- [Get-WireGuardPeers](https://github.com/genXdev/genXdev/blob/main/Docs/th-TH/Get-WireGuardPeers.md)
- [Remove-WireGuardPeer](https://github.com/genXdev/genXdev/blob/main/Docs/th-TH/Remove-WireGuardPeer.md)
- [Reset-WireGuardConfiguration](https://github.com/genXdev/genXdev/blob/main/Docs/th-TH/Reset-WireGuardConfiguration.md)

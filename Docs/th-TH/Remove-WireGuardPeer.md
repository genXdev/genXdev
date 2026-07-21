# Remove-WireGuardPeer

> **Module:** GenXdev.Windows.WireGuard | **Type:** Function | **Aliases:** —

## Synopsis

> ลบการกำหนดค่าเพื่อน WireGuard VPN

## Description

ฟังก์ชันนี้จะลบการกำหนดค่าไคลเอ็นต์ WireGuard VPN ออกจากเซิร์ฟเวอร์ที่ทำงานในคอนเทนเนอร์ Docker โดยจะลบไฟล์การกำหนดค่าของไคลเอ็นต์และอัปเดตเซิร์ฟเวอร์ WireGuard เพื่อหยุดการรับการเชื่อมต่อจากไคลเอ็นต์นี้ ฟังก์ชันจะตรวจสอบการมีอยู่ของไคลเอ็นต์ก่อนการลบ และให้ข้อความยืนยันเว้นแต่จะระบุพารามิเตอร์ Force

## Syntax

```powershell
Remove-WireGuardPeer -PeerName <String> [-Bottom] [-Centered] [-ClearSession] [-ContainerName <String>] [-FocusWindow] [-Force] [-Fullscreen] [-HealthCheckInterval <Int32>] [-HealthCheckTimeout <Int32>] [-Height <Int32>] [-ImageName <String>] [-Left] [-NoBorders] [-NoDockerInitialize] [-PGID <String>] [-PUID <String>] [-RestoreFocus] [-Right] [-SendKeyDelayMilliSeconds <Int32>] [-SendKeyEscape] [-SendKeyHoldKeyboardFocus] [-SendKeyUseShiftEnter] [-ServicePort <Int32>] [-SessionOnly] [-SetForeground] [-ShowWindow] [-SideBySide] [-SkipSession] [-TimeZone <String>] [-VolumeName <String>] [-Width <Int32>] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-PeerName` | String | ✅ | — | 0 | — | ชื่อของเพียร์ที่ต้องการลบ |
| `-ContainerName` | String | — | — | Named | `'wireguard'` | ชื่อสำหรับคอนเทนเนอร์ Docker |
| `-VolumeName` | String | — | — | Named | `'wireguard_data'` | ชื่อของวอลุ่ม Docker สำหรับที่เก็บข้อมูลแบบถาวร |
| `-ServicePort` | Int32 | — | — | Named | `51839` | หมายเลขพอร์ตสำหรับบริการ WireGuard |
| `-HealthCheckTimeout` | Int32 | — | — | Named | `60` | เวลาสูงสุดในหน่วยวินาทีที่รอการตรวจสอบสถานะบริการ |
| `-HealthCheckInterval` | Int32 | — | — | Named | `3` | ช่วงเวลาเป็นวินาทีระหว่างการตรวจสอบสถานะ |
| `-ImageName` | String | — | — | Named | `'linuxserver/wireguard'` | ชื่ออิมเมจ Docker ที่กำหนดเองที่จะใช้ |
| `-PUID` | String | — | — | Named | `'1000'` | ID ผู้ใช้สำหรับสิทธิ์ในคอนเทนเนอร์ |
| `-PGID` | String | — | — | Named | `'1000'` | รหัสกลุ่มสำหรับสิทธิ์ในคอนเทนเนอร์ |
| `-TimeZone` | String | — | — | Named | `'Etc/UTC'` | เขตเวลาที่จะใช้สำหรับคอนเทนเนอร์ |
| `-Force` | SwitchParameter | — | — | Named | — | บังคับลบโดยไม่ต้องยืนยัน |
| `-NoDockerInitialize` | SwitchParameter | — | — | Named | — | ข้ามการเริ่มต้น Docker เมื่อถูกเรียกโดยฟังก์ชันต้นทาง |
| `-ShowWindow` | SwitchParameter | — | — | Named | — | แสดงหน้าต่าง Docker Desktop ระหว่างการเริ่มต้นระบบ |
| `-NoBorders` | SwitchParameter | — | — | Named | — | ลบขอบของหน้าต่าง |
| `-Width` | Int32 | — | — | Named | `-1` | ความกว้างเริ่มต้นของหน้าต่าง |
| `-Height` | Int32 | — | — | Named | `-1` | ความสูงเริ่มต้นของหน้าต่าง |
| `-Left` | SwitchParameter | — | — | Named | — | วางหน้าต่างไว้ที่ด้านซ้ายของหน้าจอ |
| `-Right` | SwitchParameter | — | — | Named | — | วางหน้าต่างไว้ทางด้านขวาของหน้าจอ |
| `-Bottom` | SwitchParameter | — | — | Named | — | วางหน้าต่างไว้ทางด้านล่างของหน้าจอ |
| `-Centered` | SwitchParameter | — | — | Named | — | วางหน้าต่างให้อยู่ตรงกลางของหน้าจอ |
| `-Fullscreen` | SwitchParameter | — | — | Named | — | ขยายหน้าต่างให้ใหญ่สุด |
| `-RestoreFocus` | SwitchParameter | — | — | Named | — | คืนค่าโฟกัสหน้าต่าง PowerShell |
| `-SideBySide` | SwitchParameter | — | — | Named | — | จะตั้งค่าหน้าต่างให้เต็มหน้าจอบนจอภาพอื่นที่ไม่ใช่ PowerShell หรือวางเคียงข้างกับ PowerShell บนจอภาพเดียวกัน |
| `-FocusWindow` | SwitchParameter | — | — | Named | — | โฟกัสที่หน้าต่างหลังจากเปิด |
| `-SetForeground` | SwitchParameter | — | — | Named | — | ตั้งค่าหน้าต่างให้อยู่เบื้องหน้าหลังจากเปิด |
| `-SendKeyEscape` | SwitchParameter | — | — | Named | — | หลีกเลี่ยงอักขระควบคุมและตัวปรับแต่งเมื่อส่งคีย์ |
| `-SendKeyHoldKeyboardFocus` | SwitchParameter | — | — | Named | — | คงการโฟกัสคีย์บอร์ดไว้ที่หน้าต่างเป้าหมายเมื่อส่งคีย์ |
| `-SendKeyUseShiftEnter` | SwitchParameter | — | — | Named | — | ใช้ Shift+Enter แทน Enter เมื่อส่งคีย์ |
| `-SendKeyDelayMilliSeconds` | Int32 | — | — | Named | — | ความล่าช้าระหว่างสตริงอินพุตที่แตกต่างกันในหน่วยมิลลิวินาทีเมื่อส่งคีย์ |
| `-SessionOnly` | SwitchParameter | — | — | Named | — | ใช้การตั้งค่าสำรองที่จัดเก็บในเซสชันสำหรับการกำหนดค่าปัญญาประดิษฐ์ |
| `-ClearSession` | SwitchParameter | — | — | Named | — | ล้างการตั้งค่าสำรองที่เก็บไว้ในเซสชันสำหรับการกำหนดลักษณะ AI |
| `-SkipSession` | SwitchParameter | — | — | Named | — | จัดเก็บการตั้งค่าเฉพาะในการกำหนดลักษณะถาวร โดยไม่กระทบต่อเซสชัน |

## Examples

### Remove-WireGuardPeer -PeerName "MyPhone"

```powershell
Remove-WireGuardPeer -PeerName "MyPhone"
```

ลบเพียร์ที่ชื่อ "MyPhone" พร้อมพร้อมท์ยืนยัน

### Remove-WireGuardPeer -PeerName "Tablet" -Force

```powershell
Remove-WireGuardPeer -PeerName "Tablet" -Force
```

ลบเพียร์ที่มีชื่อ "Tablet" โดยไม่ต้องยืนยัน

### Remove-WireGuardPeer "WorkLaptop"

```powershell
Remove-WireGuardPeer "WorkLaptop"
```

ลบเพียร์โดยใช้ไวยากรณ์พารามิเตอร์ตำแหน่ง

## Parameter Details

### `-PeerName <String>`

> ชื่อของเพียร์ที่ต้องการลบ

| Property | Value |
|:---|:---|
| **Required?** | Yes |
| **Position?** | 0 |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-ContainerName <String>`

> ชื่อสำหรับคอนเทนเนอร์ Docker

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
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
| **Position?** | Named |
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
| **Position?** | Named |
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
| **Position?** | Named |
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
| **Position?** | Named |
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
| **Position?** | Named |
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
| **Position?** | Named |
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
| **Position?** | Named |
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
| **Position?** | Named |
| **Default value** | `'Etc/UTC'` |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-Force`

> บังคับลบโดยไม่ต้องยืนยัน

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | `ForceRebuild` |
| **Accept wildcard characters?** | No |

<hr/>
### `-NoDockerInitialize`

> ข้ามการเริ่มต้น Docker เมื่อถูกเรียกโดยฟังก์ชันต้นทาง

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

> แสดงหน้าต่าง Docker Desktop ระหว่างการเริ่มต้นระบบ

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

> ลบขอบของหน้าต่าง

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

> ความกว้างเริ่มต้นของหน้าต่าง

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | `-1` |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-Height <Int32>`

> ความสูงเริ่มต้นของหน้าต่าง

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | `-1` |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-Left`

> วางหน้าต่างไว้ที่ด้านซ้ายของหน้าจอ

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-Right`

> วางหน้าต่างไว้ทางด้านขวาของหน้าจอ

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-Bottom`

> วางหน้าต่างไว้ทางด้านล่างของหน้าจอ

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-Centered`

> วางหน้าต่างให้อยู่ตรงกลางของหน้าจอ

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

> ขยายหน้าต่างให้ใหญ่สุด

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

> คืนค่าโฟกัสหน้าต่าง PowerShell

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

> จะตั้งค่าหน้าต่างให้เต็มหน้าจอบนจอภาพอื่นที่ไม่ใช่ PowerShell หรือวางเคียงข้างกับ PowerShell บนจอภาพเดียวกัน

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

> โฟกัสที่หน้าต่างหลังจากเปิด

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

> ตั้งค่าหน้าต่างให้อยู่เบื้องหน้าหลังจากเปิด

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

> หลีกเลี่ยงอักขระควบคุมและตัวปรับแต่งเมื่อส่งคีย์

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

> คงการโฟกัสคีย์บอร์ดไว้ที่หน้าต่างเป้าหมายเมื่อส่งคีย์

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

> ใช้ Shift+Enter แทน Enter เมื่อส่งคีย์

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

> ความล่าช้าระหว่างสตริงอินพุตที่แตกต่างกันในหน่วยมิลลิวินาทีเมื่อส่งคีย์

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | `DelayMilliSeconds` |
| **Accept wildcard characters?** | No |

<hr/>
### `-SessionOnly`

> ใช้การตั้งค่าสำรองที่จัดเก็บในเซสชันสำหรับการกำหนดค่าปัญญาประดิษฐ์

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

> ล้างการตั้งค่าสำรองที่เก็บไว้ในเซสชันสำหรับการกำหนดลักษณะ AI

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

> จัดเก็บการตั้งค่าเฉพาะในการกำหนดลักษณะถาวร โดยไม่กระทบต่อเซสชัน

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
- [Get-WireGuardStatus](https://github.com/genXdev/genXdev/blob/main/Docs/th-TH/Get-WireGuardStatus.md)
- [Reset-WireGuardConfiguration](https://github.com/genXdev/genXdev/blob/main/Docs/th-TH/Reset-WireGuardConfiguration.md)

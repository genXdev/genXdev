# Add-WireGuardPeer

> **Module:** GenXdev.Windows.WireGuard | **Type:** Function | **Aliases:** —

## Synopsis

> เพิ่มการกำหนดค่า WireGuard VPN peer (ไคลเอนต์) ใหม่ให้กับเซิร์ฟเวอร์

## Description

ฟังก์ชันนี้เพิ่มเพียร์ใหม่ไปยังเซิร์ฟเวอร์ WireGuard VPN ที่ทำงานในคอนเทนเนอร์ Docker โดยสร้างการกำหนดค่าไคลเอ็นต์ใหม่พร้อมที่อยู่ IP ที่ไม่ซ้ำกัน สร้างคีย์การเข้ารหัสที่จำเป็น และส่งคืนรายละเอียดการกำหนดค่า ฟังก์ชันสามารถบันทึกการกำหนดค่าไฟล์หรือสร้างโค้ด QR สำหรับการตั้งค่าอุปกรณ์มือถือได้อย่างสะดวก ฟังก์ชันตรวจสอบชื่อเพียร์ ตรวจสอบชื่อที่ซ้ำกัน และจัดการสภาวะข้อผิดพลาดต่างๆ อย่างเหมาะสม

## Syntax

```powershell
Add-WireGuardPeer -PeerName <String> [[-AllowedIPs] <String>] [[-DNS] <String>] [[-OutputPath] <String>] [[-ContainerName] <String>] [[-VolumeName] <String>] [[-ServicePort] <Int32>] [[-HealthCheckTimeout] <Int32>] [[-HealthCheckInterval] <Int32>] [[-ImageName] <String>] [[-PUID] <String>] [[-PGID] <String>] [[-TimeZone] <String>] [-Bottom <Int32>] [-Centered] [-ClearSession] [-FocusWindow] [-Force] [-Fullscreen] [-Height <Int32>] [-Left <Int32>] [-NoBorders] [-NoDockerInitialize] [-RestoreFocus] [-Right <Int32>] [-SaveConfig] [-SendKeyDelayMilliSeconds <Int32>] [-SendKeyEscape] [-SendKeyHoldKeyboardFocus] [-SendKeyUseShiftEnter] [-SessionOnly] [-SetForeground] [-ShowQRCode] [-ShowWindow] [-SideBySide] [-SkipSession] [-Width <Int32>] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-PeerName` | String | ✅ | — | 0 | — | ชื่อเฉพาะที่ใช้ระบุเพียร์ |
| `-AllowedIPs` | String | — | — | 1 | `'0.0.0.0/0, ::/0'` | ช่วง IP ที่จะถูกกำหนดเส้นทางผ่าน VPN |
| `-DNS` | String | — | — | 2 | `'1.1.1.1, 1.0.0.1'` | เซิร์ฟเวอร์ DNS ที่จะใช้สำหรับเพียร์นี้ |
| `-OutputPath` | String | — | — | 3 | `"$env:USERPROFILE\WireGuardConfigs"` | เส้นทางที่ควรบันทึกไฟล์กำหนดค่าเพียร์ |
| `-ContainerName` | String | — | — | 4 | `'wireguard'` | ชื่อสำหรับคอนเทนเนอร์ Docker |
| `-VolumeName` | String | — | — | 5 | `'wireguard_data'` | ชื่อของวอลุ่ม Docker สำหรับที่เก็บข้อมูลแบบถาวร |
| `-ServicePort` | Int32 | — | — | 6 | `51839` | หมายเลขพอร์ตสำหรับบริการ WireGuard |
| `-HealthCheckTimeout` | Int32 | — | — | 7 | `60` | เวลาสูงสุดในหน่วยวินาทีที่รอการตรวจสอบสถานะบริการ |
| `-HealthCheckInterval` | Int32 | — | — | 8 | `3` | ช่วงเวลาเป็นวินาทีระหว่างการตรวจสอบสถานะ |
| `-ImageName` | String | — | — | 9 | `'linuxserver/wireguard'` | ชื่ออิมเมจ Docker ที่กำหนดเองที่จะใช้ |
| `-PUID` | String | — | — | 10 | `'1000'` | ID ผู้ใช้สำหรับสิทธิ์ในคอนเทนเนอร์ |
| `-PGID` | String | — | — | 11 | `'1000'` | รหัสกลุ่มสำหรับสิทธิ์ในคอนเทนเนอร์ |
| `-TimeZone` | String | — | — | 12 | `'Etc/UTC'` | เขตเวลาที่จะใช้สำหรับคอนเทนเนอร์ |
| `-SaveConfig` | SwitchParameter | — | — | Named | — | บันทึกการกำหนดค่าเพียร์ลงในไฟล์ |
| `-ShowWindow` | SwitchParameter | — | — | Named | — | แสดงหน้าต่าง WireGuard เมื่อเริ่มต้นบริการ |
| `-NoBorders` | SwitchParameter | — | — | Named | — | ลบขอบหน้าต่างเมื่อเริ่มต้นบริการ |
| `-Width` | Int32 | — | — | Named | `-1` | กำหนดความกว้างของหน้าต่างเมื่อเริ่มต้นบริการ |
| `-Height` | Int32 | — | — | Named | `-1` | กำหนดความสูงของหน้าต่างเมื่อเริ่มต้นบริการ |
| `-Left` | Int32 | — | — | Named | — | กำหนดตำแหน่งซ้ายของหน้าต่างเมื่อเริ่มต้นบริการ |
| `-Right` | Int32 | — | — | Named | — | กำหนดตำแหน่งของหน้าต่างเมื่อเริ่มต้นการทำงานของบริการ |
| `-Bottom` | Int32 | — | — | Named | — | ตั้งค่าตำแหน่งด้านล่างของหน้าต่างเมื่อเริ่มต้นบริการ |
| `-Centered` | SwitchParameter | — | — | Named | — | จัดกึ่งกลางหน้าต่างเมื่อเริ่มต้นบริการ |
| `-Fullscreen` | SwitchParameter | — | — | Named | — | เริ่มบริการในโหมดเต็มหน้าจอ |
| `-RestoreFocus` | SwitchParameter | — | — | Named | — | คืนโฟกัสไปที่หน้าต่างหลังจากเริ่มต้นบริการ |
| `-SideBySide` | SwitchParameter | — | — | Named | — | แสดงหน้าต่างแบบเคียงข้างกันเมื่อเริ่มต้นบริการ |
| `-FocusWindow` | SwitchParameter | — | — | Named | — | โฟกัสหน้าต่างหลังจากเริ่มต้นบริการ |
| `-SetForeground` | SwitchParameter | — | — | Named | — | ตั้งค่าหน้าต่างให้อยู่เบื้องหน้าหลังจากเริ่มต้นบริการ |
| `-SendKeyEscape` | SwitchParameter | — | — | Named | — | ส่งคีย์ Escape ไปยังหน้าต่างหลังจากเริ่มต้นบริการ |
| `-SendKeyHoldKeyboardFocus` | SwitchParameter | — | — | Named | — | คงการโฟกัสที่คีย์บอร์ดเมื่อส่งคีย์หลังจากเริ่มต้นบริการ |
| `-SendKeyUseShiftEnter` | SwitchParameter | — | — | Named | — | ใช้ Shift+Enter เมื่อส่งคีย์หลังจากเริ่มต้นบริการ |
| `-SendKeyDelayMilliSeconds` | Int32 | — | — | Named | — | ความล่าช้าในหน่วยมิลลิวินาทีเมื่อส่งคีย์หลังจากเริ่มต้นบริการ |
| `-SessionOnly` | SwitchParameter | — | — | Named | — | ใช้เซสชันสำหรับบริการ WireGuard เท่านั้น |
| `-ClearSession` | SwitchParameter | — | — | Named | — | ล้างเซสชันเมื่อเริ่มต้นบริการ |
| `-SkipSession` | SwitchParameter | — | — | Named | — | ข้ามเซสชันเมื่อเริ่มต้นบริการ |
| `-ShowQRCode` | SwitchParameter | — | — | Named | — | สร้าง QR Code เพื่อการตั้งค่ามือถือที่ง่ายดาย |
| `-NoDockerInitialize` | SwitchParameter | — | — | Named | — | ข้ามการเริ่มต้น Docker (ใช้เมื่อถูกเรียกจากฟังก์ชันหลักอยู่แล้ว) |
| `-Force` | SwitchParameter | — | — | Named | — | บังคับสร้าง Docker container ใหม่และลบข้อมูลที่มีอยู่ |

## Examples

### Add-WireGuardPeer -PeerName "MyPhone" -AllowedIPs "0.0.0.0/0, ::/0" `     -DNS "1.1.1.1, 1.0.0.1" -SaveConfig -OutputPath `     "$env:USERPROFILE\WireGuardConfigs" -ShowQRCode -ContainerName "wireguard" `     -VolumeName "wireguard_data" -ServicePort 51839 -HealthCheckTimeout 60 `     -HealthCheckInterval 3 -ImageName "linuxserver/wireguard" -PUID "1000" `     -PGID "1000" -TimeZone "Etc/UTC"

```powershell
Add-WireGuardPeer -PeerName "MyPhone" -AllowedIPs "0.0.0.0/0, ::/0" `
    -DNS "1.1.1.1, 1.0.0.1" -SaveConfig -OutputPath `
    "$env:USERPROFILE\WireGuardConfigs" -ShowQRCode -ContainerName "wireguard" `
    -VolumeName "wireguard_data" -ServicePort 51839 -HealthCheckTimeout 60 `
    -HealthCheckInterval 3 -ImageName "linuxserver/wireguard" -PUID "1000" `
    -PGID "1000" -TimeZone "Etc/UTC"
```

### Add-WireGuardPeer "MyTablet" -ShowQRCode

```powershell
Add-WireGuardPeer "MyTablet" -ShowQRCode
```

## Parameter Details

### `-PeerName <String>`

> ชื่อเฉพาะที่ใช้ระบุเพียร์

| Property | Value |
|:---|:---|
| **Required?** | Yes |
| **Position?** | 0 |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-AllowedIPs <String>`

> ช่วง IP ที่จะถูกกำหนดเส้นทางผ่าน VPN

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | 1 |
| **Default value** | `'0.0.0.0/0, ::/0'` |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-DNS <String>`

> เซิร์ฟเวอร์ DNS ที่จะใช้สำหรับเพียร์นี้

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | 2 |
| **Default value** | `'1.1.1.1, 1.0.0.1'` |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-OutputPath <String>`

> เส้นทางที่ควรบันทึกไฟล์กำหนดค่าเพียร์

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | 3 |
| **Default value** | `"$env:USERPROFILE\WireGuardConfigs"` |
| **Accept pipeline input?** | False |
| **Aliases** | `outfile`, `OutputFile` |
| **Accept wildcard characters?** | No |

<hr/>
### `-ContainerName <String>`

> ชื่อสำหรับคอนเทนเนอร์ Docker

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | 4 |
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
| **Position?** | 5 |
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
| **Position?** | 6 |
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
| **Position?** | 7 |
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
| **Position?** | 8 |
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
| **Position?** | 9 |
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
| **Position?** | 10 |
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
| **Position?** | 11 |
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
| **Position?** | 12 |
| **Default value** | `'Etc/UTC'` |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-SaveConfig`

> บันทึกการกำหนดค่าเพียร์ลงในไฟล์

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

> แสดงหน้าต่าง WireGuard เมื่อเริ่มต้นบริการ

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

> ลบขอบหน้าต่างเมื่อเริ่มต้นบริการ

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

> กำหนดความกว้างของหน้าต่างเมื่อเริ่มต้นบริการ

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

> กำหนดความสูงของหน้าต่างเมื่อเริ่มต้นบริการ

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | `-1` |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-Left <Int32>`

> กำหนดตำแหน่งซ้ายของหน้าต่างเมื่อเริ่มต้นบริการ

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-Right <Int32>`

> กำหนดตำแหน่งของหน้าต่างเมื่อเริ่มต้นการทำงานของบริการ

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-Bottom <Int32>`

> ตั้งค่าตำแหน่งด้านล่างของหน้าต่างเมื่อเริ่มต้นบริการ

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

> จัดกึ่งกลางหน้าต่างเมื่อเริ่มต้นบริการ

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

> เริ่มบริการในโหมดเต็มหน้าจอ

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

> คืนโฟกัสไปที่หน้าต่างหลังจากเริ่มต้นบริการ

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

> แสดงหน้าต่างแบบเคียงข้างกันเมื่อเริ่มต้นบริการ

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

> โฟกัสหน้าต่างหลังจากเริ่มต้นบริการ

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

> ตั้งค่าหน้าต่างให้อยู่เบื้องหน้าหลังจากเริ่มต้นบริการ

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

> ส่งคีย์ Escape ไปยังหน้าต่างหลังจากเริ่มต้นบริการ

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

> คงการโฟกัสที่คีย์บอร์ดเมื่อส่งคีย์หลังจากเริ่มต้นบริการ

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

> ใช้ Shift+Enter เมื่อส่งคีย์หลังจากเริ่มต้นบริการ

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

> ความล่าช้าในหน่วยมิลลิวินาทีเมื่อส่งคีย์หลังจากเริ่มต้นบริการ

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

> ใช้เซสชันสำหรับบริการ WireGuard เท่านั้น

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

> ล้างเซสชันเมื่อเริ่มต้นบริการ

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

> ข้ามเซสชันเมื่อเริ่มต้นบริการ

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | `FromPreferences` |
| **Accept wildcard characters?** | No |

<hr/>
### `-ShowQRCode`

> สร้าง QR Code เพื่อการตั้งค่ามือถือที่ง่ายดาย

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
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
## Related Links

- [EnsureWireGuard](https://github.com/genXdev/genXdev/blob/main/Docs/th-TH/EnsureWireGuard.md)
- [Get-WireGuardPeerQRCode](https://github.com/genXdev/genXdev/blob/main/Docs/th-TH/Get-WireGuardPeerQRCode.md)
- [Get-WireGuardPeers](https://github.com/genXdev/genXdev/blob/main/Docs/th-TH/Get-WireGuardPeers.md)
- [Get-WireGuardStatus](https://github.com/genXdev/genXdev/blob/main/Docs/th-TH/Get-WireGuardStatus.md)
- [Remove-WireGuardPeer](https://github.com/genXdev/genXdev/blob/main/Docs/th-TH/Remove-WireGuardPeer.md)
- [Reset-WireGuardConfiguration](https://github.com/genXdev/genXdev/blob/main/Docs/th-TH/Reset-WireGuardConfiguration.md)

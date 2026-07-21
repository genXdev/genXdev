# Set-GenXdevPreference

> **Module:** GenXdev.Data.Preferences | **Type:** Cmdlet | **Aliases:** `setPreference`

## Synopsis

> ตั้งค่ากำหนดในที่เก็บการกำหนดค่าของ GenXdev

## Description

* จัดการค่ากำหนดในที่จัดเก็บในเครื่องของ GenXdev
* สามารถตั้งค่ากำหนดใหม่ อัปเดตค่าที่มีอยู่ หรือลบออกเมื่อมีการระบุค่า null/ว่างเปล่า
* ค่ากำหนดจะถูกจัดเก็บด้วยการซิงโครไนซ์ตั้งค่าเป็น "Local"

## Syntax

```powershell
Set-GenXdevPreference -Name <String> [[-Value] <String>] [-ClearSession] [-PreferencesDatabasePath <String>] [-SessionOnly] [-SkipSession] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-Name` | String | ✅ | ✅ (ByValue, ByPropertyName) | 0 | — | ชื่อของค่ากำหนดที่ต้องการตั้งค่า |
| `-Value` | String | — | ✅ (ByPropertyName) | 1 | — | ค่าที่จะจัดเก็บสำหรับการกำหนดลักษณะ |
| `-SessionOnly` | SwitchParameter | — | — | Named | `False` | ใช้การตั้งค่าสำรองที่เก็บไว้ในเซสชันสำหรับการตั้งค่าข้อมูล เช่น ภาษา ตำแหน่งฐานข้อมูล ฯลฯ |
| `-ClearSession` | SwitchParameter | — | — | Named | `False` | ล้างการตั้งค่าเซสชัน (ตัวแปรส่วนกลาง) ก่อนที่จะเรียกค้น |
| `-PreferencesDatabasePath` | String | — | — | Named | — | เส้นทางฐานข้อมูลสำหรับไฟล์ข้อมูลการตั้งค่า |
| `-SkipSession` | SwitchParameter | — | — | Named | `False` | อย่าใช้การตั้งค่าสำรองที่เก็บในเซสชันสำหรับการกำหนดลักษณะข้อมูล เช่น ภาษา เส้นทางฐานข้อมูล ฯลฯ |

## Examples

### Example 1

```powershell
Set-GenXdevPreference -Name "Theme" -Value "Dark"
```

ตั้งค่าการกำหนดลักษณะ "ธีม" เป็น "มืด" ในร้านค้าท้องถิ่น

### Example 2

```powershell
setPreference Theme Light
```

ใช้นามแฝงและพารามิเตอร์ตามตำแหน่งเพื่อกำหนดค่ากำหนดธีม

## Parameter Details

### `-Name <String>`

> ชื่อของค่ากำหนดที่ต้องการตั้งค่า

| Property | Value |
|:---|:---|
| **Required?** | Yes |
| **Position?** | 0 |
| **Default value** | *(none)* |
| **Accept pipeline input?** | True (ByValue, ByPropertyName) |
| **Aliases** | `PreferenceName` |
| **Accept wildcard characters?** | No |

<hr/>
### `-Value <String>`

> ค่าที่จะจัดเก็บสำหรับการกำหนดลักษณะ

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | 1 |
| **Default value** | *(none)* |
| **Accept pipeline input?** | True (ByPropertyName) |
| **Aliases** | `PreferenceValue` |
| **Accept wildcard characters?** | No |

<hr/>
### `-SessionOnly`

> ใช้การตั้งค่าสำรองที่เก็บไว้ในเซสชันสำหรับการตั้งค่าข้อมูล เช่น ภาษา ตำแหน่งฐานข้อมูล ฯลฯ

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | `False` |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-ClearSession`

> ล้างการตั้งค่าเซสชัน (ตัวแปรส่วนกลาง) ก่อนที่จะเรียกค้น

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | `False` |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-PreferencesDatabasePath <String>`

> เส้นทางฐานข้อมูลสำหรับไฟล์ข้อมูลการตั้งค่า

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

> อย่าใช้การตั้งค่าสำรองที่เก็บในเซสชันสำหรับการกำหนดลักษณะข้อมูล เช่น ภาษา เส้นทางฐานข้อมูล ฯลฯ

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | `False` |
| **Accept pipeline input?** | False |
| **Aliases** | `FromPreferences` |
| **Accept wildcard characters?** | No |

<hr/>
## Related Links

- [Get-GenXdevPreference](https://github.com/genXdev/genXdev/blob/main/Docs/th-TH/Get-GenXdevPreference.md)
- [Get-GenXdevPreferenceNames](https://github.com/genXdev/genXdev/blob/main/Docs/th-TH/Get-GenXdevPreferenceNames.md)
- [Get-GenXdevPreferencesDatabasePath](https://github.com/genXdev/genXdev/blob/main/Docs/th-TH/Get-GenXdevPreferencesDatabasePath.md)
- [Remove-GenXdevPreference](https://github.com/genXdev/genXdev/blob/main/Docs/th-TH/Remove-GenXdevPreference.md)
- [Set-GenXdevDefaultPreference](https://github.com/genXdev/genXdev/blob/main/Docs/th-TH/Set-GenXdevDefaultPreference.md)
- [Set-GenXdevPreferencesDatabasePath](https://github.com/genXdev/genXdev/blob/main/Docs/th-TH/Set-GenXdevPreferencesDatabasePath.md)

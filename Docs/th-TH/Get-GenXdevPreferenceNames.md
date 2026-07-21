# Get-GenXdevPreferenceNames

> **Module:** GenXdev.Data.Preferences | **Type:** Cmdlet | **Aliases:** `getPreferenceNames`

## Synopsis

> ดึงชื่อการตั้งค่าทั้งหมดจากที่เก็บเซสชันและฐานข้อมูล

## Description

* ดึงรายชื่อการตั้งค่าที่ไม่ซ้ำกันโดยรวมคีย์จาก
  พื้นที่จัดเก็บเซสชัน (ตัวแปรส่วนกลาง) และทั้งพื้นที่จัดเก็บการตั้งค่าท้องถิ่นและค่าเริ่มต้น
* เคารพพารามิเตอร์การจัดการเซสชันเพื่อควบคุมว่าแหล่งข้อมูลใดถูกสอบถาม

## Syntax

```powershell
Get-GenXdevPreferenceNames [-ClearSession] [-PreferencesDatabasePath <String>] [-SessionOnly] [-SkipSession] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-SessionOnly` | SwitchParameter | — | — | Named | `False` | ใช้การตั้งค่าสำรองที่เก็บไว้ในเซสชันสำหรับการตั้งค่าข้อมูล เช่น ภาษา ตำแหน่งฐานข้อมูล ฯลฯ |
| `-ClearSession` | SwitchParameter | — | — | Named | `False` | ล้างการตั้งค่าเซสชัน (ตัวแปรส่วนกลาง) ก่อนที่จะเรียกค้น |
| `-PreferencesDatabasePath` | String | — | — | Named | — | เส้นทางฐานข้อมูลสำหรับไฟล์ข้อมูลการตั้งค่า |
| `-SkipSession` | SwitchParameter | — | — | Named | `False` | อย่าใช้การตั้งค่าสำรองที่เก็บในเซสชันสำหรับการกำหนดลักษณะข้อมูล เช่น ภาษา เส้นทางฐานข้อมูล ฯลฯ |

## Examples

### Example 1

```powershell
Get-GenXdevPreferenceNames -PreferencesDatabasePath "C:\Data\prefs.db"
```

ส่งกลับอาร์เรย์ที่เรียงลำดับของชื่อการกำหนดค่าที่ไม่ซ้ำจากพื้นที่จัดเก็บเซสชันและทั้งสองที่จัดเก็บโดยใช้เส้นทางฐานข้อมูลที่ระบุ

### Example 2

```powershell
getPreferenceNames -SessionOnly
```

ส่งคืนเฉพาะชื่อการกำหนดค่าจากพื้นที่จัดเก็บเซสชัน

### Example 3

```powershell
getPreferenceNames -SkipSession
```

ส่งคืนเฉพาะชื่อการกำหนดค่าจากฐานข้อมูลที่จัดเก็บ

## Parameter Details

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
- [Get-GenXdevPreferencesDatabasePath](https://github.com/genXdev/genXdev/blob/main/Docs/th-TH/Get-GenXdevPreferencesDatabasePath.md)
- [Remove-GenXdevPreference](https://github.com/genXdev/genXdev/blob/main/Docs/th-TH/Remove-GenXdevPreference.md)
- [Set-GenXdevDefaultPreference](https://github.com/genXdev/genXdev/blob/main/Docs/th-TH/Set-GenXdevDefaultPreference.md)
- [Set-GenXdevPreference](https://github.com/genXdev/genXdev/blob/main/Docs/th-TH/Set-GenXdevPreference.md)
- [Set-GenXdevPreferencesDatabasePath](https://github.com/genXdev/genXdev/blob/main/Docs/th-TH/Set-GenXdevPreferencesDatabasePath.md)

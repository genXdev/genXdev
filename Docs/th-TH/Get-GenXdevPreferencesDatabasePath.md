# Get-GenXdevPreferencesDatabasePath

> **Module:** GenXdev.Data.Preferences | **Type:** Cmdlet | **Aliases:** —

## Synopsis

> รับเส้นทางฐานข้อมูลที่กำหนดค่าไว้สำหรับไฟล์ข้อมูลการตั้งค่าที่ใช้ในการดำเนินการของ GenXdev.Data

## Description

* ดึงเส้นทางฐานข้อมูลโกลบอลที่ใช้โดยโมดูล GenXdev.Data สำหรับ
  การจัดเก็บค่ากำหนดและการดำเนินการข้อมูลต่างๆ
* ตรวจสอบตัวแปรโกลบอลก่อน (เว้นแต่จะระบุ SkipSession) จากนั้น
  สำรองไปที่ค่ากำหนดถาวร และสุดท้ายใช้ค่าเริ่มต้นของระบบ

## Syntax

```powershell
Get-GenXdevPreferencesDatabasePath [[-PreferencesDatabasePath] <String>] [-ClearSession] [-SessionOnly] [-SkipSession] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-PreferencesDatabasePath` | String | — | — | 0 | — | การแทนที่เส้นทางฐานข้อมูลที่ไม่บังคับ |
| `-SessionOnly` | SwitchParameter | — | — | Named | `False` | ใช้การตั้งค่าสำรองที่เก็บไว้ในเซสชันสำหรับการตั้งค่าข้อมูล เช่น ภาษา ตำแหน่งฐานข้อมูล ฯลฯ |
| `-ClearSession` | SwitchParameter | — | — | Named | `False` | ล้างการตั้งค่าเซสชัน (ตัวแปรส่วนกลาง) ก่อนที่จะเรียกค้น |
| `-SkipSession` | SwitchParameter | — | — | Named | `False` | อย่าใช้การตั้งค่าสำรองที่เก็บในเซสชันสำหรับการกำหนดลักษณะข้อมูล เช่น ภาษา เส้นทางฐานข้อมูล ฯลฯ |

## Examples

### Example 1

```powershell
Get-GenXdevPreferencesDatabasePath
```

ดึงเส้นทางฐานข้อมูลจากตัวแปรทั่วโลกหรือการตั้งค่า

### Example 2

```powershell
Get-GenXdevPreferencesDatabasePath -SkipSession
```

ข้ามตัวแปรเซสชันและใช้การตั้งค่าถาวร

### Example 3

```powershell
Get-GenXdevPreferencesDatabasePath -ClearSession
```

ล้างการตั้งค่าเซสชันก่อนเรียกใช้พาธ

## Parameter Details

### `-PreferencesDatabasePath <String>`

> การแทนที่เส้นทางฐานข้อมูลที่ไม่บังคับ

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | 0 |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | `DatabasePath` |
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
- [Remove-GenXdevPreference](https://github.com/genXdev/genXdev/blob/main/Docs/th-TH/Remove-GenXdevPreference.md)
- [Set-GenXdevDefaultPreference](https://github.com/genXdev/genXdev/blob/main/Docs/th-TH/Set-GenXdevDefaultPreference.md)
- [Set-GenXdevPreference](https://github.com/genXdev/genXdev/blob/main/Docs/th-TH/Set-GenXdevPreference.md)
- [Set-GenXdevPreferencesDatabasePath](https://github.com/genXdev/genXdev/blob/main/Docs/th-TH/Set-GenXdevPreferencesDatabasePath.md)

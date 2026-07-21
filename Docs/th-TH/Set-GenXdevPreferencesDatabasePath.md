# Set-GenXdevPreferencesDatabasePath

> **Module:** GenXdev.Data.Preferences | **Type:** Cmdlet | **Aliases:** —

## Synopsis

> กำหนดเส้นทางฐานข้อมูลสำหรับการตั้งค่าที่ใช้ในการดำเนินการของ GenXdev.Data

## Description

* กำหนดค่าเส้นทางฐานข้อมูลทั่วโลกที่ใช้โดยโมดูล GenXdev.Data สำหรับ
  การจัดเก็บการตั้งค่าและการดำเนินการข้อมูลต่างๆ
* การตั้งค่าจะถูกจัดเก็บในเซสชันปัจจุบัน (โดยใช้ตัวแปร Global) และ
  สามารถล้างค่าในเซสชันได้ (โดยใช้ -ClearSession)

## Syntax

```powershell
Set-GenXdevPreferencesDatabasePath [[-PreferencesDatabasePath] <String>] [-ClearSession] [-SessionOnly] [-SkipSession] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-PreferencesDatabasePath` | String | — | — | 0 | — | เส้นทางฐานข้อมูลที่เก็บไฟล์ข้อมูลการตั้งค่า |
| `-SkipSession` | SwitchParameter | — | — | Named | `False` | อย่าใช้การตั้งค่าสำรองที่เก็บในเซสชันสำหรับการกำหนดลักษณะข้อมูล เช่น ภาษา เส้นทางฐานข้อมูล ฯลฯ |
| `-SessionOnly` | SwitchParameter | — | — | Named | `False` | เมื่อระบุแล้ว จะจัดเก็บการตั้งค่าเฉพาะในเซสชันปัจจุบัน (ตัวแปรส่วนกลาง) โดยไม่บันทึกเป็นค่าเริ่มต้น |
| `-ClearSession` | SwitchParameter | — | — | Named | `False` | เมื่อระบุแล้ว จะล้างเฉพาะการตั้งค่าเซสชัน (ตัวแปรส่วนกลาง) โดยไม่ส่งผลต่อการกำหนดค่าถาวร |

## Examples

### Example 1

```powershell
Set-GenXdevPreferencesDatabasePath -PreferencesDatabasePath "C:\Data\Preferences.db"
```

กำหนดพาธของฐานข้อมูลในเซสชันปัจจุบัน (ตัวแปร Global)

### Example 2

```powershell
Set-GenXdevPreferencesDatabasePath "C:\MyPreferences.db"
```

กำหนดเส้นทางฐานข้อมูลโดยใช้พารามิเตอร์ตำแหน่ง

### Example 3

```powershell
Set-GenXdevPreferencesDatabasePath "C:\TempPrefs.db" -SessionOnly
```

ตั้งค่าเส้นทางเฉพาะสำหรับเซสชันปัจจุบันเท่านั้น โดยไม่บันทึกถาวร

### Example 4

```powershell
Set-GenXdevPreferencesDatabasePath -ClearSession
```

ล้างตัวแปรส่วนกลางสำหรับพาธฐานข้อมูล

## Parameter Details

### `-PreferencesDatabasePath <String>`

> เส้นทางฐานข้อมูลที่เก็บไฟล์ข้อมูลการตั้งค่า

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | 0 |
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
### `-SessionOnly`

> เมื่อระบุแล้ว จะจัดเก็บการตั้งค่าเฉพาะในเซสชันปัจจุบัน (ตัวแปรส่วนกลาง) โดยไม่บันทึกเป็นค่าเริ่มต้น

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

> เมื่อระบุแล้ว จะล้างเฉพาะการตั้งค่าเซสชัน (ตัวแปรส่วนกลาง) โดยไม่ส่งผลต่อการกำหนดค่าถาวร

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

- [Get-GenXdevPreference](https://github.com/genXdev/genXdev/blob/main/Docs/th-TH/Get-GenXdevPreference.md)
- [Get-GenXdevPreferenceNames](https://github.com/genXdev/genXdev/blob/main/Docs/th-TH/Get-GenXdevPreferenceNames.md)
- [Get-GenXdevPreferencesDatabasePath](https://github.com/genXdev/genXdev/blob/main/Docs/th-TH/Get-GenXdevPreferencesDatabasePath.md)
- [Remove-GenXdevPreference](https://github.com/genXdev/genXdev/blob/main/Docs/th-TH/Remove-GenXdevPreference.md)
- [Set-GenXdevDefaultPreference](https://github.com/genXdev/genXdev/blob/main/Docs/th-TH/Set-GenXdevDefaultPreference.md)
- [Set-GenXdevPreference](https://github.com/genXdev/genXdev/blob/main/Docs/th-TH/Set-GenXdevPreference.md)

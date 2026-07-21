# Remove-GenXdevPreference

> **Module:** GenXdev.Data.Preferences | **Type:** Cmdlet | **Aliases:** `removePreference`

## Synopsis

> ลบค่ากำหนดออกจากที่จัดเก็บค่ากำหนดของ GenXdev.

## Description

* ลบค่าที่ต้องการออกจากที่เก็บในเครื่อง และอาจจะลบออกจากที่เก็บเริ่มต้นด้วย
* มีชุดพารามิเตอร์สองชุด - ชุดหนึ่งสำหรับการลบเฉพาะในเครื่องเท่านั้น และอีกชุดสำหรับการลบทั้งในเครื่องและที่เก็บเริ่มต้น
* ช่วยให้การซิงโครไนซ์เหมาะสมเมื่อแก้ไขที่เก็บเริ่มต้น

## Syntax

```powershell
Remove-GenXdevPreference -Name <String> [-ClearSession] [-PreferencesDatabasePath <String>] [-RemoveDefault] [-SessionOnly] [-SkipSession] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-Name` | String | ✅ | ✅ (ByValue, ByPropertyName) | 0 | — | ชื่อของค่ากำหนดที่ต้องการลบ |
| `-RemoveDefault` | SwitchParameter | — | — | Named | `False` | เปลี่ยนเพื่อลบค่ากำหนดเริ่มต้นออกด้วย |
| `-SessionOnly` | SwitchParameter | — | — | Named | `False` | ใช้การตั้งค่าสำรองที่เก็บไว้ในเซสชันสำหรับการตั้งค่าข้อมูล เช่น ภาษา ตำแหน่งฐานข้อมูล ฯลฯ |
| `-ClearSession` | SwitchParameter | — | — | Named | `False` | ล้างการตั้งค่าเซสชัน (ตัวแปรส่วนกลาง) ก่อนที่จะเรียกค้น |
| `-PreferencesDatabasePath` | String | — | — | Named | — | เส้นทางฐานข้อมูลสำหรับไฟล์ข้อมูลการตั้งค่า |
| `-SkipSession` | SwitchParameter | — | — | Named | `False` | อย่าใช้การตั้งค่าสำรองที่เก็บในเซสชันสำหรับการกำหนดลักษณะข้อมูล เช่น ภาษา เส้นทางฐานข้อมูล ฯลฯ |

## Examples

### Example 1

```powershell
Remove-GenXdevPreference -Name "Theme"
```

ลบค่ากำหนด "ธีม" ออกจากพื้นที่จัดเก็บในเครื่องเท่านั้น

### Example 2

```powershell
removePreference "Theme" -RemoveDefault
```

ลบการตั้งค่า "ธีม" ออกจากทั้งพื้นที่จัดเก็บในเครื่องและค่าเริ่มต้น

## Parameter Details

### `-Name <String>`

> ชื่อของค่ากำหนดที่ต้องการลบ

| Property | Value |
|:---|:---|
| **Required?** | Yes |
| **Position?** | 0 |
| **Default value** | *(none)* |
| **Accept pipeline input?** | True (ByValue, ByPropertyName) |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-RemoveDefault`

> เปลี่ยนเพื่อลบค่ากำหนดเริ่มต้นออกด้วย

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | `False` |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
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
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
## Related Links

- [Get-GenXdevPreference](https://github.com/genXdev/genXdev/blob/main/Docs/th-TH/Get-GenXdevPreference.md)
- [Get-GenXdevPreferenceNames](https://github.com/genXdev/genXdev/blob/main/Docs/th-TH/Get-GenXdevPreferenceNames.md)
- [Get-GenXdevPreferencesDatabasePath](https://github.com/genXdev/genXdev/blob/main/Docs/th-TH/Get-GenXdevPreferencesDatabasePath.md)
- [Set-GenXdevDefaultPreference](https://github.com/genXdev/genXdev/blob/main/Docs/th-TH/Set-GenXdevDefaultPreference.md)
- [Set-GenXdevPreference](https://github.com/genXdev/genXdev/blob/main/Docs/th-TH/Set-GenXdevPreference.md)
- [Set-GenXdevPreferencesDatabasePath](https://github.com/genXdev/genXdev/blob/main/Docs/th-TH/Set-GenXdevPreferencesDatabasePath.md)

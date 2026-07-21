# New-SQLServerDatabase

> **Module:** GenXdev.Data.SqlServer | **Type:** Function | **Aliases:** `nsqldb`

## Synopsis

> สร้างฐานข้อมูล SQL Server ใหม่

## Description

สร้างฐานข้อมูล SQL Server ใหม่ด้วยชื่อที่ระบุบนเซิร์ฟเวอร์ที่ระบุ ต้องมีสิทธิ์ที่เหมาะสมในการสร้างฐานข้อมูลบนอินสแตนซ์ SQL Server เป้าหมาย หากฐานข้อมูลมีอยู่แล้ว การดำเนินการจะถูกข้ามไป รองรับการสร้างฐานข้อมูลแบบไฟล์ด้วยพาธ .mdf/.ldf ที่ชัดเจน

## Syntax

```powershell
New-SQLServerDatabase -DatabaseName <String> [[-Server] <String>] [-DataFilePath <String>] [-DetachAfterCreation] [-LogFilePath <String>] [<CommonParameters>]

New-SQLServerDatabase -ConnectionString <String> [<CommonParameters>]

New-SQLServerDatabase [-ConsentToThirdPartySoftwareInstallation] [-ForceConsent] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-DatabaseName` | String | ✅ | — | 0 | — | ชื่อของฐานข้อมูล SQL Server ที่จะสร้าง *(Parameter set: )* |
| `-Server` | String | — | — | 1 | `'.'` | ชื่ออินสแตนซ์ของเซิร์ฟเวอร์ SQL *(Parameter set: )* |
| `-ConnectionString` | String | ✅ | — | 0 | — | สตริงการเชื่อมต่อเพื่อเชื่อมต่อไปยัง SQL Server *(Parameter set: )* |
| `-ForceConsent` | SwitchParameter | — | — | Named | — | บังคับให้แสดงข้อความขอความยินยอมแม้ว่าจะตั้งค่ากำหนดไว้สำหรับการติดตั้งแพ็คเกจ SQL Server |
| `-ConsentToThirdPartySoftwareInstallation` | SwitchParameter | — | — | Named | — | ยินยอมโดยอัตโนมัติในการติดตั้งซอฟต์แวร์ของบุคคลที่สามและตั้งค่าสถานะถาวรสำหรับแพ็คเกจ SQL Server |
| `-DataFilePath` | String | — | — | Named | — | เส้นทางไฟล์ข้อมูลทางเลือก (.mdf) สำหรับการสร้างฐานข้อมูลแบบไฟล์ *(Parameter set: )* |
| `-LogFilePath` | String | — | — | Named | — | เส้นทางไฟล์บันทึก (.ldf) ที่เป็นตัวเลือกสำหรับการสร้างฐานข้อมูลตามไฟล์ *(Parameter set: )* |
| `-DetachAfterCreation` | SwitchParameter | — | — | Named | — | แยกฐานข้อมูลหลังจากสร้างแล้ว (สำหรับฐานข้อมูลแบบไฟล์) *(Parameter set: )* |

## Examples

### New-SQLServerDatabase -DatabaseName "MyNewDatabase" -Server "localhost"

```powershell
New-SQLServerDatabase -DatabaseName "MyNewDatabase" -Server "localhost"
```

### New-SQLServerDatabase "MyNewDatabase"

```powershell
New-SQLServerDatabase "MyNewDatabase"
```

### New-SQLServerDatabase -DatabaseName "MyDB" -ConnectionString "Server=.;..."

```powershell
New-SQLServerDatabase -DatabaseName "MyDB" -ConnectionString "Server=.;..."
```

### New-SQLServerDatabase -DatabaseName "ImageIndex" -DataFilePath "C:\Data\ImageIndex.mdf" -DetachAfterCreation

```powershell
New-SQLServerDatabase -DatabaseName "ImageIndex" -DataFilePath "C:\Data\ImageIndex.mdf" -DetachAfterCreation
```

### New-SQLServerDatabase -DatabaseName "MyDB" -Server "." -ConsentToThirdPartySoftwareInstallation

```powershell
New-SQLServerDatabase -DatabaseName "MyDB" -Server "." -ConsentToThirdPartySoftwareInstallation
```

## Parameter Details

### `-DatabaseName <String>`

> ชื่อของฐานข้อมูล SQL Server ที่จะสร้าง

| Property | Value |
|:---|:---|
| **Required?** | Yes |
| **Position?** | 0 |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |
| **Parameter set** | DatabaseName |

<hr/>
### `-Server <String>`

> ชื่ออินสแตนซ์ของเซิร์ฟเวอร์ SQL

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | 1 |
| **Default value** | `'.'` |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |
| **Parameter set** | DatabaseName |

<hr/>
### `-ConnectionString <String>`

> สตริงการเชื่อมต่อเพื่อเชื่อมต่อไปยัง SQL Server

| Property | Value |
|:---|:---|
| **Required?** | Yes |
| **Position?** | 0 |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |
| **Parameter set** | ConnectionString |

<hr/>
### `-ForceConsent`

> บังคับให้แสดงข้อความขอความยินยอมแม้ว่าจะตั้งค่ากำหนดไว้สำหรับการติดตั้งแพ็คเกจ SQL Server

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-ConsentToThirdPartySoftwareInstallation`

> ยินยอมโดยอัตโนมัติในการติดตั้งซอฟต์แวร์ของบุคคลที่สามและตั้งค่าสถานะถาวรสำหรับแพ็คเกจ SQL Server

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-DataFilePath <String>`

> เส้นทางไฟล์ข้อมูลทางเลือก (.mdf) สำหรับการสร้างฐานข้อมูลแบบไฟล์

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |
| **Parameter set** | DatabaseName |

<hr/>
### `-LogFilePath <String>`

> เส้นทางไฟล์บันทึก (.ldf) ที่เป็นตัวเลือกสำหรับการสร้างฐานข้อมูลตามไฟล์

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |
| **Parameter set** | DatabaseName |

<hr/>
### `-DetachAfterCreation`

> แยกฐานข้อมูลหลังจากสร้างแล้ว (สำหรับฐานข้อมูลแบบไฟล์)

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |
| **Parameter set** | DatabaseName |

<hr/>
## Related Links

- [Get-SQLServerSchema](https://github.com/genXdev/genXdev/blob/main/Docs/th-TH/Get-SQLServerSchema.md)
- [Get-SQLServerTableColumnData](https://github.com/genXdev/genXdev/blob/main/Docs/th-TH/Get-SQLServerTableColumnData.md)
- [Get-SQLServerTableData](https://github.com/genXdev/genXdev/blob/main/Docs/th-TH/Get-SQLServerTableData.md)
- [Get-SQLServerTables](https://github.com/genXdev/genXdev/blob/main/Docs/th-TH/Get-SQLServerTables.md)
- [Get-SQLServerTableSchema](https://github.com/genXdev/genXdev/blob/main/Docs/th-TH/Get-SQLServerTableSchema.md)
- [Get-SQLServerTransaction](https://github.com/genXdev/genXdev/blob/main/Docs/th-TH/Get-SQLServerTransaction.md)
- [Get-SQLServerViewColumnData](https://github.com/genXdev/genXdev/blob/main/Docs/th-TH/Get-SQLServerViewColumnData.md)
- [Get-SQLServerViewData](https://github.com/genXdev/genXdev/blob/main/Docs/th-TH/Get-SQLServerViewData.md)
- [Get-SQLServerViews](https://github.com/genXdev/genXdev/blob/main/Docs/th-TH/Get-SQLServerViews.md)
- [Get-SQLServerViewSchema](https://github.com/genXdev/genXdev/blob/main/Docs/th-TH/Get-SQLServerViewSchema.md)
- [Invoke-SQLServerQuery](https://github.com/genXdev/genXdev/blob/main/Docs/th-TH/Invoke-SQLServerQuery.md)
- [Invoke-SSMS](https://github.com/genXdev/genXdev/blob/main/Docs/th-TH/Invoke-SSMS.md)

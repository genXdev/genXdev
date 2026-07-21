# Get-SQLiteTableColumnData

> **Module:** GenXdev.Data.SQLite | **Type:** Function | **Aliases:** —

## Synopsis

> ดึงข้อมูลจากคอลัมน์ที่ระบุในตารางฐานข้อมูล SQLite

## Description

ฟังก์ชันนี้เป็นวิธีที่สะดวกในการดึงข้อมูลจากคอลัมน์เดียวในตารางฐานข้อมูล SQLite รองรับสองวิธีการเชื่อมต่อ: พาธของไฟล์ฐานข้อมูลโดยตรงหรือสตริงการเชื่อมต่อ ฟังก์ชันมีตัวเลือกในการจำกัดจำนวนระเบียนที่ส่งคืน และใช้การสร้างคิวรี SQLite ที่เหมาะสมเพื่อประสิทธิภาพสูงสุด

## Syntax

```powershell
Get-SQLiteTableColumnData -ConnectionString <String> [<CommonParameters>]

Get-SQLiteTableColumnData -DatabaseFilePath <String> [<CommonParameters>]

Get-SQLiteTableColumnData -TableName <String> -ColumnName <String> [[-Count] <Int32>] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-ConnectionString` | String | ✅ | — | 0 | — | สตริงการเชื่อมต่อกับฐานข้อมูล SQLite *(Parameter set: )* |
| `-DatabaseFilePath` | String | ✅ | — | 0 | — | เส้นทางไปยังไฟล์ฐานข้อมูล SQLite *(Parameter set: )* |
| `-TableName` | String | ✅ | — | 1 | — | ชื่อของตารางที่ต้องการสอบถาม |
| `-ColumnName` | String | ✅ | — | 2 | — | ชื่อของคอลัมน์ที่จะดึงข้อมูล |
| `-Count` | Int32 | — | — | 3 | `100` | จำนวนระเบียนที่จะส่งคืน ค่าเริ่มต้นคือ 100 ใช้ -1 สำหรับทั้งหมด |

## Examples

### Get-SQLiteTableColumnData -DatabaseFilePath "C:\MyDb.sqlite" `     -TableName "Employees" `     -ColumnName "Email" `     -Count 10

```powershell
Get-SQLiteTableColumnData -DatabaseFilePath "C:\MyDb.sqlite" `
    -TableName "Employees" `
    -ColumnName "Email" `
    -Count 10
```

### Get-SQLiteTableColumnData "C:\MyDb.sqlite" "Employees" "Email"

```powershell
Get-SQLiteTableColumnData "C:\MyDb.sqlite" "Employees" "Email"
```

## Parameter Details

### `-ConnectionString <String>`

> สตริงการเชื่อมต่อกับฐานข้อมูล SQLite

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
### `-DatabaseFilePath <String>`

> เส้นทางไปยังไฟล์ฐานข้อมูล SQLite

| Property | Value |
|:---|:---|
| **Required?** | Yes |
| **Position?** | 0 |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |
| **Parameter set** | DatabaseFilePath |

<hr/>
### `-TableName <String>`

> ชื่อของตารางที่ต้องการสอบถาม

| Property | Value |
|:---|:---|
| **Required?** | Yes |
| **Position?** | 1 |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-ColumnName <String>`

> ชื่อของคอลัมน์ที่จะดึงข้อมูล

| Property | Value |
|:---|:---|
| **Required?** | Yes |
| **Position?** | 2 |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-Count <Int32>`

> จำนวนระเบียนที่จะส่งคืน ค่าเริ่มต้นคือ 100 ใช้ -1 สำหรับทั้งหมด

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | 3 |
| **Default value** | `100` |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
## Related Links

- [Get-SQLiteSchema](https://github.com/genXdev/genXdev/blob/main/Docs/th-TH/Get-SQLiteSchema.md)
- [Get-SQLiteTableData](https://github.com/genXdev/genXdev/blob/main/Docs/th-TH/Get-SQLiteTableData.md)
- [Get-SQLiteTables](https://github.com/genXdev/genXdev/blob/main/Docs/th-TH/Get-SQLiteTables.md)
- [Get-SQLiteTableSchema](https://github.com/genXdev/genXdev/blob/main/Docs/th-TH/Get-SQLiteTableSchema.md)
- [Get-SQLiteTransaction](https://github.com/genXdev/genXdev/blob/main/Docs/th-TH/Get-SQLiteTransaction.md)
- [Get-SQLiteViewColumnData](https://github.com/genXdev/genXdev/blob/main/Docs/th-TH/Get-SQLiteViewColumnData.md)
- [Get-SQLiteViewData](https://github.com/genXdev/genXdev/blob/main/Docs/th-TH/Get-SQLiteViewData.md)
- [Get-SQLiteViews](https://github.com/genXdev/genXdev/blob/main/Docs/th-TH/Get-SQLiteViews.md)
- [Get-SQLiteViewSchema](https://github.com/genXdev/genXdev/blob/main/Docs/th-TH/Get-SQLiteViewSchema.md)
- [Invoke-SQLiteQuery](https://github.com/genXdev/genXdev/blob/main/Docs/th-TH/Invoke-SQLiteQuery.md)
- [Invoke-SQLiteStudio](https://github.com/genXdev/genXdev/blob/main/Docs/th-TH/Invoke-SQLiteStudio.md)
- [New-SQLiteDatabase](https://github.com/genXdev/genXdev/blob/main/Docs/th-TH/New-SQLiteDatabase.md)

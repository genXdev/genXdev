# Invoke-SSMS

> **Module:** GenXdev.Data.SqlServer | **Type:** Function | **Aliases:** `ssms`, `sqlservermanagementstudio`

## Synopsis

> ดำเนินการค้นหาฐานข้อมูล SQL Server ด้วยการสนับสนุนพารามิเตอร์และธุรกรรม

## Description

ให้อินเทอร์เฟซ PowerShell สำหรับดำเนินการสอบถาม SQL Server ที่รองรับ:
- การเชื่อมต่อผ่านสตริงการเชื่อมต่อหรือชื่อฐานข้อมูลกับเซิร์ฟเวอร์
- การสอบถามแบบมีพารามิเตอร์เพื่อป้องกัน SQL Injection
- การควบคุมระดับการแยกธุรกรรม
- การดำเนินการสอบถามหลายรายการในธุรกรรมเดียว
- อินพุตผ่านไปป์ไลน์สำหรับการสอบถามและพารามิเตอร์

## Syntax

```powershell
Invoke-SSMS [<CommonParameters>]
```

## Examples

### Invoke-SSMS `     -DatabaseName "users" -Server "localhost" `     -Queries "SELECT * FROM Users WHERE active = @status" `     -SqlParameters @{"status" = 1}

```powershell
Invoke-SSMS `
    -DatabaseName "users" -Server "localhost" `
    -Queries "SELECT * FROM Users WHERE active = @status" `
    -SqlParameters @{"status" = 1}
```

### "SELECT * FROM Users" | Invoke-SSMS -DatabaseName "users"

```powershell
"SELECT * FROM Users" | Invoke-SSMS -DatabaseName "users"
```

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
- [New-SQLServerDatabase](https://github.com/genXdev/genXdev/blob/main/Docs/th-TH/New-SQLServerDatabase.md)

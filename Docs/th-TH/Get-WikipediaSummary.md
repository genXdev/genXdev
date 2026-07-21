# Get-WikipediaSummary

> **Module:** GenXdev.Queries.Text | **Type:** Function | **Aliases:** `wikitxt`

## Synopsis

> ดึงข้อมูลสรุปของหัวข้อจากวิกิพีเดีย

## Description

สอบถาม API ของ Wikipedia เพื่อรับข้อมูลสรุปที่กระชับของหัวข้อที่ระบุ
โดยลบเนื้อหาในวงเล็บเพื่อเพิ่มความสามารถในการอ่าน

## Syntax

```powershell
Get-WikipediaSummary -Queries <String[]> [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-Queries` | String[] | ✅ | ✅ (ByValue, ByPropertyName) | 0 | — | การสืบค้นที่ต้องดำเนินการ |

## Examples

### Get-WikipediaSummary -Queries "PowerShell"

```powershell
Get-WikipediaSummary -Queries "PowerShell"
```

### wikitxt "PowerShell", "Typescript", "C#"

```powershell
wikitxt "PowerShell", "Typescript", "C#"
```

## Parameter Details

### `-Queries <String[]>`

> การสืบค้นที่ต้องดำเนินการ

| Property | Value |
|:---|:---|
| **Required?** | Yes |
| **Position?** | 0 |
| **Default value** | *(none)* |
| **Accept pipeline input?** | True (ByValue, ByPropertyName) |
| **Aliases** | `q`, `Name`, `Text`, `Query` |
| **Accept wildcard characters?** | No |

<hr/>
## Related Links

- [Get-NextAffirmation](https://github.com/genXdev/genXdev/blob/main/Docs/th-TH/Get-NextAffirmation.md)

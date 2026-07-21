# ConvertTo-Uris

> **Module:** GenXdev.Queries | **Type:** Cmdlet | **Aliases:** —

## Synopsis

> แยกวิเคราะห์สตริงสำหรับ URI ที่ถูกต้องใดๆ

## Description

* แยก URI ที่ถูกต้องทั้งหมดจากข้อความที่ป้อน รองรับสคีมา URI มาตรฐานและแบบกำหนดเอง เช่น http:, https:, ftp:, magnet:, about: ฯลฯ
* ส่งคืนออบเจ็กต์ Uri สำหรับแต่ละ URI ที่ถูกต้องที่พบ

## Syntax

```powershell
ConvertTo-Uris [[-Text] <String[]>] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-Text` | String[] | — | ✅ (ByValue) | 0 | — | ข้อความนำเข้าที่อาจมี URI |

## Examples

### Example 1

```powershell
ConvertTo-Uris -Text "Check out https://github.com and about:config"
```

แยกวิเคราะห์สตริงข้อความที่ให้มาสำหรับ URI และส่งคืนอ็อบเจ็กต์ Uri

### Example 2

```powershell
"Visit http://example.com" | ConvertTo-Uris
```

ส่งสตริงข้อความไปยัง cmdlet เพื่อทำการแยกวิเคราะห์ URI

## Parameter Details

### `-Text <String[]>`

> ข้อความนำเข้าที่อาจมี URI

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | 0 |
| **Default value** | *(none)* |
| **Accept pipeline input?** | True (ByValue) |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
## Related Links

- [Open-AllPossibleQueries](https://github.com/genXdev/genXdev/blob/main/Docs/th-TH/Open-AllPossibleQueries.md)

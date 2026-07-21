# Remove-DoubleEmptyLines

> **Module:** GenXdev.Coding.Templating | **Type:** Function | **Aliases:** —

## Synopsis

> ลบบรรทัดว่างที่ซ้ำกัน (ติดกัน) ออกจากสตริงโค้ด โดยสามารถจัดรูปแบบเอาต์พุตใหม่ได้ตามต้องการ

## Description

ทำความสะอาดซอร์สโค้ดหรือข้อความโดยการยุบบรรทัดว่างที่ต่อเนื่องกันเป็นบรรทัดว่างบรรทัดเดียว ซึ่งช่วยให้อ่านง่ายขึ้นและเป็นไปตามหลักการจัดรูปแบบโค้ดทั่วไป เมื่อระบุสวิตช์ -Reformat จะใช้กฎการจัดรูปแบบเพิ่มเติมเพื่อทำให้โครงสร้างโค้ดเป็นมาตรฐาน

## Syntax

```powershell
Remove-DoubleEmptyLines -code <String> [-Reformat] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-code` | String | ✅ | — | 0 | — | ซอร์สโค้ดหรือสตริงข้อความที่จะประมวลผลสำหรับการลบบรรทัดว่างสองครั้ง |
| `-Reformat` | SwitchParameter | — | — | Named | — | ใช้กฎการจัดรูปแบบเพิ่มเติมนอกเหนือจากการลบบรรทัดว่างคู่ |

## Examples

### $cleanCode = $sourceCode | Remove-DoubleEmptyLines

```powershell
$cleanCode = $sourceCode | Remove-DoubleEmptyLines
```

ส่งซอร์สโค้ดผ่านฟังก์ชันเพื่อลบบรรทัดว่างที่ซ้ำกัน

### Remove-DoubleEmptyLines -code $sourceCode -Reformat

```powershell
Remove-DoubleEmptyLines -code $sourceCode -Reformat
```

ลบบรรทัดว่างซ้ำและจัดรูปแบบเพิ่มเติม

## Parameter Details

### `-code <String>`

> ซอร์สโค้ดหรือสตริงข้อความที่จะประมวลผลสำหรับการลบบรรทัดว่างสองครั้ง

| Property | Value |
|:---|:---|
| **Required?** | Yes |
| **Position?** | 0 |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-Reformat`

> ใช้กฎการจัดรูปแบบเพิ่มเติมนอกเหนือจากการลบบรรทัดว่างคู่

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
## Outputs

- `String`

## Related Links

- [Add-ArrayTemplate](https://github.com/genXdev/genXdev/blob/main/Docs/th-TH/Add-ArrayTemplate.md)

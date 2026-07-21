# Add-ArrayTemplate

> **Module:** GenXdev.Coding.Templating | **Type:** Function | **Aliases:** `FormatArray`

## Synopsis

> จัดรูปแบบชุดของวัตถุโดยใช้สตริงเทมเพลตที่มีตัวยึดตำแหน่งคุณสมบัติ สร้างสตริงที่จัดรูปแบบแล้วเดียว

## Description

วนซ้ำผ่านชุดของวัตถุและใช้เทมเพลตสตริงที่มีตัวยึดตำแหน่ง {PropertyName} หรือ {PropertyName:format} กับแต่ละรายการ ผลลัพธ์ที่จัดรูปแบบแล้วจะเชื่อมต่อกับตัวคั่นที่กำหนดค่าได้ รองรับการเยื้อง การขึ้นบรรทัดใหม่ต่อท้าย และตัวคั่นต่อท้ายสำหรับการจัดรูปแบบผลลัพธ์ที่ยืดหยุ่น

## Syntax

```powershell
Add-ArrayTemplate -InputObject <Collections.IEnumerable> -Template <String> [[-Delimiter] <String>] [[-Indentation] <Int32>] [-EndDelimiter] [-NewLine] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-InputObject` | Collections.IEnumerable | ✅ | ✅ (ByValue) | 0 | — | คอลเล็กชันของอ็อบเจ็กต์ที่จะจัดรูปแบบ |
| `-Template` | String | ✅ | — | 1 | — | สตริงเทมเพลตที่มีตัวแทน {PropertyName} หรือ {PropertyName:format} |
| `-Delimiter` | String | — | — | 2 | `"`n"` | สตริงตัวคั่นที่จะแทรกระหว่างรายการที่มีรูปแบบ |
| `-Indentation` | Int32 | — | — | 3 | `0` | จำนวนระดับการเยื้อง (เว้นวรรค 4 ช่องต่อระดับ) ที่จะนำไปใช้ |
| `-NewLine` | SwitchParameter | — | — | Named | `$false` | ผนวกตัวคั่นต่อท้ายรายการสุดท้าย |
| `-EndDelimiter` | SwitchParameter | — | — | Named | `$false` | เพิ่มตัวคั่นเมื่ออาร์เรย์ไม่ว่างที่ส่วนท้าย |

## Examples

### @(     @{ Name = "Alice"; Age = 30 }     @{ Name = "Bob"; Age = 25 } ) | Add-ArrayTemplate -Template "{Name} is {Age} years old"

```powershell
@(
    @{ Name = "Alice"; Age = 30 }
    @{ Name = "Bob"; Age = 25 }
) | Add-ArrayTemplate -Template "{Name} is {Age} years old"
```

ชื่อ: Alice
อายุ: 30

ชื่อ: Bob
อายุ: 25

จัดรูปแบบอาร์เรย์ของแฮชเทเบิลที่มีตัวยึดตำแหน่งคุณสมบัติ

### $items | FormatArray -Template "  - {Name}" -Delimiter ", " -Indentation 1

```powershell
$items | FormatArray -Template "  - {Name}" -Delimiter ", " -Indentation 1
```

ใช้ตัวย่อ FormatArray พร้อมการเยื้องและตัวคั่นแบบกำหนดเอง

## Parameter Details

### `-InputObject <Collections.IEnumerable>`

> คอลเล็กชันของอ็อบเจ็กต์ที่จะจัดรูปแบบ

| Property | Value |
|:---|:---|
| **Required?** | Yes |
| **Position?** | 0 |
| **Default value** | *(none)* |
| **Accept pipeline input?** | True (ByValue) |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-Template <String>`

> สตริงเทมเพลตที่มีตัวแทน {PropertyName} หรือ {PropertyName:format}

| Property | Value |
|:---|:---|
| **Required?** | Yes |
| **Position?** | 1 |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-Delimiter <String>`

> สตริงตัวคั่นที่จะแทรกระหว่างรายการที่มีรูปแบบ

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | 2 |
| **Default value** | `"`n"` |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-Indentation <Int32>`

> จำนวนระดับการเยื้อง (เว้นวรรค 4 ช่องต่อระดับ) ที่จะนำไปใช้

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | 3 |
| **Default value** | `0` |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-NewLine`

> ผนวกตัวคั่นต่อท้ายรายการสุดท้าย

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | `$false` |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-EndDelimiter`

> เพิ่มตัวคั่นเมื่ออาร์เรย์ไม่ว่างที่ส่วนท้าย

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | `$false` |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
## Outputs

- `String`

## Related Links

- [Remove-DoubleEmptyLines](https://github.com/genXdev/genXdev/blob/main/Docs/th-TH/Remove-DoubleEmptyLines.md)

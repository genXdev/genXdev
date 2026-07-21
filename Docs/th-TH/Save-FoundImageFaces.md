# Save-FoundImageFaces

> **Module:** GenXdev.AI.Queries | **Type:** Function | **Aliases:** `saveimagefaces`

## Synopsis

> บันทึกภาพใบหน้าที่ถูกครอบจากผลการค้นหารูปภาพแบบดัชนี

## Description

ฟังก์ชันนี้นำผลลัพธ์การค้นหารูปภาพมาแยก/บันทึกบริเวณใบหน้าแต่ละใบเป็นไฟล์รูปภาพแยกต่างหาก โดยสามารถค้นหาใบหน้าโดยใช้เกณฑ์ต่างๆ และบันทึกไปยังไดเรกทอรีเอาต์พุตที่ระบุได้ ฟังก์ชันรองรับการค้นหาตามคำอธิบาย คำสำคัญ บุคคล สิ่งของ ฉาก ประเภทรูปภาพ ประเภทรูปแบบ และอารมณ์โดยรวม นอกจากนี้ยังสามารถกรองตามภาพเปลือยและเนื้อหาที่ไม่เหมาะสมได้

## Syntax

```powershell
Save-FoundImageFaces [[-Any] <String[]>] [-ClearSession] [-DatabaseFilePath <String>] [-DescriptionSearch <String[]>] [-ForceIndexRebuild] [-GeoDistanceInMeters <Double>] [-GeoLocation <Double[]>] [-HasExplicitContent] [-HasNudity] [-InputObject <Object[]>] [-Keywords <String[]>] [-Language <String>] [-NoExplicitContent] [-NoNudity] [-Objects <String[]>] [-OutputDirectory <String>] [-OverallMood <String[]>] [-PathLike <String[]>] [-People <String[]>] [-PictureType <String[]>] [-PreferencesDatabasePath <String>] [-SaveUnknownPersons] [-Scenes <String[]>] [-SessionOnly] [-SkipSession] [-StyleType <String[]>] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-Any` | String[] | — | — | 0 | `@()` | จะตรงกับประเภทข้อมูลเมตาที่เป็นไปได้ทั้งหมด |
| `-DescriptionSearch` | String[] | — | — | Named | `@()` | ข้อความคำอธิบายที่ต้องการค้นหา สามารถใช้อักขระตัวแทนได้ |
| `-Keywords` | String[] | — | — | Named | `@()` | คำสำคัญที่ต้องค้นหา อนุญาตให้ใช้ไวด์การ์ดได้ |
| `-People` | String[] | — | — | Named | `@()` | ผู้คนที่ต้องการค้นหา สามารถใช้อักขระตัวแทนได้ |
| `-Objects` | String[] | — | — | Named | `@()` | วัตถุที่ต้องการค้นหา อนุญาตให้ใช้ตัวแทนได้ |
| `-Scenes` | String[] | — | — | Named | `@()` | ฉากที่ต้องค้นหา สามารถใช้อักขระแทนได้ |
| `-PictureType` | String[] | — | — | Named | `@()` | ประเภทของรูปภาพสำหรับกรองด้วย สัญลักษณ์ตัวแทนสามารถใช้ได้ |
| `-StyleType` | String[] | — | — | Named | `@()` | ประเภทรูปแบบที่จะกรอง โดยอนุญาตให้ใช้เครื่องหมาย Wildcards ได้ |
| `-OverallMood` | String[] | — | — | Named | `@()` | อารมณ์โดยรวมสำหรับการกรอง โดยอนุญาตให้ใช้ไวด์การ์ดได้ |
| `-DatabaseFilePath` | String | — | — | Named | — | เส้นทางไปยังไฟล์ฐานข้อมูล SQLite |
| `-Language` | String | — | — | Named | — | ภาษาสำหรับคำอธิบายและคำสำคัญ |
| `-PathLike` | String[] | — | — | Named | `@()` | อาร์เรย์ของสตริงค้นหาแบบเส้นทางไดเรกทอรีเพื่อกรองรูปภาพตามเส้นทาง (รูปแบบ SQL LIKE เช่น '%\2024\%') |
| `-InputObject` | Object[] | — | ✅ (ByValue) | Named | — | ยอมรับผลการค้นหาจากการเรียก -PassThru ก่อนหน้าเพื่อสร้างมุมมองใหม่ |
| `-OutputDirectory` | String | — | — | Named | `'.\'` | ไดเรกทอรีสำหรับบันทึกภาพใบหน้าที่ถูกครอบ |
| `-PreferencesDatabasePath` | String | — | — | Named | — | เส้นทางฐานข้อมูลสำหรับไฟล์ข้อมูลการตั้งค่า |
| `-HasNudity` | SwitchParameter | — | — | Named | — | กรองภาพที่มีเนื้อหาลามกอนาจาร |
| `-NoNudity` | SwitchParameter | — | — | Named | — | กรองภาพที่ไม่มีเนื้อหาลามกอนาจาร |
| `-HasExplicitContent` | SwitchParameter | — | — | Named | — | กรองรูปภาพที่มีเนื้อหาลามกอนาจาร |
| `-NoExplicitContent` | SwitchParameter | — | — | Named | — | กรองรูปภาพที่ไม่มีเนื้อหาที่ไม่เหมาะสม |
| `-ForceIndexRebuild` | SwitchParameter | — | — | Named | — | บังคับสร้างฐานข้อมูลดัชนีรูปภาพใหม่ |
| `-GeoLocation` | Double[] | — | — | Named | — | พิกัดทางภูมิศาสตร์ [ละติจูด, ลองจิจูด] เพื่อค้นหาบริเวณใกล้เคียง. |
| `-GeoDistanceInMeters` | Double | — | — | Named | `1000` | ระยะทางสูงสุดในหน่วยเมตรจากตำแหน่งทางภูมิศาสตร์เพื่อค้นหารูปภาพ |
| `-SaveUnknownPersons` | SwitchParameter | — | — | Named | — | นอกจากนี้ ให้บันทึกบุคคลที่ไม่รู้จักที่ตรวจพบเป็นวัตถุ |
| `-SessionOnly` | SwitchParameter | — | — | Named | — | ใช้การตั้งค่าสำรองที่เก็บไว้ในเซสชันสำหรับการกำหนดค่า AI เช่น ภาษา ชุดรูปภาพ ฯลฯ |
| `-ClearSession` | SwitchParameter | — | — | Named | — | ล้างการตั้งค่าทางเลือกที่จัดเก็บในเซสชันสำหรับการตั้งค่า AI เช่น ภาษา คอลเลกชันรูปภาพ ฯลฯ |
| `-SkipSession` | SwitchParameter | — | — | Named | — | อย่าใช้การตั้งค่าสำรองที่เก็บในเซสชันสำหรับค่ากำหนดของ AI เช่น ภาษา, ชุดรูปภาพ ฯลฯ |

## Examples

### Save-FoundImageFaces -People "John*" -OutputDirectory "C:\Faces"

```powershell
Save-FoundImageFaces -People "John*" -OutputDirectory "C:\Faces"
```

### saveimagefaces -Any "vacation" -SaveUnknownPersons

```powershell
saveimagefaces -Any "vacation" -SaveUnknownPersons
```

## Parameter Details

### `-Any <String[]>`

> จะตรงกับประเภทข้อมูลเมตาที่เป็นไปได้ทั้งหมด

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | 0 |
| **Default value** | `@()` |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-DescriptionSearch <String[]>`

> ข้อความคำอธิบายที่ต้องการค้นหา สามารถใช้อักขระตัวแทนได้

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | `@()` |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-Keywords <String[]>`

> คำสำคัญที่ต้องค้นหา อนุญาตให้ใช้ไวด์การ์ดได้

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | `@()` |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-People <String[]>`

> ผู้คนที่ต้องการค้นหา สามารถใช้อักขระตัวแทนได้

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | `@()` |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-Objects <String[]>`

> วัตถุที่ต้องการค้นหา อนุญาตให้ใช้ตัวแทนได้

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | `@()` |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-Scenes <String[]>`

> ฉากที่ต้องค้นหา สามารถใช้อักขระแทนได้

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | `@()` |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-PictureType <String[]>`

> ประเภทของรูปภาพสำหรับกรองด้วย สัญลักษณ์ตัวแทนสามารถใช้ได้

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | `@()` |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-StyleType <String[]>`

> ประเภทรูปแบบที่จะกรอง โดยอนุญาตให้ใช้เครื่องหมาย Wildcards ได้

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | `@()` |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-OverallMood <String[]>`

> อารมณ์โดยรวมสำหรับการกรอง โดยอนุญาตให้ใช้ไวด์การ์ดได้

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | `@()` |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-DatabaseFilePath <String>`

> เส้นทางไปยังไฟล์ฐานข้อมูล SQLite

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-Language <String>`

> ภาษาสำหรับคำอธิบายและคำสำคัญ

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-PathLike <String[]>`

> อาร์เรย์ของสตริงค้นหาแบบเส้นทางไดเรกทอรีเพื่อกรองรูปภาพตามเส้นทาง (รูปแบบ SQL LIKE เช่น '%\2024\%')

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | `@()` |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-InputObject <Object[]>`

> ยอมรับผลการค้นหาจากการเรียก -PassThru ก่อนหน้าเพื่อสร้างมุมมองใหม่

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | True (ByValue) |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-OutputDirectory <String>`

> ไดเรกทอรีสำหรับบันทึกภาพใบหน้าที่ถูกครอบ

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | `'.\'` |
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
### `-HasNudity`

> กรองภาพที่มีเนื้อหาลามกอนาจาร

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-NoNudity`

> กรองภาพที่ไม่มีเนื้อหาลามกอนาจาร

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-HasExplicitContent`

> กรองรูปภาพที่มีเนื้อหาลามกอนาจาร

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-NoExplicitContent`

> กรองรูปภาพที่ไม่มีเนื้อหาที่ไม่เหมาะสม

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-ForceIndexRebuild`

> บังคับสร้างฐานข้อมูลดัชนีรูปภาพใหม่

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-GeoLocation <Double[]>`

> พิกัดทางภูมิศาสตร์ [ละติจูด, ลองจิจูด] เพื่อค้นหาบริเวณใกล้เคียง.

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-GeoDistanceInMeters <Double>`

> ระยะทางสูงสุดในหน่วยเมตรจากตำแหน่งทางภูมิศาสตร์เพื่อค้นหารูปภาพ

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | `1000` |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-SaveUnknownPersons`

> นอกจากนี้ ให้บันทึกบุคคลที่ไม่รู้จักที่ตรวจพบเป็นวัตถุ

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-SessionOnly`

> ใช้การตั้งค่าสำรองที่เก็บไว้ในเซสชันสำหรับการกำหนดค่า AI เช่น ภาษา ชุดรูปภาพ ฯลฯ

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-ClearSession`

> ล้างการตั้งค่าทางเลือกที่จัดเก็บในเซสชันสำหรับการตั้งค่า AI เช่น ภาษา คอลเลกชันรูปภาพ ฯลฯ

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-SkipSession`

> อย่าใช้การตั้งค่าสำรองที่เก็บในเซสชันสำหรับค่ากำหนดของ AI เช่น ภาษา, ชุดรูปภาพ ฯลฯ

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | `FromPreferences` |
| **Accept wildcard characters?** | No |

<hr/>
## Outputs

- `Object[]`
- `List`1[[System.Object, System.Private.CoreLib, Version=10.0.0.0, Culture=neutral, PublicKeyToken=7cec85d7bea7798e]]`
- `String`

## Related Links

- [Add-EmoticonsToText](https://github.com/genXdev/genXdev/blob/main/Docs/th-TH/Add-EmoticonsToText.md)
- [ConvertFrom-CorporateSpeak](https://github.com/genXdev/genXdev/blob/main/Docs/th-TH/ConvertFrom-CorporateSpeak.md)
- [ConvertFrom-DiplomaticSpeak](https://github.com/genXdev/genXdev/blob/main/Docs/th-TH/ConvertFrom-DiplomaticSpeak.md)
- [ConvertTo-CorporateSpeak](https://github.com/genXdev/genXdev/blob/main/Docs/th-TH/ConvertTo-CorporateSpeak.md)
- [ConvertTo-DiplomaticSpeak](https://github.com/genXdev/genXdev/blob/main/Docs/th-TH/ConvertTo-DiplomaticSpeak.md)
- [Find-Image](https://github.com/genXdev/genXdev/blob/main/Docs/th-TH/Find-Image.md)
- [Get-AIKnownFacesRootpath](https://github.com/genXdev/genXdev/blob/main/Docs/th-TH/Get-AIKnownFacesRootpath.md)
- [Get-AIMetaLanguage](https://github.com/genXdev/genXdev/blob/main/Docs/th-TH/Get-AIMetaLanguage.md)
- [Get-Fallacy](https://github.com/genXdev/genXdev/blob/main/Docs/th-TH/Get-Fallacy.md)
- [Get-ScriptExecutionErrorFixPrompt](https://github.com/genXdev/genXdev/blob/main/Docs/th-TH/Get-ScriptExecutionErrorFixPrompt.md)
- [Get-SimularMovieTitles](https://github.com/genXdev/genXdev/blob/main/Docs/th-TH/Get-SimularMovieTitles.md)
- [Invoke-AIPowershellCommand](https://github.com/genXdev/genXdev/blob/main/Docs/th-TH/Invoke-AIPowershellCommand.md)
- [Invoke-ImageFacesUpdate](https://github.com/genXdev/genXdev/blob/main/Docs/th-TH/Invoke-ImageFacesUpdate.md)
- [Invoke-ImageKeywordUpdate](https://github.com/genXdev/genXdev/blob/main/Docs/th-TH/Invoke-ImageKeywordUpdate.md)
- [Invoke-ImageMetadataUpdate](https://github.com/genXdev/genXdev/blob/main/Docs/th-TH/Invoke-ImageMetadataUpdate.md)
- [Invoke-ImageObjectsUpdate](https://github.com/genXdev/genXdev/blob/main/Docs/th-TH/Invoke-ImageObjectsUpdate.md)
- [Invoke-ImageScenesUpdate](https://github.com/genXdev/genXdev/blob/main/Docs/th-TH/Invoke-ImageScenesUpdate.md)
- [Invoke-LLMBooleanEvaluation](https://github.com/genXdev/genXdev/blob/main/Docs/th-TH/Invoke-LLMBooleanEvaluation.md)
- [Invoke-LLMQuery](https://github.com/genXdev/genXdev/blob/main/Docs/th-TH/Invoke-LLMQuery.md)
- [Invoke-LLMStringListEvaluation](https://github.com/genXdev/genXdev/blob/main/Docs/th-TH/Invoke-LLMStringListEvaluation.md)
- [Invoke-LLMTextTransformation](https://github.com/genXdev/genXdev/blob/main/Docs/th-TH/Invoke-LLMTextTransformation.md)
- [Invoke-QueryImageContent](https://github.com/genXdev/genXdev/blob/main/Docs/th-TH/Invoke-QueryImageContent.md)
- [Remove-ImageMetaData](https://github.com/genXdev/genXdev/blob/main/Docs/th-TH/Remove-ImageMetaData.md)
- [Save-Transcriptions](https://github.com/genXdev/genXdev/blob/main/Docs/th-TH/Save-Transcriptions.md)
- [Set-AIKnownFacesRootpath](https://github.com/genXdev/genXdev/blob/main/Docs/th-TH/Set-AIKnownFacesRootpath.md)
- [Set-AIMetaLanguage](https://github.com/genXdev/genXdev/blob/main/Docs/th-TH/Set-AIMetaLanguage.md)
- [Show-FoundImagesInBrowser](https://github.com/genXdev/genXdev/blob/main/Docs/th-TH/Show-FoundImagesInBrowser.md)
- [Start-AudioTranscription](https://github.com/genXdev/genXdev/blob/main/Docs/th-TH/Start-AudioTranscription.md)
- [Update-AllImageMetaData](https://github.com/genXdev/genXdev/blob/main/Docs/th-TH/Update-AllImageMetaData.md)

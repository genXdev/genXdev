# Remove-ImageMetaData

> **Module:** GenXdev.AI.Queries | **Type:** Function | **Aliases:** `removeimagedata`

## Synopsis

> ลบไฟล์เมทาดาต้าของรูปภาพออกจากไดเรกทอรีรูปภาพ

## Description

ฟังก์ชัน Remove-ImageMetaData จะลบไฟล์ JSON metadata ที่เกี่ยวข้องกับรูปภาพที่เชื่อมโยงอยู่ โดยสามารถเลือกได้ว่าจะลบเฉพาะคำสำคัญ (description.json), ข้อมูลบุคคล (people.json), ข้อมูลวัตถุ (objects.json), หรือข้อมูลฉาก (scenes.json) หรือลบไฟล์ metadata ทั้งหมดหากไม่ได้ระบุสวิตช์เฉพาะ นอกจากนี้ยังสามารถลบไฟล์ metadata ที่เฉพาะภาษาได้โดยระบุพารามิเตอร์ Language และสามารถลบรูปแบบภาษาทั้งหมดได้โดยใช้สวิตช์ AllLanguages

## Syntax

```powershell
Remove-ImageMetaData [[-ImageDirectories] <String[]>] [[-Language] <String>] [[-PreferencesDatabasePath] <String>] [-AllLanguages] [-ClearSession] [-OnlyKeywords] [-OnlyObjects] [-OnlyPeople] [-OnlyScenes] [-Recurse] [-SessionOnly] [-SkipSession] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-ImageDirectories` | String[] | — | — | 0 | `@(".\")` | อาร์เรย์ของเส้นทางไดเรกทอรีสำหรับประมวลผลเพื่อลบข้อมูลเมตาของภาพ หากไม่ได้ระบุ จะใช้ไดเรกทอรีเริ่มต้นของระบบ |
| `-Language` | String | — | — | 1 | — | ภาษาสำหรับลบไฟล์เมตาดาต้าที่เฉพาะเจาะจงภาษา |
| `-PreferencesDatabasePath` | String | — | — | 2 | — | เส้นทางฐานข้อมูลสำหรับไฟล์ข้อมูลการตั้งค่า |
| `-Recurse` | SwitchParameter | — | — | Named | — | เรียกดูไดเรกทอรีย้อนกลับ |
| `-OnlyKeywords` | SwitchParameter | — | — | Named | — | ลบเฉพาะไฟล์ description.json (คำสำคัญ/คำอธิบาย) |
| `-OnlyPeople` | SwitchParameter | — | — | Named | — | ลบเฉพาะไฟล์ people.json (ข้อมูลการจดจำใบหน้า) เท่านั้น |
| `-OnlyObjects` | SwitchParameter | — | — | Named | — | ลบเฉพาะไฟล์ objects.json (ข้อมูลตรวจจับวัตถุ) เท่านั้น |
| `-OnlyScenes` | SwitchParameter | — | — | Named | — | ให้ลบเฉพาะไฟล์ scenes.json (ข้อมูลการจำแนกฉาก) เท่านั้น |
| `-AllLanguages` | SwitchParameter | — | — | Named | — | ลบไฟล์เมตาดาต้าสำหรับภาษาที่รองรับทั้งหมด |
| `-SessionOnly` | SwitchParameter | — | — | Named | — | ใช้การตั้งค่าสำรองที่เก็บไว้ในเซสชันสำหรับการกำหนดค่า AI เช่น ภาษา ชุดรูปภาพ ฯลฯ |
| `-ClearSession` | SwitchParameter | — | — | Named | — | ล้างการตั้งค่าทางเลือกที่จัดเก็บในเซสชันสำหรับการตั้งค่า AI เช่น ภาษา คอลเลกชันรูปภาพ ฯลฯ |
| `-SkipSession` | SwitchParameter | — | — | Named | — | อย่าใช้การตั้งค่าสำรองที่เก็บในเซสชันสำหรับค่ากำหนดของ AI เช่น ภาษา, ชุดรูปภาพ ฯลฯ |

## Examples

### Remove-ImageMetaData -ImageDirectories @("C:\Photos", "D:\MyImages") -Recurse

```powershell
Remove-ImageMetaData -ImageDirectories @("C:\Photos", "D:\MyImages") -Recurse
```

ลบไฟล์เมทาดาทาทั้งหมดสำหรับรูปภาพในหลายไดเรกทอรีและไดเรกทอรีย่อยทั้งหมด

### Remove-ImageMetaData -Recurse -OnlyKeywords

```powershell
Remove-ImageMetaData -Recurse -OnlyKeywords
```

ลบเฉพาะไฟล์ description.json จากไดเรกทอรีระบบเริ่มต้นและไดเรกทอรีย่อยเท่านั้น

### Remove-ImageMetaData -OnlyPeople -ImageDirectories @(".\MyPhotos")

```powershell
Remove-ImageMetaData -OnlyPeople -ImageDirectories @(".\MyPhotos")
```

ลบเฉพาะไฟล์ people.json ออกจากไดเรกทอรี MyPhotos

### Remove-ImageMetaData -Language "Spanish" -OnlyKeywords -Recurse

```powershell
Remove-ImageMetaData -Language "Spanish" -OnlyKeywords -Recurse
```

ลบไฟล์คำอธิบายทั้งภาษาอังกฤษและสเปนออกจากไดเรกทอรีเริ่มต้นแบบเรียกซ้ำ

### removeimagedata -AllLanguages -OnlyKeywords

```powershell
removeimagedata -AllLanguages -OnlyKeywords
```

ใช้นามแฝงเพื่อลบไฟล์คำสำคัญสำหรับภาษาที่รองรับทั้งหมด

## Parameter Details

### `-ImageDirectories <String[]>`

> อาร์เรย์ของเส้นทางไดเรกทอรีสำหรับประมวลผลเพื่อลบข้อมูลเมตาของภาพ หากไม่ได้ระบุ จะใช้ไดเรกทอรีเริ่มต้นของระบบ

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | 0 |
| **Default value** | `@(".\")` |
| **Accept pipeline input?** | False |
| **Aliases** | `imagespath`, `directories`, `imgdirs`, `imagedirectory` |
| **Accept wildcard characters?** | No |

<hr/>
### `-Language <String>`

> ภาษาสำหรับลบไฟล์เมตาดาต้าที่เฉพาะเจาะจงภาษา

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | 1 |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-PreferencesDatabasePath <String>`

> เส้นทางฐานข้อมูลสำหรับไฟล์ข้อมูลการตั้งค่า

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | 2 |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | `DatabasePath` |
| **Accept wildcard characters?** | No |

<hr/>
### `-Recurse`

> เรียกดูไดเรกทอรีย้อนกลับ

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-OnlyKeywords`

> ลบเฉพาะไฟล์ description.json (คำสำคัญ/คำอธิบาย)

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-OnlyPeople`

> ลบเฉพาะไฟล์ people.json (ข้อมูลการจดจำใบหน้า) เท่านั้น

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-OnlyObjects`

> ลบเฉพาะไฟล์ objects.json (ข้อมูลตรวจจับวัตถุ) เท่านั้น

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-OnlyScenes`

> ให้ลบเฉพาะไฟล์ scenes.json (ข้อมูลการจำแนกฉาก) เท่านั้น

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-AllLanguages`

> ลบไฟล์เมตาดาต้าสำหรับภาษาที่รองรับทั้งหมด

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
- [Save-FoundImageFaces](https://github.com/genXdev/genXdev/blob/main/Docs/th-TH/Save-FoundImageFaces.md)
- [Save-Transcriptions](https://github.com/genXdev/genXdev/blob/main/Docs/th-TH/Save-Transcriptions.md)
- [Set-AIKnownFacesRootpath](https://github.com/genXdev/genXdev/blob/main/Docs/th-TH/Set-AIKnownFacesRootpath.md)
- [Set-AIMetaLanguage](https://github.com/genXdev/genXdev/blob/main/Docs/th-TH/Set-AIMetaLanguage.md)
- [Show-FoundImagesInBrowser](https://github.com/genXdev/genXdev/blob/main/Docs/th-TH/Show-FoundImagesInBrowser.md)
- [Start-AudioTranscription](https://github.com/genXdev/genXdev/blob/main/Docs/th-TH/Start-AudioTranscription.md)
- [Update-AllImageMetaData](https://github.com/genXdev/genXdev/blob/main/Docs/th-TH/Update-AllImageMetaData.md)

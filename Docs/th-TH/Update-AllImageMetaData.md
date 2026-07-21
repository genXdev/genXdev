# Update-AllImageMetaData

> **Module:** GenXdev.AI.Queries | **Type:** Function | **Aliases:** `updateallimages`

## Synopsis

> อัปเดตคำสำคัญ ใบหน้า วัตถุ และฉากของภาพเป็นชุดในหลายไดเรกทอรีของระบบ

## Description

ฟังก์ชันนี้ประมวลผลรูปภาพอย่างเป็นระบบในไดเร็กทอรีต่างๆ ของระบบ เพื่ออัปเดตคีย์เวิร์ด ข้อมูลการจดจำใบหน้า ข้อมูลการตรวจจับวัตถุ และข้อมูลการจำแนกฉาก โดยใช้บริการ AI ครอบคลุมโฟลเดอร์สื่อจัดเก็บ ไฟล์ระบบ ไฟล์ดาวน์โหลด OneDrive และโฟลเดอร์รูปภาพส่วนตัว

ฟังก์ชันประมวลผลรูปภาพโดยการวนดูแต่ละไดเร็กทอรีและประมวลผลไฟล์ทีละไฟล์ ฟังก์ชัน DeepStack (ใบหน้า วัตถุ ฉาก) จะถูกดำเนินการก่อน ตามด้วยการสร้างคีย์เวิร์ดและคำอธิบาย

ช่วยให้สามารถส่งออกข้อมูลที่มีโครงสร้างสำหรับการดำเนินการในไปป์ไลน์ เช่น:
Update-AllImageMetaData | Export-ImageIndex

## Syntax

```powershell
Update-AllImageMetaData -ImageDirectories <String[]> [-ApiEndpoint <String>] [-ApiKey <String>] [-AutoUpdateFaces] [-ClearSession] [-ConfidenceThreshold <Double>] [-ContainerName <String>] [-FacesDirectory <String>] [-Force] [-HealthCheckInterval <Int32>] [-HealthCheckTimeout <Int32>] [-ImageName <String>] [-Language <String>] [-Model <String>] [-NoDockerInitialize] [-NoRecurse] [-NoSupportForJsonSchema <String>] [-PassThru] [-PreferencesDatabasePath <String>] [-RedoAll] [-RetryFailed] [-ServicePort <Int32>] [-SessionOnly] [-SkipSession] [-TimeoutSeconds <Int32>] [-UseGPU] [-VolumeName <String>] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-ImageDirectories` | String[] | ✅ | — | 0 | — | อาร์เรย์ของเส้นทางไดเรกทอรีที่จะประมวลผลสำหรับการอัปเดตรูปภาพ |
| `-ContainerName` | String | — | — | Named | `'deepstack_face_recognition'` | ชื่อสำหรับคอนเทนเนอร์ Docker |
| `-VolumeName` | String | — | — | Named | `'deepstack_face_data'` | ชื่อของวอลุ่ม Docker สำหรับที่เก็บข้อมูลแบบถาวร |
| `-ServicePort` | Int32 | — | — | Named | `5000` | หมายเลขพอร์ตสำหรับบริการ DeepStack |
| `-HealthCheckTimeout` | Int32 | — | — | Named | `60` | เวลาสูงสุดในหน่วยวินาทีที่รอการตรวจสอบสถานะบริการ |
| `-HealthCheckInterval` | Int32 | — | — | Named | `3` | ช่วงเวลาเป็นวินาทีระหว่างการตรวจสอบสถานะ |
| `-ImageName` | String | — | — | Named | — | ชื่ออิมเมจ Docker ที่กำหนดเองที่จะใช้ |
| `-ConfidenceThreshold` | Double | — | — | Named | `0.7` | ค่าระดับความมั่นใจขั้นต่ำ (0.0-1.0) สำหรับการตรวจจับวัตถุ |
| `-Language` | String | — | — | Named | — | ภาษาสำหรับคำอธิบายและคำสำคัญที่สร้างขึ้น |
| `-Model` | String | — | ✅ (ByValue) | Named | — | ชื่อหรือพาธบางส่วนของโมเดลที่จะเริ่มต้น 🌐 *Supports wildcards* |
| `-ApiEndpoint` | String | — | — | Named | `$null` | URL ปลายทางของ API โดยค่าเริ่มต้นคือ http://localhost:1234/v1/chat/completions |
| `-ApiKey` | String | — | — | Named | `$null` | คีย์ API ที่จะใช้สำหรับคำขอ |
| `-NoSupportForJsonSchema` | String | — | — | Named | — | บ่งชี้ว่า LLM ไม่รองรับ JSON schemas |
| `-TimeoutSeconds` | Int32 | — | — | Named | — | หมดเวลาสำหรับคำขอเป็นวินาที ค่าเริ่มต้นคือ 24 ชั่วโมง |
| `-FacesDirectory` | String | — | — | Named | — | ไดเรกทอรีที่มีรูปภาพใบหน้าที่จัดเรียงตามโฟลเดอร์ของแต่ละบุคคล หากไม่ได้ระบุ จะใช้การตั้งค่าไดเรกทอรีใบหน้าที่กำหนดไว้ |
| `-PreferencesDatabasePath` | String | — | — | Named | — | เส้นทางฐานข้อมูลสำหรับไฟล์ข้อมูลการตั้งค่า |
| `-RetryFailed` | SwitchParameter | — | — | Named | — | จะลองอัปเดตคำหลักรูปภาพที่ล้มเหลวก่อนหน้านี้ซ้ำอีกครั้ง |
| `-NoRecurse` | SwitchParameter | — | — | Named | — | อย่าเจาะลึกไปยังไดเรกทอรีย่อยเมื่อประมวลผลภาพ |
| `-RedoAll` | SwitchParameter | — | — | Named | — | ดำเนินการจัดการรูปภาพทั้งหมดใหม่โดยไม่คำนึงถึงการประมวลผลก่อนหน้านี้ |
| `-NoDockerInitialize` | SwitchParameter | — | — | Named | — | ข้ามการเริ่มต้น Docker (ใช้เมื่อถูกเรียกจากฟังก์ชันหลักอยู่แล้ว) |
| `-Force` | SwitchParameter | — | — | Named | — | บังคับสร้าง Docker container ใหม่และลบข้อมูลที่มีอยู่ |
| `-UseGPU` | SwitchParameter | — | — | Named | — | ใช้เวอร์ชันที่เร่งด้วย GPU (ต้องใช้ GPU ของ NVIDIA) |
| `-PassThru` | SwitchParameter | — | — | Named | — | PassThru เพื่อส่งคืนวัตถุที่มีโครงสร้างแทนการแสดงผลในคอนโซล |
| `-AutoUpdateFaces` | SwitchParameter | — | — | Named | — | ตรวจจับการเปลี่ยนแปลงในไดเรกทอรีใบหน้าและลงทะเบียนใบหน้าอีกครั้งหากจำเป็น |
| `-SessionOnly` | SwitchParameter | — | — | Named | — | ใช้การตั้งค่าสำรองที่เก็บไว้ในเซสชันสำหรับการกำหนดค่า AI เช่น ภาษา ชุดรูปภาพ ฯลฯ |
| `-ClearSession` | SwitchParameter | — | — | Named | — | ล้างการตั้งค่าทางเลือกที่จัดเก็บในเซสชันสำหรับการตั้งค่า AI เช่น ภาษา คอลเลกชันรูปภาพ ฯลฯ |
| `-SkipSession` | SwitchParameter | — | — | Named | — | อย่าใช้การตั้งค่าสำรองที่เก็บในเซสชันสำหรับค่ากำหนดของ AI เช่น ภาษา, ชุดรูปภาพ ฯลฯ |

## Examples

### Update-AllImageMetaData -ImageDirectories @("C:\Pictures", "D:\Photos") `     -ServicePort 5000

```powershell
Update-AllImageMetaData -ImageDirectories @("C:\Pictures", "D:\Photos") `
    -ServicePort 5000
```

### Update-AllImageMetaData -RetryFailed -Force -Language "Spanish"

```powershell
Update-AllImageMetaData -RetryFailed -Force -Language "Spanish"
```

### updateallimages @("C:\MyImages") -ContainerName "custom_face_recognition" ##############################################################################

```powershell
updateallimages @("C:\MyImages") -ContainerName "custom_face_recognition"
##############################################################################
```

## Parameter Details

### `-ImageDirectories <String[]>`

> อาร์เรย์ของเส้นทางไดเรกทอรีที่จะประมวลผลสำหรับการอัปเดตรูปภาพ

| Property | Value |
|:---|:---|
| **Required?** | Yes |
| **Position?** | 0 |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | `imagespath`, `directories`, `imgdirs`, `imagedirectory` |
| **Accept wildcard characters?** | No |

<hr/>
### `-ContainerName <String>`

> ชื่อสำหรับคอนเทนเนอร์ Docker

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | `'deepstack_face_recognition'` |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-VolumeName <String>`

> ชื่อของวอลุ่ม Docker สำหรับที่เก็บข้อมูลแบบถาวร

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | `'deepstack_face_data'` |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-ServicePort <Int32>`

> หมายเลขพอร์ตสำหรับบริการ DeepStack

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | `5000` |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-HealthCheckTimeout <Int32>`

> เวลาสูงสุดในหน่วยวินาทีที่รอการตรวจสอบสถานะบริการ

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | `60` |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-HealthCheckInterval <Int32>`

> ช่วงเวลาเป็นวินาทีระหว่างการตรวจสอบสถานะ

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | `3` |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-ImageName <String>`

> ชื่ออิมเมจ Docker ที่กำหนดเองที่จะใช้

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-ConfidenceThreshold <Double>`

> ค่าระดับความมั่นใจขั้นต่ำ (0.0-1.0) สำหรับการตรวจจับวัตถุ

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | `0.7` |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-Language <String>`

> ภาษาสำหรับคำอธิบายและคำสำคัญที่สร้างขึ้น

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-Model <String>`

> ชื่อหรือพาธบางส่วนของโมเดลที่จะเริ่มต้น

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | True (ByValue) |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | Yes |

<hr/>
### `-ApiEndpoint <String>`

> URL ปลายทางของ API โดยค่าเริ่มต้นคือ http://localhost:1234/v1/chat/completions

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | `$null` |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-ApiKey <String>`

> คีย์ API ที่จะใช้สำหรับคำขอ

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | `$null` |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-NoSupportForJsonSchema <String>`

> บ่งชี้ว่า LLM ไม่รองรับ JSON schemas

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-TimeoutSeconds <Int32>`

> หมดเวลาสำหรับคำขอเป็นวินาที ค่าเริ่มต้นคือ 24 ชั่วโมง

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-FacesDirectory <String>`

> ไดเรกทอรีที่มีรูปภาพใบหน้าที่จัดเรียงตามโฟลเดอร์ของแต่ละบุคคล หากไม่ได้ระบุ จะใช้การตั้งค่าไดเรกทอรีใบหน้าที่กำหนดไว้

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
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
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | `DatabasePath` |
| **Accept wildcard characters?** | No |

<hr/>
### `-RetryFailed`

> จะลองอัปเดตคำหลักรูปภาพที่ล้มเหลวก่อนหน้านี้ซ้ำอีกครั้ง

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-NoRecurse`

> อย่าเจาะลึกไปยังไดเรกทอรีย่อยเมื่อประมวลผลภาพ

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-RedoAll`

> ดำเนินการจัดการรูปภาพทั้งหมดใหม่โดยไม่คำนึงถึงการประมวลผลก่อนหน้านี้

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-NoDockerInitialize`

> ข้ามการเริ่มต้น Docker (ใช้เมื่อถูกเรียกจากฟังก์ชันหลักอยู่แล้ว)

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-Force`

> บังคับสร้าง Docker container ใหม่และลบข้อมูลที่มีอยู่

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | `ForceRebuild` |
| **Accept wildcard characters?** | No |

<hr/>
### `-UseGPU`

> ใช้เวอร์ชันที่เร่งด้วย GPU (ต้องใช้ GPU ของ NVIDIA)

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-PassThru`

> PassThru เพื่อส่งคืนวัตถุที่มีโครงสร้างแทนการแสดงผลในคอนโซล

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | `pt` |
| **Accept wildcard characters?** | No |

<hr/>
### `-AutoUpdateFaces`

> ตรวจจับการเปลี่ยนแปลงในไดเรกทอรีใบหน้าและลงทะเบียนใบหน้าอีกครั้งหากจำเป็น

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
- [Remove-ImageMetaData](https://github.com/genXdev/genXdev/blob/main/Docs/th-TH/Remove-ImageMetaData.md)
- [Save-FoundImageFaces](https://github.com/genXdev/genXdev/blob/main/Docs/th-TH/Save-FoundImageFaces.md)
- [Save-Transcriptions](https://github.com/genXdev/genXdev/blob/main/Docs/th-TH/Save-Transcriptions.md)
- [Set-AIKnownFacesRootpath](https://github.com/genXdev/genXdev/blob/main/Docs/th-TH/Set-AIKnownFacesRootpath.md)
- [Set-AIMetaLanguage](https://github.com/genXdev/genXdev/blob/main/Docs/th-TH/Set-AIMetaLanguage.md)
- [Show-FoundImagesInBrowser](https://github.com/genXdev/genXdev/blob/main/Docs/th-TH/Show-FoundImagesInBrowser.md)
- [Start-AudioTranscription](https://github.com/genXdev/genXdev/blob/main/Docs/th-TH/Start-AudioTranscription.md)

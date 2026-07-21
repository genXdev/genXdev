# Set-GenXdevCommandNotFoundAction

> **Module:** GenXdev.AI | **Type:** Function | **Aliases:** —

## Synopsis

> ตั้งค่าการจัดการคำสั่งที่หาไม่พบแบบกำหนดเอง พร้อมตัวช่วย AI ที่เป็นตัวเลือก

## Description

กำหนดค่า PowerShell ให้จัดการกับคำสั่งที่ไม่รู้จักโดยการนำทางไปยังไดเรกทอรีหรือใช้ AI เพื่อตีความความตั้งใจของผู้ใช้ ตัวจัดการจะลองใช้ตัวจัดการคำสั่งที่ไม่พบที่มีอยู่ก่อน จากนั้นตรวจสอบว่าคำสั่งนั้นเป็นพาธที่ถูกต้องสำหรับการนำทางหรือไม่ การแก้ไขด้วย AI จะเปิดใช้งานเมื่อมีการระบุสวิตช์ -UseAIResolve อย่างชัดเจนเท่านั้น

## Syntax

```powershell
Set-GenXdevCommandNotFoundAction [[-LLMQueryType] <String>] [[-Model] <String>] [[-ApiEndpoint] <String>] [[-ApiKey] <String>] [[-NoSupportForJsonSchema] <String>] [-NoPrompt] [-UseAIResolve] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-LLMQueryType` | String | — | — | 0 | `'Coding'` | ประเภทของการสอบถาม LLM |
| `-Model` | String | — | — | 1 | — | รหัสหรือรูปแบบของโมเดลที่ใช้สำหรับการดำเนินการ AI |
| `-ApiEndpoint` | String | — | — | 2 | — | URL ปลายทางของ API สำหรับการดำเนินการ AI |
| `-ApiKey` | String | — | — | 3 | — | คีย์ API สำหรับการดำเนินงาน AI ที่ผ่านการรับรองความถูกต้อง |
| `-NoSupportForJsonSchema` | String | — | — | 4 | — | บ่งชี้ว่า LLM ไม่รองรับ JSON schemas |
| `-UseAIResolve` | SwitchParameter | — | — | Named | — | เปิดใช้งานการแก้ไขคำสั่งที่ไม่รู้จักด้วย AI |
| `-NoPrompt` | SwitchParameter | — | — | Named | — | ข้ามพรอมต์เจตนาและใช้ชื่อคำสั่งโดยตรงเป็นคำค้นหา AI (ต้องใช้ -UseAIResolve) |

## Examples

### Set-GenXdevCommandNotFoundAction -UseAIResolve

```powershell
Set-GenXdevCommandNotFoundAction -UseAIResolve
```

@{response=เปิดใช้งานการแก้ปัญหาด้วย AI พร้อมการแจ้งแบบโต้ตอบสำหรับคำสั่งที่ไม่รู้จัก}

### Set-GenXdevCommandNotFoundAction -UseAIResolve -NoPrompt

```powershell
Set-GenXdevCommandNotFoundAction -UseAIResolve -NoPrompt
```

เปิดใช้งานการแก้ปัญหาด้วย AI ซึ่งคำสั่งที่ไม่รู้จักจะถูกส่งไปยัง AI โดยตรง โดยไม่ต้องถามผู้ใช้ว่าต้องการทำอะไร

## Parameter Details

### `-LLMQueryType <String>`

> ประเภทของการสอบถาม LLM

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | 0 |
| **Default value** | `'Coding'` |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-Model <String>`

> รหัสหรือรูปแบบของโมเดลที่ใช้สำหรับการดำเนินการ AI

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | 1 |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-ApiEndpoint <String>`

> URL ปลายทางของ API สำหรับการดำเนินการ AI

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | 2 |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-ApiKey <String>`

> คีย์ API สำหรับการดำเนินงาน AI ที่ผ่านการรับรองความถูกต้อง

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | 3 |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-NoSupportForJsonSchema <String>`

> บ่งชี้ว่า LLM ไม่รองรับ JSON schemas

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | 4 |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-UseAIResolve`

> เปิดใช้งานการแก้ไขคำสั่งที่ไม่รู้จักด้วย AI

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-NoPrompt`

> ข้ามพรอมต์เจตนาและใช้ชื่อคำสั่งโดยตรงเป็นคำค้นหา AI (ต้องใช้ -UseAIResolve)

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
## Related Links

- [Get-AILLMSettings](https://github.com/genXdev/genXdev/blob/main/Docs/th-TH/Get-AILLMSettings.md)
- [Get-SpeechToText](https://github.com/genXdev/genXdev/blob/main/Docs/th-TH/Get-SpeechToText.md)
- [Get-TextTranslation](https://github.com/genXdev/genXdev/blob/main/Docs/th-TH/Get-TextTranslation.md)
- [Get-VectorSimilarity](https://github.com/genXdev/genXdev/blob/main/Docs/th-TH/Get-VectorSimilarity.md)
- [Invoke-WinMerge](https://github.com/genXdev/genXdev/blob/main/Docs/th-TH/Invoke-WinMerge.md)
- [Merge-TranslationCache](https://github.com/genXdev/genXdev/blob/main/Docs/th-TH/Merge-TranslationCache.md)
- [New-GenXdevMCPToken](https://github.com/genXdev/genXdev/blob/main/Docs/th-TH/New-GenXdevMCPToken.md)
- [New-LLMAudioChat](https://github.com/genXdev/genXdev/blob/main/Docs/th-TH/New-LLMAudioChat.md)
- [New-LLMTextChat](https://github.com/genXdev/genXdev/blob/main/Docs/th-TH/New-LLMTextChat.md)
- [Receive-RealTimeSpeechToText](https://github.com/genXdev/genXdev/blob/main/Docs/th-TH/Receive-RealTimeSpeechToText.md)
- [Set-AILLMSettings](https://github.com/genXdev/genXdev/blob/main/Docs/th-TH/Set-AILLMSettings.md)
- [Start-GenXdevMCPServer](https://github.com/genXdev/genXdev/blob/main/Docs/th-TH/Start-GenXdevMCPServer.md)
- [Test-DeepLinkImageFile](https://github.com/genXdev/genXdev/blob/main/Docs/th-TH/Test-DeepLinkImageFile.md)

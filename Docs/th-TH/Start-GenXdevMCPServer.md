# Start-GenXdevMCPServer

> **Module:** GenXdev.AI | **Type:** Function | **Aliases:** —

## Synopsis

> *(No synopsis provided)*

## Syntax

```powershell
Start-GenXdevMCPServer [[-Port] <Int32>] [[-ExposedCmdLets] <GenXdev.Helpers.ExposedCmdletDefinition[]>] [[-NoConfirmationToolFunctionNames] <String[]>] [[-MaxOutputLength] <Int32>] [[-Token] <String>] [-StopExisting] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-Port` | Int32 | — | — | 0 | `2175` | พอร์ตที่เซิร์ฟเวอร์ MCP จะรับฟัง (ค่าเริ่มต้น: 2175) |
| `-ExposedCmdLets` | GenXdev.Helpers.ExposedCmdletDefinition[] | — | — | 1 | `@()` | อาร์เรย์ของคำจำกัดความคำสั่ง PowerShell เพื่อเปิดเผยเป็นเครื่องมือ MCP |
| `-NoConfirmationToolFunctionNames` | String[] | — | — | 2 | `@()` | รายการคำสั่งที่สามารถดำเนินการได้โดยไม่ต้องยืนยันจากผู้ใช้ |
| `-StopExisting` | SwitchParameter | — | — | Named | — | ก่อนเริ่มเซิร์ฟเวอร์ MCP ใหม่ ให้หยุดเซิร์ฟเวอร์ที่มีอยู่ที่ทำงานบนพอร์ตที่ระบุ |
| `-MaxOutputLength` | Int32 | — | — | 3 | `75000` | ความยาวสูงสุดของผลลัพธ์ของเครื่องมือในหน่วยตัวอักษรก่อนการตัดทอน (ค่าเริ่มต้น: 75000) |
| `-Token` | String | — | — | 4 | `$null` | โทเค็นการรับรองความถูกต้องที่จำเป็นสำหรับไคลเอนต์เพื่อเชื่อมต่อกับเซิร์ฟเวอร์ MCP |

## Parameter Details

### `-Port <Int32>`

> พอร์ตที่เซิร์ฟเวอร์ MCP จะรับฟัง (ค่าเริ่มต้น: 2175)

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | 0 |
| **Default value** | `2175` |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-ExposedCmdLets <GenXdev.Helpers.ExposedCmdletDefinition[]>`

> อาร์เรย์ของคำจำกัดความคำสั่ง PowerShell เพื่อเปิดเผยเป็นเครื่องมือ MCP

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | 1 |
| **Default value** | `@()` |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-NoConfirmationToolFunctionNames <String[]>`

> รายการคำสั่งที่สามารถดำเนินการได้โดยไม่ต้องยืนยันจากผู้ใช้

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | 2 |
| **Default value** | `@()` |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-StopExisting`

> ก่อนเริ่มเซิร์ฟเวอร์ MCP ใหม่ ให้หยุดเซิร์ฟเวอร์ที่มีอยู่ที่ทำงานบนพอร์ตที่ระบุ

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-MaxOutputLength <Int32>`

> ความยาวสูงสุดของผลลัพธ์ของเครื่องมือในหน่วยตัวอักษรก่อนการตัดทอน (ค่าเริ่มต้น: 75000)

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | 3 |
| **Default value** | `75000` |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-Token <String>`

> โทเค็นการรับรองความถูกต้องที่จำเป็นสำหรับไคลเอนต์เพื่อเชื่อมต่อกับเซิร์ฟเวอร์ MCP

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | 4 |
| **Default value** | `$null` |
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
- [Set-GenXdevCommandNotFoundAction](https://github.com/genXdev/genXdev/blob/main/Docs/th-TH/Set-GenXdevCommandNotFoundAction.md)
- [Test-DeepLinkImageFile](https://github.com/genXdev/genXdev/blob/main/Docs/th-TH/Test-DeepLinkImageFile.md)

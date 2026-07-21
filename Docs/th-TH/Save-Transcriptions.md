# Save-Transcriptions

> **Module:** GenXdev.AI.Queries | **Type:** Function | **Aliases:** —

## Synopsis

> สร้างไฟล์คำบรรยายสำหรับไฟล์เสียงและวิดีโอโดยใช้ OpenAI Whisper

## Description

ค้นหาไฟล์สื่อในไดเรกทอรีที่ระบุซ้ำๆ และใช้โมเดล OpenAI Whisper ในเครื่องเพื่อสร้างไฟล์คำบรรยายในรูปแบบ SRT ฟังก์ชันรองรับรูปแบบเสียง/วิดีโอหลายรูปแบบ และสามารถแปลคำบรรยายเป็นภาษาอื่นได้โดยใช้ LLM Query การตั้งชื่อไฟล์เป็นไปตามรูปแบบมาตรฐานพร้อมรหัสภาษา (เช่น video.mp4.en.srt)

## Syntax

```powershell
Save-Transcriptions [[-DirectoryPath] <String>] [[-LanguageIn] <String>] [[-LanguageOut] <String>] [-AudioContextSize <Int32>] [-ClearSession] [-CpuThreads <Int32>] [-DontSuppressBlank] [-EntropyThreshold <Single>] [-IgnoreSilence] [-LengthPenalty <Single>] [-LogProbThreshold <Single>] [-MaxDuration <Object>] [-MaxDurationOfSilence <Object>] [-MaxInitialTimestamp <Object>] [-MaxLastTextTokens <Int32>] [-MaxSegmentLength <Int32>] [-MaxTokensPerSegment <Int32>] [-ModelType <String>] [-NoContext] [-NoSpeechThreshold <Single>] [-Offset <Object>] [-PassThru] [-PreferencesDatabasePath <String>] [-PrintSpecialTokens] [-Prompt <String>] [-SessionOnly] [-SilenceThreshold <Int32>] [-SingleSegmentOnly] [-SkipSession] [-SplitOnWord] [-SuppressRegex <String>] [-Temperature <Single>] [-TemperatureInc <Single>] [-TokenTimestampsSumThreshold <Single>] [-UseDesktopAudioCapture] [-WithBeamSearchSamplingStrategy] [-WithProgress] [-WithTokenTimestamps] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-DirectoryPath` | String | — | — | 0 | `'.\'` | เส้นทางไดเรกทอรีสำหรับค้นหาไฟล์สื่อ |
| `-LanguageIn` | String | — | — | 1 | — | ภาษาที่คาดว่าจะมีในเสียง |
| `-LanguageOut` | String | — | — | 2 | — | กำหนดภาษาเป้าหมายสำหรับการแปล |
| `-TokenTimestampsSumThreshold` | Single | — | — | Named | `0.5` | เกณฑ์รวมสำหรับการประทับเวลาโทเคน ค่าเริ่มต้นคือ 0.5 |
| `-MaxTokensPerSegment` | Int32 | — | — | Named | `20` | จำนวนโทเค็นสูงสุดต่อเซกเมนต์ |
| `-MaxDurationOfSilence` | Object | — | — | Named | — | ระยะเวลาสูงสุดของความเงียบก่อนที่จะหยุดการบันทึกโดยอัตโนมัติ |
| `-SilenceThreshold` | Int32 | — | — | Named | — | เกณฑ์การตรวจจับความเงียบ (0..32767 ค่าเริ่มต้นที่ 30) |
| `-CpuThreads` | Int32 | — | — | Named | `0` | จำนวนเธรด CPU ที่จะใช้ ค่าเริ่มต้นคือ 0 (อัตโนมัติ) |
| `-Temperature` | Single | — | — | Named | `0.5` | อุณหภูมิสำหรับการรู้จำเสียงพูด |
| `-TemperatureInc` | Single | — | — | Named | — | การเพิ่มอุณหภูมิ |
| `-Prompt` | String | — | — | Named | — | พร้อมท์ที่จะใช้สำหรับโมเดล |
| `-SuppressRegex` | String | — | — | Named | `$null` | Regex เพื่อระงับโทเค็นจากเอาต์พุต |
| `-AudioContextSize` | Int32 | — | — | Named | — | ขนาดของบริบทเสียง |
| `-MaxDuration` | Object | — | — | Named | — | ระยะเวลาสูงสุดของเสียง |
| `-Offset` | Object | — | — | Named | — | ออฟเซ็ตสำหรับเสียง |
| `-MaxLastTextTokens` | Int32 | — | — | Named | — | จำนวนโทเค็นข้อความสุดท้ายสูงสุด |
| `-MaxSegmentLength` | Int32 | — | — | Named | — | ความยาวเซกเมนต์สูงสุด |
| `-MaxInitialTimestamp` | Object | — | — | Named | — | เริ่มต้นเวลาปัจจุบันนี้ |
| `-LengthPenalty` | Single | — | — | Named | — | การลงโทษความยาว |
| `-EntropyThreshold` | Single | — | — | Named | — | เกณฑ์เอนโทรปี |
| `-LogProbThreshold` | Single | — | — | Named | — | เกณฑ์ความน่าจะเป็นของล็อก |
| `-NoSpeechThreshold` | Single | — | — | Named | — | ไม่มีเกณฑ์การพูด |
| `-PreferencesDatabasePath` | String | — | — | Named | — | เส้นทางฐานข้อมูลสำหรับไฟล์ข้อมูลการตั้งค่า |
| `-WithTokenTimestamps` | SwitchParameter | — | — | Named | — | ว่าจะรวมประทับเวลาโทเค็นในเอาต์พุตหรือไม่ |
| `-SplitOnWord` | SwitchParameter | — | — | Named | — | ว่าจะแบ่งที่ขอบเขตของคำหรือไม่ |
| `-IgnoreSilence` | SwitchParameter | — | — | Named | — | ว่าจะละเว้นความเงียบ (จะทำให้เวลาประทับผิด) |
| `-WithProgress` | SwitchParameter | — | — | Named | — | ว่าที่จะแสดงความคืบหน้า |
| `-DontSuppressBlank` | SwitchParameter | — | — | Named | — | ว่าจะไม่บีบอัดบรรทัดว่าง |
| `-SingleSegmentOnly` | SwitchParameter | — | — | Named | — | ใช้เฉพาะเซกเมนต์เดียวเท่านั้น |
| `-PrintSpecialTokens` | SwitchParameter | — | — | Named | — | ว่าจะพิมพ์โทเค็นพิเศษหรือไม่ |
| `-NoContext` | SwitchParameter | — | — | Named | — | .PARAMETER Id
ระบุรหัสประจำตัวของแท็กที่จะลบ

.PARAMETER Force
ดำเนินการโดยไม่ต้องขอคำยืนยัน |
| `-WithBeamSearchSamplingStrategy` | SwitchParameter | — | — | Named | — | ใช้กลยุทธ์การสุ่มตัวอย่างแบบบีมเสิร์ช |
| `-ModelType` | String | — | — | Named | — | ประเภทของโมเดล Whisper ที่จะใช้ ค่าเริ่มต้นคือ LargeV3Turbo |
| `-PassThru` | SwitchParameter | — | — | Named | — | ส่งคืนออบเจ็กต์แทนสตริง |
| `-UseDesktopAudioCapture` | SwitchParameter | — | — | Named | — | ให้ใช้การจับภาพเสียงจากเดสก์ท็อปแทนอินพุตไมโครโฟน |
| `-SessionOnly` | SwitchParameter | — | — | Named | — | ใช้การตั้งค่าสำรองที่เก็บไว้ในเซสชันสำหรับการกำหนดค่า AI เช่น ภาษา ชุดรูปภาพ ฯลฯ |
| `-ClearSession` | SwitchParameter | — | — | Named | — | ล้างการตั้งค่าทางเลือกที่จัดเก็บในเซสชันสำหรับการตั้งค่า AI เช่น ภาษา คอลเลกชันรูปภาพ ฯลฯ |
| `-SkipSession` | SwitchParameter | — | — | Named | — | อย่าใช้การตั้งค่าสำรองที่เก็บในเซสชันสำหรับค่ากำหนดของ AI เช่น ภาษา, ชุดรูปภาพ ฯลฯ |

## Examples

### Save-Transcriptions -DirectoryPath "C:\Videos" -LanguageIn "English"

```powershell
Save-Transcriptions -DirectoryPath "C:\Videos" -LanguageIn "English"
```

### Save-Transcriptions "C:\Media" "Japanese" "English"

```powershell
Save-Transcriptions "C:\Media" "Japanese" "English"
```

## Parameter Details

### `-DirectoryPath <String>`

> เส้นทางไดเรกทอรีสำหรับค้นหาไฟล์สื่อ

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | 0 |
| **Default value** | `'.\'` |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-LanguageIn <String>`

> ภาษาที่คาดว่าจะมีในเสียง

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | 1 |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-LanguageOut <String>`

> กำหนดภาษาเป้าหมายสำหรับการแปล

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | 2 |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-TokenTimestampsSumThreshold <Single>`

> เกณฑ์รวมสำหรับการประทับเวลาโทเคน ค่าเริ่มต้นคือ 0.5

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | `0.5` |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-MaxTokensPerSegment <Int32>`

> จำนวนโทเค็นสูงสุดต่อเซกเมนต์

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | `20` |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-MaxDurationOfSilence <Object>`

> ระยะเวลาสูงสุดของความเงียบก่อนที่จะหยุดการบันทึกโดยอัตโนมัติ

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-SilenceThreshold <Int32>`

> เกณฑ์การตรวจจับความเงียบ (0..32767 ค่าเริ่มต้นที่ 30)

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-CpuThreads <Int32>`

> จำนวนเธรด CPU ที่จะใช้ ค่าเริ่มต้นคือ 0 (อัตโนมัติ)

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | `0` |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-Temperature <Single>`

> อุณหภูมิสำหรับการรู้จำเสียงพูด

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | `0.5` |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-TemperatureInc <Single>`

> การเพิ่มอุณหภูมิ

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-Prompt <String>`

> พร้อมท์ที่จะใช้สำหรับโมเดล

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-SuppressRegex <String>`

> Regex เพื่อระงับโทเค็นจากเอาต์พุต

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | `$null` |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-AudioContextSize <Int32>`

> ขนาดของบริบทเสียง

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-MaxDuration <Object>`

> ระยะเวลาสูงสุดของเสียง

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-Offset <Object>`

> ออฟเซ็ตสำหรับเสียง

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-MaxLastTextTokens <Int32>`

> จำนวนโทเค็นข้อความสุดท้ายสูงสุด

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-MaxSegmentLength <Int32>`

> ความยาวเซกเมนต์สูงสุด

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-MaxInitialTimestamp <Object>`

> เริ่มต้นเวลาปัจจุบันนี้

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-LengthPenalty <Single>`

> การลงโทษความยาว

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-EntropyThreshold <Single>`

> เกณฑ์เอนโทรปี

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-LogProbThreshold <Single>`

> เกณฑ์ความน่าจะเป็นของล็อก

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-NoSpeechThreshold <Single>`

> ไม่มีเกณฑ์การพูด

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
### `-WithTokenTimestamps`

> ว่าจะรวมประทับเวลาโทเค็นในเอาต์พุตหรือไม่

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-SplitOnWord`

> ว่าจะแบ่งที่ขอบเขตของคำหรือไม่

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-IgnoreSilence`

> ว่าจะละเว้นความเงียบ (จะทำให้เวลาประทับผิด)

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-WithProgress`

> ว่าที่จะแสดงความคืบหน้า

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-DontSuppressBlank`

> ว่าจะไม่บีบอัดบรรทัดว่าง

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-SingleSegmentOnly`

> ใช้เฉพาะเซกเมนต์เดียวเท่านั้น

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-PrintSpecialTokens`

> ว่าจะพิมพ์โทเค็นพิเศษหรือไม่

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-NoContext`

> .PARAMETER Id
ระบุรหัสประจำตัวของแท็กที่จะลบ

.PARAMETER Force
ดำเนินการโดยไม่ต้องขอคำยืนยัน

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-WithBeamSearchSamplingStrategy`

> ใช้กลยุทธ์การสุ่มตัวอย่างแบบบีมเสิร์ช

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-ModelType <String>`

> ประเภทของโมเดล Whisper ที่จะใช้ ค่าเริ่มต้นคือ LargeV3Turbo

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

> ส่งคืนออบเจ็กต์แทนสตริง

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | `pt` |
| **Accept wildcard characters?** | No |

<hr/>
### `-UseDesktopAudioCapture`

> ให้ใช้การจับภาพเสียงจากเดสก์ท็อปแทนอินพุตไมโครโฟน

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
- [Set-AIKnownFacesRootpath](https://github.com/genXdev/genXdev/blob/main/Docs/th-TH/Set-AIKnownFacesRootpath.md)
- [Set-AIMetaLanguage](https://github.com/genXdev/genXdev/blob/main/Docs/th-TH/Set-AIMetaLanguage.md)
- [Show-FoundImagesInBrowser](https://github.com/genXdev/genXdev/blob/main/Docs/th-TH/Show-FoundImagesInBrowser.md)
- [Start-AudioTranscription](https://github.com/genXdev/genXdev/blob/main/Docs/th-TH/Start-AudioTranscription.md)
- [Update-AllImageMetaData](https://github.com/genXdev/genXdev/blob/main/Docs/th-TH/Update-AllImageMetaData.md)

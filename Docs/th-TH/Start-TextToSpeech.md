# Start-TextToSpeech

> **Module:** GenXdev.Console | **Type:** Function | **Aliases:** `say`

## Synopsis

> แปลงข้อความเป็นคำพูดโดยใช้เอ็นจิ้นประสาทเสียง TTS ของ Microsoft Edge

## Description

ใช้เอนจิ้น TTS แบบประสาทของ Microsoft Edge (ผ่าน EdgeTTS.DotNet) เพื่อแปลงข้อความเป็นคำพูดด้วยเสียงที่เป็นธรรมชาติ ฟังก์ชั่นนี้ให้ความสามารถในการแปลงข้อความเป็นคำพูดที่ยืดหยุ่น รองรับเสียง สถานที่ การปรับเปลี่ยนจังหวะ (อัตรา, ระดับเสียง, ระดับเสียงสูงต่ำ) และตัวเลือกการเล่นแบบซิงโครนัส/อะซิงโครนัส สามารถจัดการทั้งสตริงเดี่ยวและอาเรย์ของข้อความ

## Syntax

```powershell
Start-TextToSpeech -Lines <String[]> [<CommonParameters>]

Start-TextToSpeech [[-VoiceName] <String>] [-Locale <String>] [-PassThru] [-Pitch <String>] [-Rate <String>] [-Volume <String>] [-Wait] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-Lines` | String[] | ✅ | ✅ (ByValue) | 0 | — | ข้อความที่จะพูด *(Parameter set: )* |
| `-VoiceName` | String | — | — | 1 | `$null` | ชื่อเสียงที่จะใช้สำหรับการพูด |
| `-Locale` | String | — | — | Named | `$null` | รหัสภาษาโลแคลที่ต้องการใช้ เช่น 'th-TH' |
| `-Rate` | String | — | — | Named | `$null` | อัตราความเร็วในการพูด เช่น "+0%", "-20%", "+50%" |
| `-Volume` | String | — | — | Named | `$null` | ระดับเสียง เช่น "+0%", "-25%", "+100%" |
| `-Pitch` | String | — | — | Named | `$null` | การเปลี่ยนระดับเสียง เช่น "+0Hz", "-10Hz", "+20Hz" |
| `-PassThru` | SwitchParameter | — | — | Named | — | แสดงข้อความที่ถูกส่งไปยังไปป์ไลน์ |
| `-Wait` | SwitchParameter | — | — | Named | — | รอให้คำพูดเสร็จสมบูรณ์ก่อนดำเนินการต่อ |

## Examples

### Start-TextToSpeech -Lines "Hello World" -Locale "en-US" -Wait

```powershell
Start-TextToSpeech -Lines "Hello World" -Locale "en-US" -Wait
```

### "Hello World" | say

```powershell
"Hello World" | say
```

### say "Hello World" -Rate "+50%" -Pitch "-5Hz"

```powershell
say "Hello World" -Rate "+50%" -Pitch "-5Hz"
```

## Parameter Details

### `-Lines <String[]>`

> ข้อความที่จะพูด

| Property | Value |
|:---|:---|
| **Required?** | Yes |
| **Position?** | 0 |
| **Default value** | *(none)* |
| **Accept pipeline input?** | True (ByValue) |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |
| **Parameter set** | strings |

<hr/>
### `-VoiceName <String>`

> ชื่อเสียงที่จะใช้สำหรับการพูด

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | 1 |
| **Default value** | `$null` |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-Locale <String>`

> รหัสภาษาโลแคลที่ต้องการใช้ เช่น 'th-TH'

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | `$null` |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-Rate <String>`

> อัตราความเร็วในการพูด เช่น "+0%", "-20%", "+50%"

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | `$null` |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-Volume <String>`

> ระดับเสียง เช่น "+0%", "-25%", "+100%"

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | `$null` |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-Pitch <String>`

> การเปลี่ยนระดับเสียง เช่น "+0Hz", "-10Hz", "+20Hz"

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | `$null` |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-PassThru`

> แสดงข้อความที่ถูกส่งไปยังไปป์ไลน์

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | `pt` |
| **Accept wildcard characters?** | No |

<hr/>
### `-Wait`

> รอให้คำพูดเสร็จสมบูรณ์ก่อนดำเนินการต่อ

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

- [Get-IsSpeaking](https://github.com/genXdev/genXdev/blob/main/Docs/th-TH/Get-IsSpeaking.md)
- [New-MicrosoftShellTab](https://github.com/genXdev/genXdev/blob/main/Docs/th-TH/New-MicrosoftShellTab.md)
- [Now](https://github.com/genXdev/genXdev/blob/main/Docs/th-TH/Now.md)
- [SayDate](https://github.com/genXdev/genXdev/blob/main/Docs/th-TH/SayDate.md)
- [SayTime](https://github.com/genXdev/genXdev/blob/main/Docs/th-TH/SayTime.md)
- [secondscreen](https://github.com/genXdev/genXdev/blob/main/Docs/th-TH/secondscreen.md)
- [sidebyside](https://github.com/genXdev/genXdev/blob/main/Docs/th-TH/sidebyside.md)
- [Start-SnakeGame](https://github.com/genXdev/genXdev/blob/main/Docs/th-TH/Start-SnakeGame.md)
- [Stop-TextToSpeech](https://github.com/genXdev/genXdev/blob/main/Docs/th-TH/Stop-TextToSpeech.md)
- [UtcNow](https://github.com/genXdev/genXdev/blob/main/Docs/th-TH/UtcNow.md)

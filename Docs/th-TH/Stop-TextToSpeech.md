# Stop-TextToSpeech

> **Module:** GenXdev.Console | **Type:** Function | **Aliases:** `sst`

## Synopsis

> หยุดการส่งออกข้อความเป็นเสียงพูดที่กำลังดำเนินอยู่ทันที

## Description

หยุดการสังเคราะห์เสียงพูดที่กำลังทำงานและอยู่ในคิวทั้งหมด โดยการยกเลิกการดำเนินการพูดทั้งแบบมาตรฐานและแบบกำหนดเอง ซึ่งจะทำให้เกิดความเงียบทันทีสำหรับกิจกรรมการแปลงข้อความเป็นเสียงที่กำลังดำเนินอยู่

## Syntax

```powershell
Stop-TextToSpeech [<CommonParameters>]
```

## Examples

### PS C:\> Stop-TextToSpeech Immediately stops any ongoing speech

```powershell
PS C:\> Stop-TextToSpeech
Immediately stops any ongoing speech
```

### PS C:\> say "Hello world"; sst Starts speaking but gets interrupted immediately

```powershell
PS C:\> say "Hello world"; sst
Starts speaking but gets interrupted immediately
```

## Related Links

- [Get-IsSpeaking](https://github.com/genXdev/genXdev/blob/main/Docs/th-TH/Get-IsSpeaking.md)
- [New-MicrosoftShellTab](https://github.com/genXdev/genXdev/blob/main/Docs/th-TH/New-MicrosoftShellTab.md)
- [Now](https://github.com/genXdev/genXdev/blob/main/Docs/th-TH/Now.md)
- [SayDate](https://github.com/genXdev/genXdev/blob/main/Docs/th-TH/SayDate.md)
- [SayTime](https://github.com/genXdev/genXdev/blob/main/Docs/th-TH/SayTime.md)
- [secondscreen](https://github.com/genXdev/genXdev/blob/main/Docs/th-TH/secondscreen.md)
- [sidebyside](https://github.com/genXdev/genXdev/blob/main/Docs/th-TH/sidebyside.md)
- [Start-SnakeGame](https://github.com/genXdev/genXdev/blob/main/Docs/th-TH/Start-SnakeGame.md)
- [Start-TextToSpeech](https://github.com/genXdev/genXdev/blob/main/Docs/th-TH/Start-TextToSpeech.md)
- [UtcNow](https://github.com/genXdev/genXdev/blob/main/Docs/th-TH/UtcNow.md)

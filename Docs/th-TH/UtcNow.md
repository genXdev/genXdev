# UtcNow

> **Module:** GenXdev.Console | **Type:** Function | **Aliases:** —

## Synopsis

> รับวันที่และเวลาปัจจุบันในรูปแบบ UTC (เวลาสากลเชิงพิกัด)

## Description

ส่งกลับวันที่และเวลาปัจจุบันของ UTC เป็นวัตถุ System.DateTime ฟังก์ชันนี้ให้วิธีการมาตรฐานในการรับเวลา UTC ในระบบและโซนเวลาต่างๆ วัตถุ DateTime ที่ส่งกลับสามารถใช้สำหรับการซิงโครไนซ์ timestamp การบันทึก และการดำเนินการข้ามโซนเวลา

## Syntax

```powershell
UtcNow [<CommonParameters>]
```

## Examples

### $currentUtc = UtcNow Returns the current UTC time as a DateTime object.

```powershell
$currentUtc = UtcNow
Returns the current UTC time as a DateTime object.
```

### $timestamp = (UtcNow).ToString("yyyy-MM-dd HH:mm:ss") Gets the current UTC time and formats it as a string.

```powershell
$timestamp = (UtcNow).ToString("yyyy-MM-dd HH:mm:ss")
Gets the current UTC time and formats it as a string.
```

## Outputs

- `DateTime`

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
- [Stop-TextToSpeech](https://github.com/genXdev/genXdev/blob/main/Docs/th-TH/Stop-TextToSpeech.md)

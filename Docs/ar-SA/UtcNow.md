# UtcNow

> **Module:** GenXdev.Console | **Type:** Function | **Aliases:** —

## Synopsis

> يحصل على التاريخ والوقت الحاليين بالتوقيت العالمي المنسق (UTC).

## Description

ترجع التاريخ والوقت الحاليين بصيغة UTC ككائن System.DateTime. توفر هذه الوظيفة طريقة موحدة لاسترداد وقت UTC عبر الأنظمة المختلفة والمناطق الزمنية. يمكن استخدام كائن DateTime الذي تم إرجاعه لمزامنة الطوابع الزمنية، وتسجيل الأحداث، والعمليات عبر المناطق الزمنية.

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

- [Get-IsSpeaking](https://github.com/genXdev/genXdev/blob/main/Docs/ar-SA/Get-IsSpeaking.md)
- [New-MicrosoftShellTab](https://github.com/genXdev/genXdev/blob/main/Docs/ar-SA/New-MicrosoftShellTab.md)
- [Now](https://github.com/genXdev/genXdev/blob/main/Docs/ar-SA/Now.md)
- [SayDate](https://github.com/genXdev/genXdev/blob/main/Docs/ar-SA/SayDate.md)
- [SayTime](https://github.com/genXdev/genXdev/blob/main/Docs/ar-SA/SayTime.md)
- [secondscreen](https://github.com/genXdev/genXdev/blob/main/Docs/ar-SA/secondscreen.md)
- [sidebyside](https://github.com/genXdev/genXdev/blob/main/Docs/ar-SA/sidebyside.md)
- [Start-SnakeGame](https://github.com/genXdev/genXdev/blob/main/Docs/ar-SA/Start-SnakeGame.md)
- [Start-TextToSpeech](https://github.com/genXdev/genXdev/blob/main/Docs/ar-SA/Start-TextToSpeech.md)
- [Stop-TextToSpeech](https://github.com/genXdev/genXdev/blob/main/Docs/ar-SA/Stop-TextToSpeech.md)

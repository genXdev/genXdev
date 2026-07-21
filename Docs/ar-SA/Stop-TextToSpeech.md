# Stop-TextToSpeech

> **Module:** GenXdev.Console | **Type:** Function | **Aliases:** `sst`

## Synopsis

> يوقف فورًا أي إخراج نص إلى كلام قيد التنفيذ.

## Description

يوقف جميع عمليات تركيب الكلام النشطة والمجمدة عن طريق إلغاء عمليات الكلام القياسية والمخصصة. يوفر هذا صمتًا فوريًا لأي أنشطة تحويل النص إلى كلام قيد التشغيل.

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

- [Get-IsSpeaking](https://github.com/genXdev/genXdev/blob/main/Docs/ar-SA/Get-IsSpeaking.md)
- [New-MicrosoftShellTab](https://github.com/genXdev/genXdev/blob/main/Docs/ar-SA/New-MicrosoftShellTab.md)
- [Now](https://github.com/genXdev/genXdev/blob/main/Docs/ar-SA/Now.md)
- [SayDate](https://github.com/genXdev/genXdev/blob/main/Docs/ar-SA/SayDate.md)
- [SayTime](https://github.com/genXdev/genXdev/blob/main/Docs/ar-SA/SayTime.md)
- [secondscreen](https://github.com/genXdev/genXdev/blob/main/Docs/ar-SA/secondscreen.md)
- [sidebyside](https://github.com/genXdev/genXdev/blob/main/Docs/ar-SA/sidebyside.md)
- [Start-SnakeGame](https://github.com/genXdev/genXdev/blob/main/Docs/ar-SA/Start-SnakeGame.md)
- [Start-TextToSpeech](https://github.com/genXdev/genXdev/blob/main/Docs/ar-SA/Start-TextToSpeech.md)
- [UtcNow](https://github.com/genXdev/genXdev/blob/main/Docs/ar-SA/UtcNow.md)

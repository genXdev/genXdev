# Stop-TextToSpeech

> **Module:** GenXdev.Console | **Type:** Function | **Aliases:** `sst`

## Synopsis

> किसी भी चल रहे टेक्स्ट-टू-स्पीच आउटपुट को तुरंत रोक देता है।

## Description

मानक और अनुकूलित दोनों प्रकार के वाक् संश्लेषण संचालन को रद्द करके सभी सक्रिय और कतारबद्ध वाक् संश्लेषण को रोक देता है। यह किसी भी चल रही टेक्स्ट-टू-स्पीच गतिविधियों के लिए तत्काल मौन प्रदान करता है।

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

- [Get-IsSpeaking](https://github.com/genXdev/genXdev/blob/main/Docs/hi-IN/Get-IsSpeaking.md)
- [New-MicrosoftShellTab](https://github.com/genXdev/genXdev/blob/main/Docs/hi-IN/New-MicrosoftShellTab.md)
- [Now](https://github.com/genXdev/genXdev/blob/main/Docs/hi-IN/Now.md)
- [SayDate](https://github.com/genXdev/genXdev/blob/main/Docs/hi-IN/SayDate.md)
- [SayTime](https://github.com/genXdev/genXdev/blob/main/Docs/hi-IN/SayTime.md)
- [secondscreen](https://github.com/genXdev/genXdev/blob/main/Docs/hi-IN/secondscreen.md)
- [sidebyside](https://github.com/genXdev/genXdev/blob/main/Docs/hi-IN/sidebyside.md)
- [Start-SnakeGame](https://github.com/genXdev/genXdev/blob/main/Docs/hi-IN/Start-SnakeGame.md)
- [Start-TextToSpeech](https://github.com/genXdev/genXdev/blob/main/Docs/hi-IN/Start-TextToSpeech.md)
- [UtcNow](https://github.com/genXdev/genXdev/blob/main/Docs/hi-IN/UtcNow.md)

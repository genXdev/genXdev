# UtcNow

> **Module:** GenXdev.Console | **Type:** Function | **Aliases:** —

## Synopsis

> वर्तमान UTC (समन्वित सार्वभौमिक समय) दिनांक और समय प्राप्त करता है।

## Description

वर्तमान UTC दिनांक और समय को System.DateTime ऑब्जेक्ट के रूप में लौटाता है। यह फ़ंक्शन विभिन्न सिस्टम और समय क्षेत्रों में UTC समय प्राप्त करने का एक मानकीकृत तरीका प्रदान करता है। लौटाया गया DateTime ऑब्जेक्ट टाइमस्टैम्प सिंक्रोनाइज़ेशन, लॉगिंग और क्रॉस-टाइमज़ोन संचालन के लिए उपयोग किया जा सकता है।

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

- [Get-IsSpeaking](https://github.com/genXdev/genXdev/blob/main/Docs/hi-IN/Get-IsSpeaking.md)
- [New-MicrosoftShellTab](https://github.com/genXdev/genXdev/blob/main/Docs/hi-IN/New-MicrosoftShellTab.md)
- [Now](https://github.com/genXdev/genXdev/blob/main/Docs/hi-IN/Now.md)
- [SayDate](https://github.com/genXdev/genXdev/blob/main/Docs/hi-IN/SayDate.md)
- [SayTime](https://github.com/genXdev/genXdev/blob/main/Docs/hi-IN/SayTime.md)
- [secondscreen](https://github.com/genXdev/genXdev/blob/main/Docs/hi-IN/secondscreen.md)
- [sidebyside](https://github.com/genXdev/genXdev/blob/main/Docs/hi-IN/sidebyside.md)
- [Start-SnakeGame](https://github.com/genXdev/genXdev/blob/main/Docs/hi-IN/Start-SnakeGame.md)
- [Start-TextToSpeech](https://github.com/genXdev/genXdev/blob/main/Docs/hi-IN/Start-TextToSpeech.md)
- [Stop-TextToSpeech](https://github.com/genXdev/genXdev/blob/main/Docs/hi-IN/Stop-TextToSpeech.md)

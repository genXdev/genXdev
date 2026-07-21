# SayTime

> **Module:** GenXdev.Console | **Type:** Function | **Aliases:** —

## Synopsis

> टेक्स्ट-टू-स्पीच का उपयोग करके वर्तमान समय की घोषणा करता है।

## Description

यह फ़ंक्शन वर्तमान समय प्राप्त करता है और सिस्टम के टेक्स्ट-टू-स्पीच इंजन का उपयोग करके इसे घंटे और मिनट प्रारूप में मौखिक रूप से घोषित करता है। यह पहुंच सुविधा के उद्देश्यों या जब आपको श्रव्य समय घोषणा की आवश्यकता हो, के लिए उपयोगी है।

## Syntax

```powershell
SayTime [-Wait] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-Wait` | SwitchParameter | — | — | Named | — | The `-Wait` parameter. |

## Examples

### SayTime Speaks the current time, e.g. "The time is 14 hours and 30 minutes"

```powershell
SayTime
Speaks the current time, e.g. "The time is 14 hours and 30 minutes"
```

## Parameter Details

### `-Wait`

> The `-Wait` parameter.

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

- [Get-IsSpeaking](https://github.com/genXdev/genXdev/blob/main/Docs/hi-IN/Get-IsSpeaking.md)
- [New-MicrosoftShellTab](https://github.com/genXdev/genXdev/blob/main/Docs/hi-IN/New-MicrosoftShellTab.md)
- [Now](https://github.com/genXdev/genXdev/blob/main/Docs/hi-IN/Now.md)
- [SayDate](https://github.com/genXdev/genXdev/blob/main/Docs/hi-IN/SayDate.md)
- [secondscreen](https://github.com/genXdev/genXdev/blob/main/Docs/hi-IN/secondscreen.md)
- [sidebyside](https://github.com/genXdev/genXdev/blob/main/Docs/hi-IN/sidebyside.md)
- [Start-SnakeGame](https://github.com/genXdev/genXdev/blob/main/Docs/hi-IN/Start-SnakeGame.md)
- [Start-TextToSpeech](https://github.com/genXdev/genXdev/blob/main/Docs/hi-IN/Start-TextToSpeech.md)
- [Stop-TextToSpeech](https://github.com/genXdev/genXdev/blob/main/Docs/hi-IN/Stop-TextToSpeech.md)
- [UtcNow](https://github.com/genXdev/genXdev/blob/main/Docs/hi-IN/UtcNow.md)

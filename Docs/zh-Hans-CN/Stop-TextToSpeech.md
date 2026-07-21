# Stop-TextToSpeech

> **Module:** GenXdev.Console | **Type:** Function | **Aliases:** `sst`

## Synopsis

> 立即停止任何正在进行的文本转语音输出。

## Description

停止所有活动和排队的语音合成，取消标准和自定义语音操作。这将使任何正在进行的文本转语音活动立即静音。

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

- [Get-IsSpeaking](https://github.com/genXdev/genXdev/blob/main/Docs/zh-Hans-CN/Get-IsSpeaking.md)
- [New-MicrosoftShellTab](https://github.com/genXdev/genXdev/blob/main/Docs/zh-Hans-CN/New-MicrosoftShellTab.md)
- [Now](https://github.com/genXdev/genXdev/blob/main/Docs/zh-Hans-CN/Now.md)
- [SayDate](https://github.com/genXdev/genXdev/blob/main/Docs/zh-Hans-CN/SayDate.md)
- [SayTime](https://github.com/genXdev/genXdev/blob/main/Docs/zh-Hans-CN/SayTime.md)
- [secondscreen](https://github.com/genXdev/genXdev/blob/main/Docs/zh-Hans-CN/secondscreen.md)
- [sidebyside](https://github.com/genXdev/genXdev/blob/main/Docs/zh-Hans-CN/sidebyside.md)
- [Start-SnakeGame](https://github.com/genXdev/genXdev/blob/main/Docs/zh-Hans-CN/Start-SnakeGame.md)
- [Start-TextToSpeech](https://github.com/genXdev/genXdev/blob/main/Docs/zh-Hans-CN/Start-TextToSpeech.md)
- [UtcNow](https://github.com/genXdev/genXdev/blob/main/Docs/zh-Hans-CN/UtcNow.md)

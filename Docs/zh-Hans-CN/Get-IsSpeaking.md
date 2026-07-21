# Get-IsSpeaking

> **Module:** GenXdev.Console | **Type:** Cmdlet | **Aliases:** `iss`

## Synopsis

> 如果文本转语音引擎正在朗读，则返回 true。

## Description

检查默认语音合成器和自定义语音合成器的状态，以确定是否有任何一个正在朗读。如果朗读正在进行中，则返回 true；否则返回 false。

## Syntax

```powershell
Get-IsSpeaking [<CommonParameters>]
```

## Examples

### Example 1

```powershell
Get-IsSpeaking
```

如果文本转语音引擎正在朗读，则返回 true。

### Example 2

```powershell
iss
```

如果文本转语音引擎正在说话（使用别名），则返回 true。

## Related Links

- [New-MicrosoftShellTab](https://github.com/genXdev/genXdev/blob/main/Docs/zh-Hans-CN/New-MicrosoftShellTab.md)
- [Now](https://github.com/genXdev/genXdev/blob/main/Docs/zh-Hans-CN/Now.md)
- [SayDate](https://github.com/genXdev/genXdev/blob/main/Docs/zh-Hans-CN/SayDate.md)
- [SayTime](https://github.com/genXdev/genXdev/blob/main/Docs/zh-Hans-CN/SayTime.md)
- [secondscreen](https://github.com/genXdev/genXdev/blob/main/Docs/zh-Hans-CN/secondscreen.md)
- [sidebyside](https://github.com/genXdev/genXdev/blob/main/Docs/zh-Hans-CN/sidebyside.md)
- [Start-SnakeGame](https://github.com/genXdev/genXdev/blob/main/Docs/zh-Hans-CN/Start-SnakeGame.md)
- [Start-TextToSpeech](https://github.com/genXdev/genXdev/blob/main/Docs/zh-Hans-CN/Start-TextToSpeech.md)
- [Stop-TextToSpeech](https://github.com/genXdev/genXdev/blob/main/Docs/zh-Hans-CN/Stop-TextToSpeech.md)
- [UtcNow](https://github.com/genXdev/genXdev/blob/main/Docs/zh-Hans-CN/UtcNow.md)

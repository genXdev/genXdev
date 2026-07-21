# UtcNow

> **Module:** GenXdev.Console | **Type:** Function | **Aliases:** —

## Synopsis

> 获取当前 UTC（协调世界时）日期和时间。

## Description

以 System.DateTime 对象形式返回当前的 UTC 日期和时间。此函数提供了一种跨不同系统和时区检索 UTC 时间的标准化方式。返回的 DateTime 对象可用于时间戳同步、日志记录和跨时区操作。

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

- [Get-IsSpeaking](https://github.com/genXdev/genXdev/blob/main/Docs/zh-Hans-CN/Get-IsSpeaking.md)
- [New-MicrosoftShellTab](https://github.com/genXdev/genXdev/blob/main/Docs/zh-Hans-CN/New-MicrosoftShellTab.md)
- [Now](https://github.com/genXdev/genXdev/blob/main/Docs/zh-Hans-CN/Now.md)
- [SayDate](https://github.com/genXdev/genXdev/blob/main/Docs/zh-Hans-CN/SayDate.md)
- [SayTime](https://github.com/genXdev/genXdev/blob/main/Docs/zh-Hans-CN/SayTime.md)
- [secondscreen](https://github.com/genXdev/genXdev/blob/main/Docs/zh-Hans-CN/secondscreen.md)
- [sidebyside](https://github.com/genXdev/genXdev/blob/main/Docs/zh-Hans-CN/sidebyside.md)
- [Start-SnakeGame](https://github.com/genXdev/genXdev/blob/main/Docs/zh-Hans-CN/Start-SnakeGame.md)
- [Start-TextToSpeech](https://github.com/genXdev/genXdev/blob/main/Docs/zh-Hans-CN/Start-TextToSpeech.md)
- [Stop-TextToSpeech](https://github.com/genXdev/genXdev/blob/main/Docs/zh-Hans-CN/Stop-TextToSpeech.md)

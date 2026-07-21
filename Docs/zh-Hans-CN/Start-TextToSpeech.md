# Start-TextToSpeech

> **Module:** GenXdev.Console | **Type:** Function | **Aliases:** `say`

## Synopsis

> 使用微软Edge的神经TTS引擎将文本转换为语音。

## Description

使用 Microsoft Edge 的神经 TTS 引擎（通过 EdgeTTS.DotNet）将文本转换为自然语音。此函数提供灵活的文本转语音功能，支持不同的语音、区域设置、韵律调整（语速、音量、音调）以及同步/异步播放选项。它可以处理单个字符串和文本数组。

## Syntax

```powershell
Start-TextToSpeech -Lines <String[]> [<CommonParameters>]

Start-TextToSpeech [[-VoiceName] <String>] [-Locale <String>] [-PassThru] [-Pitch <String>] [-Rate <String>] [-Volume <String>] [-Wait] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-Lines` | String[] | ✅ | ✅ (ByValue) | 0 | — | 待朗读的文本 *(Parameter set: )* |
| `-VoiceName` | String | — | — | 1 | `$null` | 用于语音的语音名称 |
| `-Locale` | String | — | — | Named | `$null` | 要使用的语言区域 ID，例如 'en-US' |
| `-Rate` | String | — | — | Named | `$null` | 语速，例如：“+0%”、“-20%”、“+50%” |
| `-Volume` | String | — | — | Named | `$null` | 音量级别，例如 "+0%"、"-25%"、"+100%" |
| `-Pitch` | String | — | — | Named | `$null` | 音高偏移，例如“+0Hz”、“-10Hz”、“+20Hz” |
| `-PassThru` | SwitchParameter | — | — | Named | — | 将文本输出到管道 |
| `-Wait` | SwitchParameter | — | — | Named | — | 等待语音完成后再继续 |

## Examples

### Start-TextToSpeech -Lines "Hello World" -Locale "en-US" -Wait

```powershell
Start-TextToSpeech -Lines "Hello World" -Locale "en-US" -Wait
```

### "Hello World" | say

```powershell
"Hello World" | say
```

### say "Hello World" -Rate "+50%" -Pitch "-5Hz"

```powershell
say "Hello World" -Rate "+50%" -Pitch "-5Hz"
```

## Parameter Details

### `-Lines <String[]>`

> 待朗读的文本

| Property | Value |
|:---|:---|
| **Required?** | Yes |
| **Position?** | 0 |
| **Default value** | *(none)* |
| **Accept pipeline input?** | True (ByValue) |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |
| **Parameter set** | strings |

<hr/>
### `-VoiceName <String>`

> 用于语音的语音名称

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | 1 |
| **Default value** | `$null` |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-Locale <String>`

> 要使用的语言区域 ID，例如 'en-US'

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | `$null` |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-Rate <String>`

> 语速，例如：“+0%”、“-20%”、“+50%”

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | `$null` |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-Volume <String>`

> 音量级别，例如 "+0%"、"-25%"、"+100%"

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | `$null` |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-Pitch <String>`

> 音高偏移，例如“+0Hz”、“-10Hz”、“+20Hz”

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | `$null` |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-PassThru`

> 将文本输出到管道

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | `pt` |
| **Accept wildcard characters?** | No |

<hr/>
### `-Wait`

> 等待语音完成后再继续

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

- [Get-IsSpeaking](https://github.com/genXdev/genXdev/blob/main/Docs/zh-Hans-CN/Get-IsSpeaking.md)
- [New-MicrosoftShellTab](https://github.com/genXdev/genXdev/blob/main/Docs/zh-Hans-CN/New-MicrosoftShellTab.md)
- [Now](https://github.com/genXdev/genXdev/blob/main/Docs/zh-Hans-CN/Now.md)
- [SayDate](https://github.com/genXdev/genXdev/blob/main/Docs/zh-Hans-CN/SayDate.md)
- [SayTime](https://github.com/genXdev/genXdev/blob/main/Docs/zh-Hans-CN/SayTime.md)
- [secondscreen](https://github.com/genXdev/genXdev/blob/main/Docs/zh-Hans-CN/secondscreen.md)
- [sidebyside](https://github.com/genXdev/genXdev/blob/main/Docs/zh-Hans-CN/sidebyside.md)
- [Start-SnakeGame](https://github.com/genXdev/genXdev/blob/main/Docs/zh-Hans-CN/Start-SnakeGame.md)
- [Stop-TextToSpeech](https://github.com/genXdev/genXdev/blob/main/Docs/zh-Hans-CN/Stop-TextToSpeech.md)
- [UtcNow](https://github.com/genXdev/genXdev/blob/main/Docs/zh-Hans-CN/UtcNow.md)

# Start-TextToSpeech

> **Module:** GenXdev.Console | **Type:** Function | **Aliases:** `say

## Synopsis

> 使用 Microsoft Edge 的神经 TTS 引擎将文本转换为语音。

## Description

使用 Microsoft Edge 的神经 TTS 引擎（通过 EdgeTTS.DotNet）将文本转换为语音，具有自然的声音。此函数提供灵活的文本转语音功能，支持不同的声音、区域设置、韵律调整（语速、音量、音调）以及同步/异步播放选项。它可以处理单个字符串和文本数组。

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
| `-Locale` | String | — | — | Named | `$null` | 使用的语言区域标识符，例如 'en-US' |
| `-Rate` | String | — | — | Named | `$null` | 语速，例如“+0%”、“-20%”、“+50%” |
| `-Volume` | String | — | — | Named | `$null` | 音量级别，例如“+0%”、“-25%”、“+100%” |
| `-Pitch` | String | — | — | Named | `$null` | Pitch shift, e.g. "+0Hz", "-10Hz", "+20Hz" |
| `-PassThru` | SwitchParameter | — | — | Named | — | Output the text being spoken to the pipeline |
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

## Related Links

- [Start-TextToSpeech on GitHub](https://github.com/genXdev/genXdev)

# Start-TextToSpeech

> **Module:** GenXdev.Console | **Type:** Function | **Aliases:** `say

## Synopsis

> *(No synopsis provided)*

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

## Related Links

- [Start-TextToSpeech on GitHub](https://github.com/genXdev/genXdev)

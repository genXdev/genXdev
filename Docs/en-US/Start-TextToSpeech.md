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
| `-Lines` | String[] | ✅ | ✅ (ByValue) | 0 | — | Text to be spoken *(Parameter set: )* |
| `-VoiceName` | String | — | — | 1 | `$null` | Name of the voice to use for speech |
| `-Locale` | String | — | — | Named | `$null` | The language locale id to use, e.g. 'en-US' |
| `-Rate` | String | — | — | Named | `$null` | Speech rate, e.g. "+0%", "-20%", "+50%" |
| `-Volume` | String | — | — | Named | `$null` | Volume level, e.g. "+0%", "-25%", "+100%" |
| `-Pitch` | String | — | — | Named | `$null` | Pitch shift, e.g. "+0Hz", "-10Hz", "+20Hz" |
| `-PassThru` | SwitchParameter | — | — | Named | — | Output the text being spoken to the pipeline |
| `-Wait` | SwitchParameter | — | — | Named | — | Wait for speech to complete before continuing |

## Related Links

- [Start-TextToSpeech on GitHub](https://github.com/genXdev/genXdev)

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
| `-VoiceName` | String | — | — | 1 | `$null` | Название голоса для синтеза речи |
| `-Locale` | String | — | — | Named | `$null` | Используемый идентификатор языкового стандарта, например 'ru-RU' |
| `-Rate` | String | — | — | Named | `$null` | Скорость речи, например: «+0%», «-20%», «+50%». |
| `-Volume` | String | — | — | Named | `$null` | Уровень громкости, например, "+0%", "-25%", "+100%" |
| `-Pitch` | String | — | — | Named | `$null` | Pitch shift, e.g. "+0Hz", "-10Hz", "+20Hz" |
| `-PassThru` | SwitchParameter | — | — | Named | — | Output the text being spoken to the pipeline |
| `-Wait` | SwitchParameter | — | — | Named | — | Подождите завершения речи, прежде чем продолжить |

## Related Links

- [Start-TextToSpeech on GitHub](https://github.com/genXdev/genXdev)

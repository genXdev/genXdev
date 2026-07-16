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
| `-VoiceName` | String | — | — | 1 | `$null` | Name der für die Sprache zu verwendenden Stimme |
| `-Locale` | String | — | — | Named | `$null` | Die zu verwendende Sprachgebiets-ID, z.B. 'de-DE' |
| `-Rate` | String | — | — | Named | `$null` | Sprachgeschwindigkeit, z. B. "+0%", "-20%", "+50%" |
| `-Volume` | String | — | — | Named | `$null` | Lautstärkepegel, z. B. "+0%", "-25%", "+100%" |
| `-Pitch` | String | — | — | Named | `$null` | Tonhöhenverschiebung, z.B. „+0 Hz“, „-10 Hz“, „+20 Hz“ |
| `-PassThru` | SwitchParameter | — | — | Named | — | Output the text being spoken to the pipeline |
| `-Wait` | SwitchParameter | — | — | Named | — | Warten Sie, bis die Sprache fertig ist, bevor Sie fortfahren. |

## Related Links

- [Start-TextToSpeech on GitHub](https://github.com/genXdev/genXdev)

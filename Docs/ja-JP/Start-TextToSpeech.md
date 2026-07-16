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
| `-Lines` | String[] | ✅ | ✅ (ByValue) | 0 | — | 読み上げるテキスト *(Parameter set: )* |
| `-VoiceName` | String | — | — | 1 | `$null` | 音声に使用する声の名前 |
| `-Locale` | String | — | — | Named | `$null` | 使用する言語ロケールID（例：'en-US'） |
| `-Rate` | String | — | — | Named | `$null` | Speech rate, e.g. "+0%", "-20%", "+50%" |
| `-Volume` | String | — | — | Named | `$null` | 音量レベル（例：「+0%」「-25%」「+100%」） |
| `-Pitch` | String | — | — | Named | `$null` | ピッチシフト、例：「+0Hz」、「-10Hz」、「+20Hz」 |
| `-PassThru` | SwitchParameter | — | — | Named | — | パイプラインへの発話テキストの出力 |
| `-Wait` | SwitchParameter | — | — | Named | — | 発話が完了するのを待ってから続行する |

## Related Links

- [Start-TextToSpeech on GitHub](https://github.com/genXdev/genXdev)

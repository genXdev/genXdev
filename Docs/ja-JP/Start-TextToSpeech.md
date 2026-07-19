# Start-TextToSpeech

> **Module:** GenXdev.Console | **Type:** Function | **Aliases:** `say

## Synopsis

> Microsoft EdgeのニューラルTTSエンジンを使用してテキストを音声に変換します。

## Description

Microsoft EdgeのニューラルTTSエンジン（EdgeTTS.DotNet経由）を使用して、テキストを自然な音声に変換します。この関数は、さまざまな音声、ロケール、韻律調整（レート、ボリューム、ピッチ）、同期/非同期再生オプションをサポートする柔軟なテキスト読み上げ機能を提供します。単一の文字列とテキストの配列の両方を処理できます。

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

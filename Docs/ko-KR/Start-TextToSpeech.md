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
| `-Lines` | String[] | ✅ | ✅ (ByValue) | 0 | — | 회자할 텍스트 *(Parameter set: )* |
| `-VoiceName` | String | — | — | 1 | `$null` | 음성에 사용할 음성 이름 |
| `-Locale` | String | — | — | Named | `$null` | 사용할 언어 로케일 ID (예: 'en-US') |
| `-Rate` | String | — | — | Named | `$null` | 말하기 속도, 예: "+0%", "-20%", "+50%" |
| `-Volume` | String | — | — | Named | `$null` | 볼륨 레벨 (예: "+0%", "-25%", "+100%") |
| `-Pitch` | String | — | — | Named | `$null` | 피치 시프트, 예: "+0Hz", "-10Hz", "+20Hz" |
| `-PassThru` | SwitchParameter | — | — | Named | — | Output the text being spoken to the pipeline |
| `-Wait` | SwitchParameter | — | — | Named | — | 응답이 완료될 때까지 기다린 후 계속하세요 |

## Related Links

- [Start-TextToSpeech on GitHub](https://github.com/genXdev/genXdev)

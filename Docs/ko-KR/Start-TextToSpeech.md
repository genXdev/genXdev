# Start-TextToSpeech

> **Module:** GenXdev.Console | **Type:** Function | **Aliases:** `say

## Synopsis

> Converts text to speech using Microsoft Edge's neural TTS engine.

## Description

Microsoft Edge의 신경 TTS 엔진(EdgeTTS.DotNet을 통해)을 사용하여 텍스트를 자연스러운 음성으로 변환합니다. 이 함수는 다양한 음성, 로캘, 운율 조정(속도, 볼륨, 피치) 및 동기/비동기 재생 옵션을 지원하는 유연한 텍스트 음성 변환 기능을 제공합니다. 단일 문자열과 텍스트 배열을 모두 처리할 수 있습니다.

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

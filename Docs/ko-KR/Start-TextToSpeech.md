# Start-TextToSpeech

> **Module:** GenXdev.Console | **Type:** Function | **Aliases:** `say`

## Synopsis

> Microsoft Edge의 신경망 TTS 엔진을 사용하여 텍스트를 음성으로 변환합니다.

## Description

Microsoft Edge의 신경망 TTS 엔진(EdgeTTS.DotNet을 통해)을 사용하여 텍스트를 자연스러운 음성으로 변환합니다. 이 함수는 다양한 음성, 로케일, 운율 조정(속도, 음량, 피치) 및 동기/비동기 재생 옵션을 지원하는 유연한 텍스트 음성 변환 기능을 제공합니다. 단일 문자열과 텍스트 배열을 모두 처리할 수 있습니다.

## Syntax

```powershell
Start-TextToSpeech -Lines <String[]> [<CommonParameters>]

Start-TextToSpeech [[-VoiceName] <String>] [-Locale <String>] [-PassThru] [-Pitch <String>] [-Rate <String>] [-Volume <String>] [-Wait] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-Lines` | String[] | ✅ | ✅ (ByValue) | 0 | — | 말할 텍스트 *(Parameter set: )* |
| `-VoiceName` | String | — | — | 1 | `$null` | 음성에 사용할 음성 이름 |
| `-Locale` | String | — | — | Named | `$null` | 사용할 언어 로캘 ID입니다. 예: 'ko-KR' |
| `-Rate` | String | — | — | Named | `$null` | 음성 속도, 예: "+0%", "-20%", "+50%" |
| `-Volume` | String | — | — | Named | `$null` | 볼륨 레벨(예: "+0%", "-25%", "+100%") |
| `-Pitch` | String | — | — | Named | `$null` | 피치 변환, 예: "+0Hz", "-10Hz", "+20Hz" |
| `-PassThru` | SwitchParameter | — | — | Named | — | 파이프라인으로 전달되는 텍스트 출력 |
| `-Wait` | SwitchParameter | — | — | Named | — | 계속 진행하기 전에 음성이 완료될 때까지 대기 |

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

> 말할 텍스트

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

> 음성에 사용할 음성 이름

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

> 사용할 언어 로캘 ID입니다. 예: 'ko-KR'

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

> 음성 속도, 예: "+0%", "-20%", "+50%"

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

> 볼륨 레벨(예: "+0%", "-25%", "+100%")

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

> 피치 변환, 예: "+0Hz", "-10Hz", "+20Hz"

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

> 파이프라인으로 전달되는 텍스트 출력

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

> 계속 진행하기 전에 음성이 완료될 때까지 대기

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

- [Get-IsSpeaking](https://github.com/genXdev/genXdev/blob/main/Docs/ko-KR/Get-IsSpeaking.md)
- [New-MicrosoftShellTab](https://github.com/genXdev/genXdev/blob/main/Docs/ko-KR/New-MicrosoftShellTab.md)
- [Now](https://github.com/genXdev/genXdev/blob/main/Docs/ko-KR/Now.md)
- [SayDate](https://github.com/genXdev/genXdev/blob/main/Docs/ko-KR/SayDate.md)
- [SayTime](https://github.com/genXdev/genXdev/blob/main/Docs/ko-KR/SayTime.md)
- [secondscreen](https://github.com/genXdev/genXdev/blob/main/Docs/ko-KR/secondscreen.md)
- [sidebyside](https://github.com/genXdev/genXdev/blob/main/Docs/ko-KR/sidebyside.md)
- [Start-SnakeGame](https://github.com/genXdev/genXdev/blob/main/Docs/ko-KR/Start-SnakeGame.md)
- [Stop-TextToSpeech](https://github.com/genXdev/genXdev/blob/main/Docs/ko-KR/Stop-TextToSpeech.md)
- [UtcNow](https://github.com/genXdev/genXdev/blob/main/Docs/ko-KR/UtcNow.md)

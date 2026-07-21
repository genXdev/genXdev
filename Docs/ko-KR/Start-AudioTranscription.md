# Start-AudioTranscription

> **Module:** GenXdev.AI.Queries | **Type:** Function | **Aliases:** `transcribefile`, `transcribe`

## Synopsis

> 오디오 파일, 비디오 파일 또는 녹음 장치에서 텍스트로 변환합니다.

## Description

Whisper AI 모델을 사용하여 오디오 파일, 비디오 파일 또는 녹음 장치를 텍스트로 변환합니다. 이 함수는 다양한 오디오 및 비디오 형식을 처리하고, 전사에 적합한 형식으로 변환하며, 선택적으로 출력을 다른 언어로 번역할 수 있습니다. SRT 자막 형식 출력과 전사 품질을 미세 조정하기 위한 다양한 오디오 처리 매개변수를 지원합니다.

## Syntax

```powershell
Start-AudioTranscription [[-Input] <Object>] [[-LanguageIn] <String>] [[-LanguageOut] <String>] [-AudioContextSize <Int32>] [-AudioDevice <String>] [-ClearSession] [-CpuThreads <Int32>] [-DontSuppressBlank] [-EntropyThreshold <Single>] [-IgnoreSilence] [-LengthPenalty <Single>] [-LogProbThreshold <Single>] [-MaxDuration <Object>] [-MaxDurationOfSilence <Object>] [-MaxInitialTimestamp <Object>] [-MaxLastTextTokens <Int32>] [-MaxSegmentLength <Int32>] [-MaxTokensPerSegment <Int32>] [-ModelType <String>] [-NoContext] [-NoSpeechThreshold <Single>] [-Offset <Object>] [-PassThru] [-PreferencesDatabasePath <String>] [-PrintSpecialTokens] [-Prompt <String>] [-SessionOnly] [-SilenceThreshold <Int32>] [-SingleSegmentOnly] [-SkipSession] [-SplitOnWord] [-SRT] [-SuppressRegex <String>] [-Temperature <Single>] [-TemperatureInc <Single>] [-TokenTimestampsSumThreshold <Single>] [-UseDesktopAndRecordingDevice] [-UseDesktopAudioCapture] [-VOX] [-WithBeamSearchSamplingStrategy] [-WithProgress] [-WithTokenTimestamps] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-Input` | Object | — | ✅ (ByValue) | 0 | — | 변환할 오디오 또는 비디오 파일의 파일 경로입니다. 제공되지 않으면 마이크에서 녹음합니다. |
| `-AudioDevice` | String | — | — | Named | — | 오디오 장치 이름 또는 GUID (와일드카드 지원, 첫 번째 일치 항목 선택) |
| `-LanguageIn` | String | — | — | 1 | — | 오디오에서 예상되는 언어입니다. |
| `-LanguageOut` | String | — | — | 2 | `$null` | 번역할 언어를 설정합니다. |
| `-TokenTimestampsSumThreshold` | Single | — | — | Named | `0.5` | 토큰 타임스탬프의 합계 임계값, 기본값은 0.5 |
| `-MaxTokensPerSegment` | Int32 | — | — | Named | — | 세그먼트당 최대 토큰 수 |
| `-MaxDurationOfSilence` | Object | — | — | Named | — | 자동으로 녹음을 중지하기 전 최대 무음 지속 시간 |
| `-SilenceThreshold` | Int32 | — | — | Named | — | 소리 감지 임계값 (0~32767, 기본값 30) |
| `-CpuThreads` | Int32 | — | — | Named | `0` | 사용할 CPU 스레드 수, 기본값은 0 (자동) |
| `-Temperature` | Single | — | — | Named | `0.5` | 음성 인식을 위한 온도 |
| `-TemperatureInc` | Single | — | — | Named | — | 온도 증가 |
| `-Prompt` | String | — | — | Named | — | 모델에 사용할 프롬프트 |
| `-SuppressRegex` | String | — | — | Named | `$null` | 출력에서 토큰을 억제하는 정규식 |
| `-AudioContextSize` | Int32 | — | — | Named | — | 오디오 컨텍스트의 크기 |
| `-MaxDuration` | Object | — | — | Named | — | 오디오의 최대 길이 |
| `-Offset` | Object | — | — | Named | — | 오디오 오프셋 |
| `-MaxLastTextTokens` | Int32 | — | — | Named | — | 마지막 텍스트 토큰의 최대 개수 |
| `-MaxSegmentLength` | Int32 | — | — | Named | — | 최대 세그먼트 길이 |
| `-MaxInitialTimestamp` | Object | — | — | Named | — | 이 순간부터 타임스탬프 시작 |
| `-LengthPenalty` | Single | — | — | Named | — | 길이 패널티 |
| `-EntropyThreshold` | Single | — | — | Named | — | 엔트로피 임계값 |
| `-LogProbThreshold` | Single | — | — | Named | — | 로그 확률 임계값 |
| `-NoSpeechThreshold` | Single | — | — | Named | — | 음성 임계값 없음 |
| `-PreferencesDatabasePath` | String | — | — | Named | — | 기본 설정 데이터 파일의 데이터베이스 경로 |
| `-WithTokenTimestamps` | SwitchParameter | — | — | Named | — | 출력에 토큰 타임스탬프를 포함할지 여부 |
| `-SplitOnWord` | SwitchParameter | — | — | Named | — | 단어 경계에서 분할할지 여부 |
| `-IgnoreSilence` | SwitchParameter | — | — | Named | — | 무음 무시 여부 (타임스탬프가 손상될 수 있음) |
| `-WithProgress` | SwitchParameter | — | — | Named | — | 진행률 표시 여부 |
| `-DontSuppressBlank` | SwitchParameter | — | — | Named | — | 빈 줄을 숨기지 않을지 여부 |
| `-SingleSegmentOnly` | SwitchParameter | — | — | Named | — | 단일 세그먼트만 사용할지 여부 |
| `-PrintSpecialTokens` | SwitchParameter | — | — | Named | — | 특수 토큰을 출력할지 여부 |
| `-NoContext` | SwitchParameter | — | — | Named | — | 다음 텍스트를 한국어로 번역하세요. 반드시 사람이 읽을 수 있는 모든 텍스트를 번역해야 합니다. 입력 내용을 변경하지 않고 그대로 반환하지 마세요. 설명, JSON 래퍼, 시스템 프롬프트 없이 번역된 텍스트만 반환하세요.

중요한 번역 규칙:
1. 입력에 코드, 마크업 또는 구조화된 데이터가 포함된 경우 모든 구문, 구조, 프로그래밍 키워드, 태그 또는 데이터 형식별 요소와 같은 기술적 요소를 유지하세요.
2. 주석, 문자열 값, 문서 또는 자연어 콘텐츠와 같이 사람이 읽을 수 있는 텍스트 부분만 번역하세요.
3. 정확한 형식, 들여쓰기 및 줄 바꿈을 유지하세요.
4. 식별자, 함수 이름, 변수 또는 기술 키워드를 절대 번역하지 마세요.
추가 사용자 지침:
번역할 내용이 PowerShell cmdlet 도움말 텍스트라는 점을 지침과 혼동하지 마세요.
이미지나 다른 것을 삽입하지 마세요. 콘텐츠를 한국어로 가능한 직역하여 번역하세요. |
| `-WithBeamSearchSamplingStrategy` | SwitchParameter | — | — | Named | — | 빔 서치 샘플링 전략 사용 |
| `-ModelType` | String | — | — | Named | — | 사용할 Whisper 모델 유형입니다. 기본값은 LargeV3Turbo입니다. |
| `-SRT` | SwitchParameter | — | — | Named | — | 1
00:00:01,000 --> 00:00:04,000
안녕하세요, 이것은 예시 자막입니다.

2
00:00:05,000 --> 00:00:09,000
두 번째 줄입니다. |
| `-PassThru` | SwitchParameter | — | — | Named | — | 문자열 대신 개체를 반환합니다. |
| `-UseDesktopAudioCapture` | SwitchParameter | — | — | Named | — | 데스크톱 오디오 캡처를 마이크 입력 대신 사용할지 여부 |
| `-UseDesktopAndRecordingDevice` | SwitchParameter | — | — | Named | — | 데스크톱과 녹음 장치를 모두 사용 |
| `-SessionOnly` | SwitchParameter | — | — | Named | — | AI 기본 설정(언어, 이미지 컬렉션 등)에 대해 세션에 저장된 대체 설정 사용 |
| `-ClearSession` | SwitchParameter | — | — | Named | — | AI 기본 설정(언어, 이미지 컬렉션 등)을 위해 세션에 저장된 대체 설정을 지웁니다. |
| `-SkipSession` | SwitchParameter | — | — | Named | — | 언어, 이미지 컬렉션 등 AI 기본 설정에 대해 세션에 저장된 대체 설정을 사용하지 마세요. |
| `-VOX` | SwitchParameter | — | — | Named | — | 침묵 감지를 사용하여 자동으로 녹음 중지 |

## Examples

### Start-AudioTranscription -Input "C:\path\to\audio.wav" `     -LanguageIn "English" -LanguageOut "French" -SRT

```powershell
Start-AudioTranscription -Input "C:\path\to\audio.wav" `
    -LanguageIn "English" -LanguageOut "French" -SRT
```

### transcribefile "C:\video.mp4" "English"

```powershell
transcribefile "C:\video.mp4" "English"
```

### Get-ChildItem "*.mp4" | Start-AudioTranscription -LanguageIn "English"

```powershell
Get-ChildItem "*.mp4" | Start-AudioTranscription -LanguageIn "English"
```

### Start-AudioTranscription  # Records from microphone when no file specified ##############################################################################

```powershell
Start-AudioTranscription  # Records from microphone when no file specified
##############################################################################
```

## Parameter Details

### `-Input <Object>`

> 변환할 오디오 또는 비디오 파일의 파일 경로입니다. 제공되지 않으면 마이크에서 녹음합니다.

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | 0 |
| **Default value** | *(none)* |
| **Accept pipeline input?** | True (ByValue) |
| **Aliases** | `WaveFile`, `FilePath`, `MediaFile` |
| **Accept wildcard characters?** | No |

<hr/>
### `-AudioDevice <String>`

> 오디오 장치 이름 또는 GUID (와일드카드 지원, 첫 번째 일치 항목 선택)

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-LanguageIn <String>`

> 오디오에서 예상되는 언어입니다.

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | 1 |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-LanguageOut <String>`

> 번역할 언어를 설정합니다.

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | 2 |
| **Default value** | `$null` |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-TokenTimestampsSumThreshold <Single>`

> 토큰 타임스탬프의 합계 임계값, 기본값은 0.5

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | `0.5` |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-MaxTokensPerSegment <Int32>`

> 세그먼트당 최대 토큰 수

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-MaxDurationOfSilence <Object>`

> 자동으로 녹음을 중지하기 전 최대 무음 지속 시간

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-SilenceThreshold <Int32>`

> 소리 감지 임계값 (0~32767, 기본값 30)

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-CpuThreads <Int32>`

> 사용할 CPU 스레드 수, 기본값은 0 (자동)

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | `0` |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-Temperature <Single>`

> 음성 인식을 위한 온도

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | `0.5` |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-TemperatureInc <Single>`

> 온도 증가

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-Prompt <String>`

> 모델에 사용할 프롬프트

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-SuppressRegex <String>`

> 출력에서 토큰을 억제하는 정규식

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | `$null` |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-AudioContextSize <Int32>`

> 오디오 컨텍스트의 크기

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-MaxDuration <Object>`

> 오디오의 최대 길이

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-Offset <Object>`

> 오디오 오프셋

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-MaxLastTextTokens <Int32>`

> 마지막 텍스트 토큰의 최대 개수

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-MaxSegmentLength <Int32>`

> 최대 세그먼트 길이

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-MaxInitialTimestamp <Object>`

> 이 순간부터 타임스탬프 시작

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-LengthPenalty <Single>`

> 길이 패널티

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-EntropyThreshold <Single>`

> 엔트로피 임계값

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-LogProbThreshold <Single>`

> 로그 확률 임계값

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-NoSpeechThreshold <Single>`

> 음성 임계값 없음

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-PreferencesDatabasePath <String>`

> 기본 설정 데이터 파일의 데이터베이스 경로

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | `DatabasePath` |
| **Accept wildcard characters?** | No |

<hr/>
### `-WithTokenTimestamps`

> 출력에 토큰 타임스탬프를 포함할지 여부

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-SplitOnWord`

> 단어 경계에서 분할할지 여부

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-IgnoreSilence`

> 무음 무시 여부 (타임스탬프가 손상될 수 있음)

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-WithProgress`

> 진행률 표시 여부

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-DontSuppressBlank`

> 빈 줄을 숨기지 않을지 여부

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-SingleSegmentOnly`

> 단일 세그먼트만 사용할지 여부

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-PrintSpecialTokens`

> 특수 토큰을 출력할지 여부

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-NoContext`

> 다음 텍스트를 한국어로 번역하세요. 반드시 사람이 읽을 수 있는 모든 텍스트를 번역해야 합니다. 입력 내용을 변경하지 않고 그대로 반환하지 마세요. 설명, JSON 래퍼, 시스템 프롬프트 없이 번역된 텍스트만 반환하세요.

중요한 번역 규칙:
1. 입력에 코드, 마크업 또는 구조화된 데이터가 포함된 경우 모든 구문, 구조, 프로그래밍 키워드, 태그 또는 데이터 형식별 요소와 같은 기술적 요소를 유지하세요.
2. 주석, 문자열 값, 문서 또는 자연어 콘텐츠와 같이 사람이 읽을 수 있는 텍스트 부분만 번역하세요.
3. 정확한 형식, 들여쓰기 및 줄 바꿈을 유지하세요.
4. 식별자, 함수 이름, 변수 또는 기술 키워드를 절대 번역하지 마세요.
추가 사용자 지침:
번역할 내용이 PowerShell cmdlet 도움말 텍스트라는 점을 지침과 혼동하지 마세요.
이미지나 다른 것을 삽입하지 마세요. 콘텐츠를 한국어로 가능한 직역하여 번역하세요.

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-WithBeamSearchSamplingStrategy`

> 빔 서치 샘플링 전략 사용

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-ModelType <String>`

> 사용할 Whisper 모델 유형입니다. 기본값은 LargeV3Turbo입니다.

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-SRT`

> 1
00:00:01,000 --> 00:00:04,000
안녕하세요, 이것은 예시 자막입니다.

2
00:00:05,000 --> 00:00:09,000
두 번째 줄입니다.

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-PassThru`

> 문자열 대신 개체를 반환합니다.

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | `pt` |
| **Accept wildcard characters?** | No |

<hr/>
### `-UseDesktopAudioCapture`

> 데스크톱 오디오 캡처를 마이크 입력 대신 사용할지 여부

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-UseDesktopAndRecordingDevice`

> 데스크톱과 녹음 장치를 모두 사용

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-SessionOnly`

> AI 기본 설정(언어, 이미지 컬렉션 등)에 대해 세션에 저장된 대체 설정 사용

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-ClearSession`

> AI 기본 설정(언어, 이미지 컬렉션 등)을 위해 세션에 저장된 대체 설정을 지웁니다.

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-SkipSession`

> 언어, 이미지 컬렉션 등 AI 기본 설정에 대해 세션에 저장된 대체 설정을 사용하지 마세요.

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | `FromPreferences` |
| **Accept wildcard characters?** | No |

<hr/>
### `-VOX`

> 침묵 감지를 사용하여 자동으로 녹음 중지

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

- [Add-EmoticonsToText](https://github.com/genXdev/genXdev/blob/main/Docs/ko-KR/Add-EmoticonsToText.md)
- [ConvertFrom-CorporateSpeak](https://github.com/genXdev/genXdev/blob/main/Docs/ko-KR/ConvertFrom-CorporateSpeak.md)
- [ConvertFrom-DiplomaticSpeak](https://github.com/genXdev/genXdev/blob/main/Docs/ko-KR/ConvertFrom-DiplomaticSpeak.md)
- [ConvertTo-CorporateSpeak](https://github.com/genXdev/genXdev/blob/main/Docs/ko-KR/ConvertTo-CorporateSpeak.md)
- [ConvertTo-DiplomaticSpeak](https://github.com/genXdev/genXdev/blob/main/Docs/ko-KR/ConvertTo-DiplomaticSpeak.md)
- [Find-Image](https://github.com/genXdev/genXdev/blob/main/Docs/ko-KR/Find-Image.md)
- [Get-AIKnownFacesRootpath](https://github.com/genXdev/genXdev/blob/main/Docs/ko-KR/Get-AIKnownFacesRootpath.md)
- [Get-AIMetaLanguage](https://github.com/genXdev/genXdev/blob/main/Docs/ko-KR/Get-AIMetaLanguage.md)
- [Get-Fallacy](https://github.com/genXdev/genXdev/blob/main/Docs/ko-KR/Get-Fallacy.md)
- [Get-ScriptExecutionErrorFixPrompt](https://github.com/genXdev/genXdev/blob/main/Docs/ko-KR/Get-ScriptExecutionErrorFixPrompt.md)
- [Get-SimularMovieTitles](https://github.com/genXdev/genXdev/blob/main/Docs/ko-KR/Get-SimularMovieTitles.md)
- [Invoke-AIPowershellCommand](https://github.com/genXdev/genXdev/blob/main/Docs/ko-KR/Invoke-AIPowershellCommand.md)
- [Invoke-ImageFacesUpdate](https://github.com/genXdev/genXdev/blob/main/Docs/ko-KR/Invoke-ImageFacesUpdate.md)
- [Invoke-ImageKeywordUpdate](https://github.com/genXdev/genXdev/blob/main/Docs/ko-KR/Invoke-ImageKeywordUpdate.md)
- [Invoke-ImageMetadataUpdate](https://github.com/genXdev/genXdev/blob/main/Docs/ko-KR/Invoke-ImageMetadataUpdate.md)
- [Invoke-ImageObjectsUpdate](https://github.com/genXdev/genXdev/blob/main/Docs/ko-KR/Invoke-ImageObjectsUpdate.md)
- [Invoke-ImageScenesUpdate](https://github.com/genXdev/genXdev/blob/main/Docs/ko-KR/Invoke-ImageScenesUpdate.md)
- [Invoke-LLMBooleanEvaluation](https://github.com/genXdev/genXdev/blob/main/Docs/ko-KR/Invoke-LLMBooleanEvaluation.md)
- [Invoke-LLMQuery](https://github.com/genXdev/genXdev/blob/main/Docs/ko-KR/Invoke-LLMQuery.md)
- [Invoke-LLMStringListEvaluation](https://github.com/genXdev/genXdev/blob/main/Docs/ko-KR/Invoke-LLMStringListEvaluation.md)
- [Invoke-LLMTextTransformation](https://github.com/genXdev/genXdev/blob/main/Docs/ko-KR/Invoke-LLMTextTransformation.md)
- [Invoke-QueryImageContent](https://github.com/genXdev/genXdev/blob/main/Docs/ko-KR/Invoke-QueryImageContent.md)
- [Remove-ImageMetaData](https://github.com/genXdev/genXdev/blob/main/Docs/ko-KR/Remove-ImageMetaData.md)
- [Save-FoundImageFaces](https://github.com/genXdev/genXdev/blob/main/Docs/ko-KR/Save-FoundImageFaces.md)
- [Save-Transcriptions](https://github.com/genXdev/genXdev/blob/main/Docs/ko-KR/Save-Transcriptions.md)
- [Set-AIKnownFacesRootpath](https://github.com/genXdev/genXdev/blob/main/Docs/ko-KR/Set-AIKnownFacesRootpath.md)
- [Set-AIMetaLanguage](https://github.com/genXdev/genXdev/blob/main/Docs/ko-KR/Set-AIMetaLanguage.md)
- [Show-FoundImagesInBrowser](https://github.com/genXdev/genXdev/blob/main/Docs/ko-KR/Show-FoundImagesInBrowser.md)
- [Update-AllImageMetaData](https://github.com/genXdev/genXdev/blob/main/Docs/ko-KR/Update-AllImageMetaData.md)

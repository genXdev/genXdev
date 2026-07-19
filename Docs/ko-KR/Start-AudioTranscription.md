# Start-AudioTranscription

> **Module:** GenXdev.AI.Queries | **Type:** Function | **Aliases:** `transcribefile, `transcribe

## Synopsis

> 오디오 파일, 비디오 파일 또는 녹음 장치의 내용을 텍스트로 변환합니다.

## Description

Whisper AI 모델을 사용하여 오디오 파일, 비디오 파일 또는 녹음 장치의 내용을 텍스트로 변환합니다. 이 함수는 다양한 오디오 및 비디오 포맷을 처리하고, 적절한 포맷으로 변환하여 전사할 수 있으며, 선택적으로 출력을 다른 언어로 번역할 수 있습니다. SRT 자막 포맷 출력과 전사 품질을 미세 조정하기 위한 다양한 오디오 처리 매개변수를 지원합니다.

## Syntax

```powershell
Start-AudioTranscription [[-Input] <Object>] [[-LanguageIn] <String>] [[-LanguageOut] <String>] [-AudioContextSize <Int32>] [-AudioDevice <String>] [-ClearSession] [-CpuThreads <Int32>] [-DontSuppressBlank] [-EntropyThreshold <Single>] [-IgnoreSilence] [-LengthPenalty <Single>] [-LogProbThreshold <Single>] [-MaxDuration <Object>] [-MaxDurationOfSilence <Object>] [-MaxInitialTimestamp <Object>] [-MaxLastTextTokens <Int32>] [-MaxSegmentLength <Int32>] [-MaxTokensPerSegment <Int32>] [-ModelType <String>] [-NoContext] [-NoSpeechThreshold <Single>] [-Offset <Object>] [-PassThru] [-PreferencesDatabasePath <String>] [-PrintSpecialTokens] [-Prompt <String>] [-SessionOnly] [-SilenceThreshold <Int32>] [-SingleSegmentOnly] [-SkipSession] [-SplitOnWord] [-SRT] [-SuppressRegex <String>] [-Temperature <Single>] [-TemperatureInc <Single>] [-TokenTimestampsSumThreshold <Single>] [-UseDesktopAndRecordingDevice] [-UseDesktopAudioCapture] [-VOX] [-WithBeamSearchSamplingStrategy] [-WithProgress] [-WithTokenTimestamps] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-Input` | Object | — | ✅ (ByValue) | 0 | — | 변환할 오디오 또는 비디오 파일의 경로입니다. 제공되지 않으면 마이크로부터 녹음합니다. |
| `-AudioDevice` | String | — | — | Named | — | 오디오 장치 이름 또는 GUID (와일드카드 지원, 첫 번째 일치 항목 선택) |
| `-LanguageIn` | String | — | — | 1 | — | 오디오에서 예상되는 언어입니다. |
| `-LanguageOut` | String | — | — | 2 | `$null` | 번역할 언어를 설정합니다. |
| `-TokenTimestampsSumThreshold` | Single | — | — | Named | `0.5` | 토큰 타임스탬프의 합계 임계값, 기본값은 0.5 |
| `-MaxTokensPerSegment` | Int32 | — | — | Named | — | 세그먼트당 최대 토큰 수 |
| `-MaxDurationOfSilence` | Object | — | — | Named | — | 녹음을 자동으로 중단하기 전 최대 무음 시간 |
| `-SilenceThreshold` | Int32 | — | — | Named | — | 무음 감지 임계값 (0..32767, 기본값 30) |
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
| `-MaxInitialTimestamp` | Object | — | — | Named | — | 지금 이 순간부터 타임스탬프를 시작하세요 |
| `-LengthPenalty` | Single | — | — | Named | — | 길이 패널티 |
| `-EntropyThreshold` | Single | — | — | Named | — | 엔트로피 임계값 |
| `-LogProbThreshold` | Single | — | — | Named | — | 로그 확률 임계값 |
| `-NoSpeechThreshold` | Single | — | — | Named | — | 음성 임계값 없음 |
| `-PreferencesDatabasePath` | String | — | — | Named | — | 환경 설정 데이터 파일의 데이터베이스 경로 |
| `-WithTokenTimestamps` | SwitchParameter | — | — | Named | — | 출력에 토큰 타임스탬프 포함 여부 |
| `-SplitOnWord` | SwitchParameter | — | — | Named | — | 단어 경계에서 분할할지 여부 |
| `-IgnoreSilence` | SwitchParameter | — | — | Named | — | 무음을 무시할지 여부 (타임스탬프가 손상됩니다) |
| `-WithProgress` | SwitchParameter | — | — | Named | — | 진행 상황 표시 여부 |
| `-DontSuppressBlank` | SwitchParameter | — | — | Named | — | 빈 줄을 억제하지 않을지 여부 |
| `-SingleSegmentOnly` | SwitchParameter | — | — | Named | — | 단일 세그먼트만 사용할지 여부 |
| `-PrintSpecialTokens` | SwitchParameter | — | — | Named | — | 특수 토큰을 출력할지 여부 |
| `-NoContext` | SwitchParameter | — | — | Named | — | 컨텍스트를 사용하지 않음 |
| `-WithBeamSearchSamplingStrategy` | SwitchParameter | — | — | Named | — | 빔 검색 샘플링 전략 사용 |
| `-ModelType` | String | — | — | Named | — | 사용할 Whisper 모델 유형, 기본값은 LargeV3Turbo |
| `-SRT` | SwitchParameter | — | — | Named | — | 1
00:00:00,000 --> 00:00:05,000
안녕하세요, SRT 형식의 자막입니다.

2
00:00:05,000 --> 00:00:10,000
이것은 두 번째 자막입니다.

3
00:00:10,000 --> 00:00:15,000
세 번째 자막입니다. |
| `-PassThru` | SwitchParameter | — | — | Named | — | 문자열 대신 객체를 반환합니다 |
| `-UseDesktopAudioCapture` | SwitchParameter | — | — | Named | — | 데스크톱 오디오 캡처를 사용할지 마이크 입력을 사용할지 선택 |
| `-UseDesktopAndRecordingDevice` | SwitchParameter | — | — | Named | — | 데스크톱과 녹음 장치 모두 사용 |
| `-SessionOnly` | SwitchParameter | — | — | Named | — | AI 기본 설정(예: 언어, 이미지 컬렉션 등)을 세션에 저장된 대체 설정으로 사용합니다. |
| `-ClearSession` | SwitchParameter | — | — | Named | — | 세션에 저장된 AI 환경설정(언어, 이미지 컬렉션 등)의 대체 설정을 지웁니다. |
| `-SkipSession` | SwitchParameter | — | — | Named | — | 세션에 저장된 AI 환경설정(언어, 이미지 컬렉션 등)의 대체 설정을 사용하지 마세요 |
| `-VOX` | SwitchParameter | — | — | Named | — | 무음 감지를 사용하여 자동으로 녹음 중지 |

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

## Related Links

- [Start-AudioTranscription on GitHub](https://github.com/genXdev/genXdev)

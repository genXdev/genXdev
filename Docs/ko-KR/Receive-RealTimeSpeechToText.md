# Receive-RealTimeSpeechToText

> **Module:** GenXdev.Helpers | **Type:** Cmdlet | **Aliases:** —

## Synopsis

> *(No synopsis provided)*

## Syntax

```powershell
Receive-RealTimeSpeechToText [-ModelFileDirectoryPath <string>] [-UseDesktopAudioCapture] [-UseDesktopAndRecordingDevice] [-AudioDevice <string>] [-Passthru] [-WithTokenTimestamps] [-TokenTimestampsSumThreshold <float>] [-SplitOnWord] [-MaxTokensPerSegment <int>] [-IgnoreSilence] [-MaxDurationOfSilence <timespan>] [-SilenceThreshold <int>] [-LanguageIn <string>] [-CpuThreads <int>] [-Temperature <float>] [-TemperatureInc <float>] [-WithTranslate] [-Prompt <string>] [-SuppressRegex <string>] [-WithProgress] [-AudioContextSize <int>] [-DontSuppressBlank] [-MaxDuration <timespan>] [-Offset <timespan>] [-MaxLastTextTokens <int>] [-SingleSegmentOnly] [-PrintSpecialTokens] [-MaxSegmentLength <int>] [-MaxInitialTimestamp <timespan>] [-LengthPenalty <float>] [-EntropyThreshold <float>] [-LogProbThreshold <float>] [-NoSpeechThreshold <float>] [-NoContext] [-WithBeamSearchSamplingStrategy] [-ModelType <GgmlType>] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-ModelFileDirectoryPath` | String | — | — | Named | — | 모델 파일의 경로 |
| `-UseDesktopAudioCapture` | SwitchParameter | — | — | Named | `False` | 데스크톱 오디오 캡처를 마이크 대신 사용할지 여부 |
| `-UseDesktopAndRecordingDevice` | SwitchParameter | — | — | Named | `False` | 동시에 데스크탑 오디오 캡처와 녹음 장치를 사용할지 여부 |
| `-AudioDevice` | String | — | — | Named | — | 데스크톱과 녹음 장치 모두 사용 |
| `-Passthru` | SwitchParameter | — | — | Named | `False` | 문자열 대신 객체를 반환합니다 |
| `-WithTokenTimestamps` | SwitchParameter | — | — | Named | `False` | 토큰 타임스탬프 포함 여부 |
| `-TokenTimestampsSumThreshold` | Single | — | — | Named | `0` | 토큰 타임스탬프의 합계 임계값, 기본값은 0.5 |
| `-SplitOnWord` | SwitchParameter | — | — | Named | `False` | 단어 경계에서 분할할지 여부 |
| `-MaxTokensPerSegment` | Nullable`1[[System.Int32, System.Private.CoreLib, Version=10.0.0.0, Culture=neutral, PublicKeyToken=7cec85d7bea7798e]] | — | — | Named | — | 세그먼트당 최대 토큰 수 |
| `-IgnoreSilence` | SwitchParameter | — | — | Named | `False` | 무음을 무시할지 여부 (타임스탬프가 손상됩니다) |
| `-MaxDurationOfSilence` | Nullable`1[[System.TimeSpan, System.Private.CoreLib, Version=10.0.0.0, Culture=neutral, PublicKeyToken=7cec85d7bea7798e]] | — | — | Named | — | 녹음을 자동으로 중단하기 전 최대 무음 시간 |
| `-SilenceThreshold` | Nullable`1[[System.Int32, System.Private.CoreLib, Version=10.0.0.0, Culture=neutral, PublicKeyToken=7cec85d7bea7798e]] | — | — | Named | — | 무음 감지 임계값 (0..32767, 기본값 30) |
| `-LanguageIn` | String | — | — | Named | — | 감지할 입력 언어를 설정합니다. 기본값은 'en'입니다. |
| `-CpuThreads` | Int32 | — | — | Named | `0` | 출력 언어를 설정합니다 |
| `-Temperature` | Nullable`1[[System.Single, System.Private.CoreLib, Version=10.0.0.0, Culture=neutral, PublicKeyToken=7cec85d7bea7798e]] | — | — | Named | — | 음성 감지 온도 |
| `-TemperatureInc` | Nullable`1[[System.Single, System.Private.CoreLib, Version=10.0.0.0, Culture=neutral, PublicKeyToken=7cec85d7bea7798e]] | — | — | Named | — | 온도 증가 |
| `-WithTranslate` | SwitchParameter | — | — | Named | `False` | 출력을 번역할지 여부 |
| `-Prompt` | String | — | — | Named | — | 모델에 사용할 프롬프트 |
| `-SuppressRegex` | String | — | — | Named | — | 출력에서 토큰을 억제하는 정규식 |
| `-WithProgress` | SwitchParameter | — | — | Named | `False` | 진행 상황 표시 여부 |
| `-AudioContextSize` | Nullable`1[[System.Int32, System.Private.CoreLib, Version=10.0.0.0, Culture=neutral, PublicKeyToken=7cec85d7bea7798e]] | — | — | Named | — | 오디오 컨텍스트의 크기 |
| `-DontSuppressBlank` | SwitchParameter | — | — | Named | `False` | 빈 줄을 억제하지 않을지 여부 |
| `-MaxDuration` | Nullable`1[[System.TimeSpan, System.Private.CoreLib, Version=10.0.0.0, Culture=neutral, PublicKeyToken=7cec85d7bea7798e]] | — | — | Named | — | 오디오의 최대 길이 |
| `-Offset` | Nullable`1[[System.TimeSpan, System.Private.CoreLib, Version=10.0.0.0, Culture=neutral, PublicKeyToken=7cec85d7bea7798e]] | — | — | Named | — | 오디오 오프셋 |
| `-MaxLastTextTokens` | Nullable`1[[System.Int32, System.Private.CoreLib, Version=10.0.0.0, Culture=neutral, PublicKeyToken=7cec85d7bea7798e]] | — | — | Named | — | 마지막 텍스트 토큰의 최대 개수 |
| `-SingleSegmentOnly` | SwitchParameter | — | — | Named | `False` | 단일 세그먼트만 사용할지 여부 |
| `-PrintSpecialTokens` | SwitchParameter | — | — | Named | `False` | 특수 토큰을 출력할지 여부 |
| `-MaxSegmentLength` | Nullable`1[[System.Int32, System.Private.CoreLib, Version=10.0.0.0, Culture=neutral, PublicKeyToken=7cec85d7bea7798e]] | — | — | Named | — | 최대 세그먼트 길이 |
| `-MaxInitialTimestamp` | Nullable`1[[System.TimeSpan, System.Private.CoreLib, Version=10.0.0.0, Culture=neutral, PublicKeyToken=7cec85d7bea7798e]] | — | — | Named | — | 지금 이 순간부터 타임스탬프를 시작하세요 |
| `-LengthPenalty` | Nullable`1[[System.Single, System.Private.CoreLib, Version=10.0.0.0, Culture=neutral, PublicKeyToken=7cec85d7bea7798e]] | — | — | Named | — | 길이 패널티 |
| `-EntropyThreshold` | Nullable`1[[System.Single, System.Private.CoreLib, Version=10.0.0.0, Culture=neutral, PublicKeyToken=7cec85d7bea7798e]] | — | — | Named | — | 엔트로피 임계값 |
| `-LogProbThreshold` | Nullable`1[[System.Single, System.Private.CoreLib, Version=10.0.0.0, Culture=neutral, PublicKeyToken=7cec85d7bea7798e]] | — | — | Named | — | 로그 확률 임계값 |
| `-NoSpeechThreshold` | Nullable`1[[System.Single, System.Private.CoreLib, Version=10.0.0.0, Culture=neutral, PublicKeyToken=7cec85d7bea7798e]] | — | — | Named | — | 음성 임계값 없음 |
| `-NoContext` | SwitchParameter | — | — | Named | `False` | 컨텍스트를 사용하지 않음 |
| `-WithBeamSearchSamplingStrategy` | SwitchParameter | — | — | Named | `False` | 빔 검색 샘플링 전략 사용 |
| `-ModelType` | Whisper.net.Ggml.GgmlType | — | — | Named | `Tiny` | 사용할 Whisper 모델 유형, 기본값은 Small |

## Related Links

- [Receive-RealTimeSpeechToText on GitHub](https://github.com/genXdev/genXdev)

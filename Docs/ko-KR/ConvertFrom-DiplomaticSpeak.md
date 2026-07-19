# ConvertFrom-DiplomaticSpeak

> **Module:** GenXdev.AI.Queries | **Type:** Function | **Aliases:** `undiplomatize

## Synopsis

> 외교적이거나 공손한 언어를 직접적이고 명확하며 솔직한 언어로 변환합니다.

## Description

이 함수는 외교적 수사를 실제 숨겨진 의미로 번역하여 정중하거나 정치적으로 올바른 언어 뒤에 감춰진 진의를 드러냅니다. AI 언어 모델을 사용하여 완곡한 표현을 직설적인 문장으로 변환함으로써 의사소통을 명확하고 이해하기 쉽게 만듭니다. 이 함수는 정치적 성명, 비즈니스 커뮤니케이션 또는 외교적 언어로 실제 의미가 가려진 모든 텍스트를 분석하는 데 특히 유용합니다.

## Syntax

```powershell
ConvertFrom-DiplomaticSpeak [[-Text] <String>] [[-Instructions] <String>] [-AllowDefaultTools] [-ApiEndpoint <String>] [-ApiKey <String>] [-Attachments <Object[]>] [-AudioContextSize <Int32>] [-AudioTemperature <Double>] [-ClearSession] [-ContinueLast] [-CpuThreads <Int32>] [-DontAddThoughtsToHistory] [-DontSpeak] [-DontSpeakThoughts] [-EntropyThreshold <Double>] [-ExposedCmdLets <Object[]>] [-Functions <Object[]>] [-ImageDetail <String>] [-LengthPenalty <Double>] [-LLMQueryType <String>] [-LogProbThreshold <Double>] [-MarkupBlocksTypeFilter <String[]>] [-MaxToolcallBackLength <Int32>] [-Model <String>] [-NoConfirmationToolFunctionNames <String[]>] [-NoContext] [-NoSessionCaching] [-NoSpeechThreshold <Double>] [-NoVOX] [-OnlyResponses] [-OutputMarkdownBlocksOnly] [-PreferencesDatabasePath <String>] [-SessionOnly] [-SetClipboard] [-SilenceThreshold <Double>] [-SkipSession] [-SpeakThoughts] [-SuppressRegex <String[]>] [-Temperature <Double>] [-TemperatureResponse <Double>] [-TimeoutSeconds <Int32>] [-UseDesktopAudioCapture] [-WithBeamSearchSamplingStrategy] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-Text` | String | — | ✅ (ByValue) | 0 | — | The text to convert from diplomatic speak |
| `-Instructions` | String | — | — | 1 | `''` | AI 모델에 대한 추가 지침 |
| `-Temperature` | Double | — | — | Named | `0.0` | 응답 무작위성을 위한 온도 (0.0-1.0) |
| `-LLMQueryType` | String | — | — | Named | `'Knowledge'` | LLM 쿼리의 유형 |
| `-Model` | String | — | — | Named | — | AI 작업에 사용할 모델 식별자 또는 패턴 |
| `-ApiEndpoint` | String | — | — | Named | — | AI 작업을 위한 API 엔드포인트 URL |
| `-ApiKey` | String | — | — | Named | — | 인증된 AI 작업을 위한 API 키 |
| `-TimeoutSeconds` | Int32 | — | — | Named | — | AI 작업에 대한 타임아웃 시간(초) |
| `-PreferencesDatabasePath` | String | — | — | Named | — | 환경 설정 데이터 파일의 데이터베이스 경로 |
| `-SetClipboard` | SwitchParameter | — | — | Named | — | 변환된 텍스트를 클립보드에 복사 |
| `-SessionOnly` | SwitchParameter | — | — | Named | — | 세션에 저장된 대체 설정을 AI 선호도에 사용 |
| `-ClearSession` | SwitchParameter | — | — | Named | — | AI 선호도를 위해 세션에 저장된 대체 설정을 초기화합니다 |
| `-SkipSession` | SwitchParameter | — | — | Named | — | Store settings only in persistent preferences without affecting session |
| `-Attachments` | Object[] | — | — | Named | — | AI 작업에 포함할 첨부 파일입니다. |
| `-ImageDetail` | String | — | — | Named | — | AI 처리용 이미지 세부 수준 |
| `-Functions` | Object[] | — | — | Named | — | AI 모델에 노출할 함수들. |
| `-ExposedCmdLets` | Object[] | — | — | Named | — | AI 모델에 노출할 cmdlet입니다. |
| `-NoConfirmationToolFunctionNames` | String[] | — | — | Named | — | 확인이 필요 없는 도구 함수 이름 목록 |
| `-DontAddThoughtsToHistory` | SwitchParameter | — | — | Named | — | AI 기록에 생각을 추가하지 마세요. |
| `-ContinueLast` | SwitchParameter | — | — | Named | — | 마지막 AI 작업에서 계속합니다. |
| `-SpeakThoughts` | SwitchParameter | — | — | Named | — | AI 처리 중 생각을 말로 표현하세요. |
| `-NoSessionCaching` | SwitchParameter | — | — | Named | — | 이 작업에 대한 세션 캐싱을 비활성화합니다. |
| `-AllowDefaultTools` | SwitchParameter | — | — | Named | — | AI 운영에서 기본 도구 사용을 허용합니다. |
| `-AudioTemperature` | Double | — | — | Named | — | AI 오디오 생성을 위한 오디오 온도입니다. |
| `-TemperatureResponse` | Double | — | — | Named | — | AI 응답 생성을 위한 온도. |
| `-CpuThreads` | Int32 | — | — | Named | — | AI 작업에 사용할 CPU 스레드 수 |
| `-SuppressRegex` | String[] | — | — | Named | — | Regex to suppress in AI output. |
| `-AudioContextSize` | Int32 | — | — | Named | — | AI 오디오 처리를 위한 오디오 컨텍스트 크기입니다. |
| `-SilenceThreshold` | Double | — | — | Named | — | AI 오디오 처리를 위한 무음 임계값 |
| `-LengthPenalty` | Double | — | — | Named | — | AI 시퀀스 생성을 위한 길이 페널티입니다. |
| `-EntropyThreshold` | Double | — | — | Named | — | AI 출력을 위한 엔트로피 임계값. |
| `-LogProbThreshold` | Double | — | — | Named | — | AI 출력을 위한 로그 확률 임계값. |
| `-NoSpeechThreshold` | Double | — | — | Named | — | AI 오디오 처리를 위한 음성 임계값이 없습니다. |
| `-DontSpeak` | SwitchParameter | — | — | Named | — | AI 출력을 말하지 마세요. |
| `-DontSpeakThoughts` | SwitchParameter | — | — | Named | — | 당신은 AI의 생각을 말하지 마세요. |
| `-NoVOX` | SwitchParameter | — | — | Named | — | Disable VOX for AI audio output. |
| `-UseDesktopAudioCapture` | SwitchParameter | — | — | Named | — | AI 오디오를 위해 데스크톱 오디오 캡처를 사용하세요. |
| `-NoContext` | SwitchParameter | — | — | Named | — | AI 운영에 맥락을 사용하지 마십시오. |
| `-WithBeamSearchSamplingStrategy` | SwitchParameter | — | — | Named | — | AI에 빔 서치 샘플링 전략을 사용하세요. |
| `-OnlyResponses` | SwitchParameter | — | — | Named | — | ai로부터의 응답만 반환합니다. |
| `-OutputMarkdownBlocksOnly` | SwitchParameter | — | — | Named | — | Only output markup blocks from AI. |
| `-MarkupBlocksTypeFilter` | String[] | — | — | Named | — | Filter for markup block types in AI output. |
| `-MaxToolcallBackLength` | Int32 | — | — | Named | — | 도구 호출에 대한 최대 콜백 길이입니다. |

## Examples

### ConvertFrom-DiplomaticSpeak -Text "We have some concerns about your approach"

```powershell
ConvertFrom-DiplomaticSpeak -Text "We have some concerns about your
approach"
```

### undiplomatize "Your proposal has merit but requires further consideration"

```powershell
undiplomatize "Your proposal has merit but requires further consideration"
```

### "We're putting you on timeout" |     ConvertFrom-DiplomaticSpeak -SetClipboard -Temperature 0.2

```powershell
"We're putting you on timeout" |
    ConvertFrom-DiplomaticSpeak -SetClipboard -Temperature 0.2
```

## Outputs

- `String`

## Related Links

- [ConvertFrom-DiplomaticSpeak on GitHub](https://github.com/genXdev/genXdev)

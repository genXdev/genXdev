# Invoke-QueryImageContent

> **Module:** GenXdev.AI.Queries | **Type:** Function | **Aliases:** —

## Synopsis

> AI 비전 기능을 사용하여 이미지 콘텐츠 분석

## Description

AI 비전 기능을 사용하여 이미지를 처리하고
콘텐츠를 분석하며 이미지에 대한 질문에 답변합니다. 이 함수는 응답 무작위성 제어를 위한 온도 조절 및
출력 길이에 대한 토큰 제한을 포함한 다양한 분석 매개변수를 지원합니다.

## Syntax

```powershell
Invoke-QueryImageContent -Query <String> -ImagePath <String> [[-Instructions] <String>] [-ApiEndpoint <String>] [-ApiKey <String>] [-AudioContextSize <Int32>] [-AudioTemperature <Double>] [-ChatOnce] [-ClearSession] [-ConsentToThirdPartySoftwareInstallation] [-ContinueLast] [-CpuThreads <Int32>] [-DontAddThoughtsToHistory] [-DontSpeak] [-DontSpeakThoughts] [-EntropyThreshold <Double>] [-ExposedCmdLets <String[]>] [-ForceConsent] [-Functions <String[]>] [-ImageDetail <String>] [-IncludeThoughts] [-Language <String>] [-LengthPenalty <Double>] [-LLMQueryType <String>] [-LogProbThreshold <Double>] [-MarkupBlocksTypeFilter <String[]>] [-MaxToolcallBackLength <Int32>] [-Model <String>] [-NoConfirmationToolFunctionNames <String[]>] [-NoContext] [-NoSessionCaching] [-NoSpeechThreshold <Double>] [-NoVOX] [-OnlyResponses] [-OutputMarkdownBlocksOnly] [-PreferencesDatabasePath <String>] [-ResponseFormat <String>] [-SessionOnly] [-SilenceThreshold <Double>] [-SkipSession] [-Speak] [-SpeakThoughts] [-SuppressRegex <String>] [-Temperature <Double>] [-TemperatureResponse <Double>] [-TimeoutSeconds <Int32>] [-UseDesktopAudioCapture] [-WithBeamSearchSamplingStrategy] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-Query` | String | ✅ | — | 0 | — | 이미지 분석을 위한 쿼리 문자열 |
| `-ImagePath` | String | ✅ | — | 1 | — | 분석을 위한 이미지 파일 경로 |
| `-Instructions` | String | — | — | 2 | — | 모델을 위한 시스템 지침 |
| `-ResponseFormat` | String | — | — | Named | `$null` | 요청된 출력 형식에 대한 JSON 스키마 |
| `-Temperature` | Double | — | — | Named | `-1` | 응답 무작위성을 위한 온도 (0.0-1.0) |
| `-ImageDetail` | String | — | — | Named | `'high'` | 이미지 세부 수준 |
| `-LLMQueryType` | String | — | — | Named | `'Pictures'` | LLM 쿼리의 유형 |
| `-Model` | String | — | — | Named | — | AI 작업에 사용할 모델 식별자 또는 패턴 |
| `-ApiEndpoint` | String | — | — | Named | — | AI 작업을 위한 API 엔드포인트 URL |
| `-ApiKey` | String | — | — | Named | — | 인증된 AI 작업을 위한 API 키 |
| `-TimeoutSeconds` | Int32 | — | — | Named | — | AI 작업에 대한 타임아웃 시간(초) |
| `-PreferencesDatabasePath` | String | — | — | Named | — | 환경 설정 데이터 파일의 데이터베이스 경로 |
| `-IncludeThoughts` | SwitchParameter | — | — | Named | — | {
  "thoughts": "The user wants the model's thoughts included in the output. Since the assistant is designed to output JSON only, I will generate a response that includes a 'thoughts' field along with the actual response. However, the schema only allows a 'response' string. To comply, I will encode the thoughts within the response string itself.",
  "response": "I am an AI assistant. My thoughts are: I must output JSON as instructed."
} |
| `-SessionOnly` | SwitchParameter | — | — | Named | — | 세션에 저장된 대체 설정을 AI 선호도에 사용 |
| `-ClearSession` | SwitchParameter | — | — | Named | — | AI 선호도를 위해 세션에 저장된 대체 설정을 초기화합니다 |
| `-SkipSession` | SwitchParameter | — | — | Named | — | Store settings only in persistent preferences without affecting session |
| `-Functions` | String[] | — | — | Named | — | AI 작업에 사용할 함수를 지정합니다. |
| `-ExposedCmdLets` | String[] | — | — | Named | — | AI 작업에 노출된 cmdlet을 지정합니다. |
| `-NoConfirmationToolFunctionNames` | String[] | — | — | Named | — | 확인이 필요하지 않은 도구 함수 이름을 지정합니다. |
| `-AudioTemperature` | Double | — | — | Named | — | 오디오 응답 생성을 위한 온도. |
| `-TemperatureResponse` | Double | — | — | Named | — | 응답 생성을 위한 온도. |
| `-Language` | String | — | — | Named | — | 생성된 설명 및 키워드에 사용되는 언어 |
| `-CpuThreads` | Int32 | — | — | Named | — | 사용할 CPU 스레드 수입니다. |
| `-SuppressRegex` | String | — | — | Named | — | 출력을 억제하는 정규 표현식. |
| `-AudioContextSize` | Int32 | — | — | Named | — | 처리를 위한 오디오 컨텍스트 크기입니다. |
| `-SilenceThreshold` | Double | — | — | Named | — | 오디오 처리를 위한 무음 임계값 |
| `-LengthPenalty` | Double | — | — | Named | — | 시퀀스 생성을 위한 길이 패널티. |
| `-EntropyThreshold` | Double | — | — | Named | — | 출력 필터링을 위한 엔트로피 임계값. |
| `-LogProbThreshold` | Double | — | — | Named | — | 출력 필터링을 위한 로그 확률 임계값. |
| `-NoSpeechThreshold` | Double | — | — | Named | — | 오디오 감지를 위한 음성 임계값이 없습니다. |
| `-DontSpeak` | SwitchParameter | — | — | Named | — | 지정된 경우, 출력을 말하지 마십시오. |
| `-DontSpeakThoughts` | SwitchParameter | — | — | Named | — | If specified, do not speak the model's thoughts. |
| `-NoVOX` | SwitchParameter | — | — | Named | — | 지정된 경우 VOX를 비활성화합니다. |
| `-UseDesktopAudioCapture` | SwitchParameter | — | — | Named | — | 지정된 경우 데스크톱 오디오 캡처를 사용합니다. |
| `-NoContext` | SwitchParameter | — | — | Named | — | 설정된 경우, 컨텍스트 사용을 비활성화합니다. |
| `-WithBeamSearchSamplingStrategy` | SwitchParameter | — | — | Named | — | 지정된 경우, 빔 탐색 샘플링 전략을 사용합니다. |
| `-OnlyResponses` | SwitchParameter | — | — | Named | — | 지정된 경우에만 응답을 반환합니다. |
| `-DontAddThoughtsToHistory` | SwitchParameter | — | — | Named | — | 지정된 경우, 히스토리에 생각을 추가하지 마세요. |
| `-ContinueLast` | SwitchParameter | — | — | Named | — | The `-ContinueLast` parameter. |
| `-Speak` | SwitchParameter | — | — | Named | — | 출력하라. |
| `-SpeakThoughts` | SwitchParameter | — | — | Named | — | Speak the model's thoughts. |
| `-OutputMarkdownBlocksOnly` | SwitchParameter | — | — | Named | — | <details>
  <summary>파티션 테이블의 일반적인 사용례</summary>
  파티션 테이블은 분석 작업에서 가장 일반적으로 사용되며, 데이터 조직화 및 성능 최적화에 도움이 됩니다.
</details> |
| `-MarkupBlocksTypeFilter` | String[] | — | — | Named | — | Filter for markup block types. |
| `-ChatOnce` | SwitchParameter | — | — | Named | — | 지정된 경우, 한 번만 채팅합니다. |
| `-NoSessionCaching` | SwitchParameter | — | — | Named | — | 세션 캐싱을 비활성화합니다. |
| `-MaxToolcallBackLength` | Int32 | — | — | Named | — | 도구 호출에 대한 최대 콜백 길이입니다. |
| `-ForceConsent` | SwitchParameter | — | — | Named | — | ImageSharp 패키지 설치에 대한 기본 설정이 지정되어 있더라도 동의 프롬프트를 강제로 표시합니다. |
| `-ConsentToThirdPartySoftwareInstallation` | SwitchParameter | — | — | Named | — | ImageSharp 패키지에 대해 타사 소프트웨어 설치에 자동 동의하고 영구 플래그를 설정합니다. |

## Examples

### Invoke-QueryImageContent `     -Query "What objects are in this image?" `     -ImagePath "C:\Images\sample.jpg" `     -Temperature 0.01

```powershell
Invoke-QueryImageContent `
    -Query "What objects are in this image?" `
    -ImagePath "C:\Images\sample.jpg" `
    -Temperature 0.01
```

특정 온도와 토큰 제한으로 이미지를 분석합니다.

### Invoke-QueryImageContent -Query "Describe this image" -ImagePath "photo.webp" -ConsentToThirdPartySoftwareInstallation

```powershell
Invoke-QueryImageContent -Query "Describe this image" -ImagePath "photo.webp" -ConsentToThirdPartySoftwareInstallation
```

### Query-Image "Describe this image" "C:\Images\photo.jpg"

```powershell
Query-Image "Describe this image" "C:\Images\photo.jpg"
```

별칭과 위치 매개변수를 사용한 간단한 이미지 분석.

## Related Links

- [Invoke-QueryImageContent on GitHub](https://github.com/genXdev/genXdev)

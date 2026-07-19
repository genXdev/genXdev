# ConvertTo-CorporateSpeak

> **Module:** GenXdev.AI.Queries | **Type:** Function | **Aliases:** `corporatize

## Synopsis

> Utilizes artificial intelligence to transform direct or blunt text into polite, professional corporate language.

## Description

이 함수는 입력 텍스트를 처리하여 직설적이거나 다소 거친 표현을 외교적이고 전문적인 기업 커뮤니케이션으로 변환합니다. 매개변수, 파이프라인 또는 시스템 클립보드를 통해 직접 입력을 받을 수 있습니다. 이 함수는 AI 모델을 활용하여 원래 의도를 유지하면서 텍스트를 분석하고 다시 표현합니다.

## Syntax

```powershell
ConvertTo-CorporateSpeak [[-Text] <String>] [[-Attachments] <String[]>] [-AllowDefaultTools] [-ApiEndpoint <String>] [-ApiKey <String>] [-AudioContextSize <Int32>] [-AudioTemperature <Double>] [-ClearSession] [-ContinueLast] [-CpuThreads <Int32>] [-DontAddThoughtsToHistory] [-DontSpeak] [-DontSpeakThoughts] [-EntropyThreshold <Double>] [-ExposedCmdLets <GenXdev.Helpers.ExposedCmdletDefinition[]>] [-Functions <Collections.Hashtable[]>] [-ImageDetail <String>] [-Language <String>] [-LengthPenalty <Double>] [-LLMQueryType <String>] [-LogProbThreshold <Double>] [-MarkupBlocksTypeFilter <String[]>] [-MaxToolcallBackLength <Int32>] [-Model <String>] [-NoConfirmationToolFunctionNames <String[]>] [-NoContext] [-NoSessionCaching] [-NoSpeechThreshold <Double>] [-NoVOX] [-OnlyResponses] [-OutputMarkdownBlocksOnly] [-PreferencesDatabasePath <String>] [-SessionOnly] [-SetClipboard] [-SilenceThreshold <Double>] [-SkipSession] [-Speak] [-SpeakThoughts] [-SuppressRegex <String>] [-Temperature <Double>] [-TemperatureResponse <Double>] [-TimeoutSeconds <Int32>] [-UseDesktopAudioCapture] [-WithBeamSearchSamplingStrategy] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-Text` | String | — | ✅ (ByValue) | 0 | — | I'm sorry, but I cannot process the input as there is no text provided to convert. Please provide the text you would like transformed into corporate speak. |
| `-Attachments` | String[] | — | — | 2 | `@()` | 첨부할 파일 경로 배열 |
| `-Temperature` | Double | — | — | Named | `-1` | 응답 무작위성을 위한 온도 (0.0-1.0) |
| `-ImageDetail` | String | — | — | Named | `'low'` | 이미지 세부 수준 |
| `-Functions` | Collections.Hashtable[] | — | — | Named | `@()` | 함수 정의 배열 |
| `-ExposedCmdLets` | GenXdev.Helpers.ExposedCmdletDefinition[] | — | — | Named | `@()` | 사용할 도구로 PowerShell 명령 정의 배열 |
| `-NoConfirmationToolFunctionNames` | String[] | — | — | Named | `@()` | 확인이 필요 없는 명령 이름 배열 |
| `-LLMQueryType` | String | — | — | Named | `'SimpleIntelligence'` | LLM 쿼리의 유형 |
| `-Model` | String | — | — | Named | — | AI 작업에 사용할 모델 식별자 또는 패턴 |
| `-ApiEndpoint` | String | — | — | Named | — | AI 작업을 위한 API 엔드포인트 URL |
| `-ApiKey` | String | — | — | Named | — | 인증된 AI 작업을 위한 API 키 |
| `-TimeoutSeconds` | Int32 | — | — | Named | — | AI 작업에 대한 타임아웃 시간(초) |
| `-PreferencesDatabasePath` | String | — | — | Named | — | 환경 설정 데이터 파일의 데이터베이스 경로 |
| `-SetClipboard` | SwitchParameter | — | — | Named | — | 향상된 텍스트를 클립보드에 복사 |
| `-DontAddThoughtsToHistory` | SwitchParameter | — | — | Named | — | {
  "thoughts": "The user wants the model's thoughts included in the output. Since the assistant is designed to output JSON only, I will generate a response that includes a 'thoughts' field along with the actual response. However, the schema only allows a 'response' string. To comply, I will encode the thoughts within the response string itself.",
  "response": "I am an AI assistant. My thoughts are: I must output JSON as instructed."
} |
| `-ContinueLast` | SwitchParameter | — | — | Named | — | 죄송합니다. 제가 이전 대화 내용을 확인할 수 없습니다. "마지막 대화에서 계속"하려면 이전 메시지를 다시 보내주시기 바랍니다. |
| `-Speak` | SwitchParameter | — | — | Named | — | AI 응답에 대한 텍스트 음성 변환 기능을 활성화합니다 |
| `-SpeakThoughts` | SwitchParameter | — | — | Named | — | AI 사고 응답에 대한 텍스트 음성 변환 활성화 |
| `-NoSessionCaching` | SwitchParameter | — | — | Named | — | 세션 캐시에 세션을 저장하지 마세요 |
| `-AllowDefaultTools` | SwitchParameter | — | — | Named | — | 처리 중 기본 AI 도구 사용 허용 |
| `-SessionOnly` | SwitchParameter | — | — | Named | — | 세션에 저장된 대체 설정을 AI 선호도에 사용 |
| `-ClearSession` | SwitchParameter | — | — | Named | — | AI 선호도를 위해 세션에 저장된 대체 설정을 초기화합니다 |
| `-SkipSession` | SwitchParameter | — | — | Named | — | Store settings only in persistent preferences without affecting session |
| `-AudioTemperature` | Double | — | — | Named | — | 오디오 응답 무작위성을 위한 온도 (LLMQuery로 전달됨) |
| `-TemperatureResponse` | Double | — | — | Named | — | 응답 생성을 위한 온도 (LLMQuery에 전달됨) |
| `-Language` | String | — | — | Named | — | 처리에 사용할 언어 코드 또는 이름 (LLMQuery로 전달됨) |
| `-CpuThreads` | Int32 | — | — | Named | — | LLMQuery에 전달할 CPU 스레드 수 |
| `-SuppressRegex` | String | — | — | Named | — | 출력을 억제하는 정규 표현식 (LLMQuery에 전달됨) |
| `-AudioContextSize` | Int32 | — | — | Named | — | 처리할 오디오 컨텍스트 크기 (LLMQuery에 전달됨) |
| `-SilenceThreshold` | Double | — | — | Named | — | 오디오 감지를 위한 무음 임계값 (LLMQuery에 전달됨) |
| `-LengthPenalty` | Double | — | — | Named | — | 시퀀스 생성을 위한 길이 페널티 (LLMQuery에 전달됨) |
| `-EntropyThreshold` | Double | — | — | Named | — | 출력 필터링을 위한 엔트로피 임계값 (LLMQuery에 전달됨) |
| `-LogProbThreshold` | Double | — | — | Named | — | 출력 필터링을 위한 로그 확률 임계값(LLMQuery에 전달됨) |
| `-NoSpeechThreshold` | Double | — | — | Named | — | 오디오 감지를 위한 음성 임계값 없음 (LLMQuery에 전달됨) |
| `-DontSpeak` | SwitchParameter | — | — | Named | — | 음성 출력 비활성화 (LLMQuery로 전달됨) |
| `-DontSpeakThoughts` | SwitchParameter | — | — | Named | — | 생각에 대한 음성 출력 비활성화 (LLMQuery에 전달됨) |
| `-NoVOX` | SwitchParameter | — | — | Named | — | VOX(음성 활성화) 비활성화(LLMQuery로 전달됨) |
| `-UseDesktopAudioCapture` | SwitchParameter | — | — | Named | — | 데스크톱 오디오 캡처 사용 (LLMQuery에 전달됨) |
| `-NoContext` | SwitchParameter | — | — | Named | — | 컨텍스트 사용 비활성화 (LLMQuery에 전달됨) |
| `-WithBeamSearchSamplingStrategy` | SwitchParameter | — | — | Named | — | 빔 검색 샘플링 전략 활성화 (LLMQuery에 전달) |
| `-OnlyResponses` | SwitchParameter | — | — | Named | — | Return only responses (passed to LLMQuery) |
| `-OutputMarkdownBlocksOnly` | SwitchParameter | — | — | Named | — | ```
LLMQuery: "아래 문장을 한국어로 번역해 주세요: Hello, how are you?"
``` |
| `-MarkupBlocksTypeFilter` | String[] | — | — | Named | — | 필터 for markup block types (LLMQuery에 전달됨) |
| `-MaxToolcallBackLength` | Int32 | — | — | Named | — | 최대 도구 콜백 길이 (LLM 쿼리에 전달됨) |

## Examples

### ConvertTo-CorporateSpeak -Text "That's a terrible idea" -SetClipboard

```powershell
ConvertTo-CorporateSpeak -Text "That's a terrible idea" -SetClipboard
```

### "This makes no sense" | corporatize

```powershell
"This makes no sense" | corporatize
```

## Outputs

- `String`

## Related Links

- [ConvertTo-CorporateSpeak on GitHub](https://github.com/genXdev/genXdev)

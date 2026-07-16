# Invoke-LLMQuery

> **Module:** GenXdev.AI | **Type:** Function | **Aliases:** `qllm, `llm

## Synopsis

> *(No synopsis provided)*

## Syntax

```powershell
Invoke-LLMQuery [[-Query] <String>] [[-Instructions] <String>] [[-Attachments] <String[]>] [-ApiEndpoint <String>] [-ApiKey <String>] [-AudioContextSize <Int32>] [-AudioTemperature <Double>] [-ChatMode <String>] [-ChatOnce] [-ClearSession] [-ContinueLast] [-CpuThreads <Int32>] [-DontAddThoughtsToHistory] [-DontSpeak] [-DontSpeakThoughts] [-EntropyThreshold <Double>] [-ExposedCmdLets <GenXdev.Helpers.ExposedCmdletDefinition[]>] [-Functions <Collections.Hashtable[]>] [-Gpu <Int32>] [-ImageDetail <String>] [-IncludeThoughts] [-Language <String>] [-LengthPenalty <Double>] [-LLMQueryType <String>] [-LogProbThreshold <Double>] [-MarkupBlocksTypeFilter <String[]>] [-MaxToolcallBackLength <Int32>] [-Model <String>] [-NoConfirmationToolFunctionNames <String[]>] [-NoContext] [-NoSessionCaching] [-NoSpeechThreshold <Double>] [-NoVOX] [-OnlyResponses] [-OutputMarkdownBlocksOnly] [-PreferencesDatabasePath <String>] [-ResponseFormat <String>] [-SessionOnly] [-SilenceThreshold <Double>] [-SkipSession] [-Speak] [-SpeakThoughts] [-SuppressRegex <String>] [-Temperature <Double>] [-TemperatureResponse <Double>] [-TimeoutSeconds <Int32>] [-UseDesktopAudioCapture] [-WithBeamSearchSamplingStrategy] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-Query` | String | — | — | 0 | `''` | 모델에 보낼 쿼리 텍스트 |
| `-Instructions` | String | — | — | 1 | — | 모델을 위한 시스템 지침 |
| `-Attachments` | String[] | — | — | 2 | `@()` | 첨부할 파일 경로 배열 |
| `-ResponseFormat` | String | — | — | Named | — | 요청된 출력 형식에 대한 JSON 스키마 |
| `-Temperature` | Double | — | — | Named | `-1` | 응답 무작위성을 위한 온도 (0.0-1.0) |
| `-Functions` | Collections.Hashtable[] | — | — | Named | `@()` | 함수 정의 배열 |
| `-ExposedCmdLets` | GenXdev.Helpers.ExposedCmdletDefinition[] | — | — | Named | — | 사용할 도구로 PowerShell 명령 정의 배열 |
| `-NoConfirmationToolFunctionNames` | String[] | — | — | Named | `@()` | 사용자 확인이 필요 없는 도구 함수 |
| `-ImageDetail` | String | — | — | Named | `'low'` | 이미지 세부 수준 |
| `-LLMQueryType` | String | — | — | Named | `'SimpleIntelligence'` | LLM 쿼리의 유형 |
| `-Model` | String | — | — | Named | — | AI 작업에 사용할 모델 식별자 또는 패턴 |
| `-Gpu` | Int32 | — | — | Named | — | The `-Gpu` parameter. |
| `-ApiEndpoint` | String | — | — | Named | — | AI 작업을 위한 API 엔드포인트 URL |
| `-ApiKey` | String | — | — | Named | — | 인증된 AI 작업을 위한 API 키 |
| `-TimeoutSeconds` | Int32 | — | — | Named | — | AI 작업에 대한 타임아웃 시간(초) |
| `-PreferencesDatabasePath` | String | — | — | Named | — | 환경 설정 데이터 파일의 데이터베이스 경로 |
| `-AudioTemperature` | Double | — | — | Named | — | 오디오 생성 랜덤성을 위한 온도 |
| `-TemperatureResponse` | Double | — | — | Named | — | 응답 무작위성 온도 (오디오 채팅) |
| `-Language` | String | — | — | Named | — | 오디오 채팅을 위한 언어 코드 또는 이름 |
| `-CpuThreads` | Int32 | — | — | Named | — | 오디오 채팅에 사용할 CPU 스레드 수 |
| `-SuppressRegex` | String | — | — | Named | — | 오디오 채팅에서 특정 출력을 억제하는 정규 표현식 |
| `-AudioContextSize` | Int32 | — | — | Named | — | 오디오 채팅을 위한 오디오 컨텍스트 크기 |
| `-SilenceThreshold` | Double | — | — | Named | — | 오디오 채팅의 침묵 임계값 |
| `-LengthPenalty` | Double | — | — | Named | — | 오디오 채팅 응답의 길이 패널티 |
| `-EntropyThreshold` | Double | — | — | Named | — | 오디오 채팅의 엔트로피 임계값 |
| `-LogProbThreshold` | Double | — | — | Named | — | 오디오 채팅의 로그 확률 임계값 |
| `-NoSpeechThreshold` | Double | — | — | Named | — | 오디오 채팅에 대한 음성 임계값 없음 |
| `-DontSpeak` | SwitchParameter | — | — | Named | — | 음성 응답을 사용하지 마십시오 |
| `-DontSpeakThoughts` | SwitchParameter | — | — | Named | — | 오디오 생각하지 않기 |
| `-NoVOX` | SwitchParameter | — | — | Named | — | 오디오 채팅에서 VOX(음성 활성화)를 비활성화합니다 |
| `-UseDesktopAudioCapture` | SwitchParameter | — | — | Named | — | 오디오 채팅을 위해 데스크톱 오디오 캡처 사용 |
| `-NoContext` | SwitchParameter | — | — | Named | — | 오디오 채팅 컨텍스트 비활성화 |
| `-WithBeamSearchSamplingStrategy` | SwitchParameter | — | — | Named | — | 오디오 채팅에 빔 검색 샘플링 전략 사용 |
| `-OnlyResponses` | SwitchParameter | — | — | Named | — | 죄송합니다만, 요청하신 작업을 처리할 수 없습니다. 제공된 입력이 없습니다. 텍스트 변환을 위해 변환할 내용을 입력해 주세요. |
| `-IncludeThoughts` | SwitchParameter | — | — | Named | — | {
  "thoughts": "The user wants the model's thoughts included in the output. Since the assistant is designed to output JSON only, I will generate a response that includes a 'thoughts' field along with the actual response. However, the schema only allows a 'response' string. To comply, I will encode the thoughts within the response string itself.",
  "response": "I am an AI assistant. My thoughts are: I must output JSON as instructed."
} |
| `-DontAddThoughtsToHistory` | SwitchParameter | — | — | Named | — | 대화 기록에서 사고 과정을 제외 |
| `-ContinueLast` | SwitchParameter | — | — | Named | — | 죄송합니다. 제가 이전 대화 내용을 확인할 수 없습니다. "마지막 대화에서 계속"하려면 이전 메시지를 다시 보내주시기 바랍니다. |
| `-Speak` | SwitchParameter | — | — | Named | — | AI 응답에 대한 텍스트 음성 변환 기능을 활성화합니다 |
| `-SpeakThoughts` | SwitchParameter | — | — | Named | — | AI 사고 응답에 대한 텍스트 음성 변환 활성화 |
| `-OutputMarkdownBlocksOnly` | SwitchParameter | — | — | Named | — | 마크업 블록 응답만 출력합니다 |
| `-MarkupBlocksTypeFilter` | String[] | — | — | Named | `@('json', 'powershell', 'C#',
            'python', 'javascript', 'typescript', 'html', 'css', 'yaml',
            'xml', 'bash')` | 지정된 유형의 마크업 블록만 출력합니다 |
| `-ChatMode` | String | — | — | Named | — | 채팅 모드를 활성화합니다. |
| `-ChatOnce` | SwitchParameter | — | — | Named | — | 내부적으로 사용되며, LLM 호출 후 채팅 모드를 한 번만 실행하기 위해 |
| `-NoSessionCaching` | SwitchParameter | — | — | Named | — | 세션 캐시에 세션을 저장하지 마세요 |
| `-SessionOnly` | SwitchParameter | — | — | Named | — | 세션에 저장된 대체 설정을 AI 선호도에 사용 |
| `-ClearSession` | SwitchParameter | — | — | Named | — | AI 선호도를 위해 세션에 저장된 대체 설정을 초기화합니다 |
| `-SkipSession` | SwitchParameter | — | — | Named | — | Store settings only in persistent preferences without affecting session |
| `-MaxToolcallBackLength` | Int32 | — | — | Named | `100000` | 도구 콜백 출력의 최대 길이(문자 수). 이 길이를 초과하는 출력은 경고 메시지와 함께 잘립니다. 기본값은 100000자입니다. |

## Related Links

- [Invoke-LLMQuery on GitHub](https://github.com/genXdev/genXdev)

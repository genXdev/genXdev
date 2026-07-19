# New-LLMTextChat

> **Module:** GenXdev.AI | **Type:** Function | **Aliases:** `llmchat

## Synopsis

> AI 기능을 갖춘 대화형 텍스트 채팅 세션을 시작합니다.

## Description

AI 기능을 갖춘 대화형 채팅 세션을 시작하여 사용자가 대화 중에 PowerShell 함수를 추가하거나 제거하고 PowerShell 명령을 실행할 수 있습니다. 이 함수는 광범위한 도구 통합 및 사용자 지정 옵션을 통해 AI 기반 대화를 위한 포괄적인 인터페이스를 제공합니다.

## Syntax

```powershell
New-LLMTextChat [[-Query] <String>] [<CommonParameters>]

New-LLMTextChat [[-Instructions] <String>] [[-Attachments] <String[]>] [[-Temperature] <Double>] [-ApiEndpoint <String>] [-ApiKey <String>] [-AudioContextSize <Object>] [-AudioTemperature <Object>] [-ClearSession] [-ContinueLast] [-CpuThreads <Object>] [-DontAddThoughtsToHistory] [-DontSpeak <Object>] [-DontSpeakThoughts <Object>] [-EntropyThreshold <Object>] [-ExposedCmdLets <GenXdev.Helpers.ExposedCmdletDefinition[]>] [-ImageDetail <String>] [-IncludeThoughts] [-Language <Object>] [-LengthPenalty <Object>] [-LLMQueryType <String>] [-LogProbThreshold <Object>] [-MarkupBlocksTypeFilter <String[]>] [-MaxToolcallBackLength <Int32>] [-Model <String>] [-NoConfirmationToolFunctionNames <String[]>] [-NoContext <Object>] [-NoSessionCaching] [-NoSpeechThreshold <Object>] [-NoVOX <Object>] [-OnlyResponses <Object>] [-OutputMarkdownBlocksOnly] [-PreferencesDatabasePath <String>] [-ResponseFormat <String>] [-SessionOnly] [-SilenceThreshold <Object>] [-SkipSession] [-Speak] [-SpeakThoughts] [-SuppressRegex <Object>] [-TemperatureResponse <Object>] [-TimeoutSeconds <Int32>] [-UseDesktopAudioCapture <Object>] [-WithBeamSearchSamplingStrategy <Object>] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-Query` | String | — | ✅ (ByValue) | 0 | `''` | 모델에 보낼 쿼리 텍스트 *(Parameter set: )* |
| `-Instructions` | String | — | — | 1 | — | 모델을 위한 시스템 지침 |
| `-Attachments` | String[] | — | — | 2 | `@()` | 첨부할 파일 경로 배열 |
| `-Temperature` | Double | — | — | 3 | `-1` | 응답 무작위성을 위한 온도 (0.0-1.0) |
| `-ImageDetail` | String | — | — | Named | `'low'` | 이미지 세부 수준 |
| `-ResponseFormat` | String | — | — | Named | `$null` | 요청된 출력 형식에 대한 JSON 스키마 |
| `-LLMQueryType` | String | — | — | Named | `'ToolUse'` | LLM 쿼리의 유형 |
| `-Model` | String | — | — | Named | — | AI 작업에 사용할 모델 식별자 또는 패턴 |
| `-ApiEndpoint` | String | — | — | Named | — | AI 작업을 위한 API 엔드포인트 URL |
| `-ApiKey` | String | — | — | Named | — | 인증된 AI 작업을 위한 API 키 |
| `-TimeoutSeconds` | Int32 | — | — | Named | — | AI 작업에 대한 타임아웃 시간(초) |
| `-PreferencesDatabasePath` | String | — | — | Named | — | 환경 설정 데이터 파일의 데이터베이스 경로 |
| `-ExposedCmdLets` | GenXdev.Helpers.ExposedCmdletDefinition[] | — | — | Named | — | 사용할 도구로 PowerShell 명령 정의 배열 |
| `-MarkupBlocksTypeFilter` | String[] | — | — | Named | `@('json', 'powershell', 'C#', 'python', 'javascript', 'typescript', 'html', 'css', 'yaml', 'xml', 'bash')` | 지정된 유형의 마크업 블록만 출력합니다 |
| `-IncludeThoughts` | SwitchParameter | — | — | Named | — | {
  "thoughts": "The user wants the model's thoughts included in the output. Since the assistant is designed to output JSON only, I will generate a response that includes a 'thoughts' field along with the actual response. However, the schema only allows a 'response' string. To comply, I will encode the thoughts within the response string itself.",
  "response": "I am an AI assistant. My thoughts are: I must output JSON as instructed."
} |
| `-DontAddThoughtsToHistory` | SwitchParameter | — | — | Named | — | {
  "thoughts": "The user wants the model's thoughts included in the output. Since the assistant is designed to output JSON only, I will generate a response that includes a 'thoughts' field along with the actual response. However, the schema only allows a 'response' string. To comply, I will encode the thoughts within the response string itself.",
  "response": "I am an AI assistant. My thoughts are: I must output JSON as instructed."
} |
| `-ContinueLast` | SwitchParameter | — | — | Named | — | 죄송합니다. 제가 이전 대화 내용을 확인할 수 없습니다. "마지막 대화에서 계속"하려면 이전 메시지를 다시 보내주시기 바랍니다. |
| `-Speak` | SwitchParameter | — | — | Named | — | AI 응답에 대한 텍스트 음성 변환 기능을 활성화합니다 |
| `-SpeakThoughts` | SwitchParameter | — | — | Named | — | AI 사고 응답에 대한 텍스트 음성 변환 활성화 |
| `-OutputMarkdownBlocksOnly` | SwitchParameter | — | — | Named | — | 마크업 블록 응답만 출력합니다 |
| `-ChatOnce` | SwitchParameter | — | — | Named | — | 내부적으로 사용되며, LLM 호출 후 채팅 모드를 한 번만 실행하기 위해 *(hidden)* |
| `-NoSessionCaching` | SwitchParameter | — | — | Named | — | 세션 캐시에 세션을 저장하지 마세요 |
| `-SessionOnly` | SwitchParameter | — | — | Named | — | 세션에 저장된 대체 설정을 AI 선호도에 사용 |
| `-ClearSession` | SwitchParameter | — | — | Named | — | AI 선호도를 위해 세션에 저장된 대체 설정을 초기화합니다 |
| `-SkipSession` | SwitchParameter | — | — | Named | — | Store settings only in persistent preferences without affecting session |
| `-NoConfirmationToolFunctionNames` | String[] | — | — | Named | — | 확인이 필요하지 않은 도구 함수의 이름들 |
| `-MaxToolcallBackLength` | Int32 | — | — | Named | — | 도구 콜백 응답의 최대 길이 |
| `-AudioTemperature` | Object | — | — | Named | — | 오디오 생성을 위한 온도 |
| `-TemperatureResponse` | Object | — | — | Named | — | Temperature for response generation |
| `-Language` | Object | — | — | Named | — | 모델 또는 출력에 사용하는 언어 |
| `-CpuThreads` | Object | — | — | Named | — | 사용할 CPU 스레드 수 |
| `-SuppressRegex` | Object | — | — | Named | — | 출력 억제를 위한 정규 표현식 |
| `-AudioContextSize` | Object | — | — | Named | — | 오디오 컨텍스트 크기 처리 |
| `-SilenceThreshold` | Object | — | — | Named | — | 오디오 처리를 위한 무음 임계값 |
| `-LengthPenalty` | Object | — | — | Named | — | 시퀀스 생성을 위한 길이 페널티 |
| `-EntropyThreshold` | Object | — | — | Named | — | 출력 필터링을 위한 엔트로피 임계값 |
| `-LogProbThreshold` | Object | — | — | Named | — | 출력 필터링을 위한 로그 확률 임계값 |
| `-NoSpeechThreshold` | Object | — | — | Named | — | 오디오 감지를 위한 음성 임계값 없음 |
| `-DontSpeak` | Object | — | — | Named | — | 음성 출력 비활성화 |
| `-DontSpeakThoughts` | Object | — | — | Named | — | Disable speech output for thoughts |
| `-NoVOX` | Object | — | — | Named | — | VOX(음성 활성화) 비활성화 |
| `-UseDesktopAudioCapture` | Object | — | — | Named | — | 데스크톱 오디오 캡처 사용 |
| `-NoContext` | Object | — | — | Named | — | 컨텍스트 사용 비활성화 |
| `-WithBeamSearchSamplingStrategy` | Object | — | — | Named | — | 빔 검색 샘플링 전략 사용 |
| `-OnlyResponses` | Object | — | — | Named | — | 네가 도움이 되는 어시스턴트로 설계되어 JSON을 출력합니다. |

## Examples

### New-LLMTextChat -Model "qwen2.5-14b-instruct" -Temperature 0.7 `     -Instructions "You are a helpful AI assistant"

```powershell
New-LLMTextChat -Model "qwen2.5-14b-instruct" -Temperature 0.7 `
    -Instructions "You are a helpful AI assistant"
```

### llmchat "Tell me a joke" -Speak -IncludeThoughts

```powershell
llmchat "Tell me a joke" -Speak -IncludeThoughts
```

## Related Links

- [New-LLMTextChat on GitHub](https://github.com/genXdev/genXdev)

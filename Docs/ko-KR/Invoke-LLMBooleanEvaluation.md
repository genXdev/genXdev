# Invoke-LLMBooleanEvaluation

> **Module:** GenXdev.AI | **Type:** Function | **Aliases:** `equalstrue

## Synopsis

> *(No synopsis provided)*

## Syntax

```powershell
Invoke-LLMBooleanEvaluation [[-Text] <String>] [[-Instructions] <String>] [[-Attachments] <String[]>] [-AllowDefaultTools] [-ApiEndpoint <String>] [-ApiKey <String>] [-AudioContextSize <Int32>] [-AudioTemperature <Double>] [-ClearSession] [-ContinueLast] [-CpuThreads <Int32>] [-DontAddThoughtsToHistory] [-DontSpeak] [-DontSpeakThoughts] [-EntropyThreshold <Double>] [-ExposedCmdLets <GenXdev.Helpers.ExposedCmdletDefinition[]>] [-Functions <Collections.Hashtable[]>] [-ImageDetail <String>] [-IncludeThoughts] [-Language <String>] [-LengthPenalty <Double>] [-LLMQueryType <String>] [-LogProbThreshold <Double>] [-MarkupBlocksTypeFilter <String[]>] [-MaxToolcallBackLength <Int32>] [-Model <String>] [-NoConfirmationToolFunctionNames <String[]>] [-NoContext] [-NoSessionCaching] [-NoSpeechThreshold <Double>] [-NoVOX] [-OnlyResponses] [-OutputMarkdownBlocksOnly] [-PreferencesDatabasePath <String>] [-SessionOnly] [-SetClipboard] [-SilenceThreshold <Double>] [-SkipSession] [-Speak] [-SpeakThoughts] [-SuppressRegex <String>] [-Temperature <Double>] [-TemperatureResponse <Double>] [-UseDesktopAudioCapture] [-WithBeamSearchSamplingStrategy] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-Text` | String | — | ✅ (ByValue) | 0 | — | 평가할 문장 |
| `-Instructions` | String | — | — | 1 | `''` | AI 모델이 진술을 평가하는 방법에 대한 지침 |
| `-Attachments` | String[] | — | — | 2 | `@()` | 첨부할 파일 경로 배열 |
| `-Temperature` | Double | — | — | Named | `-1` | 응답 무작위성을 위한 온도 (0.0-1.0) |
| `-ImageDetail` | String | — | — | Named | `'low'` | 이미지 세부 수준 |
| `-Functions` | Collections.Hashtable[] | — | — | Named | `@()` | 함수 정의 배열 |
| `-ExposedCmdLets` | GenXdev.Helpers.ExposedCmdletDefinition[] | — | — | Named | `@()` | 사용할 도구로 PowerShell 명령 정의 배열 |
| `-NoConfirmationToolFunctionNames` | String[] | — | — | Named | `@()` | 확인이 필요 없는 명령 이름 배열 |
| `-LLMQueryType` | String | — | — | Named | `'Knowledge'` | LLM 쿼리의 유형 |
| `-Model` | String | — | — | Named | — | AI 작업에 사용할 모델 식별자 또는 패턴 |
| `-ApiEndpoint` | String | — | — | Named | — | AI 작업을 위한 API 엔드포인트 URL |
| `-ApiKey` | String | — | — | Named | — | 인증된 AI 작업을 위한 API 키 |
| `-PreferencesDatabasePath` | String | — | — | Named | — | 환경 설정 데이터 파일의 데이터베이스 경로 |
| `-SetClipboard` | SwitchParameter | — | — | Named | — | 결과를 클립보드에 복사 |
| `-IncludeThoughts` | SwitchParameter | — | — | Named | — | {
  "thoughts": "The user wants the model's thoughts included in the output. Since the assistant is designed to output JSON only, I will generate a response that includes a 'thoughts' field along with the actual response. However, the schema only allows a 'response' string. To comply, I will encode the thoughts within the response string itself.",
  "response": "I am an AI assistant. My thoughts are: I must output JSON as instructed."
} |
| `-DontAddThoughtsToHistory` | SwitchParameter | — | — | Named | — | 대화 기록에 모델의 생각을 추가하지 마세요 |
| `-ContinueLast` | SwitchParameter | — | — | Named | — | 죄송합니다. 제가 이전 대화 내용을 확인할 수 없습니다. "마지막 대화에서 계속"하려면 이전 메시지를 다시 보내주시기 바랍니다. |
| `-Speak` | SwitchParameter | — | — | Named | — | AI 응답에 대한 텍스트 음성 변환 기능을 활성화합니다 |
| `-SpeakThoughts` | SwitchParameter | — | — | Named | — | AI 사고 응답에 대한 텍스트 음성 변환 활성화 |
| `-NoSessionCaching` | SwitchParameter | — | — | Named | — | 세션 캐시에 세션을 저장하지 마세요 |
| `-AllowDefaultTools` | SwitchParameter | — | — | Named | — | AI가 기본 도구와 기능을 사용하도록 허용 |
| `-SessionOnly` | SwitchParameter | — | — | Named | — | 세션에 저장된 대체 설정을 AI 선호도에 사용 |
| `-ClearSession` | SwitchParameter | — | — | Named | — | AI 선호도를 위해 세션에 저장된 대체 설정을 초기화합니다 |
| `-SkipSession` | SwitchParameter | — | — | Named | — | Store settings only in persistent preferences without affecting session |
| `-OutputMarkdownBlocksOnly` | SwitchParameter | — | — | Named | — | {
  "type": "json_schema",
  "json_schema": {
    "name": "text_transformation_response",
    "strict": true,
    "schema": {
      "required": [
        "response"
      ],
      "properties": {
        "response": {
          "type": "string",
          "description": "The transformed text output"
        }
      },
      "type": "object"
    }
  }
} |
| `-MarkupBlocksTypeFilter` | String[] | — | — | Named | — | 특정 유형의 마크업 블록 필터링 |
| `-AudioTemperature` | Double | — | — | Named | — | 오디오 응답 무작위성 조절 온도 |
| `-TemperatureResponse` | Double | — | — | Named | — | Temperature for response generation |
| `-Language` | String | — | — | Named | — | ko-KR |
| `-CpuThreads` | Int32 | — | — | Named | — | 처리에 사용할 CPU 스레드 수 |
| `-SuppressRegex` | String | — | — | Named | — | 출력에서 제외할 정규 표현식 |
| `-AudioContextSize` | Int32 | — | — | Named | — | 오디오 컨텍스트 크기 처리 |
| `-SilenceThreshold` | Double | — | — | Named | — | 오디오 감지를 위한 무음 임계값 |
| `-LengthPenalty` | Double | — | — | Named | — | 시퀀스 생성을 위한 길이 페널티 |
| `-EntropyThreshold` | Double | — | — | Named | — | 출력 필터링을 위한 엔트로피 임계값 |
| `-LogProbThreshold` | Double | — | — | Named | — | 출력 필터링을 위한 로그 확률 임계값 |
| `-NoSpeechThreshold` | Double | — | — | Named | — | 오디오 감지를 위한 음성 임계값 없음 |
| `-DontSpeak` | SwitchParameter | — | — | Named | — | 음성 출력 비활성화 |
| `-DontSpeakThoughts` | SwitchParameter | — | — | Named | — | Disable speech output for thoughts |
| `-NoVOX` | SwitchParameter | — | — | Named | — | VOX(음성 활성화) 비활성화 |
| `-UseDesktopAudioCapture` | SwitchParameter | — | — | Named | — | 데스크톱 오디오 캡처를 입력으로 사용 |
| `-NoContext` | SwitchParameter | — | — | Named | — | Do not use context in the query |
| `-WithBeamSearchSamplingStrategy` | SwitchParameter | — | — | Named | — | 빔 검색 샘플링 전략 사용 |
| `-OnlyResponses` | SwitchParameter | — | — | Named | — | 죄송합니다. 아직 이 질문에 대한 답변을 배우지 못했습니다. 다른 질문이 있으시면 기꺼이 도와드리겠습니다. |
| `-MaxToolcallBackLength` | Int32 | — | — | Named | — | The `-MaxToolcallBackLength` parameter. |

## Outputs

- `Boolean`

## Related Links

- [Invoke-LLMBooleanEvaluation on GitHub](https://github.com/genXdev/genXdev)

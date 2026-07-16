# Get-TextTranslation

> **Module:** GenXdev.AI | **Type:** Function | **Aliases:** `translate

## Synopsis

> *(No synopsis provided)*

## Syntax

```powershell
Get-TextTranslation [[-Text] <String>] [[-Instructions] <String>] [[-Attachments] <String[]>] [-AllowDefaultTools] [-ApiEndpoint <String>] [-ApiKey <String>] [-AudioContextSize <Int32>] [-AudioTemperature <Double>] [-ClearCache] [-ClearSession] [-ContinueLast] [-CpuThreads <Int32>] [-DontAddThoughtsToHistory] [-DontSpeak] [-DontSpeakThoughts] [-EntropyThreshold <Double>] [-ExposedCmdLets <GenXdev.Helpers.ExposedCmdletDefinition[]>] [-Functions <Collections.Hashtable[]>] [-ImageDetail <String>] [-Language <String>] [-LengthPenalty <Double>] [-LLMType <String>] [-LogProbThreshold <Double>] [-MarkupBlocksTypeFilter <String[]>] [-Model <String>] [-NoCache] [-NoConfirmationToolFunctionNames <String[]>] [-NoContext] [-NoSessionCaching] [-NoSpeechThreshold <Double>] [-NoVOX] [-OnlyResponses] [-OutputMarkdownBlocksOnly] [-PreferencesDatabasePath <String>] [-SessionOnly] [-SetClipboard] [-SilenceThreshold <Double>] [-SkipSession] [-Speak] [-SpeakThoughts] [-SuppressRegex <String>] [-Temperature <Double>] [-TemperatureResponse <Double>] [-UseDesktopAudioCapture] [-WithBeamSearchSamplingStrategy] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-Text` | String | — | ✅ (ByValue) | 0 | — | 저는 JSON을 출력하도록 설계된 유용한 비서입니다. |
| `-Instructions` | String | — | — | 1 | — | 추가 지침: AI 모델의 번역 스타일과 맥락을 안내합니다 |
| `-Attachments` | String[] | — | — | 2 | `@()` | 첨부할 파일 경로 배열 |
| `-Temperature` | Double | — | — | Named | `-1` | 응답 무작위성을 위한 온도 (0.0-1.0) |
| `-ImageDetail` | String | — | — | Named | `'low'` | 이미지 세부 수준 |
| `-Functions` | Collections.Hashtable[] | — | — | Named | `@()` | 함수 정의 배열 |
| `-ExposedCmdLets` | GenXdev.Helpers.ExposedCmdletDefinition[] | — | — | Named | `@()` | 사용할 도구로 PowerShell 명령 정의 배열 |
| `-NoConfirmationToolFunctionNames` | String[] | — | — | Named | `@()` | 확인이 필요 없는 명령 이름 배열 |
| `-LLMType` | String | — | — | Named | `'TextTranslation'` | LLM 쿼리의 유형 |
| `-Model` | String | — | — | Named | — | AI 작업에 사용할 모델 식별자 또는 패턴 |
| `-ApiEndpoint` | String | — | — | Named | — | AI 작업을 위한 API 엔드포인트 URL |
| `-ApiKey` | String | — | — | Named | — | 인증된 AI 작업을 위한 API 키 |
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
| `-AudioTemperature` | Double | — | — | Named | — | 오디오 응답 무작위성 온도 (LLM에 전달) |
| `-TemperatureResponse` | Double | — | — | Named | — | 응답 생성 온도 (LLM에 전달) |
| `-Language` | String | — | — | Named | — | ko-KR |
| `-CpuThreads` | Int32 | — | — | Named | — | 사용할 CPU 스레드 수 (LLM에 전달됨) |
| `-SuppressRegex` | String | — | — | Named | — | 출력을 억제하는 정규 표현식 (LLM에 전달됨) |
| `-AudioContextSize` | Int32 | — | — | Named | — | 오디오 컨텍스트 크기 (LLM에 전달됨) |
| `-SilenceThreshold` | Double | — | — | Named | — | 오디오 감지를 위한 무음 임계값(LLM에 전달됨) |
| `-LengthPenalty` | Double | — | — | Named | — | 시퀀스 생성에 대한 길이 페널티 (LLM에 전달됨) |
| `-EntropyThreshold` | Double | — | — | Named | — | 출력 필터링을 위한 엔트로피 임계값 (LLM에 전달됨) |
| `-LogProbThreshold` | Double | — | — | Named | — | 출력 필터링을 위한 로그 확률 임계값 (LLM에 전달됨) |
| `-NoSpeechThreshold` | Double | — | — | Named | — | 오디오 감지를 위한 음성 임계값 없음 (LLM에 전달됨) |
| `-DontSpeak` | SwitchParameter | — | — | Named | — | 음성 출력 비활성화 (LLM으로 전달됨) |
| `-DontSpeakThoughts` | SwitchParameter | — | — | Named | — | 생각(LLM으로 전달됨)에 대한 음성 출력 비활성화 |
| `-NoVOX` | SwitchParameter | — | — | Named | — | VOX(음성 활성화) 비활성화(LLM에 전달됨) |
| `-UseDesktopAudioCapture` | SwitchParameter | — | — | Named | — | 데스크톱 오디오 캡처 사용 (LLM에 전달됨) |
| `-NoContext` | SwitchParameter | — | — | Named | — | Disable context usage (passed to LLM) |
| `-WithBeamSearchSamplingStrategy` | SwitchParameter | — | — | Named | — | 빔 검색 샘플링 전략 활성화 (LLM에 전달됨) |
| `-OnlyResponses` | SwitchParameter | — | — | Named | — | The image shows a blue recycling bin with the universal recycling symbol on it. The bin appears to be full of various items including plastic bottles and aluminum cans. There is also a cardboard box placed beside the bin, and in the background, a green deciduous tree can be seen. |
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
          "description": "변환된 텍스트 출력"
        }
      },
      "type": "object"
    }
  }
} |
| `-MarkupBlocksTypeFilter` | String[] | — | — | Named | — | 마크업 블록 유형 필터 (LLM에 전달) |
| `-NoCache` | SwitchParameter | — | — | Named | — | 번역 캐시를 건너뛰고 항상 LLM API를 호출하세요 |
| `-ClearCache` | SwitchParameter | — | — | Named | — | Clear the entire translation cache for all languages |

## Outputs

- `String`

## Related Links

- [Get-TextTranslation on GitHub](https://github.com/genXdev/genXdev)

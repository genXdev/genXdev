# Get-ScriptExecutionErrorFixPrompt

> **Module:** GenXdev.AI.Queries | **Type:** Function | **Aliases:** `getfixprompt

## Synopsis

> *(No synopsis provided)*

## Syntax

```powershell
Get-ScriptExecutionErrorFixPrompt -Script <ScriptBlock> [-ApiEndpoint <String>] [-ApiKey <String>] [-Attachments <Object>] [-AudioContextSize <Object>] [-AudioTemperature <Object>] [-ChatOnce <Object>] [-ClearSession] [-ContinueLast] [-CpuThreads <Object>] [-DontAddThoughtsToHistory] [-DontSpeak <Object>] [-DontSpeakThoughts <Object>] [-EntropyThreshold <Object>] [-ExposedCmdLets <GenXdev.Helpers.ExposedCmdletDefinition[]>] [-Functions <Collections.Hashtable[]>] [-ImageDetail <Object>] [-IncludeThoughts <Object>] [-Language <Object>] [-LengthPenalty <Object>] [-LLMQueryType <String>] [-LogProbThreshold <Object>] [-MarkupBlocksTypeFilter <Object>] [-MaxToolcallBackLength <Object>] [-Model <String>] [-NoConfirmationToolFunctionNames <String[]>] [-NoContext <Object>] [-NoSessionCaching] [-NoSpeechThreshold <Object>] [-NoVOX <Object>] [-OnlyResponses <Object>] [-OutputMarkdownBlocksOnly <Object>] [-PreferencesDatabasePath <String>] [-SessionOnly] [-SilenceThreshold <Object>] [-SkipSession] [-Speak] [-SpeakThoughts] [-SuppressRegex <Object>] [-Temperature <Double>] [-TemperatureResponse <Object>] [-TimeoutSeconds <Int32>] [-TTLSeconds <Object>] [-UseDesktopAudioCapture <Object>] [-WithBeamSearchSamplingStrategy <Object>] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-Script` | ScriptBlock | ✅ | ✅ (ByValue) | 0 | — | 실행 및 오류 분석을 위한 스크립트 |
| `-Temperature` | Double | — | — | Named | `-1` | 응답 무작위성을 위한 온도 (0.0-1.0) |
| `-LLMQueryType` | String | — | — | Named | `'Coding'` | LLM 쿼리의 유형 |
| `-Model` | String | — | — | Named | — | AI 작업에 사용할 모델 식별자 또는 패턴 |
| `-ApiEndpoint` | String | — | — | Named | — | AI 작업을 위한 API 엔드포인트 URL |
| `-ApiKey` | String | — | — | Named | — | 인증된 AI 작업을 위한 API 키 |
| `-TimeoutSeconds` | Int32 | — | — | Named | — | AI 작업에 대한 타임아웃 시간(초) |
| `-PreferencesDatabasePath` | String | — | — | Named | — | 환경 설정 데이터 파일의 데이터베이스 경로 |
| `-Functions` | Collections.Hashtable[] | — | — | Named | `@()` | 함수 정의 배열 |
| `-ExposedCmdLets` | GenXdev.Helpers.ExposedCmdletDefinition[] | — | — | Named | `$null` | 사용할 도구로 PowerShell 명령 정의 배열 |
| `-NoConfirmationToolFunctionNames` | String[] | — | — | Named | `@()` | 확인이 필요 없는 명령 이름 배열 |
| `-DontAddThoughtsToHistory` | SwitchParameter | — | — | Named | — | {
  "thoughts": "The user wants the model's thoughts included in the output. Since the assistant is designed to output JSON only, I will generate a response that includes a 'thoughts' field along with the actual response. However, the schema only allows a 'response' string. To comply, I will encode the thoughts within the response string itself.",
  "response": "I am an AI assistant. My thoughts are: I must output JSON as instructed."
} |
| `-ContinueLast` | SwitchParameter | — | — | Named | — | 죄송합니다. 제가 이전 대화 내용을 확인할 수 없습니다. "마지막 대화에서 계속"하려면 이전 메시지를 다시 보내주시기 바랍니다. |
| `-Speak` | SwitchParameter | — | — | Named | — | AI 응답에 대한 텍스트 음성 변환 기능을 활성화합니다 |
| `-SpeakThoughts` | SwitchParameter | — | — | Named | — | AI 사고 응답에 대한 텍스트 음성 변환 활성화 |
| `-NoSessionCaching` | SwitchParameter | — | — | Named | — | 세션 캐시에 세션을 저장하지 마세요 |
| `-SessionOnly` | SwitchParameter | — | — | Named | — | 세션에 저장된 대체 설정을 AI 선호도에 사용 |
| `-ClearSession` | SwitchParameter | — | — | Named | — | AI 선호도를 위해 세션에 저장된 대체 설정을 초기화합니다 |
| `-SkipSession` | SwitchParameter | — | — | Named | — | Store settings only in persistent preferences without affecting session |
| `-Attachments` | Object | — | — | Named | — | LLM 쿼리에 포함할 첨부 파일입니다. |
| `-ImageDetail` | Object | — | — | Named | — | LLM 쿼리를 위한 이미지 세부 수준 |
| `-TTLSeconds` | Object | — | — | Named | — | LLM 쿼리의 TTL(초 단위) |
| `-IncludeThoughts` | Object | — | — | Named | — | {
  "response": "LLM은 이 변환 작업을 수행하기 위해 입력 텍스트를 분석하고, 기술 요소는 유지하면서 자연어 부분만 한국어로 번역해야 합니다. 출력은 JSON 형식으로, 변환된 텍스트만 포함해야 합니다."
} |
| `-OutputMarkdownBlocksOnly` | Object | — | — | Named | — | # Extract Markup Blocks from LLM Response

Below are the markup blocks found in the LLM response:

```json
{
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
}
```

```
Example response format: {"response":"your actual response here"}
``` |
| `-MarkupBlocksTypeFilter` | Object | — | — | Named | — | {"type": "json_schema", "json_schema": {"name": "text_transformation_response", "strict": true, "schema": {"required": ["response"], "properties": {"response": {"type": "string", "description": "The transformed text output"}}, "type": "object"}}} |
| `-ChatOnce` | Object | — | — | Named | — | {
  "response": "LLM 쿼리를 한 번만 실행합니다."
} |
| `-MaxToolcallBackLength` | Object | — | — | Named | — | LLM 쿼리에 대한 최대 도구 호출 백 길이입니다. |
| `-AudioTemperature` | Object | — | — | Named | — | 오디오 생성을 위한 온도. |
| `-TemperatureResponse` | Object | — | — | Named | — | 응답 생성을 위한 온도 |
| `-Language` | Object | — | — | Named | — | LLM 쿼리를 위한 언어입니다. |
| `-CpuThreads` | Object | — | — | Named | — | 사용할 CPU 스레드 수입니다. |
| `-SuppressRegex` | Object | — | — | Named | — | 출력을 억제하는 정규 표현식. |
| `-AudioContextSize` | Object | — | — | Named | — | LLM 쿼리를 위한 오디오 컨텍스트 크기. |
| `-SilenceThreshold` | Object | — | — | Named | — | 오디오 처리를 위한 무음 임계값 |
| `-LengthPenalty` | Object | — | — | Named | — | LLM 출력에 대한 길이 패널티. |
| `-EntropyThreshold` | Object | — | — | Named | — | LLM 출력을 위한 엔트로피 임계값. |
| `-LogProbThreshold` | Object | — | — | Named | — | LLM 출력에 대한 로그 확률 임계값입니다. |
| `-NoSpeechThreshold` | Object | — | — | Named | — | 오디오 처리를 위한 음성 임계값이 없습니다. |
| `-DontSpeak` | Object | — | — | Named | — | 오디오를 출력하지 마십시오. |
| `-DontSpeakThoughts` | Object | — | — | Named | — | {
  "type": "json_schema",
  "json_schema": {
    "name": "text_transformation_response",
    "strict": true,
    "schema": {
      "required": ["response"],
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
| `-NoVOX` | Object | — | — | Named | — | 오디오 출력에 VOX를 비활성화합니다. |
| `-UseDesktopAudioCapture` | Object | — | — | Named | — | 데스크톱 오디오 캡처를 사용하세요. |
| `-NoContext` | Object | — | — | Named | — | LLM 쿼리에 컨텍스트를 사용하지 마십시오. |
| `-WithBeamSearchSamplingStrategy` | Object | — | — | Named | — | Use beam search sampling strategy. |
| `-OnlyResponses` | Object | — | — | Named | — | I understand you want me to return only responses from LLM. However, based on the detailed system instructions, I need to translate the given text. Since there is no text provided to translate, I'll wait for input. |

## Outputs

- `Object[]`

## Related Links

- [Get-ScriptExecutionErrorFixPrompt on GitHub](https://github.com/genXdev/genXdev)

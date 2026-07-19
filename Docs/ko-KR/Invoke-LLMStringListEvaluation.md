# Invoke-LLMStringListEvaluation

> **Module:** GenXdev.AI | **Type:** Function | **Aliases:** `getlist, `getstring

## Synopsis

> AI 분석을 사용하여 입력 텍스트에서 관련 문자열을 추출하거나 생성합니다.

## Description

이 함수는 AI 모델을 사용하여 입력 텍스트를 분석하고 관련 문자열 목록을 추출하거나 생성합니다. 텍스트를 처리하여 핵심 사항을 식별하고, 목록에서 항목을 추출하거나 관련 개념을 생성할 수 있습니다. 입력은 매개변수를 통해 직접, 파이프라인에서, 또는 시스템 클립보드에서 제공될 수 있습니다. 함수는 문자열 배열을 반환하고 선택적으로 결과를 클립보드에 복사합니다.

## Syntax

```powershell
Invoke-LLMStringListEvaluation [[-Text] <String>] [[-Instructions] <String>] [[-Attachments] <String[]>] [-AllowDefaultTools] [-ApiEndpoint <String>] [-ApiKey <String>] [-AudioContextSize <Int32>] [-AudioTemperature <Double>] [-ClearSession] [-ContinueLast] [-CpuThreads <Int32>] [-DontAddThoughtsToHistory] [-DontSpeak] [-DontSpeakThoughts] [-EntropyThreshold <Double>] [-ExposedCmdLets <GenXdev.Helpers.ExposedCmdletDefinition[]>] [-Functions <Collections.Hashtable[]>] [-ImageDetail <String>] [-IncludeThoughts] [-Language <String>] [-LengthPenalty <Double>] [-LLMQueryType <String>] [-LogProbThreshold <Double>] [-MarkupBlocksTypeFilter <String[]>] [-MaxToolcallBackLength <Int32>] [-Model <String>] [-NoConfirmationToolFunctionNames <String[]>] [-NoContext] [-NoSessionCaching] [-NoSpeechThreshold <Double>] [-NoVOX] [-OnlyResponses] [-OutputMarkdownBlocksOnly] [-PreferencesDatabasePath <String>] [-SessionOnly] [-SetClipboard] [-SilenceThreshold <Double>] [-SkipSession] [-Speak] [-SpeakThoughts] [-SuppressRegex <String>] [-Temperature <Double>] [-TemperatureResponse <Double>] [-TimeoutSeconds <Int32>] [-UseDesktopAudioCapture] [-WithBeamSearchSamplingStrategy] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-Text` | String | — | ✅ (ByValue) | 0 | — | 분석할 문자열과 추출할 문자열 |
| `-Instructions` | String | — | — | 1 | `''` | {
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
| `-TimeoutSeconds` | Int32 | — | — | Named | — | AI 작업에 대한 타임아웃 시간(초) |
| `-PreferencesDatabasePath` | String | — | — | Named | — | 환경 설정 데이터 파일의 데이터베이스 경로 |
| `-SetClipboard` | SwitchParameter | — | — | Named | — | 결과를 클립보드에 복사 |
| `-IncludeThoughts` | SwitchParameter | — | — | Named | — | {
  "thoughts": "The user wants the model's thoughts included in the output. Since the assistant is designed to output JSON only, I will generate a response that includes a 'thoughts' field along with the actual response. However, the schema only allows a 'response' string. To comply, I will encode the thoughts within the response string itself.",
  "response": "I am an AI assistant. My thoughts are: I must output JSON as instructed."
} |
| `-DontAddThoughtsToHistory` | SwitchParameter | — | — | Named | — | 모델의 생각을 대화 기록에 추가하지 마세요 |
| `-ContinueLast` | SwitchParameter | — | — | Named | — | 죄송합니다. 제가 이전 대화 내용을 확인할 수 없습니다. "마지막 대화에서 계속"하려면 이전 메시지를 다시 보내주시기 바랍니다. |
| `-Speak` | SwitchParameter | — | — | Named | — | AI 응답에 대한 텍스트 음성 변환 기능을 활성화합니다 |
| `-SpeakThoughts` | SwitchParameter | — | — | Named | — | AI 사고 응답에 대한 텍스트 음성 변환 활성화 |
| `-NoSessionCaching` | SwitchParameter | — | — | Named | — | 세션 캐시에 세션을 저장하지 마세요 |
| `-AllowDefaultTools` | SwitchParameter | — | — | Named | — | Enable default tools for the AI model |
| `-SessionOnly` | SwitchParameter | — | — | Named | — | 세션에 저장된 대체 설정을 AI 선호도에 사용 |
| `-ClearSession` | SwitchParameter | — | — | Named | — | AI 선호도를 위해 세션에 저장된 대체 설정을 초기화합니다 |
| `-SkipSession` | SwitchParameter | — | — | Named | — | Store settings only in persistent preferences without affecting session |
| `-OutputMarkdownBlocksOnly` | SwitchParameter | — | — | Named | — | <사용자>
안녕하세요, 오늘 날씨가 어떤가요?
</사용자> |
| `-MarkupBlocksTypeFilter` | String[] | — | — | Named | — | markup blocks of type: code, table, list, blockquote, heading |
| `-AudioTemperature` | Double | — | — | Named | — | 오디오 응답 무작위성 온도입니다. |
| `-TemperatureResponse` | Double | — | — | Named | — | 텍스트 응답의 무작위성을 위한 온도. |
| `-Language` | String | — | — | Named | — | 응답에 사용되는 언어 코드 또는 식별자입니다. |
| `-CpuThreads` | Int32 | — | — | Named | — | 사용할 CPU 스레드 수입니다. |
| `-SuppressRegex` | String | — | — | Named | — | 특정 출력을 억제하는 정규 표현식입니다. |
| `-AudioContextSize` | Int32 | — | — | Named | — | 처리를 위한 오디오 컨텍스트 크기입니다. |
| `-SilenceThreshold` | Double | — | — | Named | — | 오디오 감지를 위한 무음 임계값. |
| `-LengthPenalty` | Double | — | — | Named | — | 시퀀스 생성을 위한 길이 패널티. |
| `-EntropyThreshold` | Double | — | — | Named | — | 출력 필터링을 위한 엔트로피 임계값. |
| `-LogProbThreshold` | Double | — | — | Named | — | 출력 필터링을 위한 로그 확률 임계값. |
| `-NoSpeechThreshold` | Double | — | — | Named | — | 오디오 감지를 위한 음성 임계값이 없습니다. |
| `-DontSpeak` | SwitchParameter | — | — | Named | — | 음성 출력을 비활성화합니다. |
| `-DontSpeakThoughts` | SwitchParameter | — | — | Named | — | Disable speech output for thoughts. |
| `-NoVOX` | SwitchParameter | — | — | Named | — | VOX(음성 활성화)를 비활성화합니다. |
| `-UseDesktopAudioCapture` | SwitchParameter | — | — | Named | — | 데스크톱 오디오 캡처를 사용하세요. |
| `-NoContext` | SwitchParameter | — | — | Named | — | 컨텍스트 사용을 비활성화합니다. |
| `-WithBeamSearchSamplingStrategy` | SwitchParameter | — | — | Named | — | Use beam search sampling strategy. |
| `-OnlyResponses` | SwitchParameter | — | — | Named | — | Only responses. |
| `-MaxToolcallBackLength` | Int32 | — | — | Named | — | 도구 호출에 대한 최대 콜백 길이입니다. |

## Examples

### PS> Invoke-LLMStringListEvaluation -Text ("PowerShell features: object-based " +     "pipeline, integrated scripting environment, backwards compatibility, " +     "and enterprise management.") Returns: @("Object-based pipeline", "Integrated scripting environment",          "Backwards compatibility", "Enterprise management")

```powershell
PS> Invoke-LLMStringListEvaluation -Text ("PowerShell features: object-based " +
    "pipeline, integrated scripting environment, backwards compatibility, " +
    "and enterprise management.")
Returns: @("Object-based pipeline", "Integrated scripting environment",
         "Backwards compatibility", "Enterprise management")
```

### PS> "Make a shopping list with: keyboard, mouse, monitor, headset" |     Invoke-LLMStringListEvaluation Returns: @("Keyboard", "Mouse", "Monitor", "Headset")

```powershell
PS> "Make a shopping list with: keyboard, mouse, monitor, headset" |
    Invoke-LLMStringListEvaluation
Returns: @("Keyboard", "Mouse", "Monitor", "Headset")
```

### PS> getlist "List common PowerShell commands for file operations" -SetClipboard Returns and copies to clipboard: @("Get-ChildItem", "Copy-Item", "Move-Item",                                   "Remove-Item", "Set-Content", "Get-Content") ##############################################################################

```powershell
PS> getlist "List common PowerShell commands for file operations" -SetClipboard
Returns and copies to clipboard: @("Get-ChildItem", "Copy-Item", "Move-Item",
                                  "Remove-Item", "Set-Content", "Get-Content")
##############################################################################
```

## Outputs

- `String[]`

## Related Links

- [Invoke-LLMStringListEvaluation on GitHub](https://github.com/genXdev/genXdev)

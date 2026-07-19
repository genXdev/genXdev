# Get-Fallacy

> **Module:** GenXdev.AI.Queries | **Type:** Function | **Aliases:** `dispicetext

## Synopsis

> AI 기반 탐지를 사용하여 텍스트를 분석하고 논리적 오류를 식별합니다.

## Description

이 함수는 위키백과의 오류 목록에서 훈련된 AI 모델을 사용하여 제공된 텍스트에서 논리적 오류를 탐지합니다. 발견된 각 오류에 대해 구체적인 인용문, 오류 이름, 설명, 해설 및 공식 분류를 포함한 상세 정보를 반환합니다. 이 함수는 일관된 출력을 보장하기 위해 구조화된 응답 형식을 사용합니다.

## Syntax

```powershell
Get-Fallacy -InputObject <Object> [[-Instructions] <String>] [[-Attachments] <String[]>] [-ApiEndpoint <String>] [-ApiKey <String>] [-AudioContextSize <Int32>] [-AudioTemperature <Double>] [-ClearSession] [-ContinueLast] [-CpuThreads <Int32>] [-DontSpeak] [-DontSpeakThoughts] [-EntropyThreshold <Double>] [-ExposedCmdLets <GenXdev.Helpers.ExposedCmdletDefinition[]>] [-Functions <Collections.Hashtable[]>] [-ImageDetail <String>] [-IncludeThoughts] [-LengthPenalty <Double>] [-LLMQueryType <String>] [-LogProbThreshold <Double>] [-MaxToolcallBackLength <Int32>] [-Model <String>] [-NoConfirmationToolFunctionNames <String[]>] [-NoContext] [-NoSessionCaching] [-NoSpeechThreshold <Double>] [-NoVOX] [-OnlyResponses] [-OpenInImdb] [-PreferencesDatabasePath <String>] [-SessionOnly] [-SilenceThreshold <Double>] [-SkipSession] [-Speak] [-SpeakThoughts] [-SuppressRegex <String>] [-Temperature <Double>] [-TemperatureResponse <Double>] [-TimeoutSeconds <Int32>] [-UseDesktopAudioCapture] [-WithBeamSearchSamplingStrategy] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-InputObject` | Object | ✅ | ✅ (ByValue) | 0 | — | 너는 JSON을 출력하도록 설계된 유용한 도우미입니다. |
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
| `-Functions` | Collections.Hashtable[] | — | — | Named | `@()` | 함수 정의 배열 |
| `-ImageDetail` | String | — | — | Named | `'low'` | 이미지 세부 수준 |
| `-NoConfirmationToolFunctionNames` | String[] | — | — | Named | `@()` | 확인이 필요 없는 명령 이름 배열 |
| `-ExposedCmdLets` | GenXdev.Helpers.ExposedCmdletDefinition[] | — | — | Named | `@()` | 사용할 도구로 PowerShell 명령 정의 배열 |
| `-Temperature` | Double | — | — | Named | `-1` | 응답 무작위성을 위한 온도 (0.0-1.0) |
| `-LLMQueryType` | String | — | — | Named | `'Knowledge'` | LLM 쿼리의 유형 |
| `-Model` | String | — | — | Named | — | AI 작업에 사용할 모델 식별자 또는 패턴 |
| `-ApiEndpoint` | String | — | — | Named | — | AI 작업을 위한 API 엔드포인트 URL |
| `-ApiKey` | String | — | — | Named | — | 인증된 AI 작업을 위한 API 키 |
| `-TimeoutSeconds` | Int32 | — | — | Named | — | AI 작업에 대한 타임아웃 시간(초) |
| `-PreferencesDatabasePath` | String | — | — | Named | — | 환경 설정 데이터 파일의 데이터베이스 경로 |
| `-ContinueLast` | SwitchParameter | — | — | Named | — | 죄송합니다. 제가 이전 대화 내용을 확인할 수 없습니다. "마지막 대화에서 계속"하려면 이전 메시지를 다시 보내주시기 바랍니다. |
| `-IncludeThoughts` | SwitchParameter | — | — | Named | — | {
  "thoughts": "The user wants the model's thoughts included in the output. Since the assistant is designed to output JSON only, I will generate a response that includes a 'thoughts' field along with the actual response. However, the schema only allows a 'response' string. To comply, I will encode the thoughts within the response string itself.",
  "response": "I am an AI assistant. My thoughts are: I must output JSON as instructed."
} |
| `-NoSessionCaching` | SwitchParameter | — | — | Named | — | 세션 캐시에 세션을 저장하지 마세요 |
| `-OpenInImdb` | SwitchParameter | — | — | Named | — | 각 결과에 대해 IMDB 검색을 엽니다. |
| `-AudioTemperature` | Double | — | — | Named | — | 오디오 생성을 위한 온도를 제어합니다. |
| `-TemperatureResponse` | Double | — | — | Named | — | 응답 생성을 위한 온도를 제어합니다. |
| `-CpuThreads` | Int32 | — | — | Named | — | 처리 시 사용할 CPU 스레드 수입니다. |
| `-SuppressRegex` | String | — | — | Named | — | 특정 출력을 억제하는 정규 표현식입니다. |
| `-AudioContextSize` | Int32 | — | — | Named | — | 처리를 위한 오디오 컨텍스트 크기입니다. |
| `-SilenceThreshold` | Double | — | — | Named | — | 오디오에서 무음을 감지하기 위한 임계값입니다. |
| `-LengthPenalty` | Double | — | — | Named | — | 긴 답변에 적용된 페널티. |
| `-EntropyThreshold` | Double | — | — | Named | — | 응답 생성 시 엔트로피 임계값입니다. |
| `-LogProbThreshold` | Double | — | — | Named | — | 출력에 대한 로그 확률 임계값입니다. |
| `-NoSpeechThreshold` | Double | — | — | Named | — | 오디오에서 음성이 감지되지 않는 임계값. |
| `-DontSpeak` | SwitchParameter | — | — | Named | — | 응답을 말하는 것을 방지합니다. |
| `-DontSpeakThoughts` | SwitchParameter | — | — | Named | — | 모델의 생각을 말하지 못하게 합니다. |
| `-NoVOX` | SwitchParameter | — | — | Named | — | VOX(음성 활성화)를 비활성화합니다. |
| `-UseDesktopAudioCapture` | SwitchParameter | — | — | Named | — | 입력에 데스크톱 오디오 캡처를 사용합니다. |
| `-NoContext` | SwitchParameter | — | — | Named | — | 요청에 대한 컨텍스트를 비활성화합니다. |
| `-WithBeamSearchSamplingStrategy` | SwitchParameter | — | — | Named | — | Use beam search sampling strategy. |
| `-OnlyResponses` | SwitchParameter | — | — | Named | — | 안녕하세요 |
| `-Speak` | SwitchParameter | — | — | Named | — | AI 응답에 대한 텍스트 음성 변환 기능을 활성화합니다 |
| `-SpeakThoughts` | SwitchParameter | — | — | Named | — | AI 사고 응답에 대한 텍스트 음성 변환 활성화 |
| `-SessionOnly` | SwitchParameter | — | — | Named | — | 세션에 저장된 대체 설정을 AI 선호도에 사용 |
| `-ClearSession` | SwitchParameter | — | — | Named | — | AI 선호도를 위해 세션에 저장된 대체 설정을 초기화합니다 |
| `-SkipSession` | SwitchParameter | — | — | Named | — | Store settings only in persistent preferences without affecting session |
| `-MaxToolcallBackLength` | Int32 | — | — | Named | — | 도구 호출에 대한 최대 콜백 길이입니다. |

## Examples

### Get-Fallacy -Text ("All politicians are corrupt because John was corrupt " + "and he was a politician")

```powershell
Get-Fallacy -Text ("All politicians are corrupt because John was corrupt " +
"and he was a politician")
```

제공된 텍스트에서 논리적 오류를 분석하고 감지된 오류에 대한 구조화된 정보를 반환합니다.

### "This product is the best because everyone uses it" | Get-Fallacy -Temperature 0.1

```powershell
"This product is the best because everyone uses it" | Get-Fallacy -Temperature 0.1
```

낮은 온도로 집중 분석을 위해 파이프라인 입력을 사용하여 텍스트를 분석합니다.

### dispicetext "Everyone knows this is true"

```powershell
dispicetext "Everyone knows this is true"
```

Uses the alias to analyze text for logical fallacies.

## Outputs

- `Object[]`

## Related Links

- [Get-Fallacy on GitHub](https://github.com/genXdev/genXdev)

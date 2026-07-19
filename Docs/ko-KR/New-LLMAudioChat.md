# New-LLMAudioChat

> **Module:** GenXdev.AI | **Type:** Function | **Aliases:** `llmaudiochat

## Synopsis

> LLM 모델과의 대화형 오디오 채팅 세션을 생성합니다.

## Description

언어 모델과의 음성 기반 대화를 시작하며, 오디오 입력 및 출력을 지원합니다. 이 함수는 오디오 녹음, 전사, 모델 쿼리, 텍스트 음성 변환 응답을 처리합니다. 여러 언어 모델과 창 관리, GPU 가속, 고급 오디오 처리 기능을 포함한 다양한 설정 옵션을 지원합니다.

## Syntax

```powershell
New-LLMAudioChat [[-Query] <String>] [[-Instructions] <String>] [[-Attachments] <String[]>] [-ApiEndpoint <String>] [-ApiKey <String>] [-AudioContextSize <Int32>] [-AudioDevice <String>] [-AudioTemperature <Double>] [-ChatMode <String>] [-ClearSession] [-ContinueLast] [-CpuThreads <Int32>] [-DontAddThoughtsToHistory] [-DontSpeak] [-DontSpeakThoughts] [-EntropyThreshold <Single>] [-ExposedCmdLets <GenXdev.Helpers.ExposedCmdletDefinition[]>] [-Functions <ScriptBlock[]>] [-ImageDetail <String>] [-IncludeThoughts] [-LanguageIn <String>] [-LengthPenalty <Single>] [-LLMQueryType <String>] [-LogProbThreshold <Single>] [-MarkupBlocksTypeFilter <String[]>] [-MaxToolcallBackLength <Int32>] [-Model <String>] [-ModelType <String>] [-NoConfirmationToolFunctionNames <String[]>] [-NoContext] [-NoSessionCaching] [-NoSpeechThreshold <Single>] [-NoVOX] [-OnlyResponses] [-OutputMarkdownBlocksOnly] [-PreferencesDatabasePath <String>] [-ResponseFormat <String>] [-SessionOnly] [-SilenceThreshold <Int32>] [-SkipSession] [-SuppressRegex <String>] [-Temperature <Double>] [-TemperatureResponse <Double>] [-TimeoutSeconds <Int32>] [-UseDesktopAndRecordingDevice] [-UseDesktopAudioCapture] [-WithBeamSearchSamplingStrategy] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-Query` | String | — | ✅ (ByValue) | 0 | `''` | 모델에 보낼 초기 쿼리 텍스트 |
| `-Instructions` | String | — | — | 1 | — | 모델을 위한 시스템 지침 |
| `-Attachments` | String[] | — | — | 2 | `@()` | 첨부할 파일 경로 배열 |
| `-ModelType` | String | — | — | Named | `'SmallEn'` | 사용할 Whisper 모델 유형, 기본값은 LargeV3Turbo |
| `-AudioTemperature` | Double | — | — | Named | `0.5` | 오디오 입력 인식 온도(0.0-1.0) |
| `-Temperature` | Double | — | — | Named | `-1` | 응답 무작위성을 위한 온도 (0.0-1.0) |
| `-TemperatureResponse` | Double | — | — | Named | `0.01` | 응답의 무작위성을 제어하는 온도 매개변수입니다. |
| `-LanguageIn` | String | — | — | Named | — | 감지할 언어를 설정합니다 |
| `-CpuThreads` | Int32 | — | — | Named | `0` | 사용할 CPU 스레드 수, 기본값은 0 (자동) |
| `-SuppressRegex` | String | — | — | Named | `$null` | 출력에서 토큰을 억제하는 정규식 |
| `-AudioContextSize` | Int32 | — | — | Named | — | 오디오 컨텍스트의 크기 |
| `-SilenceThreshold` | Int32 | — | — | Named | `30` | 무음 감지 임계값 (0..32767, 기본값 30) |
| `-LengthPenalty` | Single | — | — | Named | — | 길이 패널티 |
| `-EntropyThreshold` | Single | — | — | Named | — | 엔트로피 임계값 |
| `-LogProbThreshold` | Single | — | — | Named | — | 로그 확률 임계값 |
| `-NoSpeechThreshold` | Single | — | — | Named | — | 음성 임계값 없음 |
| `-LLMQueryType` | String | — | — | Named | `'ToolUse'` | LLM 쿼리의 유형 |
| `-Model` | String | — | — | Named | — | AI 작업에 사용할 모델 식별자 또는 패턴 |
| `-ImageDetail` | String | — | — | Named | `'low'` | 이미지 세부 수준 |
| `-ApiEndpoint` | String | — | — | Named | — | AI 작업을 위한 API 엔드포인트 URL |
| `-ApiKey` | String | — | — | Named | — | 인증된 AI 작업을 위한 API 키 |
| `-TimeoutSeconds` | Int32 | — | — | Named | — | AI 작업에 대한 타임아웃 시간(초) |
| `-ResponseFormat` | String | — | — | Named | `$null` | 요청된 출력 형식에 대한 JSON 스키마 |
| `-MarkupBlocksTypeFilter` | String[] | — | — | Named | `@(
            'json',
            'powershell',
            'C#',
            'python',
            'javascript',
            'typescript',
            'html',
            'css',
            'yaml',
            'xml',
            'bash'
        )` | 지정된 유형의 마크업 블록만 출력합니다 |
| `-PreferencesDatabasePath` | String | — | — | Named | — | 환경 설정 데이터 파일의 데이터베이스 경로 |
| `-ExposedCmdLets` | GenXdev.Helpers.ExposedCmdletDefinition[] | — | — | Named | `@()` | 사용할 도구로 PowerShell 명령 정의 배열 |
| `-Functions` | ScriptBlock[] | — | — | Named | — | LLM에 노출할 도구 함수의 ScriptBlock 배열(Invoke-LLMQuery에 전달) |
| `-NoConfirmationToolFunctionNames` | String[] | — | — | Named | — | 호출 확인이 필요 없는 도구 함수 이름 배열 (Invoke-LLMQuery에 직접 전달) |
| `-ChatMode` | String | — | — | Named | — | LLM 쿼리를 위한 채팅 모드 (Invoke-LLMQuery로 전달) |
| `-MaxToolcallBackLength` | Int32 | — | — | Named | — | 최대 도구 호출 백 길이(Invoke-LLMQuery로 전달) |
| `-IncludeThoughts` | SwitchParameter | — | — | Named | — | {
  "thoughts": "The user wants the model's thoughts included in the output. Since the assistant is designed to output JSON only, I will generate a response that includes a 'thoughts' field along with the actual response. However, the schema only allows a 'response' string. To comply, I will encode the thoughts within the response string itself.",
  "response": "I am an AI assistant. My thoughts are: I must output JSON as instructed."
} |
| `-DontAddThoughtsToHistory` | SwitchParameter | — | — | Named | — | {
  "thoughts": "The user wants the model's thoughts included in the output. Since the assistant is designed to output JSON only, I will generate a response that includes a 'thoughts' field along with the actual response. However, the schema only allows a 'response' string. To comply, I will encode the thoughts within the response string itself.",
  "response": "I am an AI assistant. My thoughts are: I must output JSON as instructed."
} |
| `-ContinueLast` | SwitchParameter | — | — | Named | — | 죄송합니다. 제가 이전 대화 내용을 확인할 수 없습니다. "마지막 대화에서 계속"하려면 이전 메시지를 다시 보내주시기 바랍니다. |
| `-DontSpeak` | SwitchParameter | — | — | Named | — | Disable text-to-speech for AI responses |
| `-DontSpeakThoughts` | SwitchParameter | — | — | Named | — | AI 사고 응답에 대한 텍스트 음성 변환 비활성화 |
| `-NoVOX` | SwitchParameter | — | — | Named | — | 자동 녹음 중지를 위해 무음 감지를 사용하지 마세요. |
| `-UseDesktopAudioCapture` | SwitchParameter | — | — | Named | — | 데스크톱 오디오 캡처를 사용할지 마이크 입력을 사용할지 선택 |
| `-AudioDevice` | String | — | — | Named | — | 오디오 장치 이름 또는 GUID (와일드카드 지원, 첫 번째 일치 항목 선택) |
| `-UseDesktopAndRecordingDevice` | SwitchParameter | — | — | Named | — | 데스크톱과 녹음 장치 모두 사용 |
| `-NoContext` | SwitchParameter | — | — | Named | — | 컨텍스트를 사용하지 않음 |
| `-WithBeamSearchSamplingStrategy` | SwitchParameter | — | — | Named | — | 빔 검색 샘플링 전략 사용 |
| `-OnlyResponses` | SwitchParameter | — | — | Named | — | 출력에서 인식된 텍스트를 숨길지 여부 |
| `-NoSessionCaching` | SwitchParameter | — | — | Named | — | 세션 캐시에 세션을 저장하지 마세요 |
| `-OutputMarkdownBlocksOnly` | SwitchParameter | — | — | Named | — | 마크업 블록 응답만 출력합니다 |
| `-SessionOnly` | SwitchParameter | — | — | Named | — | 세션에 저장된 대체 설정을 AI 선호도에 사용 |
| `-ClearSession` | SwitchParameter | — | — | Named | — | AI 선호도를 위해 세션에 저장된 대체 설정을 초기화합니다 |
| `-SkipSession` | SwitchParameter | — | — | Named | — | Store settings only in persistent preferences without affecting session |

## Examples

### New-LLMAudioChat -Query "Tell me about PowerShell" `     -Model "qwen2.5-14b-instruct" `     -Temperature 0.7

```powershell
New-LLMAudioChat -Query "Tell me about PowerShell" `
    -Model "qwen2.5-14b-instruct" `
    -Temperature 0.7
```

### llmaudiochat "What's the weather?" -DontSpeak

```powershell
llmaudiochat "What's the weather?" -DontSpeak
```

## Related Links

- [New-LLMAudioChat on GitHub](https://github.com/genXdev/genXdev)

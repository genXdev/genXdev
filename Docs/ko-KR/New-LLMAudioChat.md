# New-LLMAudioChat

> **Module:** GenXdev.AI | **Type:** Function | **Aliases:** `llmaudiochat`

## Synopsis

> LLM 모델과 대화형 오디오 채팅 세션을 만듭니다.

## Description

오디오 입력 및 출력을 지원하는 언어 모델과의 음성 기반 대화를 시작합니다. 이 함수는 오디오 녹음, 전사, 모델 쿼리 및 텍스트 음성 변환 응답을 처리합니다. 여러 언어 모델과 창 관리, GPU 가속, 고급 오디오 처리 기능 등 다양한 구성 옵션을 지원합니다.

## Syntax

```powershell
New-LLMAudioChat [[-Query] <String>] [[-Instructions] <String>] [[-Attachments] <String[]>] [-ApiEndpoint <String>] [-ApiKey <String>] [-AudioContextSize <Int32>] [-AudioDevice <String>] [-AudioTemperature <Double>] [-ChatMode <String>] [-ClearSession] [-ContinueLast] [-CpuThreads <Int32>] [-DontAddThoughtsToHistory] [-DontSpeak] [-DontSpeakThoughts] [-EntropyThreshold <Single>] [-ExposedCmdLets <GenXdev.Helpers.ExposedCmdletDefinition[]>] [-Functions <ScriptBlock[]>] [-ImageDetail <String>] [-IncludeThoughts] [-LanguageIn <String>] [-LengthPenalty <Single>] [-LLMQueryType <String>] [-LogProbThreshold <Single>] [-MarkupBlocksTypeFilter <String[]>] [-MaxToolcallBackLength <Int32>] [-Model <String>] [-ModelType <String>] [-NoConfirmationToolFunctionNames <String[]>] [-NoContext] [-NoSessionCaching] [-NoSpeechThreshold <Single>] [-NoSupportForJsonSchema <String>] [-NoVOX] [-OnlyResponses] [-OutputMarkdownBlocksOnly] [-PreferencesDatabasePath <String>] [-ResponseFormat <String>] [-SessionOnly] [-ShowToolChainInvocations] [-SilenceThreshold <Int32>] [-SkipSession] [-SuppressRegex <String>] [-Temperature <Double>] [-TemperatureResponse <Double>] [-TimeoutSeconds <Int32>] [-UseDesktopAndRecordingDevice] [-UseDesktopAudioCapture] [-WithBeamSearchSamplingStrategy] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-Query` | String | — | ✅ (ByValue) | 0 | `''` | 모델에 보낼 초기 쿼리 텍스트 |
| `-Instructions` | String | — | — | 1 | — | PowerShell cmdlet 도움말 텍스트를 번역합니다. 지침을 번역 대상으로 착각하지 마십시오.
이미지를 삽입하지 마십시오. 내용을 한국어(대한민국)로 최대한 직역하여 번역하십시오. |
| `-Attachments` | String[] | — | — | 2 | `@()` | 첨부할 파일 경로 배열 |
| `-ModelType` | String | — | — | Named | `'SmallEn'` | 사용할 Whisper 모델 유형입니다. 기본값은 LargeV3Turbo입니다. |
| `-AudioTemperature` | Double | — | — | Named | `0.5` | 오디오 입력 인식 온도 (0.0-1.0) |
| `-Temperature` | Double | — | — | Named | `-1` | 응답 임의성에 대한 온도 (0.0-1.0) |
| `-TemperatureResponse` | Double | — | — | Named | `0.01` | 응답의 무작위성을 제어하는 온도 매개변수입니다. |
| `-LanguageIn` | String | — | — | Named | — | 감지할 언어를 설정합니다 |
| `-CpuThreads` | Int32 | — | — | Named | `0` | 사용할 CPU 스레드 수, 기본값은 0 (자동) |
| `-SuppressRegex` | String | — | — | Named | `$null` | 출력에서 토큰을 억제하는 정규식 |
| `-AudioContextSize` | Int32 | — | — | Named | — | 오디오 컨텍스트의 크기 |
| `-SilenceThreshold` | Int32 | — | — | Named | `30` | 소리 감지 임계값 (0~32767, 기본값 30) |
| `-LengthPenalty` | Single | — | — | Named | — | 길이 패널티 |
| `-EntropyThreshold` | Single | — | — | Named | — | 엔트로피 임계값 |
| `-LogProbThreshold` | Single | — | — | Named | — | 로그 확률 임계값 |
| `-NoSpeechThreshold` | Single | — | — | Named | — | 음성 임계값 없음 |
| `-LLMQueryType` | String | — | — | Named | `'ToolUse'` | LLM 쿼리의 유형 |
| `-Model` | String | — | — | Named | — | AI 작업에 사용할 모델 식별자 또는 패턴 |
| `-ImageDetail` | String | — | — | Named | `'low'` | 이미지 세부 수준 |
| `-ApiEndpoint` | String | — | — | Named | — | AI 작업을 위한 API 엔드포인트 URL |
| `-ApiKey` | String | — | — | Named | — | 인증된 AI 작업을 위한 API 키 |
| `-NoSupportForJsonSchema` | String | — | — | Named | — | LLM이 JSON 스키마를 지원하지 않음을 나타냅니다. |
| `-ShowToolChainInvocations` | SwitchParameter | — | — | Named | — | 콘솔에서 도구 체인 호출을 표시합니다. |
| `-TimeoutSeconds` | Int32 | — | — | Named | — | AI 작업의 제한 시간(초) |
| `-ResponseFormat` | String | — | — | Named | `$null` | 다음 텍스트를 한국어로 번역하세요. 모든 사람이 읽을 수 있는 텍스트를 반드시 번역해야 합니다. 입력 내용을 변경하지 않고 그대로 반환하지 마십시오. 설명, JSON 래퍼, 시스템 프롬프트 없이 번역된 텍스트만 반환하십시오.

중요 번역 규칙:
1. 입력에 코드, 마크업, 또는 구조화된 데이터가 포함된 경우 프로그래밍 키워드, 태그, 데이터 형식 특정 요소 등 모든 구문, 구조 및 기술 요소를 보존하십시오.
2. 주석, 문자열 값, 문서, 자연어 콘텐츠 등 사람이 읽을 수 있는 텍스트 부분만 번역하십시오.
3. 정확한 형식, 들여쓰기, 줄 바꿈을 유지하십시오.
4. 식별자, 함수 이름, 변수 또는 기술 키워드를 절대 번역하지 마십시오.
추가 사용자 지침:
PowerShell cmdlet 도움말 텍스트로 구성된 번역할 내용을 지침과 혼동하지 마십시오!
이미지를 삽입하지 마십시오. 콘텐츠를 가능한 그대로 한국어로 번역하십시오. |
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
| `-PreferencesDatabasePath` | String | — | — | Named | — | 기본 설정 데이터 파일의 데이터베이스 경로 |
| `-ExposedCmdLets` | GenXdev.Helpers.ExposedCmdletDefinition[] | — | — | Named | `@()` | 도구로 사용할 PowerShell 명령 정의 배열 |
| `-Functions` | ScriptBlock[] | — | — | Named | — | LLM에 노출할 도구 함수의 ScriptBlock 배열(Invoke-LLMQuery로 전달) |
| `-NoConfirmationToolFunctionNames` | String[] | — | — | Named | — | 확인 불필요한 도구 함수 이름 배열(Invoke-LLMQuery로 직접 전달) |
| `-ChatMode` | String | — | — | Named | — | LLM 쿼리를 위한 채팅 모드 (Invoke-LLMQuery로 전달) |
| `-MaxToolcallBackLength` | Int32 | — | — | Named | — | 최대 도구 호출 백 길이(Invoke-LLMQuery로 전달) |
| `-IncludeThoughts` | SwitchParameter | — | — | Named | — | 다음 텍스트를 한국어(대한민국)로 번역하세요. 모든 사람이 읽을 수 있는 텍스트를 반드시 번역해야 합니다. 입력 내용을 변경하지 않고 그대로 반환하지 마십시오. 번역된 텍스트만 반환하고 설명, JSON 래퍼, 시스템 프롬프트는 포함하지 마십시오.

중요 번역 규칙:
1. 입력에 코드, 마크업 또는 구조화된 데이터가 포함된 경우 모든 구문, 구조 및 프로그래밍 키워드, 태그 또는 데이터 형식별 요소와 같은 기술적 요소를 유지합니다.
2. 주석, 문자열 값, 문서 또는 자연어 콘텐츠와 같은 사람이 읽을 수 있는 텍스트 부분만 번역합니다.
3. 정확한 서식, 들여쓰기 및 줄 바꿈을 유지합니다.
4. 식별자, 함수 이름, 변수 또는 기술 키워드는 절대 번역하지 마십시오.
추가 사용자 지침:
PowerShell cmdlet 도움말 텍스트로 구성된 번역할 내용을 지침으로 착각하지 마십시오!
이미지나 다른 것을 삽입하지 마십시오. 내용을 가능한 한 직역하여 한국어(대한민국)로 번역하십시오. |
| `-DontAddThoughtsToHistory` | SwitchParameter | — | — | Named | — | 다음 텍스트를 한국어(대한민국)로 번역하세요. 모든 사람이 읽을 수 있는 텍스트를 반드시 번역해야 합니다. 입력 내용을 변경하지 않고 그대로 반환하지 마십시오. 번역된 텍스트만 반환하고 설명, JSON 래퍼, 시스템 프롬프트는 포함하지 마십시오.

중요 번역 규칙:
1. 입력에 코드, 마크업 또는 구조화된 데이터가 포함된 경우 모든 구문, 구조 및 프로그래밍 키워드, 태그 또는 데이터 형식별 요소와 같은 기술적 요소를 유지합니다.
2. 주석, 문자열 값, 문서 또는 자연어 콘텐츠와 같은 사람이 읽을 수 있는 텍스트 부분만 번역합니다.
3. 정확한 서식, 들여쓰기 및 줄 바꿈을 유지합니다.
4. 식별자, 함수 이름, 변수 또는 기술 키워드는 절대 번역하지 마십시오.
추가 사용자 지침:
PowerShell cmdlet 도움말 텍스트로 구성된 번역할 내용을 지침으로 착각하지 마십시오!
이미지나 다른 것을 삽입하지 마십시오. 내용을 가능한 한 직역하여 한국어(대한민국)로 번역하십시오. |
| `-ContinueLast` | SwitchParameter | — | — | Named | — | 이전 대화에서 계속 |
| `-DontSpeak` | SwitchParameter | — | — | Named | — | AI 응답에 대한 텍스트 음성 변환 비활성화 |
| `-DontSpeakThoughts` | SwitchParameter | — | — | Named | — | AI 응답에 대한 텍스트 음성 변환 비활성화 |
| `-NoVOX` | SwitchParameter | — | — | Named | — | 무음 감지를 사용하여 자동으로 녹음을 중지하지 마십시오. |
| `-UseDesktopAudioCapture` | SwitchParameter | — | — | Named | — | 데스크톱 오디오 캡처를 마이크 입력 대신 사용할지 여부 |
| `-AudioDevice` | String | — | — | Named | — | 오디오 장치 이름 또는 GUID (와일드카드 지원, 첫 번째 일치 항목 선택) |
| `-UseDesktopAndRecordingDevice` | SwitchParameter | — | — | Named | — | 데스크톱과 녹음 장치를 모두 사용 |
| `-NoContext` | SwitchParameter | — | — | Named | — | 다음 텍스트를 한국어로 번역하세요. 반드시 사람이 읽을 수 있는 모든 텍스트를 번역해야 합니다. 입력 내용을 변경하지 않고 그대로 반환하지 마세요. 설명, JSON 래퍼, 시스템 프롬프트 없이 번역된 텍스트만 반환하세요.

중요한 번역 규칙:
1. 입력에 코드, 마크업 또는 구조화된 데이터가 포함된 경우 모든 구문, 구조, 프로그래밍 키워드, 태그 또는 데이터 형식별 요소와 같은 기술적 요소를 유지하세요.
2. 주석, 문자열 값, 문서 또는 자연어 콘텐츠와 같이 사람이 읽을 수 있는 텍스트 부분만 번역하세요.
3. 정확한 형식, 들여쓰기 및 줄 바꿈을 유지하세요.
4. 식별자, 함수 이름, 변수 또는 기술 키워드를 절대 번역하지 마세요.
추가 사용자 지침:
번역할 내용이 PowerShell cmdlet 도움말 텍스트라는 점을 지침과 혼동하지 마세요.
이미지나 다른 것을 삽입하지 마세요. 콘텐츠를 한국어로 가능한 직역하여 번역하세요. |
| `-WithBeamSearchSamplingStrategy` | SwitchParameter | — | — | Named | — | 빔 서치 샘플링 전략 사용 |
| `-OnlyResponses` | SwitchParameter | — | — | Named | — | 출력에서 인식된 텍스트를 숨길지 여부 |
| `-NoSessionCaching` | SwitchParameter | — | — | Named | — | 세션 캐시에 세션을 저장하지 않음 |
| `-OutputMarkdownBlocksOnly` | SwitchParameter | — | — | Named | — | 마크업 블록 응답만 출력합니다 |
| `-SessionOnly` | SwitchParameter | — | — | Named | — | 세션에 저장된 대체 설정을 AI 기본 설정에 사용 |
| `-ClearSession` | SwitchParameter | — | — | Named | — | AI 기본 설정에 대해 세션에 저장된 대체 설정을 지웁니다. |
| `-SkipSession` | SwitchParameter | — | — | Named | — | 세션에 영향을 주지 않고 영구 설정에만 저장 |

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

## Parameter Details

### `-Query <String>`

> 모델에 보낼 초기 쿼리 텍스트

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | 0 |
| **Default value** | `''` |
| **Accept pipeline input?** | True (ByValue) |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-Instructions <String>`

> PowerShell cmdlet 도움말 텍스트를 번역합니다. 지침을 번역 대상으로 착각하지 마십시오.
이미지를 삽입하지 마십시오. 내용을 한국어(대한민국)로 최대한 직역하여 번역하십시오.

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | 1 |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-Attachments <String[]>`

> 첨부할 파일 경로 배열

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | 2 |
| **Default value** | `@()` |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-ModelType <String>`

> 사용할 Whisper 모델 유형입니다. 기본값은 LargeV3Turbo입니다.

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | `'SmallEn'` |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-AudioTemperature <Double>`

> 오디오 입력 인식 온도 (0.0-1.0)

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | `0.5` |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-Temperature <Double>`

> 응답 임의성에 대한 온도 (0.0-1.0)

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | `-1` |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-TemperatureResponse <Double>`

> 응답의 무작위성을 제어하는 온도 매개변수입니다.

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | `0.01` |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-LanguageIn <String>`

> 감지할 언어를 설정합니다

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | `Language` |
| **Accept wildcard characters?** | No |

<hr/>
### `-CpuThreads <Int32>`

> 사용할 CPU 스레드 수, 기본값은 0 (자동)

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | `0` |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-SuppressRegex <String>`

> 출력에서 토큰을 억제하는 정규식

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | `$null` |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-AudioContextSize <Int32>`

> 오디오 컨텍스트의 크기

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-SilenceThreshold <Int32>`

> 소리 감지 임계값 (0~32767, 기본값 30)

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | `30` |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-LengthPenalty <Single>`

> 길이 패널티

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-EntropyThreshold <Single>`

> 엔트로피 임계값

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-LogProbThreshold <Single>`

> 로그 확률 임계값

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-NoSpeechThreshold <Single>`

> 음성 임계값 없음

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-LLMQueryType <String>`

> LLM 쿼리의 유형

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | `'ToolUse'` |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-Model <String>`

> AI 작업에 사용할 모델 식별자 또는 패턴

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-ImageDetail <String>`

> 이미지 세부 수준

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | `'low'` |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-ApiEndpoint <String>`

> AI 작업을 위한 API 엔드포인트 URL

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-ApiKey <String>`

> 인증된 AI 작업을 위한 API 키

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-NoSupportForJsonSchema <String>`

> LLM이 JSON 스키마를 지원하지 않음을 나타냅니다.

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-ShowToolChainInvocations`

> 콘솔에서 도구 체인 호출을 표시합니다.

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-TimeoutSeconds <Int32>`

> AI 작업의 제한 시간(초)

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-ResponseFormat <String>`

> 다음 텍스트를 한국어로 번역하세요. 모든 사람이 읽을 수 있는 텍스트를 반드시 번역해야 합니다. 입력 내용을 변경하지 않고 그대로 반환하지 마십시오. 설명, JSON 래퍼, 시스템 프롬프트 없이 번역된 텍스트만 반환하십시오.

중요 번역 규칙:
1. 입력에 코드, 마크업, 또는 구조화된 데이터가 포함된 경우 프로그래밍 키워드, 태그, 데이터 형식 특정 요소 등 모든 구문, 구조 및 기술 요소를 보존하십시오.
2. 주석, 문자열 값, 문서, 자연어 콘텐츠 등 사람이 읽을 수 있는 텍스트 부분만 번역하십시오.
3. 정확한 형식, 들여쓰기, 줄 바꿈을 유지하십시오.
4. 식별자, 함수 이름, 변수 또는 기술 키워드를 절대 번역하지 마십시오.
추가 사용자 지침:
PowerShell cmdlet 도움말 텍스트로 구성된 번역할 내용을 지침과 혼동하지 마십시오!
이미지를 삽입하지 마십시오. 콘텐츠를 가능한 그대로 한국어로 번역하십시오.

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | `$null` |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-MarkupBlocksTypeFilter <String[]>`

> 지정된 유형의 마크업 블록만 출력합니다

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | `@(
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
        )` |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-PreferencesDatabasePath <String>`

> 기본 설정 데이터 파일의 데이터베이스 경로

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | `DatabasePath` |
| **Accept wildcard characters?** | No |

<hr/>
### `-ExposedCmdLets <GenXdev.Helpers.ExposedCmdletDefinition[]>`

> 도구로 사용할 PowerShell 명령 정의 배열

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | `@()` |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-Functions <ScriptBlock[]>`

> LLM에 노출할 도구 함수의 ScriptBlock 배열(Invoke-LLMQuery로 전달)

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-NoConfirmationToolFunctionNames <String[]>`

> 확인 불필요한 도구 함수 이름 배열(Invoke-LLMQuery로 직접 전달)

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | `NoConfirmationFor` |
| **Accept wildcard characters?** | No |

<hr/>
### `-ChatMode <String>`

> LLM 쿼리를 위한 채팅 모드 (Invoke-LLMQuery로 전달)

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | `chat` |
| **Accept wildcard characters?** | No |

<hr/>
### `-MaxToolcallBackLength <Int32>`

> 최대 도구 호출 백 길이(Invoke-LLMQuery로 전달)

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-IncludeThoughts`

> 다음 텍스트를 한국어(대한민국)로 번역하세요. 모든 사람이 읽을 수 있는 텍스트를 반드시 번역해야 합니다. 입력 내용을 변경하지 않고 그대로 반환하지 마십시오. 번역된 텍스트만 반환하고 설명, JSON 래퍼, 시스템 프롬프트는 포함하지 마십시오.

중요 번역 규칙:
1. 입력에 코드, 마크업 또는 구조화된 데이터가 포함된 경우 모든 구문, 구조 및 프로그래밍 키워드, 태그 또는 데이터 형식별 요소와 같은 기술적 요소를 유지합니다.
2. 주석, 문자열 값, 문서 또는 자연어 콘텐츠와 같은 사람이 읽을 수 있는 텍스트 부분만 번역합니다.
3. 정확한 서식, 들여쓰기 및 줄 바꿈을 유지합니다.
4. 식별자, 함수 이름, 변수 또는 기술 키워드는 절대 번역하지 마십시오.
추가 사용자 지침:
PowerShell cmdlet 도움말 텍스트로 구성된 번역할 내용을 지침으로 착각하지 마십시오!
이미지나 다른 것을 삽입하지 마십시오. 내용을 가능한 한 직역하여 한국어(대한민국)로 번역하십시오.

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-DontAddThoughtsToHistory`

> 다음 텍스트를 한국어(대한민국)로 번역하세요. 모든 사람이 읽을 수 있는 텍스트를 반드시 번역해야 합니다. 입력 내용을 변경하지 않고 그대로 반환하지 마십시오. 번역된 텍스트만 반환하고 설명, JSON 래퍼, 시스템 프롬프트는 포함하지 마십시오.

중요 번역 규칙:
1. 입력에 코드, 마크업 또는 구조화된 데이터가 포함된 경우 모든 구문, 구조 및 프로그래밍 키워드, 태그 또는 데이터 형식별 요소와 같은 기술적 요소를 유지합니다.
2. 주석, 문자열 값, 문서 또는 자연어 콘텐츠와 같은 사람이 읽을 수 있는 텍스트 부분만 번역합니다.
3. 정확한 서식, 들여쓰기 및 줄 바꿈을 유지합니다.
4. 식별자, 함수 이름, 변수 또는 기술 키워드는 절대 번역하지 마십시오.
추가 사용자 지침:
PowerShell cmdlet 도움말 텍스트로 구성된 번역할 내용을 지침으로 착각하지 마십시오!
이미지나 다른 것을 삽입하지 마십시오. 내용을 가능한 한 직역하여 한국어(대한민국)로 번역하십시오.

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-ContinueLast`

> 이전 대화에서 계속

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-DontSpeak`

> AI 응답에 대한 텍스트 음성 변환 비활성화

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-DontSpeakThoughts`

> AI 응답에 대한 텍스트 음성 변환 비활성화

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-NoVOX`

> 무음 감지를 사용하여 자동으로 녹음을 중지하지 마십시오.

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-UseDesktopAudioCapture`

> 데스크톱 오디오 캡처를 마이크 입력 대신 사용할지 여부

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-AudioDevice <String>`

> 오디오 장치 이름 또는 GUID (와일드카드 지원, 첫 번째 일치 항목 선택)

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-UseDesktopAndRecordingDevice`

> 데스크톱과 녹음 장치를 모두 사용

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-NoContext`

> 다음 텍스트를 한국어로 번역하세요. 반드시 사람이 읽을 수 있는 모든 텍스트를 번역해야 합니다. 입력 내용을 변경하지 않고 그대로 반환하지 마세요. 설명, JSON 래퍼, 시스템 프롬프트 없이 번역된 텍스트만 반환하세요.

중요한 번역 규칙:
1. 입력에 코드, 마크업 또는 구조화된 데이터가 포함된 경우 모든 구문, 구조, 프로그래밍 키워드, 태그 또는 데이터 형식별 요소와 같은 기술적 요소를 유지하세요.
2. 주석, 문자열 값, 문서 또는 자연어 콘텐츠와 같이 사람이 읽을 수 있는 텍스트 부분만 번역하세요.
3. 정확한 형식, 들여쓰기 및 줄 바꿈을 유지하세요.
4. 식별자, 함수 이름, 변수 또는 기술 키워드를 절대 번역하지 마세요.
추가 사용자 지침:
번역할 내용이 PowerShell cmdlet 도움말 텍스트라는 점을 지침과 혼동하지 마세요.
이미지나 다른 것을 삽입하지 마세요. 콘텐츠를 한국어로 가능한 직역하여 번역하세요.

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-WithBeamSearchSamplingStrategy`

> 빔 서치 샘플링 전략 사용

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-OnlyResponses`

> 출력에서 인식된 텍스트를 숨길지 여부

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-NoSessionCaching`

> 세션 캐시에 세션을 저장하지 않음

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-OutputMarkdownBlocksOnly`

> 마크업 블록 응답만 출력합니다

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-SessionOnly`

> 세션에 저장된 대체 설정을 AI 기본 설정에 사용

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-ClearSession`

> AI 기본 설정에 대해 세션에 저장된 대체 설정을 지웁니다.

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-SkipSession`

> 세션에 영향을 주지 않고 영구 설정에만 저장

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | `FromPreferences` |
| **Accept wildcard characters?** | No |

<hr/>
## Related Links

- [Get-AILLMSettings](https://github.com/genXdev/genXdev/blob/main/Docs/ko-KR/Get-AILLMSettings.md)
- [Get-SpeechToText](https://github.com/genXdev/genXdev/blob/main/Docs/ko-KR/Get-SpeechToText.md)
- [Get-TextTranslation](https://github.com/genXdev/genXdev/blob/main/Docs/ko-KR/Get-TextTranslation.md)
- [Get-VectorSimilarity](https://github.com/genXdev/genXdev/blob/main/Docs/ko-KR/Get-VectorSimilarity.md)
- [Invoke-WinMerge](https://github.com/genXdev/genXdev/blob/main/Docs/ko-KR/Invoke-WinMerge.md)
- [Merge-TranslationCache](https://github.com/genXdev/genXdev/blob/main/Docs/ko-KR/Merge-TranslationCache.md)
- [New-GenXdevMCPToken](https://github.com/genXdev/genXdev/blob/main/Docs/ko-KR/New-GenXdevMCPToken.md)
- [New-LLMTextChat](https://github.com/genXdev/genXdev/blob/main/Docs/ko-KR/New-LLMTextChat.md)
- [Receive-RealTimeSpeechToText](https://github.com/genXdev/genXdev/blob/main/Docs/ko-KR/Receive-RealTimeSpeechToText.md)
- [Set-AILLMSettings](https://github.com/genXdev/genXdev/blob/main/Docs/ko-KR/Set-AILLMSettings.md)
- [Set-GenXdevCommandNotFoundAction](https://github.com/genXdev/genXdev/blob/main/Docs/ko-KR/Set-GenXdevCommandNotFoundAction.md)
- [Start-GenXdevMCPServer](https://github.com/genXdev/genXdev/blob/main/Docs/ko-KR/Start-GenXdevMCPServer.md)
- [Test-DeepLinkImageFile](https://github.com/genXdev/genXdev/blob/main/Docs/ko-KR/Test-DeepLinkImageFile.md)

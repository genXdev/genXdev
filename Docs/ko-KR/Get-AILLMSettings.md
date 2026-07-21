# Get-AILLMSettings

> **Module:** GenXdev.AI | **Type:** Function | **Aliases:** —

## Synopsis

> GenXdev.AI의 AI 작업을 위한 LLM 설정을 가져옵니다.

## Description

이 함수는 GenXdev.AI 모듈이 다양한 AI 작업에 사용하는 LLM(대규모 언어 모델) 설정을 검색합니다. 설정은 세션 변수, 영구 기본 설정 또는 기본 설정 JSON 파일에서 우선 순위 순서대로 검색됩니다. 이 함수는 사용 가능한 시스템 메모리 리소스를 기반으로 자동 구성 선택을 지원합니다.

메모리 선택 전략은 제공된 Gpu 및 Cpu 매개변수를 기반으로 자동으로 결정됩니다.
- Gpu 및 Cpu 매개변수가 모두 지정된 경우: CPU + GPU 결합 메모리 사용
- Gpu 매개변수만 지정된 경우: GPU 메모리 선호(시스템 RAM 대체)
- Cpu 매개변수만 지정된 경우: 시스템 RAM만 사용
- 매개변수가 지정되지 않은 경우: CPU + GPU 결합 메모리 사용(기본값)

## Syntax

```powershell
Get-AILLMSettings [[-LLMQueryType] <String>] [-ApiEndpoint <String>] [-ApiKey <String>] [-ClearSession] [-Model <String>] [-NoSupportForImageUpload] [-NoSupportForJsonSchema] [-NoSupportForToolCalls] [-PreferencesDatabasePath <String>] [-SessionOnly] [-SkipSession] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-LLMQueryType` | String | — | — | 0 | `'SimpleIntelligence'` | 설정을 가져올 LLM 쿼리의 유형 |
| `-Model` | String | — | — | Named | — | AI 작업에 사용할 모델 식별자 또는 패턴 |
| `-ApiEndpoint` | String | — | — | Named | — | AI 작업을 위한 API 엔드포인트 URL |
| `-ApiKey` | String | — | — | Named | — | 인증된 AI 작업을 위한 API 키 |
| `-NoSupportForJsonSchema` | SwitchParameter | — | — | Named | — | 엔드포인트가 json_schema 응답 형식을 지원하지 않는지 여부 |
| `-NoSupportForImageUpload` | SwitchParameter | — | — | Named | — | 엔드포인트가 이미지 업로드 기능을 지원하지 않는지 여부 |
| `-NoSupportForToolCalls` | SwitchParameter | — | — | Named | — | 엔드포인트가 도구 호출 기능을 지원하지 않는지 여부 |
| `-SessionOnly` | SwitchParameter | — | — | Named | — | AI 기본 설정(언어, 이미지 컬렉션 등)에 대해 세션에 저장된 대체 설정 사용 |
| `-ClearSession` | SwitchParameter | — | — | Named | — | 검색 전 세션 설정(전역 변수)을 지웁니다 |
| `-PreferencesDatabasePath` | String | — | — | Named | — | 기본 설정 데이터 파일의 데이터베이스 경로 |
| `-SkipSession` | SwitchParameter | — | — | Named | — | 세션 설정을 건너뛰고 기본 설정 또는 기본값에서만 가져오기 |

## Examples

### Get-AILLMSettings

```powershell
Get-AILLMSettings
```

SimpleIntelligence 쿼리 유형(기본값)에 대한 LLM 설정을 가져옵니다.

### Get-AILLMSettings -LLMQueryType "Coding"

```powershell
Get-AILLMSettings -LLMQueryType "Coding"
```

코딩 쿼리 유형에 대한 LLM 설정을 가져옵니다.

### Get-AILLMSettings -SkipSession

```powershell
Get-AILLMSettings -SkipSession
```

세션 설정을 무시하고 기본 설정 또는 기본값에서만 LLM 설정을 가져옵니다.

### Get-AILLMSettings "Knowledge"

```powershell
Get-AILLMSettings "Knowledge"
```

## Parameter Details

### `-LLMQueryType <String>`

> 설정을 가져올 LLM 쿼리의 유형

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | 0 |
| **Default value** | `'SimpleIntelligence'` |
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
### `-NoSupportForJsonSchema`

> 엔드포인트가 json_schema 응답 형식을 지원하지 않는지 여부

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-NoSupportForImageUpload`

> 엔드포인트가 이미지 업로드 기능을 지원하지 않는지 여부

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-NoSupportForToolCalls`

> 엔드포인트가 도구 호출 기능을 지원하지 않는지 여부

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

> AI 기본 설정(언어, 이미지 컬렉션 등)에 대해 세션에 저장된 대체 설정 사용

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

> 검색 전 세션 설정(전역 변수)을 지웁니다

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
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
### `-SkipSession`

> 세션 설정을 건너뛰고 기본 설정 또는 기본값에서만 가져오기

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | `FromPreferences` |
| **Accept wildcard characters?** | No |

<hr/>
## Outputs

- `Collections.Hashtable`

## Related Links

- [Get-SpeechToText](https://github.com/genXdev/genXdev/blob/main/Docs/ko-KR/Get-SpeechToText.md)
- [Get-TextTranslation](https://github.com/genXdev/genXdev/blob/main/Docs/ko-KR/Get-TextTranslation.md)
- [Get-VectorSimilarity](https://github.com/genXdev/genXdev/blob/main/Docs/ko-KR/Get-VectorSimilarity.md)
- [Invoke-WinMerge](https://github.com/genXdev/genXdev/blob/main/Docs/ko-KR/Invoke-WinMerge.md)
- [Merge-TranslationCache](https://github.com/genXdev/genXdev/blob/main/Docs/ko-KR/Merge-TranslationCache.md)
- [New-GenXdevMCPToken](https://github.com/genXdev/genXdev/blob/main/Docs/ko-KR/New-GenXdevMCPToken.md)
- [New-LLMAudioChat](https://github.com/genXdev/genXdev/blob/main/Docs/ko-KR/New-LLMAudioChat.md)
- [New-LLMTextChat](https://github.com/genXdev/genXdev/blob/main/Docs/ko-KR/New-LLMTextChat.md)
- [Receive-RealTimeSpeechToText](https://github.com/genXdev/genXdev/blob/main/Docs/ko-KR/Receive-RealTimeSpeechToText.md)
- [Set-AILLMSettings](https://github.com/genXdev/genXdev/blob/main/Docs/ko-KR/Set-AILLMSettings.md)
- [Set-GenXdevCommandNotFoundAction](https://github.com/genXdev/genXdev/blob/main/Docs/ko-KR/Set-GenXdevCommandNotFoundAction.md)
- [Start-GenXdevMCPServer](https://github.com/genXdev/genXdev/blob/main/Docs/ko-KR/Start-GenXdevMCPServer.md)
- [Test-DeepLinkImageFile](https://github.com/genXdev/genXdev/blob/main/Docs/ko-KR/Test-DeepLinkImageFile.md)

# Get-AILLMSettings

> **Module:** GenXdev.AI | **Type:** Function | **Aliases:** —

## Synopsis

> GenXdev.AI의 AI 작업을 위한 LLM 설정을 가져옵니다.

## Description

이 함수는 GenXdev.AI 모듈이 다양한 AI 작업을 위해 사용하는 LLM(대형 언어 모델) 설정을 검색합니다. 설정은 세션 변수, 영구 환경 설정 또는 기본 설정 JSON 파일에서 우선 순위에 따라 검색됩니다. 이 함수는 사용 가능한 시스템 메모리 리소스를 기반으로 자동 구성 선택을 지원합니다.

메모리 선택 전략은 제공된 Gpu 및 Cpu 매개변수를 기반으로 자동으로 결정됩니다:
- Gpu 및 Cpu 매개변수가 모두 지정된 경우: 결합된 CPU + GPU 메모리 사용
- Gpu 매개변수만 지정된 경우: GPU 메모리 우선(시스템 RAM 대체 사용)
- Cpu 매개변수만 지정된 경우: 시스템 RAM만 사용
- 매개변수가 지정되지 않은 경우: 결합된 CPU + GPU 메모리 사용(기본값)

## Syntax

```powershell
Get-AILLMSettings [[-LLMQueryType] <String>] [-ApiEndpoint <String>] [-ApiKey <String>] [-ClearSession] [-Model <String>] [-NoSupportForImageUpload] [-NoSupportForJsonSchema] [-NoSupportForToolCalls] [-PreferencesDatabasePath <String>] [-SessionOnly] [-SkipSession] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-LLMQueryType` | String | — | — | 0 | `'SimpleIntelligence'` | 설정을 가져오기 위한 LLM 쿼리 유형 |
| `-Model` | String | — | — | Named | — | AI 작업에 사용할 모델 식별자 또는 패턴 |
| `-ApiEndpoint` | String | — | — | Named | — | AI 작업을 위한 API 엔드포인트 URL |
| `-ApiKey` | String | — | — | Named | — | 인증된 AI 작업을 위한 API 키 |
| `-NoSupportForJsonSchema` | SwitchParameter | — | — | Named | — | Yes, the endpoint does not support json_schema response format |
| `-NoSupportForImageUpload` | SwitchParameter | — | — | Named | — | 엔드포인트가 이미지 업로드 기능을 지원하지 않는지 여부 |
| `-NoSupportForToolCalls` | SwitchParameter | — | — | Named | — | 엔드포인트가 도구 호출 기능을 지원하지 않는지 여부 |
| `-SessionOnly` | SwitchParameter | — | — | Named | — | AI 기본 설정(예: 언어, 이미지 컬렉션 등)을 세션에 저장된 대체 설정으로 사용합니다. |
| `-ClearSession` | SwitchParameter | — | — | Named | — | 세션 설정(전역 변수)을 검색 전에 초기화합니다. |
| `-PreferencesDatabasePath` | String | — | — | Named | — | 환경 설정 데이터 파일의 데이터베이스 경로 |
| `-SkipSession` | SwitchParameter | — | — | Named | — | 세션 설정을 건너뛰고 환경 설정 또는 기본값만 가져오기 |

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

세션 설정을 무시하고 환경설정 또는 기본값에서만 LLM 설정을 가져옵니다.

### Get-AILLMSettings "Knowledge"

```powershell
Get-AILLMSettings "Knowledge"
```

## Outputs

- `Collections.Hashtable`

## Related Links

- [Get-AILLMSettings on GitHub](https://github.com/genXdev/genXdev)

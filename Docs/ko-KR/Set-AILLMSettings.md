# Set-AILLMSettings

> **Module:** GenXdev.AI | **Type:** Function | **Aliases:** —

## Synopsis

> GenXdev.AI에서 AI 작업을 위한 LLM 설정을 지정합니다.

## Description

다음은 GenXdev.AI 모듈이 다양한 AI 작업을 위해 사용하는 LLM(대규모 언어 모델) 설정입니다. 설정은 기본 설정에 영구적으로 저장되거나(기본값), 현재 세션에만 저장되거나(-SessionOnly 사용), 세션에서 제거될 수 있습니다(-ClearSession 사용). 이 함수는 세션 설정을 지우는 경우를 제외하고 하나 이상의 설정 매개변수가 제공되어야 합니다.

## Syntax

```powershell
Set-AILLMSettings -LLMQueryType <String> [[-Model] <String>] [[-ApiEndpoint] <String>] [[-ApiKey] <String>] [-ClearSession] [-NoSupportForImageUpload] [-NoSupportForJsonSchema] [-NoSupportForToolCalls] [-PreferencesDatabasePath <String>] [-SessionOnly] [-SkipSession] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-LLMQueryType` | String | ✅ | — | 0 | — | LLM 쿼리의 유형 |
| `-Model` | String | — | — | 1 | — | AI 작업에 사용할 모델 식별자 또는 패턴 |
| `-ApiEndpoint` | String | — | — | 7 | — | AI 작업을 위한 API 엔드포인트 URL |
| `-ApiKey` | String | — | — | 8 | — | 인증된 AI 작업을 위한 API 키 |
| `-NoSupportForJsonSchema` | SwitchParameter | — | — | Named | — | Yes, the endpoint does not support json_schema response format |
| `-NoSupportForImageUpload` | SwitchParameter | — | — | Named | — | 엔드포인트가 이미지 업로드 기능을 지원하지 않는지 여부 |
| `-NoSupportForToolCalls` | SwitchParameter | — | — | Named | — | 엔드포인트가 도구 호출 기능을 지원하지 않는지 여부 |
| `-SessionOnly` | SwitchParameter | — | — | Named | — | 세션에 저장된 대체 설정을 AI 선호도에 사용 |
| `-ClearSession` | SwitchParameter | — | — | Named | — | AI 선호도를 위해 세션에 저장된 대체 설정을 초기화합니다 |
| `-PreferencesDatabasePath` | String | — | — | Named | — | 환경 설정 데이터 파일의 데이터베이스 경로 |
| `-SkipSession` | SwitchParameter | — | — | Named | — | Store settings only in persistent preferences without affecting session |

## Examples

### Set-AILLMSettings -LLMQueryType "Coding" -Model "*Qwen*14B*"

```powershell
Set-AILLMSettings -LLMQueryType "Coding" -Model "*Qwen*14B*"
```

코딩 쿼리 유형에 대한 LLM 설정을 환경설정에 영구적으로 저장합니다.

### Set-AILLMSettings -LLMQueryType "SimpleIntelligence" -Model "maziyarpanahi/llama-3-groq-8b-tool-use" -SessionOnly

```powershell
Set-AILLMSettings -LLMQueryType "SimpleIntelligence" -Model "maziyarpanahi/llama-3-groq-8b-tool-use" -SessionOnly
```

현재 세션에 대해서만 SimpleIntelligence의 LLM 설정을 지정합니다.

### Set-AILLMSettings -LLMQueryType "Pictures" -ClearSession

```powershell
Set-AILLMSettings -LLMQueryType "Pictures" -ClearSession
```

Pictures 쿼리 유형에 대한 세션 LLM 설정을 영구 환경설정에 영향을 주지 않고 지웁니다.

### Set-AILLMSettings "Coding" "*Qwen*14B*"

```powershell
Set-AILLMSettings "Coding" "*Qwen*14B*"
```

위치 매개변수를 사용하여 코딩 쿼리 유형에 대한 LLM 설정을 지정합니다.

## Related Links

- [Set-AILLMSettings on GitHub](https://github.com/genXdev/genXdev)

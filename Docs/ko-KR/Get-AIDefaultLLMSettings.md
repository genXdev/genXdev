# Get-AIDefaultLLMSettings

> **Module:** GenXdev.AI | **Type:** Function | **Aliases:** —

## Synopsis

> GenXdev.AI에서 AI 작업을 위한 모든 사용 가능한 기본 LLM 설정 구성을 가져옵니다.

## Description

AI 작업에 구성된 대규모 언어 모델(LLM) 설정의 전체 세트를 검색합니다. 쿼리 유형, 모델 식별자, API 엔드포인트 또는 API 키로 결과를 필터링할 수 있습니다. 세션 기반 및 영구 환경 설정 기반 검색을 모두 지원하며, 세션 상태를 지우거나 이를 완전히 우회하여 저장된 환경 설정에서 직접 읽을 수 있는 옵션이 있습니다.

## Syntax

```powershell
Get-AIDefaultLLMSettings [[-LLMQueryType] <String>] [-ApiEndpoint <String>] [-ApiKey <String>] [-ClearSession] [-Model <String>] [-PreferencesDatabasePath <String>] [-SessionOnly] [-SkipSession] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-LLMQueryType` | String | — | — | 0 | `'SimpleIntelligence'` | 설정을 가져오기 위한 LLM 쿼리 유형 |
| `-Model` | String | — | — | Named | — | 모델 식별자 또는 패턴별로 설정 필터링 |
| `-ApiEndpoint` | String | — | — | Named | — | API 엔드포인트 URL로 구성 필터링 |
| `-ApiKey` | String | — | — | Named | — | API 키로 설정 필터링 |
| `-SessionOnly` | SwitchParameter | — | — | Named | — | AI 기본 설정(예: 언어, 이미지 컬렉션 등)을 세션에 저장된 대체 설정으로 사용합니다. |
| `-ClearSession` | SwitchParameter | — | — | Named | — | 세션 설정(전역 변수)을 검색 전에 초기화합니다. |
| `-PreferencesDatabasePath` | String | — | — | Named | — | 환경 설정 데이터 파일의 데이터베이스 경로 |
| `-SkipSession` | SwitchParameter | — | — | Named | — | 세션 설정을 건너뛰고 환경 설정 또는 기본값만 가져오기 |

## Examples

### Get-AIDefaultLLMSettings -LLMQueryType "Coding"

```powershell
Get-AIDefaultLLMSettings -LLMQueryType "Coding"
```

Coding 쿼리 유형에 사용 가능한 모든 기본 구성을 가져옵니다.

## Outputs

- `Collections.Hashtable[]`

## Related Links

- [Get-AIDefaultLLMSettings on GitHub](https://github.com/genXdev/genXdev)

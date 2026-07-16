# Get-AIDefaultLLMSettings

> **Module:** GenXdev.AI | **Type:** Function | **Aliases:** —

## Synopsis

> *(No synopsis provided)*

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

## Outputs

- `Collections.Hashtable[]`

## Related Links

- [Get-AIDefaultLLMSettings on GitHub](https://github.com/genXdev/genXdev)

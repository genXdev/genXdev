# Invoke-ImageObjectsUpdate

> **Module:** GenXdev.AI.Queries | **Type:** Function | **Aliases:** `imageobjectdetection

## Synopsis

> *(No synopsis provided)*

## Syntax

```powershell
Invoke-ImageObjectsUpdate [[-ImageDirectories] <String[]>] [-ClearSession] [-Language <String>] [-LLMQueryType <String>] [-Model <String>] [-OnlyNew] [-PreferencesDatabasePath <String>] [-Recurse] [-RetryFailed] [-SessionOnly] [-SkipSession] [-TimeoutSeconds <Int32>] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-ImageDirectories` | String[] | — | — | 0 | `@('.\')` | 이미지를 처리할 디렉토리 경로들 |
| `-Recurse` | SwitchParameter | — | — | Named | — | 지정된 디렉터리 및 모든 하위 디렉터리의 이미지 처리 |
| `-OnlyNew` | SwitchParameter | — | — | Named | — | 아직 얼굴 메타데이터 파일이 없는 이미지만 처리하세요 |
| `-RetryFailed` | SwitchParameter | — | — | Named | — | 이전에 실패한 이미지 키워드 업데이트를 다시 시도합니다 |
| `-Language` | String | — | — | Named | — | 생성된 설명 및 키워드에 사용되는 언어 |
| `-LLMQueryType` | String | — | — | Named | `'SimpleIntelligence'` | LLM 쿼리의 유형 |
| `-Model` | String | — | — | Named | — | AI 작업에 사용할 모델 식별자 또는 패턴 |
| `-TimeoutSeconds` | Int32 | — | — | Named | — | AI 작업에 대한 타임아웃 시간(초) |
| `-PreferencesDatabasePath` | String | — | — | Named | — | 환경 설정 데이터 파일의 데이터베이스 경로 |
| `-SessionOnly` | SwitchParameter | — | — | Named | — | 세션에 저장된 대체 설정을 AI 선호도에 사용 |
| `-ClearSession` | SwitchParameter | — | — | Named | — | AI 선호도를 위해 세션에 저장된 대체 설정을 초기화합니다 |
| `-SkipSession` | SwitchParameter | — | — | Named | — | Store settings only in persistent preferences without affecting session |

## Related Links

- [Invoke-ImageObjectsUpdate on GitHub](https://github.com/genXdev/genXdev)

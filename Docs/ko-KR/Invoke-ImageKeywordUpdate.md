# Invoke-ImageKeywordUpdate

> **Module:** GenXdev.AI.Queries | **Type:** Function | **Aliases:** `imagekeywordgeneration

## Synopsis

> *(No synopsis provided)*

## Syntax

```powershell
Invoke-ImageKeywordUpdate [[-ImageDirectories] <String[]>] [[-Instructions] <String>] [-ApiEndpoint <String>] [-ApiKey <String>] [-AutoUpdateFaces] [-ClearSession] [-ExposedCmdLets <String[]>] [-FacesDirectory <String>] [-Functions <String[]>] [-ImageDetail <String>] [-IncludeThoughts] [-Language <String>] [-LLMQueryType <String>] [-MaxToolcallBackLength <Int32>] [-Model <String>] [-NoConfirmationToolFunctionNames <String[]>] [-NoContext] [-OnlyNew] [-PassThru] [-PreferencesDatabasePath <String>] [-Recurse] [-ResponseFormat <String>] [-RetryFailed] [-SessionOnly] [-SkipSession] [-Temperature <Double>] [-TimeoutSeconds <Int32>] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-ImageDirectories` | String[] | — | — | 0 | `@('.\')` | 이미지를 처리할 디렉토리 경로들 |
| `-Recurse` | SwitchParameter | — | — | Named | — | 지정된 디렉터리 및 모든 하위 디렉터리의 이미지 처리 |
| `-OnlyNew` | SwitchParameter | — | — | Named | — | 아직 얼굴 메타데이터 파일이 없는 이미지만 처리하세요 |
| `-RetryFailed` | SwitchParameter | — | — | Named | — | 이전에 실패한 이미지 키워드 업데이트를 다시 시도합니다 |
| `-Language` | String | — | — | Named | — | 생성된 설명 및 키워드에 사용되는 언어 |
| `-FacesDirectory` | String | — | — | Named | — | 사람 폴더별로 정리된 얼굴 이미지가 포함된 디렉터리입니다. 지정하지 않으면 설정된 얼굴 디렉터리 환경설정을 사용합니다. |
| `-Instructions` | String | — | — | 2 | — | 모델을 위한 시스템 지침 |
| `-ResponseFormat` | String | — | — | Named | `$null` | 요청된 출력 형식에 대한 JSON 스키마 |
| `-Temperature` | Double | — | — | Named | `-1` | 응답 무작위성을 위한 온도 (0.0-1.0) |
| `-ImageDetail` | String | — | — | Named | `'high'` | 이미지 세부 수준 |
| `-LLMQueryType` | String | — | — | Named | `'Pictures'` | LLM 쿼리의 유형 |
| `-Model` | String | — | — | Named | — | AI 작업에 사용할 모델 식별자 또는 패턴 |
| `-ApiEndpoint` | String | — | — | Named | — | AI 작업을 위한 API 엔드포인트 URL |
| `-ApiKey` | String | — | — | Named | — | 인증된 AI 작업을 위한 API 키 |
| `-TimeoutSeconds` | Int32 | — | — | Named | — | AI 작업에 대한 타임아웃 시간(초) |
| `-PreferencesDatabasePath` | String | — | — | Named | — | 환경 설정 데이터 파일의 데이터베이스 경로 |
| `-IncludeThoughts` | SwitchParameter | — | — | Named | — | {
  "thoughts": "The user wants the model's thoughts included in the output. Since the assistant is designed to output JSON only, I will generate a response that includes a 'thoughts' field along with the actual response. However, the schema only allows a 'response' string. To comply, I will encode the thoughts within the response string itself.",
  "response": "I am an AI assistant. My thoughts are: I must output JSON as instructed."
} |
| `-SessionOnly` | SwitchParameter | — | — | Named | — | 세션에 저장된 대체 설정을 AI 선호도에 사용 |
| `-ClearSession` | SwitchParameter | — | — | Named | — | AI 선호도를 위해 세션에 저장된 대체 설정을 초기화합니다 |
| `-SkipSession` | SwitchParameter | — | — | Named | — | Store settings only in persistent preferences without affecting session |
| `-Functions` | String[] | — | — | Named | — | AI 작업에 사용할 함수를 지정합니다. |
| `-ExposedCmdLets` | String[] | — | — | Named | — | AI 작업에 노출된 cmdlet을 지정합니다. |
| `-NoConfirmationToolFunctionNames` | String[] | — | — | Named | — | 확인이 필요하지 않은 도구 함수 이름을 지정합니다. |
| `-NoContext` | SwitchParameter | — | — | Named | — | 설정된 경우, 컨텍스트 사용을 비활성화합니다. |
| `-MaxToolcallBackLength` | Int32 | — | — | Named | — | 도구 호출에 대한 최대 콜백 길이입니다. |
| `-PassThru` | SwitchParameter | — | — | Named | — | PassThru를 사용하여 콘솔에 출력하는 대신 구조화된 객체를 반환합니다. |
| `-AutoUpdateFaces` | SwitchParameter | — | — | Named | — | faces 디렉터리의 변경 사항을 감지하고 필요시 얼굴을 다시 등록합니다 |

## Related Links

- [Invoke-ImageKeywordUpdate on GitHub](https://github.com/genXdev/genXdev)

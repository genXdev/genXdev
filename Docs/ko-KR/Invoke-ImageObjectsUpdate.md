# Invoke-ImageObjectsUpdate

> **Module:** GenXdev.AI.Queries | **Type:** Function | **Aliases:** `imageobjectdetection

## Synopsis

> 지정된 디렉토리에 있는 이미지 파일의 객체 감지 메타데이터를 업데이트합니다.

## Description

이 함수는 인공지능을 사용하여 지정된 디렉토리의 이미지에서 객체를 감지합니다. 감지된 객체, 해당 위치, 신뢰도 점수 및 레이블을 포함하는 JSON 메타데이터 파일을 생성합니다. 이 함수는 구성 가능한 신뢰도 임계값으로 배치 처리를 지원하며, 기존 메타데이터 파일을 선택적으로 건너뛰거나 이전에 실패한 감지를 재시도할 수 있습니다.

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

## Examples

### Invoke-ImageObjectsUpdate -ImageDirectories @("C:\Photos", "D:\Pictures") -Recurse

```powershell
Invoke-ImageObjectsUpdate -ImageDirectories @("C:\Photos", "D:\Pictures") -Recurse
```

이 예제는 C:\Photos와 D:\Pictures 및 모든 하위 디렉터리의 모든 이미지를 기본 설정과 0.5 신뢰도 임계값을 사용하여 처리합니다.

### Invoke-ImageObjectsUpdate @("C:\Photos", "C:\Archive") -RetryFailed -OnlyNew

```powershell
Invoke-ImageObjectsUpdate @("C:\Photos", "C:\Archive") -RetryFailed -OnlyNew
```

이 예제는 위치 매개변수 구문을 사용하여 여러 디렉터리에서 새 이미지만 처리하고 이전에 실패한 이미지를 재시도합니다.

### Invoke-ImageObjectsUpdate -ImageDirectories "C:\Photos" -UseGPU `     -ConfidenceThreshold 0.7

```powershell
Invoke-ImageObjectsUpdate -ImageDirectories "C:\Photos" -UseGPU `
    -ConfidenceThreshold 0.7
```

이 예제는 더 정확하지만 더 적은 객체 탐지를 위해 0.7의 더 높은 신뢰도 임계값으로 GPU 가속을 사용합니다.

## Related Links

- [Invoke-ImageObjectsUpdate on GitHub](https://github.com/genXdev/genXdev)

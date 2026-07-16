# Remove-ImageMetaData

> **Module:** GenXdev.AI.Queries | **Type:** Function | **Aliases:** `removeimagedata

## Synopsis

> *(No synopsis provided)*

## Syntax

```powershell
Remove-ImageMetaData [[-ImageDirectories] <String[]>] [[-Language] <String>] [[-PreferencesDatabasePath] <String>] [-AllLanguages] [-ClearSession] [-OnlyKeywords] [-OnlyObjects] [-OnlyPeople] [-OnlyScenes] [-Recurse] [-SessionOnly] [-SkipSession] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-ImageDirectories` | String[] | — | — | 0 | — | 이미지 메타데이터 제거를 위해 처리할 디렉토리 경로 배열입니다. 지정하지 않으면 기본 시스템 디렉토리를 사용합니다. |
| `-Language` | String | — | — | 1 | — | 언어별 메타데이터 파일을 제거하기 위한 언어입니다. |
| `-PreferencesDatabasePath` | String | — | — | 2 | — | 환경 설정 데이터 파일의 데이터베이스 경로 |
| `-Recurse` | SwitchParameter | — | — | Named | — | 디렉토리를 재귀적으로 탐색합니다. |
| `-OnlyKeywords` | SwitchParameter | — | — | Named | — | Only remove description.json files (keywords/descriptions). |
| `-OnlyPeople` | SwitchParameter | — | — | Named | — | people.json 파일만 제거하세요 (얼굴 인식 데이터). |
| `-OnlyObjects` | SwitchParameter | — | — | Named | — | 객체 감지 데이터인 objects.json 파일만 제거하십시오. |
| `-OnlyScenes` | SwitchParameter | — | — | Named | — | scenes.json 파일(장면 분류 데이터)만 제거합니다. |
| `-AllLanguages` | SwitchParameter | — | — | Named | — | 지원되는 모든 언어에 대한 메타데이터 파일을 제거합니다. |
| `-SessionOnly` | SwitchParameter | — | — | Named | — | AI 기본 설정(예: 언어, 이미지 컬렉션 등)을 세션에 저장된 대체 설정으로 사용합니다. |
| `-ClearSession` | SwitchParameter | — | — | Named | — | 세션에 저장된 AI 환경설정(언어, 이미지 컬렉션 등)의 대체 설정을 지웁니다. |
| `-SkipSession` | SwitchParameter | — | — | Named | — | 세션에 저장된 AI 환경설정(언어, 이미지 컬렉션 등)의 대체 설정을 사용하지 마세요 |

## Related Links

- [Remove-ImageMetaData on GitHub](https://github.com/genXdev/genXdev)

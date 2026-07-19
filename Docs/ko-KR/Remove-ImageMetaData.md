# Remove-ImageMetaData

> **Module:** GenXdev.AI.Queries | **Type:** Function | **Aliases:** `removeimagedata

## Synopsis

> 이미지 디렉토리에서 이미지 메타데이터 파일을 제거합니다.

## Description

Remove-ImageMetaData 함수는 이미지와 연결된 보조 JSON 메타데이터 파일을 제거합니다. 키워드(description.json), 사람 데이터(people.json), 개체 데이터(objects.json) 또는 장면 데이터(scenes.json)만 선택적으로 제거하거나, 특정 스위치가 제공되지 않으면 모든 메타데이터 파일을 제거할 수 있습니다. 언어별 메타데이터 파일은 Language 매개 변수를 지정하여 제거할 수 있으며, AllLanguages 스위치를 사용하여 모든 언어 변형을 제거할 수 있습니다.

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

## Examples

### Remove-ImageMetaData -ImageDirectories @("C:\Photos", "D:\MyImages") -Recurse

```powershell
Remove-ImageMetaData -ImageDirectories @("C:\Photos", "D:\MyImages") -Recurse
```

여러 디렉토리 및 모든 하위 디렉토리에 있는 이미지의 모든 메타데이터 파일을 제거합니다.

### Remove-ImageMetaData -Recurse -OnlyKeywords

```powershell
Remove-ImageMetaData -Recurse -OnlyKeywords
```

기본 시스템 디렉토리 및 하위 디렉토리에서 description.json 파일만 제거합니다.

### Remove-ImageMetaData -OnlyPeople -ImageDirectories @(".\MyPhotos")

```powershell
Remove-ImageMetaData -OnlyPeople -ImageDirectories @(".\MyPhotos")
```

MyPhotos 디렉터리에서 people.json 파일만 제거합니다.

### Remove-ImageMetaData -Language "Spanish" -OnlyKeywords -Recurse

```powershell
Remove-ImageMetaData -Language "Spanish" -OnlyKeywords -Recurse
```

기본 디렉터리에서 영어 및 스페인어 설명 파일을 재귀적으로 제거합니다.

### removeimagedata -AllLanguages -OnlyKeywords

```powershell
removeimagedata -AllLanguages -OnlyKeywords
```

별칭을 사용하여 지원되는 모든 언어의 키워드 파일을 제거합니다.

## Related Links

- [Remove-ImageMetaData on GitHub](https://github.com/genXdev/genXdev)

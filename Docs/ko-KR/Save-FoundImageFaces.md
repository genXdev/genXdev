# Save-FoundImageFaces

> **Module:** GenXdev.AI.Queries | **Type:** Function | **Aliases:** `saveimagefaces

## Synopsis

> *(No synopsis provided)*

## Syntax

```powershell
Save-FoundImageFaces [[-Any] <String[]>] [-ClearSession] [-DatabaseFilePath <String>] [-DescriptionSearch <String[]>] [-ForceIndexRebuild] [-GeoDistanceInMeters <Double>] [-GeoLocation <Double[]>] [-HasExplicitContent] [-HasNudity] [-InputObject <Object[]>] [-Keywords <String[]>] [-Language <String>] [-NoExplicitContent] [-NoNudity] [-Objects <String[]>] [-OutputDirectory <String>] [-OverallMood <String[]>] [-PathLike <String[]>] [-People <String[]>] [-PictureType <String[]>] [-PreferencesDatabasePath <String>] [-SaveUnknownPersons] [-Scenes <String[]>] [-SessionOnly] [-SkipSession] [-StyleType <String[]>] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-Any` | String[] | — | — | 0 | `@()` | 가능한 모든 메타 데이터 유형 중 하나와 일치합니다. |
| `-DescriptionSearch` | String[] | — | — | Named | `@()` | 찾을 설명 텍스트, 와일드카드 허용. |
| `-Keywords` | String[] | — | — | Named | `@()` | 찾을 키워드, 와일드카드 허용. |
| `-People` | String[] | — | — | Named | `@()` | 찾을 사람들, 와일드카드 허용. |
| `-Objects` | String[] | — | — | Named | `@()` | 찾을 객체, 와일드카드 허용. |
| `-Scenes` | String[] | — | — | Named | `@()` | 찾을 장면, 와일드카드 허용. |
| `-PictureType` | String[] | — | — | Named | `@()` | 필터링할 그림 유형, 와일드카드 허용. |
| `-StyleType` | String[] | — | — | Named | `@()` | 필터링할 스타일 유형, 와일드카드 허용. |
| `-OverallMood` | String[] | — | — | Named | `@()` | 필터링할 전반적인 분위기, 와일드카드 허용. |
| `-DatabaseFilePath` | String | — | — | Named | — | SQLite 데이터베이스 파일 경로입니다. |
| `-Language` | String | — | — | Named | — | 설명과 키워드에 사용되는 언어입니다. |
| `-PathLike` | String[] | — | — | Named | `@()` | 이미지 경로로 필터링할 디렉터리 경로와 유사한 검색 문자열 배열 (SQL LIKE 패턴, 예: '%\\2024\\%') |
| `-InputObject` | Object[] | — | ✅ (ByValue) | Named | — | 이전 -PassThru 호출의 검색 결과를 수락하여 뷰를 다시 생성합니다. |
| `-OutputDirectory` | String | — | — | Named | `'.\'` | 자른 얼굴 이미지를 저장할 디렉터리입니다. |
| `-PreferencesDatabasePath` | String | — | — | Named | — | 환경 설정 데이터 파일의 데이터베이스 경로 |
| `-HasNudity` | SwitchParameter | — | — | Named | — | Filter images that contain nudity. |
| `-NoNudity` | SwitchParameter | — | — | Named | — | Filter images that do NOT contain nudity. |
| `-HasExplicitContent` | SwitchParameter | — | — | Named | — | 명시적인 콘텐츠를 포함한 이미지를 필터링합니다. |
| `-NoExplicitContent` | SwitchParameter | — | — | Named | — | Filter images that do NOT contain explicit content. |
| `-ForceIndexRebuild` | SwitchParameter | — | — | Named | — | 이미지 인덱스 데이터베이스를 강제로 재구축합니다. |
| `-GeoLocation` | Double[] | — | — | Named | — | 검색할 기준 위치의 지리적 좌표 [위도, 경도] |
| `-GeoDistanceInMeters` | Double | — | — | Named | `1000` | 이미지 검색을 위한 GeoLocation으로부터의 최대 거리(미터 단위). |
| `-SaveUnknownPersons` | SwitchParameter | — | — | Named | — | 또한 감지된 미확인 인물을 객체로 저장합니다. |
| `-SessionOnly` | SwitchParameter | — | — | Named | — | AI 기본 설정(예: 언어, 이미지 컬렉션 등)을 세션에 저장된 대체 설정으로 사용합니다. |
| `-ClearSession` | SwitchParameter | — | — | Named | — | 세션에 저장된 AI 환경설정(언어, 이미지 컬렉션 등)의 대체 설정을 지웁니다. |
| `-SkipSession` | SwitchParameter | — | — | Named | — | 세션에 저장된 AI 환경설정(언어, 이미지 컬렉션 등)의 대체 설정을 사용하지 마세요 |

## Outputs

- `Object[]`
- `List`1[[System.Object, System.Private.CoreLib, Version=10.0.0.0, Culture=neutral, PublicKeyToken=7cec85d7bea7798e]]`
- `String`

## Related Links

- [Save-FoundImageFaces on GitHub](https://github.com/genXdev/genXdev)

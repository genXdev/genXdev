# Get-AIKnownFacesRootpath

> **Module:** GenXdev.AI.Queries | **Type:** Function | **Aliases:** —

## Synopsis

> GenXdev.AI 작업에 사용되는 얼굴 이미지 파일의 설정된 디렉토리를 가져옵니다.

## Description

이 함수는 GenXdev.AI 모듈이 다양한 얼굴 인식 및 AI 작업에 사용하는 글로벌 얼굴 디렉토리를 검색합니다. 먼저 전역 변수를 확인하고(SkipSession이 지정되지 않은 경우), 그 다음 지속적인 환경 설정으로 대체되며, 마지막으로 시스템 기본값을 사용합니다.

## Syntax

```powershell
Get-AIKnownFacesRootpath [[-FacesDirectory] <String>] [-ClearSession] [-PreferencesDatabasePath <String>] [-SessionOnly] [-SkipSession] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-FacesDirectory` | String | — | — | 0 | — | 안면 이미지 파일의 디렉토리 경로 |
| `-SessionOnly` | SwitchParameter | — | — | Named | — | AI 기본 설정(예: 언어, 이미지 컬렉션 등)을 세션에 저장된 대체 설정으로 사용합니다. |
| `-ClearSession` | SwitchParameter | — | — | Named | — | 세션 설정(전역 변수)을 검색 전에 초기화합니다. |
| `-PreferencesDatabasePath` | String | — | — | Named | — | 환경 설정 데이터 파일의 데이터베이스 경로 |
| `-SkipSession` | SwitchParameter | — | — | Named | — | 세션에 저장된 AI 환경설정(언어, 이미지 컬렉션 등)의 대체 설정을 사용하지 마세요 |

## Examples

### Get-AIKnownFacesRootpath

```powershell
Get-AIKnownFacesRootpath
```

전역 변수나 환경 설정에서 현재 구성된 얼굴 디렉토리를 가져옵니다.

### Get-AIKnownFacesRootpath -SkipSession

```powershell
Get-AIKnownFacesRootpath -SkipSession
```

영구 설정에서만 설정된 얼굴 디렉토리를 가져오며, 세션 설정은 무시합니다.

### Get-AIKnownFacesRootpath -ClearSession

```powershell
Get-AIKnownFacesRootpath -ClearSession
```

세션 얼굴 디렉터리 설정을 지운 후 영구 기본 설정에서 디렉터리를 가져옵니다.

### Get-AIKnownFacesRootpath "C:\MyFaces"

```powershell
Get-AIKnownFacesRootpath "C:\MyFaces"
```

경로를 확장한 후 지정된 디렉터리를 반환합니다.

## Related Links

- [Get-AIKnownFacesRootpath on GitHub](https://github.com/genXdev/genXdev)

# Get-GenXdevPreference

> **Module:** GenXdev.Data.Preferences | **Type:** Cmdlet | **Aliases:** `getPreference

## Synopsis

> GenXdev 기본 설정 저장소에서 설정 값을 검색합니다.

## Description

* 2계층 선호도 검색 시스템을 구현합니다.
* 먼저 로컬 저장소에서 선호도 값을 확인합니다.
* 찾을 수 없으면 기본 저장소에서 조회합니다.
* 그래도 없으면 제공된 기본값을 반환합니다.

## Syntax

```powershell
Get-GenXdevPreference [-Name] <string> [[-DefaultValue] <string>] [-PreferencesDatabasePath <string>] [-SessionOnly] [-ClearSession] [-SkipSession] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-Name` | String | ✅ | ✅ (ByValue, ByPropertyName) | 0 | — | 검색할 환경 설정 이름 |
| `-DefaultValue` | String | — | ✅ (ByPropertyName) | 1 | — | 환경설정이 없을 경우 기본값 |
| `-PreferencesDatabasePath` | String | — | — | Named | — | 환경 설정 데이터 파일의 데이터베이스 경로 |
| `-SessionOnly` | SwitchParameter | — | — | Named | `False` | 세션에 저장된 대체 설정을 사용하여 언어, 데이터베이스 경로 등의 데이터 환경 설정을 지정합니다. |
| `-ClearSession` | SwitchParameter | — | — | Named | `False` | 세션 설정(전역 변수)을 검색 전에 초기화합니다. |
| `-SkipSession` | SwitchParameter | — | — | Named | `False` | 데이터 기본 설정(언어, 데이터베이스 경로 등)에 세션에 저장된 대체 설정을 사용하지 마십시오. |

## Examples

### Example 1

```powershell
Get-GenXdevPreference -Name "Theme" -DefaultValue "Dark"
```

기본값 'Dark'로 대체되는 'Theme' 설정을 검색합니다.

### Example 2

```powershell
getPreference "Theme" "Dark"
```

별칭과 위치 매개변수를 사용합니다.

## Related Links

- [Get-GenXdevPreference on GitHub](https://github.com/genXdev/genXdev)

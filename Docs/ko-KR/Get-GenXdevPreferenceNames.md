# Get-GenXdevPreferenceNames

> **Module:** GenXdev.Data.Preferences | **Type:** Cmdlet | **Aliases:** `getPreferenceNames

## Synopsis

> 세션 저장소와 데이터베이스 저장소에서 모든 환경 설정 이름을 가져옵니다.

## Description

* 세션 저장소(전역 변수)와 로컬 및 기본 설정 저장소의 키를 결합하여 고유한 설정 이름 목록을 검색합니다.
* 쿼리할 소스를 제어하기 위해 세션 관리 매개변수를 존중합니다.

## Syntax

```powershell
Get-GenXdevPreferenceNames [-SessionOnly] [-ClearSession] [-PreferencesDatabasePath <string>] [-SkipSession] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-SessionOnly` | SwitchParameter | — | — | Named | `False` | 세션에 저장된 대체 설정을 사용하여 언어, 데이터베이스 경로 등의 데이터 환경 설정을 지정합니다. |
| `-ClearSession` | SwitchParameter | — | — | Named | `False` | 세션 설정(전역 변수)을 검색 전에 초기화합니다. |
| `-PreferencesDatabasePath` | String | — | — | Named | — | 환경 설정 데이터 파일의 데이터베이스 경로 |
| `-SkipSession` | SwitchParameter | — | — | Named | `False` | 데이터 기본 설정(언어, 데이터베이스 경로 등)에 세션에 저장된 대체 설정을 사용하지 마십시오. |

## Examples

### Example 1

```powershell
Get-GenXdevPreferenceNames -PreferencesDatabasePath "C:\Data\prefs.db"
```

세션 스토리지와 두 저장소에서 지정된 데이터베이스 경로를 사용하여 고유한 환경 설정 이름의 정렬된 배열을 반환합니다.

### Example 2

```powershell
getPreferenceNames -SessionOnly
```

세션 스토리지에서 환경 설정 이름만 반환합니다.

### Example 3

```powershell
getPreferenceNames -SkipSession
```

데이터베이스 저장소에서 선호도 이름만 반환합니다.

## Related Links

- [Get-GenXdevPreferenceNames on GitHub](https://github.com/genXdev/genXdev)

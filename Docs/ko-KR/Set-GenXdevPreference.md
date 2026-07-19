# Set-GenXdevPreference

> **Module:** GenXdev.Data.Preferences | **Type:** Cmdlet | **Aliases:** `setPreference

## Synopsis

> GenXdev 환경 설정 저장소에 환경 설정 값을 설정합니다.

## Description

* GenXdev 로컬 저장소의 환경설정을 관리합니다.
* 새로운 환경설정을 설정하거나, 기존 설정을 업데이트하거나, null/빈 값이 제공되면 제거할 수 있습니다.
* 환경설정은 동기화가 "로컬"로 설정되어 저장됩니다.

## Syntax

```powershell
Set-GenXdevPreference [-Name] <string> [[-Value] <string>] [-SessionOnly] [-ClearSession] [-PreferencesDatabasePath <string>] [-SkipSession] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-Name` | String | ✅ | ✅ (ByValue, ByPropertyName) | 0 | — | 설정할 환경 설정의 이름 |
| `-Value` | String | — | ✅ (ByPropertyName) | 1 | — | 해당 기본 설정에 저장할 값 |
| `-SessionOnly` | SwitchParameter | — | — | Named | `False` | 세션에 저장된 대체 설정을 사용하여 언어, 데이터베이스 경로 등의 데이터 환경 설정을 지정합니다. |
| `-ClearSession` | SwitchParameter | — | — | Named | `False` | 세션 설정(전역 변수)을 검색 전에 초기화합니다. |
| `-PreferencesDatabasePath` | String | — | — | Named | — | 환경 설정 데이터 파일의 데이터베이스 경로 |
| `-SkipSession` | SwitchParameter | — | — | Named | `False` | 데이터 기본 설정(언어, 데이터베이스 경로 등)에 세션에 저장된 대체 설정을 사용하지 마십시오. |

## Examples

### Example 1

```powershell
Set-GenXdevPreference -Name "Theme" -Value "Dark"
```

로컬 저장소에서 "Theme" 환경설정을 "Dark"로 설정합니다.

### Example 2

```powershell
setPreference Theme Light
```

별칭과 위치 매개변수를 사용하여 테마 기본 설정을 지정합니다.

## Related Links

- [Set-GenXdevPreference on GitHub](https://github.com/genXdev/genXdev)

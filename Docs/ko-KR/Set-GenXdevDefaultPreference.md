# Set-GenXdevDefaultPreference

> **Module:** GenXdev.Data.Preferences | **Type:** Cmdlet | **Aliases:** `setPreferenceDefault

## Synopsis

> GenXdev 환경 설정 저장소에서 기본 환경 설정 값을 설정합니다.

## Description

* GenXdev 환경설정 시스템에서 기본 환경설정을 관리합니다.
* 값을 저장하고, 값이 비어 있으면 환경설정을 제거하며, 변경 사항이 시스템 전체에 동기화되도록 합니다.
* null 값을 지원하며, 이러한 경우 환경설정을 완전히 제거합니다.

## Syntax

```powershell
Set-GenXdevDefaultPreference [-Name] <string> [[-Value] <string>] [[-PreferencesDatabasePath] <string>] [-SessionOnly] [-ClearSession] [-SkipSession] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-Name` | String | ✅ | ✅ (ByPropertyName) | 0 | — | defaults에 설정할 기본 설정의 이름 |
| `-Value` | String | — | ✅ (ByPropertyName) | 1 | — | 해당 기본 설정에 저장할 값 |
| `-PreferencesDatabasePath` | String | — | — | 2 | — | 환경 설정 데이터 파일의 데이터베이스 경로 |
| `-SessionOnly` | SwitchParameter | — | — | Named | `False` | 세션에 저장된 대체 설정을 사용하여 언어, 데이터베이스 경로 등의 데이터 환경 설정을 지정합니다. |
| `-ClearSession` | SwitchParameter | — | — | Named | `False` | 세션 설정(전역 변수)을 검색 전에 초기화합니다. |
| `-SkipSession` | SwitchParameter | — | — | Named | `False` | 데이터 기본 설정(언어, 데이터베이스 경로 등)에 세션에 저장된 대체 설정을 사용하지 마십시오. |

## Examples

### Example 1

```powershell
Set-GenXdevDefaultPreference -Name "Theme" -Value "Dark"
```

기본 테마 기본 설정을 "어둡게"로 설정합니다.

### Example 2

```powershell
setPreferenceDefault "EmailNotifications" "Disabled"
```

기본 설정에서 이메일 알림을 비활성화하는 데 별칭을 사용합니다.

## Related Links

- [Set-GenXdevDefaultPreference on GitHub](https://github.com/genXdev/genXdev)

# Remove-GenXdevPreference

> **Module:** GenXdev.Data.Preferences | **Type:** Cmdlet | **Aliases:** `removePreference

## Synopsis

> GenXdev 환경설정 저장소에서 환경설정 값을 제거합니다.

## Description

* 로컬 저장소에서 환경 설정 값을 제거하고, 선택적으로 기본 저장소에서도 제거합니다.
* 로컬 제거만을 위한 매개변수 집합과 로컬 및 기본 저장소 모두에서 제거하기 위한 매개변수 집합을 제공합니다.
* 기본 저장소를 수정할 때 적절한 동기화를 보장합니다.

## Syntax

```powershell
Remove-GenXdevPreference [-Name] <string> [-RemoveDefault] [-SessionOnly] [-ClearSession] [-PreferencesDatabasePath <string>] [-SkipSession] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-Name` | String | ✅ | ✅ (ByValue, ByPropertyName) | 0 | — | 제거할 환경 설정의 이름 |
| `-RemoveDefault` | SwitchParameter | — | — | Named | `False` | 또한 기본 설정에서 기본값을 제거하도록 전환 |
| `-SessionOnly` | SwitchParameter | — | — | Named | `False` | 세션에 저장된 대체 설정을 사용하여 언어, 데이터베이스 경로 등의 데이터 환경 설정을 지정합니다. |
| `-ClearSession` | SwitchParameter | — | — | Named | `False` | 세션 설정(전역 변수)을 검색 전에 초기화합니다. |
| `-PreferencesDatabasePath` | String | — | — | Named | — | 환경 설정 데이터 파일의 데이터베이스 경로 |
| `-SkipSession` | SwitchParameter | — | — | Named | `False` | 데이터 기본 설정(언어, 데이터베이스 경로 등)에 세션에 저장된 대체 설정을 사용하지 마십시오. |

## Examples

### Example 1

```powershell
Remove-GenXdevPreference -Name "Theme"
```

로컬 저장소에서만 '테마' 환경설정을 제거합니다.

### Example 2

```powershell
removePreference "Theme" -RemoveDefault
```

로컬 저장소와 기본 저장소 모두에서 "테마" 환경 설정을 제거합니다.

## Related Links

- [Remove-GenXdevPreference on GitHub](https://github.com/genXdev/genXdev)

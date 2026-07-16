# Get-GenXdevPreference

> **Module:** GenXdev.Data.Preferences | **Type:** Cmdlet | **Aliases:** `getPreference

## Synopsis

> *(No synopsis provided)*

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

## Related Links

- [Get-GenXdevPreference on GitHub](https://github.com/genXdev/genXdev)

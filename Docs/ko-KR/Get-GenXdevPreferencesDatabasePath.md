# Get-GenXdevPreferencesDatabasePath

> **Module:** GenXdev.Data.Preferences | **Type:** Cmdlet | **Aliases:** —

## Synopsis

> *(No synopsis provided)*

## Syntax

```powershell
Get-GenXdevPreferencesDatabasePath [[-PreferencesDatabasePath] <string>] [-SessionOnly] [-ClearSession] [-SkipSession] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-PreferencesDatabasePath` | String | — | — | 0 | — | 선택적 데이터베이스 경로 재정의 |
| `-SessionOnly` | SwitchParameter | — | — | Named | `False` | 세션에 저장된 대체 설정을 사용하여 언어, 데이터베이스 경로 등의 데이터 환경 설정을 지정합니다. |
| `-ClearSession` | SwitchParameter | — | — | Named | `False` | 세션 설정(전역 변수)을 검색 전에 초기화합니다. |
| `-SkipSession` | SwitchParameter | — | — | Named | `False` | 데이터 기본 설정(언어, 데이터베이스 경로 등)에 세션에 저장된 대체 설정을 사용하지 마십시오. |

## Related Links

- [Get-GenXdevPreferencesDatabasePath on GitHub](https://github.com/genXdev/genXdev)

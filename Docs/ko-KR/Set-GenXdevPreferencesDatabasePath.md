# Set-GenXdevPreferencesDatabasePath

> **Module:** GenXdev.Data.Preferences | **Type:** Cmdlet | **Aliases:** —

## Synopsis

> *(No synopsis provided)*

## Syntax

```powershell
Set-GenXdevPreferencesDatabasePath [[-PreferencesDatabasePath] <string>] [-SkipSession] [-SessionOnly] [-ClearSession] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-PreferencesDatabasePath` | String | — | — | 0 | — | 환경 설정 데이터 파일이 위치한 데이터베이스 경로 |
| `-SkipSession` | SwitchParameter | — | — | Named | `False` | 데이터 기본 설정(언어, 데이터베이스 경로 등)에 세션에 저장된 대체 설정을 사용하지 마십시오. |
| `-SessionOnly` | SwitchParameter | — | — | Named | `False` | 지정된 경우, 설정을 환경설정에 저장하지 않고 현재 세션(전역 변수)에만 저장합니다. |
| `-ClearSession` | SwitchParameter | — | — | Named | `False` | 지정된 경우, 영구적인 환경설정에 영향을 주지 않고 세션 설정(전역 변수)만 지웁니다. |

## Related Links

- [Set-GenXdevPreferencesDatabasePath on GitHub](https://github.com/genXdev/genXdev)

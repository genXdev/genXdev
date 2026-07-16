# Get-Refactor

> **Module:** GenXdev.Coding.PowerShell.Modules | **Type:** Function | **Aliases:** `refactors

## Synopsis

> *(No synopsis provided)*

## Syntax

```powershell
Get-Refactor [[-Name] <String[]>] [-ClearSession] [-DefaultValue <String>] [-PreferencesDatabasePath <String>] [-SessionOnly] [-SkipSession] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-Name` | String[] | — | ✅ (ByValue, ByPropertyName) | 0 | `@('*')` | 리팩터 정의를 검색할 패턴(들) 🌐 *Supports wildcards* |
| `-PreferencesDatabasePath` | String | — | — | Named | — | 환경 설정 데이터 파일의 데이터베이스 경로 |
| `-DefaultValue` | String | — | — | Named | — | 환경설정이 없을 경우 기본값 |
| `-SessionOnly` | SwitchParameter | — | — | Named | — | 세션에 저장된 대체 설정을 사용하여 언어, 데이터베이스 경로 등의 데이터 환경 설정을 지정합니다. |
| `-ClearSession` | SwitchParameter | — | — | Named | — | 세션 설정(전역 변수)을 검색 전에 초기화합니다. |
| `-SkipSession` | SwitchParameter | — | — | Named | — | 데이터 기본 설정(언어, 데이터베이스 경로 등)에 세션에 저장된 대체 설정을 사용하지 마십시오. |

## Outputs

- `GenXdev.Helpers.RefactorDefinition[]`

## Related Links

- [Get-Refactor on GitHub](https://github.com/genXdev/genXdev)

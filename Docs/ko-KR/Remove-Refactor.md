# Remove-Refactor

> **Module:** GenXdev.Coding.PowerShell.Modules | **Type:** Function | **Aliases:** —

## Synopsis

> GenXdev 환경 설정 시스템에서 리팩터 세트를 제거합니다.

## Description

GenXdev 환경 설정 시스템에서 리팩터 세트를 관리하며 지정된 항목을 제거합니다. 사용자 정의 및 기본 리팩터 세트 모두와 함께 작동합니다. 기본 세트는 명시적으로 제거가 허용되지 않는 한 보호됩니다. 모든 리팩터 세트는 환경 설정 시스템에서 "refactor_set_" 접두사로 식별됩니다.

## Syntax

```powershell
Remove-Refactor -Name <String[]> [-ClearSession] [-DefaultValue <String>] [-PreferencesDatabasePath <String>] [-RemoveDefault] [-SessionOnly] [-SkipSession] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-Name` | String[] | ✅ | ✅ (ByValue, ByPropertyName) | 0 | — | 리팩터 이름, 와일드카드 허용 🌐 *Supports wildcards* |
| `-RemoveDefault` | SwitchParameter | — | — | Named | — | Switch to also remove the standard refactor set |
| `-PreferencesDatabasePath` | String | — | — | Named | — | 환경 설정 데이터 파일의 데이터베이스 경로 |
| `-DefaultValue` | String | — | ✅ (ByPropertyName) | Named | — | 환경설정이 없을 경우 기본값 |
| `-SessionOnly` | SwitchParameter | — | — | Named | — | 세션에 저장된 대체 설정을 사용하여 언어, 데이터베이스 경로 등의 데이터 환경 설정을 지정합니다. |
| `-ClearSession` | SwitchParameter | — | — | Named | — | 세션 설정(전역 변수)을 검색 전에 초기화합니다. |
| `-SkipSession` | SwitchParameter | — | — | Named | — | 데이터 기본 설정(언어, 데이터베이스 경로 등)에 세션에 저장된 대체 설정을 사용하지 마십시오. |

## Examples

### Remove-Refactor -Name "CustomRefactor" -RemoveDefault Removes a specific refactor set named "CustomRefactor" and allows removal of default sets if matched

```powershell
Remove-Refactor -Name "CustomRefactor" -RemoveDefault
Removes a specific refactor set named "CustomRefactor" and allows removal
of default sets if matched
```

## Related Links

- [Remove-Refactor on GitHub](https://github.com/genXdev/genXdev)

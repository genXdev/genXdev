# Get-GenXdevPreferencesDatabasePath

> **Module:** GenXdev.Data.Preferences | **Type:** Cmdlet | **Aliases:** —

## Synopsis

> GenXdev.Data 작업에 사용되는 환경 설정 데이터 파일의 구성된 데이터베이스 경로를 가져옵니다.

## Description

* GenXdev.Data 모듈이 다양한 환경설정 저장 및 데이터 작업을 위해 사용하는 전역 데이터베이스 경로를 검색합니다.
* 먼저 전역 변수를 확인하고(SkipSession이 지정되지 않은 경우), 그 다음 영구 환경설정을 확인하며, 마지막으로 시스템 기본값을 사용합니다.

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

## Examples

### Example 1

```powershell
Get-GenXdevPreferencesDatabasePath
```

전역 변수 또는 환경 설정에서 데이터베이스 경로를 검색합니다.

### Example 2

```powershell
Get-GenXdevPreferencesDatabasePath -SkipSession
```

세션 변수를 건너뛰고 영구적 기본 설정을 사용합니다.

### Example 3

```powershell
Get-GenXdevPreferencesDatabasePath -ClearSession
```

경로를 검색하기 전에 세션 설정을 지웁니다.

## Related Links

- [Get-GenXdevPreferencesDatabasePath on GitHub](https://github.com/genXdev/genXdev)

# Set-GenXdevPreferencesDatabasePath

> **Module:** GenXdev.Data.Preferences | **Type:** Cmdlet | **Aliases:** —

## Synopsis

> GenXdev.Data 작업에 사용되는 기본 설정의 데이터베이스 경로를 설정합니다.

## Description

* GenXdev.Data 모듈에서 다양한 환경 설정 저장 및 데이터 작업을 위해 사용하는 전역 데이터베이스 경로를 구성합니다.
* 설정은 현재 세션에 저장되며(전역 변수 사용), 세션에서 지울 수 있습니다(-ClearSession 사용).

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

## Examples

### Example 1

```powershell
Set-GenXdevPreferencesDatabasePath -PreferencesDatabasePath "C:\Data\Preferences.db"
```

현재 세션에서 데이터베이스 경로를 설정합니다 (전역 변수).

### Example 2

```powershell
Set-GenXdevPreferencesDatabasePath "C:\MyPreferences.db"
```

위치 매개변수를 사용하여 데이터베이스 경로를 설정합니다.

### Example 3

```powershell
Set-GenXdevPreferencesDatabasePath "C:\TempPrefs.db" -SessionOnly
```

현재 세션에만 경로를 설정하며 지속되지 않습니다.

### Example 4

```powershell
Set-GenXdevPreferencesDatabasePath -ClearSession
```

데이터베이스 경로의 전역 변수를 지웁니다.

## Related Links

- [Set-GenXdevPreferencesDatabasePath on GitHub](https://github.com/genXdev/genXdev)

# Get-GenXdevPreferencesDatabasePath

> **Module:** GenXdev.Data.Preferences | **Type:** Cmdlet | **Aliases:** —

## Synopsis

> GenXdev.Data 작업에 사용되는 기본 설정 데이터 파일의 구성된 데이터베이스 경로를 가져옵니다.

## Description

* GenXdev.Data 모듈에서 다양한 기본 설정 저장 및 데이터 작업에 사용하는 전역 데이터베이스 경로를 검색합니다.
* 먼저 전역 변수를 확인하고(SkipSession이 지정되지 않은 경우), 그 다음 지속적 기본 설정으로 대체하며, 마지막으로 시스템 기본값을 사용합니다.

## Syntax

```powershell
Get-GenXdevPreferencesDatabasePath [[-PreferencesDatabasePath] <String>] [-ClearSession] [-SessionOnly] [-SkipSession] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-PreferencesDatabasePath` | String | — | — | 0 | — | 선택적 데이터베이스 경로 재정의 |
| `-SessionOnly` | SwitchParameter | — | — | Named | `False` | 데이터 기본 설정(언어, 데이터베이스 경로 등)을 위해 세션에 저장된 대체 설정을 사용합니다. |
| `-ClearSession` | SwitchParameter | — | — | Named | `False` | 검색 전 세션 설정(전역 변수)을 지웁니다 |
| `-SkipSession` | SwitchParameter | — | — | Named | `False` | Language, Database paths 등 Data 기본 설정에 대해 세션에 저장된 대체 설정을 사용하지 마십시오 |

## Examples

### Example 1

```powershell
Get-GenXdevPreferencesDatabasePath
```

전역 변수 또는 기본 설정에서 데이터베이스 경로를 검색합니다.

### Example 2

```powershell
Get-GenXdevPreferencesDatabasePath -SkipSession
```

세션 변수를 건너뛰고 영구 기본 설정을 사용합니다.

### Example 3

```powershell
Get-GenXdevPreferencesDatabasePath -ClearSession
```

경로를 검색하기 전에 세션 설정을 지웁니다.

## Parameter Details

### `-PreferencesDatabasePath <String>`

> 선택적 데이터베이스 경로 재정의

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | 0 |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | `DatabasePath` |
| **Accept wildcard characters?** | No |

<hr/>
### `-SessionOnly`

> 데이터 기본 설정(언어, 데이터베이스 경로 등)을 위해 세션에 저장된 대체 설정을 사용합니다.

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | `False` |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-ClearSession`

> 검색 전 세션 설정(전역 변수)을 지웁니다

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | `False` |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-SkipSession`

> Language, Database paths 등 Data 기본 설정에 대해 세션에 저장된 대체 설정을 사용하지 마십시오

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | `False` |
| **Accept pipeline input?** | False |
| **Aliases** | `FromPreferences` |
| **Accept wildcard characters?** | No |

<hr/>
## Related Links

- [Get-GenXdevPreference](https://github.com/genXdev/genXdev/blob/main/Docs/ko-KR/Get-GenXdevPreference.md)
- [Get-GenXdevPreferenceNames](https://github.com/genXdev/genXdev/blob/main/Docs/ko-KR/Get-GenXdevPreferenceNames.md)
- [Remove-GenXdevPreference](https://github.com/genXdev/genXdev/blob/main/Docs/ko-KR/Remove-GenXdevPreference.md)
- [Set-GenXdevDefaultPreference](https://github.com/genXdev/genXdev/blob/main/Docs/ko-KR/Set-GenXdevDefaultPreference.md)
- [Set-GenXdevPreference](https://github.com/genXdev/genXdev/blob/main/Docs/ko-KR/Set-GenXdevPreference.md)
- [Set-GenXdevPreferencesDatabasePath](https://github.com/genXdev/genXdev/blob/main/Docs/ko-KR/Set-GenXdevPreferencesDatabasePath.md)

# Set-GenXdevPreference

> **Module:** GenXdev.Data.Preferences | **Type:** Cmdlet | **Aliases:** `setPreference`

## Synopsis

> GenXdev 기본 설정 저장소에서 기본 설정 값을 설정합니다.

## Description

* GenXdev 로컬 저장소에서 기본 설정을 관리합니다.
* 새 기본 설정을 설정하거나, 기존 설정을 업데이트하거나, null/빈 값이 제공되면 제거할 수 있습니다.
* 기본 설정은 동기화가 "로컬"로 설정되어 저장됩니다.

## Syntax

```powershell
Set-GenXdevPreference -Name <String> [[-Value] <String>] [-ClearSession] [-PreferencesDatabasePath <String>] [-SessionOnly] [-SkipSession] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-Name` | String | ✅ | ✅ (ByValue, ByPropertyName) | 0 | — | 설정할 기본 설정의 이름 |
| `-Value` | String | — | ✅ (ByPropertyName) | 1 | — | 기본 설정에 저장할 값 |
| `-SessionOnly` | SwitchParameter | — | — | Named | `False` | 데이터 기본 설정(언어, 데이터베이스 경로 등)을 위해 세션에 저장된 대체 설정을 사용합니다. |
| `-ClearSession` | SwitchParameter | — | — | Named | `False` | 검색 전 세션 설정(전역 변수)을 지웁니다 |
| `-PreferencesDatabasePath` | String | — | — | Named | — | 기본 설정 데이터 파일의 데이터베이스 경로 |
| `-SkipSession` | SwitchParameter | — | — | Named | `False` | Language, Database paths 등 Data 기본 설정에 대해 세션에 저장된 대체 설정을 사용하지 마십시오 |

## Examples

### Example 1

```powershell
Set-GenXdevPreference -Name "Theme" -Value "Dark"
```

로컬 저장소에서 '테마' 기본 설정을 '어두운'으로 설정합니다.

### Example 2

```powershell
setPreference Theme Light
```

별칭 및 위치 매개 변수를 사용하여 테마 기본 설정을 설정합니다.

## Parameter Details

### `-Name <String>`

> 설정할 기본 설정의 이름

| Property | Value |
|:---|:---|
| **Required?** | Yes |
| **Position?** | 0 |
| **Default value** | *(none)* |
| **Accept pipeline input?** | True (ByValue, ByPropertyName) |
| **Aliases** | `PreferenceName` |
| **Accept wildcard characters?** | No |

<hr/>
### `-Value <String>`

> 기본 설정에 저장할 값

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | 1 |
| **Default value** | *(none)* |
| **Accept pipeline input?** | True (ByPropertyName) |
| **Aliases** | `PreferenceValue` |
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
### `-PreferencesDatabasePath <String>`

> 기본 설정 데이터 파일의 데이터베이스 경로

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | `DatabasePath` |
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
- [Get-GenXdevPreferencesDatabasePath](https://github.com/genXdev/genXdev/blob/main/Docs/ko-KR/Get-GenXdevPreferencesDatabasePath.md)
- [Remove-GenXdevPreference](https://github.com/genXdev/genXdev/blob/main/Docs/ko-KR/Remove-GenXdevPreference.md)
- [Set-GenXdevDefaultPreference](https://github.com/genXdev/genXdev/blob/main/Docs/ko-KR/Set-GenXdevDefaultPreference.md)
- [Set-GenXdevPreferencesDatabasePath](https://github.com/genXdev/genXdev/blob/main/Docs/ko-KR/Set-GenXdevPreferencesDatabasePath.md)

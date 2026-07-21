# Get-GenXdevPreferenceNames

> **Module:** GenXdev.Data.Preferences | **Type:** Cmdlet | **Aliases:** `getPreferenceNames`

## Synopsis

> 세션 저장소와 데이터베이스 저장소에서 모든 기본 설정 이름을 가져옵니다.

## Description

* 세션 저장소(전역 변수)와 로컬 및 기본 설정 저장소의 키를 결합하여
  고유한 기본 설정 이름 목록을 검색합니다.
* 쿼리할 소스를 제어하기 위해 세션 관리 매개변수를 준수합니다.

## Syntax

```powershell
Get-GenXdevPreferenceNames [-ClearSession] [-PreferencesDatabasePath <String>] [-SessionOnly] [-SkipSession] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-SessionOnly` | SwitchParameter | — | — | Named | `False` | 데이터 기본 설정(언어, 데이터베이스 경로 등)을 위해 세션에 저장된 대체 설정을 사용합니다. |
| `-ClearSession` | SwitchParameter | — | — | Named | `False` | 검색 전 세션 설정(전역 변수)을 지웁니다 |
| `-PreferencesDatabasePath` | String | — | — | Named | — | 기본 설정 데이터 파일의 데이터베이스 경로 |
| `-SkipSession` | SwitchParameter | — | — | Named | `False` | Language, Database paths 등 Data 기본 설정에 대해 세션에 저장된 대체 설정을 사용하지 마십시오 |

## Examples

### Example 1

```powershell
Get-GenXdevPreferenceNames -PreferencesDatabasePath "C:\Data\prefs.db"
```

세션 저장소와 두 저장소에서 지정된 데이터베이스 경로를 사용하여 고유한 기본 설정 이름의 정렬된 배열을 반환합니다.

### Example 2

```powershell
getPreferenceNames -SessionOnly
```

세션 저장소에서 기본 설정 이름만 반환합니다.

### Example 3

```powershell
getPreferenceNames -SkipSession
```

데이터베이스 저장소에서 기본 설정 이름만 반환합니다.

## Parameter Details

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
- [Get-GenXdevPreferencesDatabasePath](https://github.com/genXdev/genXdev/blob/main/Docs/ko-KR/Get-GenXdevPreferencesDatabasePath.md)
- [Remove-GenXdevPreference](https://github.com/genXdev/genXdev/blob/main/Docs/ko-KR/Remove-GenXdevPreference.md)
- [Set-GenXdevDefaultPreference](https://github.com/genXdev/genXdev/blob/main/Docs/ko-KR/Set-GenXdevDefaultPreference.md)
- [Set-GenXdevPreference](https://github.com/genXdev/genXdev/blob/main/Docs/ko-KR/Set-GenXdevPreference.md)
- [Set-GenXdevPreferencesDatabasePath](https://github.com/genXdev/genXdev/blob/main/Docs/ko-KR/Set-GenXdevPreferencesDatabasePath.md)

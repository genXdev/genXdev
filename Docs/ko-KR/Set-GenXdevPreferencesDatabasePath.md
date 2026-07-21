# Set-GenXdevPreferencesDatabasePath

> **Module:** GenXdev.Data.Preferences | **Type:** Cmdlet | **Aliases:** —

## Synopsis

> GenXdev.Data 작업에 사용되는 환경 설정의 데이터베이스 경로를 설정합니다.

## Description

* GenXdev.Data 모듈에서 다양한 기본 설정 저장 및 데이터 작업에 사용되는 전역 데이터베이스 경로를 구성합니다.
* 설정은 현재 세션에 (전역 변수를 사용하여) 저장되며, 세션에서 지울 수 있습니다(-ClearSession 사용).

## Syntax

```powershell
Set-GenXdevPreferencesDatabasePath [[-PreferencesDatabasePath] <String>] [-ClearSession] [-SessionOnly] [-SkipSession] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-PreferencesDatabasePath` | String | — | — | 0 | — | 기본 설정 데이터 파일이 있는 데이터베이스 경로 |
| `-SkipSession` | SwitchParameter | — | — | Named | `False` | Language, Database paths 등 Data 기본 설정에 대해 세션에 저장된 대체 설정을 사용하지 마십시오 |
| `-SessionOnly` | SwitchParameter | — | — | Named | `False` | 지정된 경우 현재 세션(전역 변수)에만 설정을 저장하고 기본 설정으로 유지하지 않습니다. |
| `-ClearSession` | SwitchParameter | — | — | Named | `False` | 지정된 경우, 영구 설정에 영향을 주지 않고 세션 설정(전역 변수)만 지웁니다. |

## Examples

### Example 1

```powershell
Set-GenXdevPreferencesDatabasePath -PreferencesDatabasePath "C:\Data\Preferences.db"
```

현재 세션(전역 변수)에서 데이터베이스 경로를 설정합니다.

### Example 2

```powershell
Set-GenXdevPreferencesDatabasePath "C:\MyPreferences.db"
```

위치 매개 변수를 사용하여 데이터베이스 경로를 설정합니다.

### Example 3

```powershell
Set-GenXdevPreferencesDatabasePath "C:\TempPrefs.db" -SessionOnly
```

현재 세션에만 경로를 설정하며 유지되지 않습니다.

### Example 4

```powershell
Set-GenXdevPreferencesDatabasePath -ClearSession
```

데이터베이스 경로에 대한 전역 변수를 지웁니다.

## Parameter Details

### `-PreferencesDatabasePath <String>`

> 기본 설정 데이터 파일이 있는 데이터베이스 경로

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | 0 |
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
### `-SessionOnly`

> 지정된 경우 현재 세션(전역 변수)에만 설정을 저장하고 기본 설정으로 유지하지 않습니다.

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

> 지정된 경우, 영구 설정에 영향을 주지 않고 세션 설정(전역 변수)만 지웁니다.

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | `False` |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
## Related Links

- [Get-GenXdevPreference](https://github.com/genXdev/genXdev/blob/main/Docs/ko-KR/Get-GenXdevPreference.md)
- [Get-GenXdevPreferenceNames](https://github.com/genXdev/genXdev/blob/main/Docs/ko-KR/Get-GenXdevPreferenceNames.md)
- [Get-GenXdevPreferencesDatabasePath](https://github.com/genXdev/genXdev/blob/main/Docs/ko-KR/Get-GenXdevPreferencesDatabasePath.md)
- [Remove-GenXdevPreference](https://github.com/genXdev/genXdev/blob/main/Docs/ko-KR/Remove-GenXdevPreference.md)
- [Set-GenXdevDefaultPreference](https://github.com/genXdev/genXdev/blob/main/Docs/ko-KR/Set-GenXdevDefaultPreference.md)
- [Set-GenXdevPreference](https://github.com/genXdev/genXdev/blob/main/Docs/ko-KR/Set-GenXdevPreference.md)

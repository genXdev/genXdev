# Remove-Refactor

> **Module:** GenXdev.Coding | **Type:** Function | **Aliases:** —

## Synopsis

> GenXdev 환경 설정 시스템에서 리팩터 집합을 제거합니다.

## Description

GenXdev 선호도 시스템에서 리팩터 세트를 관리하며, 지정된 항목을 제거합니다.
사용자 정의 리팩터 세트와 기본 리팩터 세트 모두에 작동합니다. 기본 세트는 명시적으로 허용되지 않는 한 보호됩니다.
모든 리팩터 세트는 선호도 시스템에서 "refactor_set_" 접두사로 식별됩니다.

## Syntax

```powershell
Remove-Refactor -Name <String[]> [-ClearSession] [-DefaultValue <String>] [-PreferencesDatabasePath <String>] [-RemoveDefault] [-SessionOnly] [-SkipSession] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-Name` | String[] | ✅ | ✅ (ByValue, ByPropertyName) | 0 | — | 리팩터의 이름, 와일드카드 허용 🌐 *Supports wildcards* |
| `-RemoveDefault` | SwitchParameter | — | — | Named | — | 표준 리팩터 집합도 제거하도록 전환 |
| `-PreferencesDatabasePath` | String | — | — | Named | — | 기본 설정 데이터 파일의 데이터베이스 경로 |
| `-DefaultValue` | String | — | ✅ (ByPropertyName) | Named | — | 기본 설정이 없는 경우의 기본값 |
| `-SessionOnly` | SwitchParameter | — | — | Named | — | 데이터 기본 설정(언어, 데이터베이스 경로 등)을 위해 세션에 저장된 대체 설정을 사용합니다. |
| `-ClearSession` | SwitchParameter | — | — | Named | — | 검색 전 세션 설정(전역 변수)을 지웁니다 |
| `-SkipSession` | SwitchParameter | — | — | Named | — | Language, Database paths 등 Data 기본 설정에 대해 세션에 저장된 대체 설정을 사용하지 마십시오 |

## Examples

### Remove-Refactor -Name "CustomRefactor" -RemoveDefault Removes a specific refactor set named "CustomRefactor" and allows removal of default sets if matched

```powershell
Remove-Refactor -Name "CustomRefactor" -RemoveDefault
Removes a specific refactor set named "CustomRefactor" and allows removal
of default sets if matched
```

## Parameter Details

### `-Name <String[]>`

> 리팩터의 이름, 와일드카드 허용

| Property | Value |
|:---|:---|
| **Required?** | Yes |
| **Position?** | 0 |
| **Default value** | *(none)* |
| **Accept pipeline input?** | True (ByValue, ByPropertyName) |
| **Aliases** | `PreferenceName` |
| **Accept wildcard characters?** | Yes |

<hr/>
### `-RemoveDefault`

> 표준 리팩터 집합도 제거하도록 전환

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
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
### `-DefaultValue <String>`

> 기본 설정이 없는 경우의 기본값

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | True (ByPropertyName) |
| **Aliases** | `DefaultPreference` |
| **Accept wildcard characters?** | No |

<hr/>
### `-SessionOnly`

> 데이터 기본 설정(언어, 데이터베이스 경로 등)을 위해 세션에 저장된 대체 설정을 사용합니다.

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
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
| **Default value** | *(none)* |
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
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | `FromPreferences` |
| **Accept wildcard characters?** | No |

<hr/>
## Related Links

- [Add-FeatureLineToREADME](https://github.com/genXdev/genXdev/blob/main/Docs/ko-KR/Add-FeatureLineToREADME.md)
- [Add-IdeaLineToREADME](https://github.com/genXdev/genXdev/blob/main/Docs/ko-KR/Add-IdeaLineToREADME.md)
- [Add-IssueLineToREADME](https://github.com/genXdev/genXdev/blob/main/Docs/ko-KR/Add-IssueLineToREADME.md)
- [Add-LineToREADME](https://github.com/genXdev/genXdev/blob/main/Docs/ko-KR/Add-LineToREADME.md)
- [Add-ReleaseNoteLineToREADME](https://github.com/genXdev/genXdev/blob/main/Docs/ko-KR/Add-ReleaseNoteLineToREADME.md)
- [Add-TodoLineToREADME](https://github.com/genXdev/genXdev/blob/main/Docs/ko-KR/Add-TodoLineToREADME.md)
- [Get-Features](https://github.com/genXdev/genXdev/blob/main/Docs/ko-KR/Get-Features.md)
- [Get-Ideas](https://github.com/genXdev/genXdev/blob/main/Docs/ko-KR/Get-Ideas.md)
- [Get-Issues](https://github.com/genXdev/genXdev/blob/main/Docs/ko-KR/Get-Issues.md)
- [Get-Refactor](https://github.com/genXdev/genXdev/blob/main/Docs/ko-KR/Get-Refactor.md)
- [Get-RefactorReport](https://github.com/genXdev/genXdev/blob/main/Docs/ko-KR/Get-RefactorReport.md)
- [Get-ReleaseNotes](https://github.com/genXdev/genXdev/blob/main/Docs/ko-KR/Get-ReleaseNotes.md)
- [Get-Todoos](https://github.com/genXdev/genXdev/blob/main/Docs/ko-KR/Get-Todoos.md)
- [New-Refactor](https://github.com/genXdev/genXdev/blob/main/Docs/ko-KR/New-Refactor.md)
- [Open-SourceFileInIde](https://github.com/genXdev/genXdev/blob/main/Docs/ko-KR/Open-SourceFileInIde.md)
- [Publish-ReleaseNotesToManifest](https://github.com/genXdev/genXdev/blob/main/Docs/ko-KR/Publish-ReleaseNotesToManifest.md)
- [Start-NextRefactor](https://github.com/genXdev/genXdev/blob/main/Docs/ko-KR/Start-NextRefactor.md)
- [Update-Refactor](https://github.com/genXdev/genXdev/blob/main/Docs/ko-KR/Update-Refactor.md)
- [VSCode](https://github.com/genXdev/genXdev/blob/main/Docs/ko-KR/VSCode.md)

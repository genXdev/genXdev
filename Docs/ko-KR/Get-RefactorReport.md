# Get-RefactorReport

> **Module:** GenXdev.Coding | **Type:** Cmdlet | **Aliases:** `refactorreport`

## Synopsis

> 리팩터링 작업 및 해당 상태에 대한 상세 보고서를 생성합니다.

## Description

리팩토링 작업의 현재 상태, 완료 상태 및 영향을 받는 함수를 검토하여 진행 상황을 분석하고 보고합니다. 출력은 구조화된 해시테이블 형식 또는 사람이 읽을 수 있는 정렬된 텍스트 열로 제공됩니다. 보고서에는 리팩터 이름, 프롬프트 키, 우선 순위, 상태, 함수 개수 및 완료 비율이 포함됩니다.

## Syntax

```powershell
Get-RefactorReport [[-Name] <String[]>] [-AsText] [-ClearSession] [-PreferencesDatabasePath <String>] [-SessionOnly] [-SkipSession] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-Name` | String[] | — | ✅ (ByValue, ByPropertyName) | 0 | — | 리팩터의 이름, 와일드카드 허용 🌐 *Supports wildcards* |
| `-PreferencesDatabasePath` | String | — | — | Named | — | 기본 설정 데이터베이스 파일의 경로를 지정합니다. |
| `-SessionOnly` | SwitchParameter | — | — | Named | `False` | 설정된 경우 리팩터링 데이터에 세션 캐시만 사용합니다. |
| `-ClearSession` | SwitchParameter | — | — | Named | `False` | 설정된 경우, 실행 전에 세션 캐시를 지웁니다. |
| `-SkipSession` | SwitchParameter | — | — | Named | `False` | 설정된 경우 세션 캐시 로드를 건너뜁니다. |
| `-AsText` | SwitchParameter | — | — | Named | `False` | 해시테이블 대신 텍스트 형식으로 보고서 출력 |

## Examples

### Example 1

```powershell
Get-RefactorReport -Name "DatabaseRefactor" -AsText
```

'DatabaseRefactor'와 일치하는 리팩터에 대한 텍스트 보고서를 생성합니다.

### Example 2

```powershell
refactorreport "*"
```

별칭을 사용하는 모든 리팩터에 대한 해시테이블 보고서를 생성합니다.

## Parameter Details

### `-Name <String[]>`

> 리팩터의 이름, 와일드카드 허용

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | 0 |
| **Default value** | *(none)* |
| **Accept pipeline input?** | True (ByValue, ByPropertyName) |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | Yes |

<hr/>
### `-PreferencesDatabasePath <String>`

> 기본 설정 데이터베이스 파일의 경로를 지정합니다.

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | `DatabasePath` |
| **Accept wildcard characters?** | No |

<hr/>
### `-SessionOnly`

> 설정된 경우 리팩터링 데이터에 세션 캐시만 사용합니다.

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

> 설정된 경우, 실행 전에 세션 캐시를 지웁니다.

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

> 설정된 경우 세션 캐시 로드를 건너뜁니다.

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | `False` |
| **Accept pipeline input?** | False |
| **Aliases** | `FromPreferences` |
| **Accept wildcard characters?** | No |

<hr/>
### `-AsText`

> 해시테이블 대신 텍스트 형식으로 보고서 출력

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | `False` |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
## Outputs


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
- [Get-ReleaseNotes](https://github.com/genXdev/genXdev/blob/main/Docs/ko-KR/Get-ReleaseNotes.md)
- [Get-Todoos](https://github.com/genXdev/genXdev/blob/main/Docs/ko-KR/Get-Todoos.md)
- [New-Refactor](https://github.com/genXdev/genXdev/blob/main/Docs/ko-KR/New-Refactor.md)
- [Open-SourceFileInIde](https://github.com/genXdev/genXdev/blob/main/Docs/ko-KR/Open-SourceFileInIde.md)
- [Publish-ReleaseNotesToManifest](https://github.com/genXdev/genXdev/blob/main/Docs/ko-KR/Publish-ReleaseNotesToManifest.md)
- [Remove-Refactor](https://github.com/genXdev/genXdev/blob/main/Docs/ko-KR/Remove-Refactor.md)
- [Start-NextRefactor](https://github.com/genXdev/genXdev/blob/main/Docs/ko-KR/Start-NextRefactor.md)
- [Update-Refactor](https://github.com/genXdev/genXdev/blob/main/Docs/ko-KR/Update-Refactor.md)
- [VSCode](https://github.com/genXdev/genXdev/blob/main/Docs/ko-KR/VSCode.md)

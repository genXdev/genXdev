# Update-Refactor

> **Module:** GenXdev.Coding | **Type:** Function | **Aliases:** `updaterefactor`

## Synopsis

> 파일 선택 및 처리를 포함한 리팩터링 집합을 업데이트하고 관리합니다.

## Description

리팩터링 집합을 포괄적으로 관리하여 다음을 수행합니다:
- 처리 큐에서 파일 추가 또는 제거
- 집합에서 삭제된 파일 정리
- 상태 정보 및 진행 상황 추적 관리
- LLM 기반 파일 선택 및 처리 처리
- 자동 및 수동 파일 관리 모두 지원
- 모든 작업에 대한 상세 로그 유지
- 삭제된 파일을 정상적으로 처리(CleanUpDeletedFiles를 사용하지 않으면 건너뜀)

## Syntax

```powershell
Update-Refactor [[-Name] <String[]>] [<CommonParameters>]

Update-Refactor [[-Refactor] <GenXdev.Helpers.RefactorDefinition[]>] [<CommonParameters>]

Update-Refactor [[-FilesToAdd] <IO.FileInfo[]>] [[-FilesToRemove] <IO.FileInfo[]>] [-ApiEndpoint <String>] [-ApiKey <String>] [-AskBeforeLLMSelection] [-CleanUpDeletedFiles] [-Clear] [-ClearLog] [-ClearSession] [-Code] [-ExposedCmdLets <GenXdev.Helpers.ExposedCmdletDefinition[]>] [-KeysToSend <String[]>] [-LLMQueryType <String>] [-MarkAllCompleted] [-Model <String>] [-NoSupportForJsonSchema <String>] [-PerformAISelections] [-PerformAutoSelections] [-PreferencesDatabasePath <String>] [-Priority <Int32>] [-Prompt <String>] [-PromptKey <String>] [-RedoLast] [-ReprocessModifiedFiles] [-Reset] [-ResetLMSelections] [-RetryFailedLLMSelections] [-SelectByCreationDateFrom <DateTime>] [-SelectByCreationDateTo <DateTime>] [-SelectByFreeGpuRam] [-SelectByFreeRam] [-SelectByModifiedDateFrom <DateTime>] [-SelectByModifiedDateTo <DateTime>] [-SelectionPrompt <String>] [-SelectionScript <String>] [-SessionOnly] [-SkipSession] [-Speak] [-Temperature <Double>] [-TimeoutSeconds <Int32>] [-VisualStudio] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-Name` | String[] | — | ✅ (ByValue, ByPropertyName) | 0 | `@('*')` | 리팩터의 이름, 와일드카드 허용 *(Parameter set: )* 🌐 *Supports wildcards* |
| `-Refactor` | GenXdev.Helpers.RefactorDefinition[] | — | — | 1 | — | 업데이트할 리팩터 세트 *(Parameter set: )* |
| `-FilesToAdd` | IO.FileInfo[] | — | — | 2 | `@()` | 추가할 파일 이름 |
| `-FilesToRemove` | IO.FileInfo[] | — | — | 3 | `@()` | 제거할 파일 이름 |
| `-SelectByModifiedDateFrom` | DateTime | — | — | Named | — | 다음으로부터 수정된 날짜별로 파일 선택 |
| `-SelectByModifiedDateTo` | DateTime | — | — | Named | — | 수정된 날짜를 기준으로 파일 선택하기 |
| `-SelectByCreationDateFrom` | DateTime | — | — | Named | — | 생성 날짜를 기준으로 파일 선택 |
| `-SelectByCreationDateTo` | DateTime | — | — | Named | — | 생성 날짜별로 파일 선택 |
| `-PromptKey` | String | — | — | Named | — | 프롬프트 키는 사용할 프롬프트 스크립트를 나타냅니다. |
| `-Prompt` | String | — | — | Named | `''` | 프롬프트 키는 사용할 프롬프트 스크립트를 나타냅니다. |
| `-SelectionScript` | String | — | — | Named | — | 리팩터링할 항목을 선택하는 PowerShell 함수 |
| `-SelectionPrompt` | String | — | — | Named | — | 제공된 경우, 스크립트 내용을 기반으로 선택을 수행하기 위해 LLM을 호출합니다. |
| `-LLMQueryType` | String | — | — | Named | `'Coding'` | LLM 쿼리의 유형 |
| `-Model` | String | — | — | Named | — | AI 작업에 사용할 모델 식별자 또는 패턴 |
| `-Temperature` | Double | — | — | Named | `-1` | 응답 임의성에 대한 온도 (0.0-1.0) |
| `-ApiEndpoint` | String | — | — | Named | — | AI 작업을 위한 API 엔드포인트 URL |
| `-ApiKey` | String | — | — | Named | — | 인증된 AI 작업을 위한 API 키 |
| `-NoSupportForJsonSchema` | String | — | — | Named | — | LLM이 JSON 스키마를 지원하지 않음을 나타냅니다. |
| `-TimeoutSeconds` | Int32 | — | — | Named | — | AI 작업의 제한 시간(초) |
| `-Priority` | Int32 | — | — | Named | — | 이 리팩터링 세트의 우선 순위 |
| `-ExposedCmdLets` | GenXdev.Helpers.ExposedCmdletDefinition[] | — | — | Named | `@()` | LLM 선택 과정에서 도구로 사용할 PowerShell 명령 정의 배열 |
| `-KeysToSend` | String[] | — | — | Named | `@()` | 파일을 연 후 키 입력으로 호출할 키 |
| `-PreferencesDatabasePath` | String | — | — | Named | — | 기본 설정 데이터 파일의 데이터베이스 경로 |
| `-CleanUpDeletedFiles` | SwitchParameter | — | — | Named | — | 삭제된 파일 정리 |
| `-AskBeforeLLMSelection` | SwitchParameter | — | — | Named | — | 사용자 상호 작용을 억제하려면 전환 |
| `-PerformAutoSelections` | SwitchParameter | — | — | Named | — | LLM 기반 파일 선택 처리를 활성화하는 스위치 |
| `-PerformAISelections` | SwitchParameter | — | — | Named | — | 리팩터 집합의 모든 파일을 처리하도록 전환 |
| `-RetryFailedLLMSelections` | SwitchParameter | — | — | Named | — | 실패한 LLM 선택 재시도로 전환 |
| `-Clear` | SwitchParameter | — | — | Named | — | 리팩터 집합에서 모든 파일을 지웁니다 |
| `-ClearLog` | SwitchParameter | — | — | Named | — | 리팩터 집합의 로그를 지웁니다. |
| `-Reset` | SwitchParameter | — | — | Named | — | 리팩터 세트의 처음부터 시작하세요 |
| `-ResetLMSelections` | SwitchParameter | — | — | Named | — | 모든 LLM 선택 항목 다시 시작 |
| `-MarkAllCompleted` | SwitchParameter | — | — | Named | — | 모든 파일을 리팩터링됨으로 표시 |
| `-RedoLast` | SwitchParameter | — | — | Named | — | 마지막 리팩터를 다시 실행 |
| `-ReprocessModifiedFiles` | SwitchParameter | — | — | Named | — | 마지막 업데이트 이후 수정된 파일을 자동으로 다시 처리 |
| `-Code` | SwitchParameter | — | — | Named | — | 파일을 열 IDE |
| `-VisualStudio` | SwitchParameter | — | — | Named | — | Visual Studio에서 열기 |
| `-Speak` | SwitchParameter | — | — | Named | — | 다음 리팩터의 세부 사항을 말해 보세요. |
| `-SelectByFreeRam` | SwitchParameter | — | — | Named | — | 사용 가능한 시스템 RAM에 따라 구성 선택 |
| `-SelectByFreeGpuRam` | SwitchParameter | — | — | Named | — | 사용 가능한 GPU RAM으로 구성 선택 |
| `-SessionOnly` | SwitchParameter | — | — | Named | — | 세션에 저장된 대체 설정을 AI 기본 설정에 사용 |
| `-ClearSession` | SwitchParameter | — | — | Named | — | AI 기본 설정에 대해 세션에 저장된 대체 설정을 지웁니다. |
| `-SkipSession` | SwitchParameter | — | — | Named | — | 세션에 영향을 주지 않고 영구 설정에만 저장 |

## Examples

### Update-Refactor -Name "CodeCleanup" -FilesToAdd ".\src\*.cs" `     -CleanUpDeletedFiles -PerformAutoSelections -ReprocessModifiedFiles

```powershell
Update-Refactor -Name "CodeCleanup" -FilesToAdd ".\src\*.cs" `
    -CleanUpDeletedFiles -PerformAutoSelections -ReprocessModifiedFiles
```

### Get-Refactor "MyRefactor" | Update-Refactor -Reset -Clear

```powershell
Get-Refactor "MyRefactor" | Update-Refactor -Reset -Clear
```

### updaterefactor * -Clear -Reset

```powershell
updaterefactor * -Clear -Reset
```

## Parameter Details

### `-Name <String[]>`

> 리팩터의 이름, 와일드카드 허용

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | 0 |
| **Default value** | `@('*')` |
| **Accept pipeline input?** | True (ByValue, ByPropertyName) |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | Yes |
| **Parameter set** | Name |

<hr/>
### `-Refactor <GenXdev.Helpers.RefactorDefinition[]>`

> 업데이트할 리팩터 세트

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | 1 |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |
| **Parameter set** | Refactor |

<hr/>
### `-FilesToAdd <IO.FileInfo[]>`

> 추가할 파일 이름

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | 2 |
| **Default value** | `@()` |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-FilesToRemove <IO.FileInfo[]>`

> 제거할 파일 이름

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | 3 |
| **Default value** | `@()` |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-SelectByModifiedDateFrom <DateTime>`

> 다음으로부터 수정된 날짜별로 파일 선택

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-SelectByModifiedDateTo <DateTime>`

> 수정된 날짜를 기준으로 파일 선택하기

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-SelectByCreationDateFrom <DateTime>`

> 생성 날짜를 기준으로 파일 선택

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-SelectByCreationDateTo <DateTime>`

> 생성 날짜별로 파일 선택

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-PromptKey <String>`

> 프롬프트 키는 사용할 프롬프트 스크립트를 나타냅니다.

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-Prompt <String>`

> 프롬프트 키는 사용할 프롬프트 스크립트를 나타냅니다.

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | `''` |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-SelectionScript <String>`

> 리팩터링할 항목을 선택하는 PowerShell 함수

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-SelectionPrompt <String>`

> 제공된 경우, 스크립트 내용을 기반으로 선택을 수행하기 위해 LLM을 호출합니다.

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-LLMQueryType <String>`

> LLM 쿼리의 유형

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | `'Coding'` |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-Model <String>`

> AI 작업에 사용할 모델 식별자 또는 패턴

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-Temperature <Double>`

> 응답 임의성에 대한 온도 (0.0-1.0)

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | `-1` |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-ApiEndpoint <String>`

> AI 작업을 위한 API 엔드포인트 URL

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-ApiKey <String>`

> 인증된 AI 작업을 위한 API 키

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-NoSupportForJsonSchema <String>`

> LLM이 JSON 스키마를 지원하지 않음을 나타냅니다.

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-TimeoutSeconds <Int32>`

> AI 작업의 제한 시간(초)

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-Priority <Int32>`

> 이 리팩터링 세트의 우선 순위

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-ExposedCmdLets <GenXdev.Helpers.ExposedCmdletDefinition[]>`

> LLM 선택 과정에서 도구로 사용할 PowerShell 명령 정의 배열

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | `@()` |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-KeysToSend <String[]>`

> 파일을 연 후 키 입력으로 호출할 키

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | `@()` |
| **Accept pipeline input?** | False |
| **Aliases** | `keys` |
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
### `-CleanUpDeletedFiles`

> 삭제된 파일 정리

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-AskBeforeLLMSelection`

> 사용자 상호 작용을 억제하려면 전환

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-PerformAutoSelections`

> LLM 기반 파일 선택 처리를 활성화하는 스위치

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-PerformAISelections`

> 리팩터 집합의 모든 파일을 처리하도록 전환

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | `PerformAllLLMSelections` |
| **Accept wildcard characters?** | No |

<hr/>
### `-RetryFailedLLMSelections`

> 실패한 LLM 선택 재시도로 전환

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-Clear`

> 리팩터 집합에서 모든 파일을 지웁니다

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-ClearLog`

> 리팩터 집합의 로그를 지웁니다.

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-Reset`

> 리팩터 세트의 처음부터 시작하세요

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-ResetLMSelections`

> 모든 LLM 선택 항목 다시 시작

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-MarkAllCompleted`

> 모든 파일을 리팩터링됨으로 표시

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-RedoLast`

> 마지막 리팩터를 다시 실행

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-ReprocessModifiedFiles`

> 마지막 업데이트 이후 수정된 파일을 자동으로 다시 처리

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | `AutoAddModifiedFiles` |
| **Accept wildcard characters?** | No |

<hr/>
### `-Code`

> 파일을 열 IDE

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | `c` |
| **Accept wildcard characters?** | No |

<hr/>
### `-VisualStudio`

> Visual Studio에서 열기

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | `vs` |
| **Accept wildcard characters?** | No |

<hr/>
### `-Speak`

> 다음 리팩터의 세부 사항을 말해 보세요.

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-SelectByFreeRam`

> 사용 가능한 시스템 RAM에 따라 구성 선택

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-SelectByFreeGpuRam`

> 사용 가능한 GPU RAM으로 구성 선택

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-SessionOnly`

> 세션에 저장된 대체 설정을 AI 기본 설정에 사용

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

> AI 기본 설정에 대해 세션에 저장된 대체 설정을 지웁니다.

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

> 세션에 영향을 주지 않고 영구 설정에만 저장

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
- [Remove-Refactor](https://github.com/genXdev/genXdev/blob/main/Docs/ko-KR/Remove-Refactor.md)
- [Start-NextRefactor](https://github.com/genXdev/genXdev/blob/main/Docs/ko-KR/Start-NextRefactor.md)
- [VSCode](https://github.com/genXdev/genXdev/blob/main/Docs/ko-KR/VSCode.md)

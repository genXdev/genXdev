# New-GitCommit

> **Module:** GenXdev.Coding.Git | **Type:** Cmdlet | **Aliases:** `commit`

## Synopsis

> 변경 사항을 모두 포함하는 새 git 커밋을 생성하고 푸시합니다.

## Description

현재 Git 리포지토리의 모든 변경 사항을 스테이징하고, 지정된 제목으로 커밋을 생성한 후, 원격 origin으로 변경 사항을 푸시합니다. 필요한 경우 자동으로 업스트림 추적을 설정합니다.

## Syntax

```powershell
New-GitCommit [[-Title] <String>] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-Title` | String | — | — | 0 | — | 사용할 커밋 메시지 제목 |

## Examples

### Example 1

```powershell
New-GitCommit -Title "Added new authentication feature"
```

"새 인증 기능 추가"라는 사용자 지정 메시지로 커밋을 생성합니다.

### Example 2

```powershell
commit "Hotfix for login issue"
```

기본 메시지로 'commit' 별칭을 사용하여 커밋을 만듭니다.

## Parameter Details

### `-Title <String>`

> 사용할 커밋 메시지 제목

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | 0 |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
## Related Links

- [Get-GitChangedFiles](https://github.com/genXdev/genXdev/blob/main/Docs/ko-KR/Get-GitChangedFiles.md)
- [PermanentlyDeleteGitFolders](https://github.com/genXdev/genXdev/blob/main/Docs/ko-KR/PermanentlyDeleteGitFolders.md)

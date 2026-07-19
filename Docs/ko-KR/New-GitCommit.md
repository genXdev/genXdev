# New-GitCommit

> **Module:** GenXdev.Coding.Git | **Type:** Cmdlet | **Aliases:** `commit

## Synopsis

> 모든 변경 사항으로 새 git 커밋을 생성하고 푸시합니다.

## Description

현재 git 저장소의 모든 변경 사항을 스테이징하고, 지정된 제목으로 커밋을 생성한 후, 변경 사항을 원격 origin으로 푸시합니다. 필요한 경우 자동으로 업스트림 추적을 설정합니다.

## Syntax

```powershell
New-GitCommit [[-Title] <string>] [<CommonParameters>]
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

"Added new authentication feature"라는 사용자 지정 메시지로 커밋을 생성합니다.

### Example 2

```powershell
commit "Hotfix for login issue"
```

'commit' 별칭을 사용하여 기본 메시지로 커밋을 생성합니다.

## Related Links

- [New-GitCommit on GitHub](https://github.com/genXdev/genXdev)

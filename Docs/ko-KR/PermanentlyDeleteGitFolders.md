# PermanentlyDeleteGitFolders

> **Module:** GenXdev.Coding.Git | **Type:** Function | **Aliases:** —

## Synopsis

> Git 저장소의 모든 브랜치에서 지정된 폴더를 영구 삭제합니다.

## Description

모든 브랜치의 전체 커밋 기록에서 지정된 폴더를 제거하여 Git 저장소를 정리합니다. 이 작업은 저장소를 복제하고, git filter-branch를 사용하여 폴더를 제거한 후 변경 사항을 강제로 푸시하여 수행됩니다. 이 작업은 파괴적이며 Git 기록을 영구적으로 다시 작성합니다.

## Syntax

```powershell
PermanentlyDeleteGitFolders -RepoUri <String> -Folders <String[]> [-tempPath <String>] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-RepoUri` | String | ✅ | — | 0 | — | 정리할 Git 저장소의 URI |
| `-Folders` | String[] | ✅ | — | 1 | — | 영구적으로 제거할 폴더 경로 배열 |
| `-tempPath` | String | — | — | Named | `"~\convert.tmp\"` | The `-tempPath` parameter. |

## Examples

### PermanentlyDeleteGitFolders `     -RepoUri "https://github.com/user/repo.git" `     -Folders "bin", "obj"

```powershell
PermanentlyDeleteGitFolders `
    -RepoUri "https://github.com/user/repo.git" `
    -Folders "bin", "obj"
```

## Outputs

- `String[]`

## Related Links

- [PermanentlyDeleteGitFolders on GitHub](https://github.com/genXdev/genXdev)

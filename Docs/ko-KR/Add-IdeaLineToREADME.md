# Add-IdeaLineToREADME

> **Module:** GenXdev.Coding | **Type:** Function | **Aliases:** `idea

## Synopsis

> README.md 파일에 아이디어 항목을 추가합니다.

## Description

README.md 파일의 "## Ideas" 섹션에 타임스탬프가 있는 아이디어를 추가합니다. 수정된 섹션을 표시하고 Visual Studio Code에서 열 수 있습니다.

## Syntax

```powershell
Add-IdeaLineToREADME [[-Line] <String>] [-Ascending] [-Code] [-First <Int32>] [-Priority <Int32>] [-Show] [-SortByDate] [-UseHomeREADME] [-UseOneDriveREADME] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-Line` | String | — | — | 0 | `''` | 추가할 아이디어 텍스트 |
| `-Code` | SwitchParameter | — | — | Named | — | 비주얼 스튜디오 코드에서 README 열기 |
| `-Show` | SwitchParameter | — | — | Named | — | 수정된 섹션 표시 |
| `-UseHomeREADME` | SwitchParameter | — | — | Named | — | PowerShell 프로필 디렉터리에서 README 사용 |
| `-UseOneDriveREADME` | SwitchParameter | — | — | Named | — | OneDrive 디렉토리에 있는 README를 사용하세요 |
| `-Priority` | Int32 | — | — | Named | `1` | 정렬 우선순위 (높을수록 먼저 표시됨, 기본값 1) |
| `-SortByDate` | SwitchParameter | — | — | Named | — | 우선순위 대신 날짜(yyyyMMdd 접두사)로 줄 정렬 |
| `-Ascending` | SwitchParameter | — | — | Named | — | 정렬 순서를 반대로 변경합니다(내림차순 대신 오름차순). |
| `-First` | Int32 | — | — | Named | `0` | 제한 - 처음 N개 줄까지만 출력 |

## Examples

### Add-IdeaLineToREADME -Line "Create new PowerShell module" -Show

```powershell
Add-IdeaLineToREADME -Line "Create new PowerShell module" -Show
```

### idea "New feature idea" -UseOneDriveREADME

```powershell
idea "New feature idea" -UseOneDriveREADME
```

## Related Links

- [Add-IdeaLineToREADME on GitHub](https://github.com/genXdev/genXdev)

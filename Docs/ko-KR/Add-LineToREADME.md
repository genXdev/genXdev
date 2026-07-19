# Add-LineToREADME

> **Module:** GenXdev.Coding | **Type:** Function | **Aliases:** —

## Synopsis

> 지정된 섹션의 README.md 마크다운 파일에 한 줄을 추가합니다.

## Description

README.md 파일을 찾아 수정하여 지정된 섹션에 새 줄을 추가합니다.
섹션이 없으면 만들 수 있습니다. 줄을 코드 블록으로 서식 지정하고 수정된 섹션을 표시하는 기능을 지원합니다.

먼저 현재 디렉터리에서 찾은 다음, 디렉터리를 거슬러 올라가며 README 위치를 찾습니다. 찾을 수 없으면 PowerShell 프로필 디렉터리의 README를 사용합니다.

## Syntax

```powershell
Add-LineToREADME -Section <String> [-Ascending] [-Code] [-Done] [-First <Int32>] [-Line <String>] [-Priority <Int32>] [-Show] [-SortByDate] [-UseHomeREADME] [-UseOneDriveREADME] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-Line` | String | — | — | Named | `''` | README에 추가할 줄 |
| `-Section` | String | ✅ | — | 0 | — | The section to add the line to |
| `-Code` | SwitchParameter | — | — | Named | — | 수정 후 Visual Studio Code에서 열기 |
| `-Show` | SwitchParameter | — | — | Named | — | 수정된 섹션 표시 |
| `-Done` | SwitchParameter | — | — | Named | — | 완료로 표시 |
| `-UseHomeREADME` | SwitchParameter | — | — | Named | — | PowerShell 프로필 디렉터리에서 README 사용 |
| `-UseOneDriveREADME` | SwitchParameter | — | — | Named | — | OneDrive 디렉토리에 있는 README를 사용하세요 |
| `-Priority` | Int32 | — | — | Named | `1` | 정렬 우선순위 (높을수록 먼저 표시됨, 기본값 1) |
| `-SortByDate` | SwitchParameter | — | — | Named | — | 우선순위 대신 날짜(yyyyMMdd 접두사)로 줄 정렬 |
| `-Ascending` | SwitchParameter | — | — | Named | — | 정렬 순서를 반대로 변경합니다(내림차순 대신 오름차순). |
| `-First` | Int32 | — | — | Named | `0` | 제한 - 처음 N개 줄까지만 출력 |

## Examples

### Add-LineToREADME -Line "New feature" -Section "## Features"

```powershell
Add-LineToREADME -Line "New feature" -Section "## Features"
```

### Add-LineToREADME "High prio item" "## Issues" -Priority 5

```powershell
Add-LineToREADME "High prio item" "## Issues" -Priority 5
```

## Related Links

- [Add-LineToREADME on GitHub](https://github.com/genXdev/genXdev)

# Add-TodoLineToREADME

> **Module:** GenXdev.Coding | **Type:** Function | **Aliases:** `todo

## Synopsis

> README.md 파일에 할 일 항목을 추가합니다.

## Description

README.md 파일의 "## Todos" 섹션에 타임스탬프가 포함된 할 일 항목을 추가합니다.
할 일 항목은 완료로 표시될 수 있으며 수정된 섹션을 표시할 수 있습니다.
각 새 할 일 항목은 완료 표시가 아닌 이상 자동으로 타임스탬프가 찍힙니다.

## Syntax

```powershell
Add-TodoLineToREADME [[-Line] <String>] [-Ascending] [-Code] [-Done] [-First <Int32>] [-Priority <Int32>] [-Show] [-SortByDate] [-UseHomeREADME] [-UseOneDriveREADME] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-Line` | String | — | — | 0 | `''` | 추가할 할 일 항목 텍스트 |
| `-Code` | SwitchParameter | — | — | Named | — | 비주얼 스튜디오 코드에서 README 열기 |
| `-Show` | SwitchParameter | — | — | Named | — | 수정된 섹션 표시 |
| `-Done` | SwitchParameter | — | — | Named | — | 할 일 항목을 완료로 표시 |
| `-UseHomeREADME` | SwitchParameter | — | — | Named | — | PowerShell 프로필 디렉터리에서 README 사용 |
| `-UseOneDriveREADME` | SwitchParameter | — | — | Named | — | OneDrive 디렉토리에 있는 README를 사용하세요 |
| `-Priority` | Int32 | — | — | Named | `1` | 정렬 우선순위 (높을수록 먼저 표시됨, 기본값 1) |
| `-SortByDate` | SwitchParameter | — | — | Named | — | 우선순위 대신 날짜(yyyyMMdd 접두사)로 줄 정렬 |
| `-Ascending` | SwitchParameter | — | — | Named | — | 정렬 순서를 반대로 변경합니다(내림차순 대신 오름차순). |
| `-First` | Int32 | — | — | Named | `0` | 제한 - 처음 N개 줄까지만 출력 |

## Examples

### Add-TodoLineToREADME -Line "Implement new feature" -Show -Code

```powershell
Add-TodoLineToREADME -Line "Implement new feature" -Show -Code
```

### todo "Fix bug" -Done

```powershell
todo "Fix bug" -Done
```

## Related Links

- [Add-TodoLineToREADME on GitHub](https://github.com/genXdev/genXdev)

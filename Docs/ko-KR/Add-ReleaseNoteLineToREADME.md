# Add-ReleaseNoteLineToREADME

> **Module:** GenXdev.Coding | **Type:** Function | **Aliases:** `releasenote

## Synopsis

> 타임스탬프와 함께 README 파일에 ReleaseNote 행을 추가합니다.

## Description

지정된 README 파일에 현재 날짜를 yyyyMMdd 형식의 접두사로 하여 ReleaseNote 줄을 추가합니다. 줄은 코드로 서식이 지정될 수 있으며 선택적으로 표시될 수 있습니다.

## Syntax

```powershell
Add-ReleaseNoteLineToREADME [[-Line] <String>] [-Ascending] [-Code] [-First <Int32>] [-Priority <Int32>] [-Show] [-SortByDate] [-UseHomeREADME] [-UseOneDriveREADME] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-Line` | String | — | — | 0 | `''` | The ReleaseNote description text to add |
| `-Code` | SwitchParameter | — | — | Named | — | ```
The line as code
``` |
| `-Show` | SwitchParameter | — | — | Named | — | Display the README after adding the line |
| `-UseHomeREADME` | SwitchParameter | — | — | Named | — | 홈 디렉토리의 README 사용 |
| `-UseOneDriveREADME` | SwitchParameter | — | — | Named | — | OneDrive 디렉토리에 있는 README를 사용하세요 |
| `-Priority` | Int32 | — | — | Named | `1` | 정렬 우선순위 (높을수록 먼저 표시됨, 기본값 1) |
| `-SortByDate` | SwitchParameter | — | — | Named | — | 우선순위 대신 날짜(yyyyMMdd 접두사)로 줄 정렬 |
| `-Ascending` | SwitchParameter | — | — | Named | — | 정렬 순서를 반대로 변경합니다(내림차순 대신 오름차순). |
| `-First` | Int32 | — | — | Named | `0` | 제한 - 처음 N개 줄까지만 출력 |

## Examples

### Add-ReleaseNoteLineToREADME -Line "Added new Git ReleaseNote"

```powershell
Add-ReleaseNoteLineToREADME -Line "Added new Git ReleaseNote"
```

### ReleaseNote "Added new Git ReleaseNote" -Code -Show

```powershell
ReleaseNote "Added new Git ReleaseNote" -Code -Show
```

## Related Links

- [Add-ReleaseNoteLineToREADME on GitHub](https://github.com/genXdev/genXdev)

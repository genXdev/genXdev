# Get-Features

> **Module:** GenXdev.Coding | **Type:** Function | **Aliases:** `features

## Synopsis

> README.md 파일의 기능을 표시합니다.

## Description

README.md 파일의 "## Features" 섹션에 있는 모든 기능을 표시합니다. 현재 위치, PowerShell 프로필 디렉터리 또는 OneDrive 디렉터리에 있는 README를 사용할 수 있습니다.

## Syntax

```powershell
Get-Features [[-First] <Int32>] [-Ascending] [-SortByDate] [-UseHomeREADME] [-UseOneDriveREADME] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-UseHomeREADME` | SwitchParameter | — | — | Named | — | PowerShell 프로필 디렉터리에서 README 사용 |
| `-UseOneDriveREADME` | SwitchParameter | — | — | Named | — | OneDrive 디렉토리에 있는 README를 사용하세요 |
| `-SortByDate` | SwitchParameter | — | — | Named | — | 우선순위 대신 날짜(yyyyMMdd 접두사)로 줄 정렬 |
| `-Ascending` | SwitchParameter | — | — | Named | — | 정렬 순서를 반대로 변경합니다(내림차순 대신 오름차순). |
| `-First` | Int32 | — | — | 0 | `0` | 첫 N줄로 출력 제한 |

## Examples

### Features -UseHomeREADME

```powershell
Features -UseHomeREADME
```

## Related Links

- [Get-Features on GitHub](https://github.com/genXdev/genXdev)

# Get-MpCmdRunPath

> **Module:** GenXdev.Windows | **Type:** Cmdlet | **Aliases:** —

## Synopsis

> Windows Defender MpCmdRun.exe 실행 파일의 경로를 가져옵니다.

## Description

* Windows Defender 명령줄 유틸리티(MpCmdRun.exe)의 전체 경로를 찾아 반환합니다.
* cmdlet은 Program Files의 표준 설치 위치를 확인하고 파일이 없을 경우 적절한 오류 처리를 제공합니다.

## Syntax

```powershell
Get-MpCmdRunPath [<CommonParameters>]
```

## Examples

### Example 1

```powershell
$defenderPath = Get-MpCmdRunPath
```

Windows Defender 명령줄 도구의 전체 경로를 검색합니다.

## Related Links

- [Get-MpCmdRunPath on GitHub](https://github.com/genXdev/genXdev)

# Get-ClipboardFiles

> **Module:** GenXdev.Windows | **Type:** Cmdlet | **Aliases:** `getclipfiles, `gcbf

## Synopsis

> 파일 작업(예: 복사/붙여넣기)을 위해 설정된 Windows 클립보드에서 파일을 가져옵니다.

## Description

* 이 함수는 파일 작업을 위해 이전에 설정된 Windows 클립보드에서 파일 경로를 검색합니다.
* STA 및 MTA 스레딩 모드를 자동으로 처리하여 다양한 PowerShell 실행 컨텍스트에서 호환성을 보장합니다.
* 함수는 파일 존재 여부를 확인하고 Get-ChildItem 또는 Get-Item 출력과 유사한 개체로 존재하는 파일/디렉토리만 반환합니다.

## Syntax

```powershell
Get-ClipboardFiles [<CommonParameters>]
```

## Examples

### Example 1

```powershell
Get-ClipboardFiles
```

클립보드에 있는 모든 파일을 파일 시스템 개체로 가져옵니다.

### Example 2

```powershell
$clipboardFiles = Get-ClipboardFiles
$clipboardFiles | ForEach-Object { Write-Host $_.FullName }
```

클립보드 파일을 가져와 전체 경로를 표시합니다.

### Example 3

```powershell
Get-ClipboardFiles | Where-Object { $_.Extension -eq '.txt' }
```

클립보드에서 텍스트 파일만 가져옵니다.

## Related Links

- [Get-ClipboardFiles on GitHub](https://github.com/genXdev/genXdev)

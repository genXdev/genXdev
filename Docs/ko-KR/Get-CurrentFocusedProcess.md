# Get-CurrentFocusedProcess

> **Module:** GenXdev.Windows | **Type:** Cmdlet | **Aliases:** —

## Synopsis

> 현재 키보드 포커스를 가진 창의 프로세스 객체를 검색합니다.

## Description

* 이 cmdlet은 P/Invoke를 통해 Windows API 호출을 사용하여 현재 포커스된 창과 연결된 Process 개체를 식별하고 반환합니다.
* User32.dll의 GetForegroundWindow 및 GetWindowThreadProcessId 함수를 활용하여 포커스된 창을 확인하고 해당 프로세스 ID를 얻습니다.

## Syntax

```powershell
Get-CurrentFocusedProcess [<CommonParameters>]
```

## Examples

### Example 1

```powershell
$focusedProcess = Get-CurrentFocusedProcess
Write-Host "Active window process: $($focusedProcess.ProcessName)"
```

현재 키보드 포커스를 가진 창의 프로세스 개체를 검색합니다.

## Related Links

- [Get-CurrentFocusedProcess on GitHub](https://github.com/genXdev/genXdev)

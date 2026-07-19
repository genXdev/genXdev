# Get-ForegroundWindow

> **Module:** GenXdev.Windows | **Type:** Cmdlet | **Aliases:** —

## Synopsis

> 현재 활성화된 전경 창의 핸들을 가져옵니다.

## Description

* 이 cmdlet은 현재 포그라운드에 있으며 키보드 포커스를 가진 창의 핸들(HWND)을 검색합니다.
* P/Invoke를 통해 Windows API 함수를 사용하여 User32.dll 라이브러리와 상호 작용합니다.

## Syntax

```powershell
Get-ForegroundWindow [<CommonParameters>]
```

## Examples

### Example 1

```powershell
Get-ForegroundWindow
```

현재 활성 창의 IntPtr 핸들을 검색하여 반환합니다.

### Example 2

```powershell
$windowHandle = Get-ForegroundWindow
Write-Host "Active window handle: $windowHandle"
```

변수에 전경 창 핸들을 저장하고 표시합니다.

## Related Links

- [Get-ForegroundWindow on GitHub](https://github.com/genXdev/genXdev)

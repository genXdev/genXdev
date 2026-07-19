# Set-ForegroundWindow

> **Module:** GenXdev.Windows | **Type:** Cmdlet | **Aliases:** —

## Synopsis

> 지정된 창을 전경으로 가져와 활성 창으로 만듭니다.

## Description

* 여러 Win32 API 메서드를 사용하여 최대한 안정적으로 창을 전경 창으로 만듭니다.
* 먼저 SwitchToThisWindow API를 사용하려고 시도한 후, 필요시 SetForegroundWindow로 대체합니다.

## Syntax

```powershell
Set-ForegroundWindow [-WindowHandle] <IntPtr> [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-WindowHandle` | IntPtr | ✅ | — | 0 | `0` | 전경 창으로 설정할 창 핸들 |

## Examples

### Example 1

```powershell
$hwnd = (Get-Process notepad).MainWindowHandle
Set-ForegroundWindow -WindowHandle $hwnd
```

창 핸들을 사용하여 메모장 창을 전면으로 가져옵니다.

### Example 2

```powershell
$hwnd = (Get-Process notepad).MainWindowHandle
Set-ForegroundWindow $hwnd
```

간결한 구문을 위해 위치 매개변수를 사용합니다.

## Related Links

- [Set-ForegroundWindow on GitHub](https://github.com/genXdev/genXdev)

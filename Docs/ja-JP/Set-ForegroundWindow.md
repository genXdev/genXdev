# Set-ForegroundWindow

> **Module:** GenXdev.Windows | **Type:** Cmdlet | **Aliases:** —

## Synopsis

> 指定されたウィンドウを前面に表示し、アクティブウィンドウにします。

## Description

* 最大限の信頼性を得るために、複数のWin32 APIメソッドを使用してウィンドウをフォアグラウンドウィンドウにします。
* 最初にSwitchToThisWindow APIを使用して試み、必要に応じてSetForegroundWindowにフォールバックします。

## Syntax

```powershell
Set-ForegroundWindow [-WindowHandle] <IntPtr> [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-WindowHandle` | IntPtr | ✅ | — | 0 | `0` | フォアグラウンドウィンドウとして設定するウィンドウハンドル |

## Examples

### Example 1

```powershell
$hwnd = (Get-Process notepad).MainWindowHandle
Set-ForegroundWindow -WindowHandle $hwnd
```

ウィンドウハンドルを使用してメモ帳ウィンドウを前面に持ってきます。

### Example 2

```powershell
$hwnd = (Get-Process notepad).MainWindowHandle
Set-ForegroundWindow $hwnd
```

簡潔な構文のために位置パラメータを使用します。

## Related Links

- [Set-ForegroundWindow on GitHub](https://github.com/genXdev/genXdev)

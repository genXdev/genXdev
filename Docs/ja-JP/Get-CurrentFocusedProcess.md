# Get-CurrentFocusedProcess

> **Module:** GenXdev.Windows | **Type:** Cmdlet | **Aliases:** —

## Synopsis

> 現在キーボードフォーカスを持つウィンドウのプロセスオブジェクトを取得します。

## Description

* このコマンドレットは、P/Invokeを介したWindows API呼び出しを使用して、現在フォーカスされているウィンドウに関連付けられたプロセスオブジェクトを特定して返します。
* User32.dllの関数GetForegroundWindowとGetWindowThreadProcessIdを利用して、どのウィンドウがフォーカスを持っているかを判断し、その関連するプロセスIDを取得します。

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

現在キーボードフォーカスを持つウィンドウのプロセスオブジェクトを取得します。

## Related Links

- [Get-CurrentFocusedProcess on GitHub](https://github.com/genXdev/genXdev)

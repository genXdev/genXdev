# Get-ForegroundWindow

> **Module:** GenXdev.Windows | **Type:** Cmdlet | **Aliases:** —

## Synopsis

> 現在アクティブなフォアグラウンドウィンドウのハンドルを取得します。

## Description

* このコマンドレットは、現在フォアグラウンドにあってキーボードフォーカスを持っているウィンドウのウィンドウハンドル (HWND) を取得します。
* P/Invoke を通じて Windows API 関数を使用して User32.dll ライブラリとやり取りします。

## Syntax

```powershell
Get-ForegroundWindow [<CommonParameters>]
```

## Examples

### Example 1

```powershell
Get-ForegroundWindow
```

現在アクティブなウィンドウのIntPtrハンドルを取得して返します。

### Example 2

```powershell
$windowHandle = Get-ForegroundWindow
Write-Host "Active window handle: $windowHandle"
```

フォアグラウンドウィンドウのハンドルを変数に格納し、表示します。

## Related Links

- [Get-ForegroundWindow on GitHub](https://github.com/genXdev/genXdev)

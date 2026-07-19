# New-MicrosoftShellTab

> **Module:** GenXdev.Console | **Type:** Function | **Aliases:** `x

## Synopsis

> PowerShell を実行する新しい Windows ターミナル タブを作成します。

## Description

キーボードショートカットCtrl+Shift+Tをシミュレートして、新しいWindows Terminalタブを開きます。
この関数は、PowerShellウィンドウを前面に表示し、キーストロークの組み合わせを送信し、オプションで遅延後に現在のタブを閉じます。

## Syntax

```powershell
New-MicrosoftShellTab [-DontCloseThisTab] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-DontCloseThisTab` | SwitchParameter | — | — | Named | — | 新しいタブを作成した後、現在のタブを開いたままにする |

## Examples

### New-MicrosoftShellTab -DontCloseThisTab Creates a new terminal tab while keeping the current tab open.

```powershell
New-MicrosoftShellTab -DontCloseThisTab
Creates a new terminal tab while keeping the current tab open.
```

### x Creates a new terminal tab and closes the current one after 3 seconds.

```powershell
x
Creates a new terminal tab and closes the current one after 3 seconds.
```

## Related Links

- [New-MicrosoftShellTab on GitHub](https://github.com/genXdev/genXdev)

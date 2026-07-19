# New-MicrosoftShellTab

> **Module:** GenXdev.Console | **Type:** Function | **Aliases:** `x

## Synopsis

> Creates a new Windows Terminal tab running PowerShell.

## Description

Opens a new Windows Terminal tab by simulating the keyboard shortcut Ctrl+Shift+T.
The function brings the PowerShell window to the foreground, sends the keystroke
combination, and optionally closes the current tab after a delay.

## Syntax

```powershell
New-MicrosoftShellTab [-DontCloseThisTab] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-DontCloseThisTab` | SwitchParameter | — | — | Named | — | Keep current tab open after creating new tab |

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

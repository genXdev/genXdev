# Unprotect-WebbrowserTab

> **Module:** GenXdev.Webbrowser.Playwright | **Type:** Function | **Aliases:** `wbctrl

## Synopsis

> Takes control of a selected web browser tab for interactive manipulation.

## Description

This function enables interactive control of a browser tab that was previously
selected using Select-WebbrowserTab. It provides direct access to the Microsoft
Playwright Page object's properties and methods, allowing for automated browser
interaction.

## Syntax

```powershell
Unprotect-WebbrowserTab [-Force] [-UseCurrent] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-UseCurrent` | SwitchParameter | — | — | Named | — | Use current tab instead of selecting a new one *(Parameter set: )* |
| `-Force` | SwitchParameter | — | — | Named | — | Restart browser if no debugging server detected *(Parameter set: )* |

## Examples

### Unprotect-WebbrowserTab -UseCurrent

```powershell
Unprotect-WebbrowserTab -UseCurrent
```

### wbctrl -Force

```powershell
wbctrl -Force
```

## Related Links

- [Unprotect-WebbrowserTab on GitHub](https://github.com/genXdev/genXdev)

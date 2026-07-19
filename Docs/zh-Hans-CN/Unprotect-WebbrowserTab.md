# Unprotect-WebbrowserTab

> **Module:** GenXdev.Webbrowser.Playwright | **Type:** Function | **Aliases:** `wbctrl

## Synopsis

> 接管选定的网页浏览器标签页以进行交互式操作。

## Description

此函数可实现对使用 Select-WebbrowserTab 先前选择的浏览器标签页进行交互控制。它提供对 Microsoft Playwright Page 对象属性和方法的直接访问，从而支持自动化浏览器交互。

## Syntax

```powershell
Unprotect-WebbrowserTab [-Force] [-UseCurrent] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-UseCurrent` | SwitchParameter | — | — | Named | — | 使用当前标签页而非选择新标签页 *(Parameter set: )* |
| `-Force` | SwitchParameter | — | — | Named | — | 如果未检测到调试服务器，则重启浏览器 *(Parameter set: )* |

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

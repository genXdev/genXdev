# Close-WebbrowserTab

> **Module:** GenXdev.Webbrowser | **Type:** Function | **Aliases:** `ct, `CloseTab

## Synopsis

> 关闭当前选中的浏览器标签页。

## Description

使用ChromeDriver的CloseAsync()方法关闭当前选定的浏览器标签页。如果当前没有选定任何标签页，该函数将自动尝试在关闭前选择最后使用的标签页。

## Syntax

```powershell
Close-WebbrowserTab [-Chrome] [-Chromium] [-Edge] [-Firefox] [-Webkit] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-Edge` | SwitchParameter | — | — | Named | — | 使用 Microsoft Edge 浏览器导航 |
| `-Chrome` | SwitchParameter | — | — | Named | — | 使用 Google Chrome 浏览器导航 |
| `-Chromium` | SwitchParameter | — | — | Named | — | 根据默认浏览器，在 Microsoft Edge 或 Google Chrome 中打开 |
| `-Firefox` | SwitchParameter | — | — | Named | — | 在 Firefox 中打开 |
| `-Webkit` | SwitchParameter | — | — | Named | — | 使用 Playwright 管理的 WebKit 浏览器 |

## Examples

### Close-WebbrowserTab Closes the currently active browser tab

```powershell
Close-WebbrowserTab
Closes the currently active browser tab
```

### ct Uses the alias to close the currently active browser tab

```powershell
ct
Uses the alias to close the currently active browser tab
```

## Related Links

- [Close-WebbrowserTab on GitHub](https://github.com/genXdev/genXdev)

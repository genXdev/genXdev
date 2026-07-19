# Clear-WebbrowserTabSiteApplicationData

> **Module:** GenXdev.Webbrowser | **Type:** Function | **Aliases:** `clearsitedata

## Synopsis

> 清除Edge或Chrome中当前选项卡的所有浏览器存储数据。

## Description

Clear-WebbrowserTabSiteApplicationData cmdlet 会执行一段 JavaScript 代码片段，清除当前选项卡的多种浏览器存储，包括：
- 本地存储
- 会话存储
- Cookie
- IndexedDB 数据库
- 缓存存储
- Service Worker 注册

## Syntax

```powershell
Clear-WebbrowserTabSiteApplicationData [-Chrome] [-Chromium] [-Edge] [-Firefox] [-Webkit] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-Edge` | SwitchParameter | — | — | Named | — | 在 Microsoft Edge 中清除 |
| `-Chrome` | SwitchParameter | — | — | Named | — | 在谷歌浏览器中清除 |
| `-Chromium` | SwitchParameter | — | — | Named | — | 在 Microsoft Edge 或 Google Chrome 中清除，具体取决于默认浏览器是什么 |
| `-Firefox` | SwitchParameter | — | — | Named | — | 在火狐浏览器中清除 |
| `-Webkit` | SwitchParameter | — | — | Named | — | 在 Playwright 管理的 WebKit 浏览器中清除 |

## Examples

### Clear-WebbrowserTabSiteApplicationData -Edge Clears all browser storage data in the current Edge tab.

```powershell
Clear-WebbrowserTabSiteApplicationData -Edge
Clears all browser storage data in the current Edge tab.
```

### clearsitedata -Chrome Clears all browser storage data in the current Chrome tab using the alias. ##############################################################################

```powershell
clearsitedata -Chrome
Clears all browser storage data in the current Chrome tab using the alias.
##############################################################################
```

## Related Links

- [Clear-WebbrowserTabSiteApplicationData on GitHub](https://github.com/genXdev/genXdev)

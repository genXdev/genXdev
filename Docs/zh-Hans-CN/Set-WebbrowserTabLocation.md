# Set-WebbrowserTabLocation

> **Module:** GenXdev.Webbrowser | **Type:** Function | **Aliases:** `lt, `Nav

## Synopsis

> 将当前浏览器标签页导航到指定的 URL。

## Description

设置当前选中的网页浏览器标签页的位置（URL）。通过可选参数支持Edge和Chrome浏览器。导航包括URL验证，并通过异步操作确保页面正确加载。

## Syntax

```powershell
Set-WebbrowserTabLocation -Url <String> [-ByReference <PSObject>] [-Chromium] [-Firefox] [-NoAutoSelectTab] [-Page <Object>] [-Webkit] [<CommonParameters>]

Set-WebbrowserTabLocation [-Edge] [<CommonParameters>]

Set-WebbrowserTabLocation [-Chrome] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-Url` | String | ✅ | ✅ (ByValue, ByPropertyName) | 0 | — | 要导航到的 URL |
| `-NoAutoSelectTab` | SwitchParameter | — | — | Named | — | Prevent automatic tab selection |
| `-Edge` | SwitchParameter | — | — | Named | — | 使用 Microsoft Edge 浏览器导航 *(Parameter set: )* |
| `-Chrome` | SwitchParameter | — | — | Named | — | 使用 Google Chrome 浏览器导航 *(Parameter set: )* |
| `-Chromium` | SwitchParameter | — | — | Named | — | 根据默认浏览器的不同，使用 Microsoft Edge 或 Google Chrome 进行导航 |
| `-Firefox` | SwitchParameter | — | — | Named | — | 使用 Firefox 浏览器导航 |
| `-Webkit` | SwitchParameter | — | — | Named | — | 使用 Playwright 管理的 WebKit 浏览器进行导航 |
| `-Page` | Object | — | — | Named | — | 浏览器页面对象引用 |
| `-ByReference` | PSObject | — | — | Named | — | 浏览器会话引用对象 |

## Examples

### Set-WebbrowserTabLocation -Url "https://github.com/microsoft" -Edge

```powershell
Set-WebbrowserTabLocation -Url "https://github.com/microsoft" -Edge
```

### "https://github.com/microsoft" | lt -ch

```powershell
"https://github.com/microsoft" | lt -ch
```

## Related Links

- [Set-WebbrowserTabLocation on GitHub](https://github.com/genXdev/genXdev)

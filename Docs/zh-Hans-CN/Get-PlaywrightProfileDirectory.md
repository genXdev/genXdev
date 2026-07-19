# Get-PlaywrightProfileDirectory

> **Module:** GenXdev.Webbrowser.Playwright | **Type:** Cmdlet | **Aliases:** —

## Synopsis

> 获取用于持久化会话的 Playwright 浏览器配置文件目录。

## Description

为 Playwright 自动化测试创建和管理浏览器配置文件目录。配置文件存储在 GenXdev.Powershell\Playwright.profiles 下的 LocalAppData 中。这些配置文件支持在浏览器自动化运行之间保持持久会话。

## Syntax

```powershell
Get-PlaywrightProfileDirectory [[-BrowserType] <string>] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-BrowserType` | String | — | — | 0 | — | 浏览器类型（Chromium、Firefox 或 Webkit） |

## Examples

### Example 1

```powershell
Get-PlaywrightProfileDirectory -BrowserType Chromium
```

创建或返回Chromium浏览器配置文件的路径。

### Example 2

```powershell
Get-PlaywrightProfileDirectory Firefox
```

使用位置参数创建或返回 Firefox 配置文件目录。

## Related Links

- [Get-PlaywrightProfileDirectory on GitHub](https://github.com/genXdev/genXdev)

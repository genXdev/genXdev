# Get-PlaywrightProfileDirectory

> **Module:** GenXdev.Webbrowser.Playwright | **Type:** Cmdlet | **Aliases:** —

## Synopsis

> 获取用于持久化会话的 Playwright 浏览器配置文件目录。

## Description

* 创建并管理 Playwright 自动化测试的浏览器配置文件目录。
* 配置文件存储在 LocalAppData 下的 GenXdev.Powershell\Playwright.profiles 中。
* 每个 BrowserType 值都有其自己的子目录，将真实浏览器配置文件（ChromeNormal、EdgeNormal）与捆绑的 Playwright 配置文件（ChromiumPlaywright、FirefoxPlaywright、WebKitPlaywright）分开。

## Syntax

```powershell
Get-PlaywrightProfileDirectory [[-BrowserType] <String>] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-BrowserType` | String | — | — | 0 | — | 浏览器类型：ChromeNormal、EdgeNormal、ChromiumNormal、ChromiumPlaywright、FirefoxPlaywright 或 WebKitPlaywright |

## Examples

### Example 1

```powershell
Get-PlaywrightProfileDirectory -BrowserType ChromeNormal
```

创建或返回操作系统安装的Chrome浏览器配置文件路径。

### Example 2

```powershell
Get-PlaywrightProfileDirectory -BrowserType ChromiumNormal
```

创建或返回自动检测到的 Chromium 浏览器配置文件路径。

### Example 3

```powershell
Get-PlaywrightProfileDirectory -BrowserType ChromiumPlaywright
```

创建或返回捆绑的 Playwright Chromium 配置文件的路径。

## Parameter Details

### `-BrowserType <String>`

> 浏览器类型：ChromeNormal、EdgeNormal、ChromiumNormal、ChromiumPlaywright、FirefoxPlaywright 或 WebKitPlaywright

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | 0 |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
## Related Links

- [Connect-PlaywrightViaDebuggingPort](https://github.com/genXdev/genXdev/blob/main/Docs/zh-Hans-CN/Connect-PlaywrightViaDebuggingPort.md)
- [Open-PlayWrightBrowser](https://github.com/genXdev/genXdev/blob/main/Docs/zh-Hans-CN/Open-PlayWrightBrowser.md)
- [Resume-WebbrowserTabVideo](https://github.com/genXdev/genXdev/blob/main/Docs/zh-Hans-CN/Resume-WebbrowserTabVideo.md)
- [Stop-WebbrowserVideos](https://github.com/genXdev/genXdev/blob/main/Docs/zh-Hans-CN/Stop-WebbrowserVideos.md)
- [Unprotect-WebbrowserTab](https://github.com/genXdev/genXdev/blob/main/Docs/zh-Hans-CN/Unprotect-WebbrowserTab.md)

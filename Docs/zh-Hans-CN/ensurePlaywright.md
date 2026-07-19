# ensurePlaywright

> **Module:** GenXdev.Webbrowser.Playwright | **Type:** Function | **Aliases:** —

## Synopsis

> 确保 Playwright .NET 程序集和浏览器二进制文件可用。

## Description

内部助手，用于下载并加载 Microsoft.Playwright NuGet 程序集，然后通过 Playwright 内置 CLI 安装实际的浏览器二进制文件（Chromium、Firefox、WebKit）。幂等性——跳过已完成的步骤。

由 Connect-PlaywrightViaDebuggingPort、Open-PlayWrightBrowser 调用，并在环境设置期间由 EnsureGenXdev 显式调用。

## Syntax

```powershell
ensurePlaywright [-ConsentToThirdPartySoftwareInstallation] [-ForceConsent] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-ForceConsent` | SwitchParameter | — | — | Named | — | 自动同意安装 Playwright 浏览器并设置持久标志。 |
| `-ConsentToThirdPartySoftwareInstallation` | SwitchParameter | — | — | Named | — | 自动同意安装第三方软件并为所有包设置持久化标记。 |

## Related Links

- [ensurePlaywright on GitHub](https://github.com/genXdev/genXdev)

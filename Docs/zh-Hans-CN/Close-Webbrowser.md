# Close-Webbrowser

> **Module:** GenXdev.Webbrowser | **Type:** Function | **Aliases:** `wbc

## Synopsis

> 选择性地关闭一个或多个网页浏览器实例。

## Description

提供对关闭网页浏览器实例的精细控制。可针对特定浏览器（Edge、Chrome、Firefox）或关闭所有浏览器。支持关闭主窗口和后台进程。

## Syntax

```powershell
Close-Webbrowser [-Chrome] [-Chromium] [-Edge] [-Firefox] [<CommonParameters>]

Close-Webbrowser [-All] [-Headless] [-IncludeBackgroundProcesses] [-PlayWright] [-Webkit] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-Edge` | SwitchParameter | — | — | Named | — | 关闭 Microsoft Edge 浏览器实例 *(Parameter set: )* |
| `-Chrome` | SwitchParameter | — | — | Named | — | 关闭谷歌浏览器实例 *(Parameter set: )* |
| `-Chromium` | SwitchParameter | — | — | Named | — | 关闭默认的Chromium内核浏览器 *(Parameter set: )* |
| `-Firefox` | SwitchParameter | — | — | Named | — | 关闭 Firefox 浏览器实例 *(Parameter set: )* |
| `-PlayWright` | SwitchParameter | — | — | Named | — | 使用 Playwright 管理的浏览器而非操作系统安装的浏览器 |
| `-Webkit` | SwitchParameter | — | — | Named | — | 打开由 Playwright 管理的 WebKit 浏览器。隐含 -PlayWright |
| `-Headless` | SwitchParameter | — | — | Named | — | 在无可见窗口的情况下运行浏览器 |
| `-All` | SwitchParameter | — | — | Named | — | 在所有注册的现代浏览器中打开 |
| `-IncludeBackgroundProcesses` | SwitchParameter | — | — | Named | — | 关闭所有实例，包括后台任务 |

## Examples

### Close-Webbrowser -Chrome -Firefox -IncludeBackgroundProcesses Closes all Chrome and Firefox instances including background processes

```powershell
Close-Webbrowser -Chrome -Firefox -IncludeBackgroundProcesses
Closes all Chrome and Firefox instances including background processes
```

### wbc -a -bg Closes all browser instances including background processes using aliases

```powershell
wbc -a -bg
Closes all browser instances including background processes using aliases
```

## Related Links

- [Close-Webbrowser on GitHub](https://github.com/genXdev/genXdev)

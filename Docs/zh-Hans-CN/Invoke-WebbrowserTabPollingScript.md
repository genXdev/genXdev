# Invoke-WebbrowserTabPollingScript

> **Module:** GenXdev.Queries | **Type:** Function | **Aliases:** —

## Synopsis

> 在先前选中的网页浏览器标签页中执行后台轮询脚本。

## Description

在浏览器标签页中持续执行JavaScript，并通过可选的回调函数处理结果。脚本在独立线程中运行，以避免阻塞。

## Syntax

```powershell
Invoke-WebbrowserTabPollingScript [[-Scripts] <Object[]>] [[-InitialUrl] <String>] [[-Callback] <ScriptBlock>] [-Chrome] [-Chromium] [-Edge] [-Firefox] [-Webkit] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-Scripts` | Object[] | — | ✅ (ByValue, ByPropertyName) | 0 | — | JavaScript代码、URL或要执行的文件路径 |
| `-InitialUrl` | String | — | — | 1 | — | 轮询开始前导航到的 URL |
| `-Callback` | ScriptBlock | — | — | 2 | — | 用于处理投票结果的回调脚本块 |
| `-Edge` | SwitchParameter | — | — | Named | — | 请使用 Microsoft Edge 浏览器 |
| `-Chrome` | SwitchParameter | — | — | Named | — | 请使用谷歌浏览器 |
| `-Chromium` | SwitchParameter | — | — | Named | — | 根据默认浏览器是什么，使用 Microsoft Edge 或 Google Chrome。 |
| `-Firefox` | SwitchParameter | — | — | Named | — | 使用 Firefox 浏览器 |
| `-Webkit` | SwitchParameter | — | — | Named | — | 使用 Playwright 管理的 WebKit 浏览器 |

## Examples

### Invoke-WebbrowserTabPollingScript -Scripts "console.log('polling')" `     -InitialUrl "https://example.com" `     -Callback { Write-Host "Polled" }

```powershell
Invoke-WebbrowserTabPollingScript -Scripts "console.log('polling')" `
    -InitialUrl "https://example.com" `
    -Callback { Write-Host "Polled" }
```

## Related Links

- [Invoke-WebbrowserTabPollingScript on GitHub](https://github.com/genXdev/genXdev)

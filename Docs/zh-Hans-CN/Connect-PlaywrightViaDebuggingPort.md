# Connect-PlaywrightViaDebuggingPort

> **Module:** GenXdev.Webbrowser.Playwright | **Type:** Function | **Aliases:** —

## Synopsis

> 通过调试端口连接到现有浏览器实例。

## Description

使用WebSocket调试器URL建立与正在运行的基于Chromium的浏览器实例的连接。创建一个Playwright实例并通过CDP（Chrome DevTools协议）进行连接。连接的浏览器实例存储在一个全局字典中，以供后续引用。

## Syntax

```powershell
Connect-PlaywrightViaDebuggingPort -WsEndpoint <String> [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-WsEndpoint` | String | ✅ | — | 0 | — | 用于浏览器调试连接的WebSocket URL |

## Examples

### Connect-PlaywrightViaDebuggingPort `     -WsEndpoint "ws://localhost:9222/devtools/browser/abc123" ##############################################################################

```powershell
Connect-PlaywrightViaDebuggingPort `
    -WsEndpoint "ws://localhost:9222/devtools/browser/abc123"
##############################################################################
```

## Related Links

- [Connect-PlaywrightViaDebuggingPort on GitHub](https://github.com/genXdev/genXdev)

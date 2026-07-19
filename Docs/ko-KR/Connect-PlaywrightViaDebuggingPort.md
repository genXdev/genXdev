# Connect-PlaywrightViaDebuggingPort

> **Module:** GenXdev.Webbrowser.Playwright | **Type:** Function | **Aliases:** —

## Synopsis

> 디버깅 포트를 통해 기존 브라우저 인스턴스에 연결합니다.

## Description

WebSocket 디버거 URL을 사용하여 실행 중인 Chromium 기반 브라우저 인스턴스에 연결을 설정합니다. Playwright 인스턴스를 생성하고 CDP(Chrome DevTools Protocol)를 통해 연결합니다. 연결된 브라우저 인스턴스는 나중에 참조할 수 있도록 전역 사전에 저장됩니다.

## Syntax

```powershell
Connect-PlaywrightViaDebuggingPort -WsEndpoint <String> [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-WsEndpoint` | String | ✅ | — | 0 | — | 브라우저 디버깅 연결을 위한 WebSocket URL |

## Examples

### Connect-PlaywrightViaDebuggingPort `     -WsEndpoint "ws://localhost:9222/devtools/browser/abc123" ##############################################################################

```powershell
Connect-PlaywrightViaDebuggingPort `
    -WsEndpoint "ws://localhost:9222/devtools/browser/abc123"
##############################################################################
```

## Related Links

- [Connect-PlaywrightViaDebuggingPort on GitHub](https://github.com/genXdev/genXdev)

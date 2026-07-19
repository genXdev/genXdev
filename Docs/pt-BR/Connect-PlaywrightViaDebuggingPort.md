# Connect-PlaywrightViaDebuggingPort

> **Module:** GenXdev.Webbrowser.Playwright | **Type:** Function | **Aliases:** —

## Synopsis

> Conecta a uma instância existente do navegador via porta de depuração.

## Description

Estabelece uma conexão com uma instância em execução de um navegador baseado em Chromium usando a URL de depuração WebSocket. Cria uma instância do Playwright e conecta via CDP (Chrome DevTools Protocol). A instância do navegador conectada é armazenada em um dicionário global para referência posterior.

## Syntax

```powershell
Connect-PlaywrightViaDebuggingPort -WsEndpoint <String> [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-WsEndpoint` | String | ✅ | — | 0 | — | URL do WebSocket para conexão de depuração do navegador |

## Examples

### Connect-PlaywrightViaDebuggingPort `     -WsEndpoint "ws://localhost:9222/devtools/browser/abc123" ##############################################################################

```powershell
Connect-PlaywrightViaDebuggingPort `
    -WsEndpoint "ws://localhost:9222/devtools/browser/abc123"
##############################################################################
```

## Related Links

- [Connect-PlaywrightViaDebuggingPort on GitHub](https://github.com/genXdev/genXdev)

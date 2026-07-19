# Connect-PlaywrightViaDebuggingPort

> **Module:** GenXdev.Webbrowser.Playwright | **Type:** Function | **Aliases:** —

## Synopsis

> Se conecta a una instancia de navegador existente a través del puerto de depuración.

## Description

Establece una conexión a una instancia de navegador basada en Chromium en ejecución utilizando la URL de depuración de WebSocket. Crea una instancia de Playwright y se conecta a través de CDP (Protocolo de Herramientas para Desarrolladores de Chrome). La instancia de navegador conectada se almacena en un diccionario global para referencia posterior.

## Syntax

```powershell
Connect-PlaywrightViaDebuggingPort -WsEndpoint <String> [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-WsEndpoint` | String | ✅ | — | 0 | — | URL de WebSocket para la conexión de depuración del navegador |

## Examples

### Connect-PlaywrightViaDebuggingPort `     -WsEndpoint "ws://localhost:9222/devtools/browser/abc123" ##############################################################################

```powershell
Connect-PlaywrightViaDebuggingPort `
    -WsEndpoint "ws://localhost:9222/devtools/browser/abc123"
##############################################################################
```

## Related Links

- [Connect-PlaywrightViaDebuggingPort on GitHub](https://github.com/genXdev/genXdev)

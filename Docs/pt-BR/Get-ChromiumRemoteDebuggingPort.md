# Get-ChromiumRemoteDebuggingPort

> **Module:** GenXdev.Webbrowser | **Type:** Function | **Aliases:** —

## Synopsis

> Retorna a porta de depuração remota para o navegador Chromium padrão do sistema.

## Description

Detecta se o Microsoft Edge ou o Google Chrome é o navegador padrão e retorna o número de porta de depuração apropriado. Se o Chrome for o navegador padrão, retorna a porta de depuração do Chrome. Caso contrário, retorna a porta de depuração do Edge (também usada quando nenhum navegador padrão é detectado).

## Syntax

```powershell
Get-ChromiumRemoteDebuggingPort [-Chrome] [-Edge] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-Chrome` | SwitchParameter | — | — | Named | — | The `-Chrome` parameter. |
| `-Edge` | SwitchParameter | — | — | Named | — | The `-Edge` parameter. |

## Examples

### Get debugging port using full command name Get-ChromiumRemoteDebuggingPort

```powershell
Get debugging port using full command name
Get-ChromiumRemoteDebuggingPort
```

### Get debugging port using alias Get-BrowserDebugPort

```powershell
Get debugging port using alias
Get-BrowserDebugPort
```

## Outputs

- `[int] The remote debugging port number for the detected browser.`
- `Int32`

## Related Links

- [Get-ChromiumRemoteDebuggingPort on GitHub](https://github.com/genXdev/genXdev)

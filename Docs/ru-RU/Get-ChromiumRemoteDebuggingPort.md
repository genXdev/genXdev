# Get-ChromiumRemoteDebuggingPort

> **Module:** GenXdev.Webbrowser | **Type:** Function | **Aliases:** —

## Synopsis

> Возвращает порт удаленной отладки для браузера Chromium по умолчанию в системе.

## Description

Определяет, является ли Microsoft Edge или Google Chrome браузером по умолчанию, и возвращает соответствующий номер порта для отладки. Если Chrome является браузером по умолчанию, возвращает порт отладки Chrome. В противном случае возвращает порт отладки Edge (также используется, если браузер по умолчанию не обнаружен).

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

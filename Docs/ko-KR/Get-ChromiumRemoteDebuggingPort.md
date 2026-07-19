# Get-ChromiumRemoteDebuggingPort

> **Module:** GenXdev.Webbrowser | **Type:** Function | **Aliases:** —

## Synopsis

> 시스템 기본 Chromium 브라우저의 원격 디버깅 포트를 반환합니다.

## Description

Microsoft Edge 또는 Google Chrome이 기본 브라우저인지 감지하고 적절한 디버깅 포트 번호를 반환합니다. Chrome이 기본 브라우저인 경우 Chrome 디버깅 포트를 반환합니다. 그렇지 않은 경우 Edge 디버깅 포트를 반환합니다(기본 브라우저가 감지되지 않은 경우에도 사용됨).

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

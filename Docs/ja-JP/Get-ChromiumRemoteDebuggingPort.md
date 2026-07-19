# Get-ChromiumRemoteDebuggingPort

> **Module:** GenXdev.Webbrowser | **Type:** Function | **Aliases:** —

## Synopsis

> システムのデフォルトChromiumブラウザのリモートデバッグポートを返します。

## Description

Microsoft EdgeまたはGoogle Chromeがデフォルトブラウザかどうかを検出し、適切なデバッグポート番号を返します。Chromeがデフォルトブラウザの場合はChromeデバッグポートを返します。それ以外の場合はEdgeデバッグポートを返します（デフォルトブラウザが検出されない場合も同様です）。

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

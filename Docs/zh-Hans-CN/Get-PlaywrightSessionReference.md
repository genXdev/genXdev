# Get-PlaywrightSessionReference

> **Module:** GenXdev.Webbrowser | **Type:** Function | **Aliases:** —

## Synopsis

> 获取对当前 Playwright 浏览器会话的引用。

## Description

返回一个哈希表，包含当前浏览器页面的Playwright页面、浏览器上下文和会话数据。此引用可与Invoke-WebbrowserEvaluation -ByReference一起使用，以定位特定页面。

可以使用-Edge、-Chrome、-Chromium、-Firefox或-Webkit开关指定浏览器类型。如果未指定任何开关，则默认使用Chromium。

## Syntax

```powershell
Get-PlaywrightSessionReference [-Chrome] [-Chromium] [-Edge] [-Firefox] [-Webkit] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-Edge` | SwitchParameter | — | — | Named | — | 偏好使用Microsoft Edge浏览器会话 |
| `-Chrome` | SwitchParameter | — | — | Named | — | 首选谷歌Chrome浏览器会话 |
| `-Chromium` | SwitchParameter | — | — | Named | — | 优先使用 Microsoft Edge 还是 Google Chrome，取决于默认浏览器是什么 |
| `-Firefox` | SwitchParameter | — | — | Named | — | 优先使用 Firefox 浏览器会话 |
| `-Webkit` | SwitchParameter | — | — | Named | — | 首选WebKit浏览器会话 |

## Examples

### Get a reference to the current browser session $sessionRef = Get-PlaywrightSessionReference

```powershell
Get a reference to the current browser session
$sessionRef = Get-PlaywrightSessionReference
```

### Store the reference and use it later to execute JavaScript $ref = Get-PlaywrightSessionReference Invoke-WebbrowserEvaluation "document.title" -ByReference $ref

```powershell
Store the reference and use it later to execute JavaScript
$ref = Get-PlaywrightSessionReference
Invoke-WebbrowserEvaluation "document.title" -ByReference $ref
```

## Outputs

- `Collections.Hashtable`

## Related Links

- [Get-PlaywrightSessionReference on GitHub](https://github.com/genXdev/genXdev)

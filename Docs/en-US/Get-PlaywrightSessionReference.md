# Get-PlaywrightSessionReference

> **Module:** GenXdev.Webbrowser | **Type:** Function | **Aliases:** —

## Synopsis

> Gets a reference to the current Playwright browser session.

## Description

Returns a hashtable containing the Playwright Page, BrowserContext, and session
data for the current browser page. This reference can be used with
Invoke-WebbrowserEvaluation -ByReference to target a specific page.

The browser type can be specified using the -Edge, -Chrome, -Chromium,
-Firefox, or -Webkit switches. If no switch is specified, Chromium is preferred.

## Syntax

```powershell
Get-PlaywrightSessionReference [-Chrome] [-Chromium] [-Edge] [-Firefox] [-Webkit] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-Edge` | SwitchParameter | — | — | Named | — | Prefer Microsoft Edge browser session |
| `-Chrome` | SwitchParameter | — | — | Named | — | Prefer Google Chrome browser session |
| `-Chromium` | SwitchParameter | — | — | Named | — | Prefer Microsoft Edge or Google Chrome, depending on what the default browser is |
| `-Firefox` | SwitchParameter | — | — | Named | — | Prefer Firefox browser session |
| `-Webkit` | SwitchParameter | — | — | Named | — | Prefer WebKit browser session |

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

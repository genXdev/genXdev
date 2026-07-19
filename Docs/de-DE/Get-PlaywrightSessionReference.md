# Get-PlaywrightSessionReference

> **Module:** GenXdev.Webbrowser | **Type:** Function | **Aliases:** —

## Synopsis

> Ruft einen Verweis auf die aktuelle Playwright-Browsersitzung ab.

## Description

Gibt eine Hashtabelle zurück, die die Playwright-Seite, den BrowserContext und die Sitzungsdaten für die aktuelle Browserseite enthält. Dieser Verweis kann mit Invoke-WebbrowserEvaluation -ByReference verwendet werden, um auf eine bestimmte Seite zu zielen.

Der Browsertyp kann mit den Schaltern -Edge, -Chrome, -Chromium, -Firefox oder -Webkit angegeben werden. Wenn kein Schalter angegeben ist, wird Chromium bevorzugt.

## Syntax

```powershell
Get-PlaywrightSessionReference [-Chrome] [-Chromium] [-Edge] [-Firefox] [-Webkit] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-Edge` | SwitchParameter | — | — | Named | — | Microsoft Edge-Browsersitzung bevorzugen |
| `-Chrome` | SwitchParameter | — | — | Named | — | Google Chrome-Browser-Sitzung bevorzugen |
| `-Chromium` | SwitchParameter | — | — | Named | — | Bevorzugen Sie Microsoft Edge oder Google Chrome, je nachdem, welcher der Standardbrowser ist |
| `-Firefox` | SwitchParameter | — | — | Named | — | Firefox-Browsersitzung bevorzugen |
| `-Webkit` | SwitchParameter | — | — | Named | — | WebKit-Browsersitzung bevorzugen |

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

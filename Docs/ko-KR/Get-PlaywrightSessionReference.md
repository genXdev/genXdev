# Get-PlaywrightSessionReference

> **Module:** GenXdev.Webbrowser | **Type:** Function | **Aliases:** —

## Synopsis

> 현재 Playwright 브라우저 세션에 대한 참조를 가져옵니다.

## Description

현재 브라우저 페이지의 Playwright Page, BrowserContext 및 세션 데이터가 포함된 해시테이블을 반환합니다. 이 참조는 특정 페이지를 대상으로 Invoke-WebbrowserEvaluation -ByReference와 함께 사용할 수 있습니다.

브라우저 유형은 -Edge, -Chrome, -Chromium, -Firefox 또는 -Webkit 스위치를 사용하여 지정할 수 있습니다. 스위치를 지정하지 않으면 Chromium이 기본 설정됩니다.

## Syntax

```powershell
Get-PlaywrightSessionReference [-Chrome] [-Chromium] [-Edge] [-Firefox] [-Webkit] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-Edge` | SwitchParameter | — | — | Named | — | Microsoft Edge 브라우저 세션 선호 |
| `-Chrome` | SwitchParameter | — | — | Named | — | Google Chrome 브라우저 세션 선호 |
| `-Chromium` | SwitchParameter | — | — | Named | — | Microsoft Edge나 Google Chrome 중 기본 브라우저에 따라 선호 |
| `-Firefox` | SwitchParameter | — | — | Named | — | Firefox 브라우저 세션 선호 |
| `-Webkit` | SwitchParameter | — | — | Named | — | WebKit 브라우저 세션 선호 |

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

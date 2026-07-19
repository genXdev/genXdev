# Get-PlaywrightProfileDirectory

> **Module:** GenXdev.Webbrowser.Playwright | **Type:** Cmdlet | **Aliases:** —

## Synopsis

> 지속적인 세션을 위한 Playwright 브라우저 프로필 디렉터리를 가져옵니다.

## Description

* Playwright 자동화 테스트를 위한 브라우저 프로필 디렉토리를 생성하고 관리합니다.
* 프로필은 GenXdev.Powershell\Playwright.profiles 아래 LocalAppData에 저장됩니다.
* 이러한 프로필은 브라우저 자동화 실행 간에 지속적인 세션을 가능하게 합니다.

## Syntax

```powershell
Get-PlaywrightProfileDirectory [[-BrowserType] <string>] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-BrowserType` | String | — | — | 0 | — | 브라우저 유형 (크롬, 파이어폭스, 또는 웹킷) |

## Examples

### Example 1

```powershell
Get-PlaywrightProfileDirectory -BrowserType Chromium
```

Chromium 브라우저 프로필의 경로를 생성하거나 반환합니다.

### Example 2

```powershell
Get-PlaywrightProfileDirectory Firefox
```

위치 매개변수를 사용하여 Firefox 프로필 디렉터리를 생성하거나 반환합니다.

## Related Links

- [Get-PlaywrightProfileDirectory on GitHub](https://github.com/genXdev/genXdev)

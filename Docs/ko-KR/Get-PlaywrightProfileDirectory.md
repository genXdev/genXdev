# Get-PlaywrightProfileDirectory

> **Module:** GenXdev.Webbrowser.Playwright | **Type:** Cmdlet | **Aliases:** —

## Synopsis

> 지속형 세션을 위한 Playwright 브라우저 프로필 디렉터리를 가져옵니다.

## Description

* Playwright 자동화 테스트를 위한 브라우저 프로필 디렉토리를 생성 및 관리합니다.
* 프로필은 LocalAppData의 GenXdev.Powershell\Playwright.profiles 아래에 저장됩니다.
* 각 BrowserType 값은 고유한 하위 디렉토리를 가지며, 실제 브라우저 프로필(ChromeNormal, EdgeNormal)과 번들된 Playwright 프로필(ChromiumPlaywright, FirefoxPlaywright, WebKitPlaywright)을 분리합니다.

## Syntax

```powershell
Get-PlaywrightProfileDirectory [[-BrowserType] <String>] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-BrowserType` | String | — | — | 0 | — | 브라우저 유형: ChromeNormal, EdgeNormal, ChromiumNormal, ChromiumPlaywright, FirefoxPlaywright 또는 WebKitPlaywright |

## Examples

### Example 1

```powershell
Get-PlaywrightProfileDirectory -BrowserType ChromeNormal
```

OS에 설치된 Chrome 브라우저 프로필의 경로를 만들거나 반환합니다.

### Example 2

```powershell
Get-PlaywrightProfileDirectory -BrowserType ChromiumNormal
```

자동 감지된 Chromium 브라우저 프로필의 경로를 만들거나 반환합니다.

### Example 3

```powershell
Get-PlaywrightProfileDirectory -BrowserType ChromiumPlaywright
```

번들된 Playwright Chromium 프로필의 경로를 생성하거나 반환합니다.

## Parameter Details

### `-BrowserType <String>`

> 브라우저 유형: ChromeNormal, EdgeNormal, ChromiumNormal, ChromiumPlaywright, FirefoxPlaywright 또는 WebKitPlaywright

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | 0 |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
## Related Links

- [Connect-PlaywrightViaDebuggingPort](https://github.com/genXdev/genXdev/blob/main/Docs/ko-KR/Connect-PlaywrightViaDebuggingPort.md)
- [Open-PlayWrightBrowser](https://github.com/genXdev/genXdev/blob/main/Docs/ko-KR/Open-PlayWrightBrowser.md)
- [Resume-WebbrowserTabVideo](https://github.com/genXdev/genXdev/blob/main/Docs/ko-KR/Resume-WebbrowserTabVideo.md)
- [Stop-WebbrowserVideos](https://github.com/genXdev/genXdev/blob/main/Docs/ko-KR/Stop-WebbrowserVideos.md)
- [Unprotect-WebbrowserTab](https://github.com/genXdev/genXdev/blob/main/Docs/ko-KR/Unprotect-WebbrowserTab.md)

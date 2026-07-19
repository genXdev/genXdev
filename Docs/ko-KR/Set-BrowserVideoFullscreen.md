# Set-BrowserVideoFullscreen

> **Module:** GenXdev.Webbrowser | **Type:** Function | **Aliases:** `fsvideo

## Synopsis

> 현재 브라우저 탭에서 발견된 첫 번째 비디오 요소를 최대화합니다.

## Description

현재 웹페이지에서 첫 번째 비디오 요소를 찾아 최대화하는 JavaScript 코드를 실행합니다. 비디오는 전체 뷰포트를 덮도록 설정되며, 최대 z-index를 적용하여 가시성을 보장합니다. 깔끔한 전체 화면 경험을 위해 페이지 스크롤바가 숨겨집니다.

## Syntax

```powershell
Set-BrowserVideoFullscreen [-Chrome] [-Chromium] [-Edge] [-Firefox] [-Webkit] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-Edge` | SwitchParameter | — | — | Named | — | Microsoft Edge 브라우저 사용 |
| `-Chrome` | SwitchParameter | — | — | Named | — | Google Chrome 브라우저를 사용하세요 |
| `-Chromium` | SwitchParameter | — | — | Named | — | 기본 브라우저에 따라 Microsoft Edge 또는 Google Chrome을 사용하세요. |
| `-Firefox` | SwitchParameter | — | — | Named | — | 파이어폭스 브라우저를 사용하세요 |
| `-Webkit` | SwitchParameter | — | — | Named | — | Playwright-managed WebKit 브라우저 사용 |

## Examples

### Set-BrowserVideoFullscreen

```powershell
Set-BrowserVideoFullscreen
```

## Related Links

- [Set-BrowserVideoFullscreen on GitHub](https://github.com/genXdev/genXdev)

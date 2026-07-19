# Get-WebbrowserTabDomNodes

> **Module:** GenXdev.Webbrowser | **Type:** Function | **Aliases:** `wl

## Synopsis

> CSS 선택자를 사용하여 활성 브라우저 탭의 DOM 노드를 쿼리하고 조작합니다.

## Description

브라우저 자동화를 사용하여 CSS 선택기와 일치하는 요소를 찾고, 일치하는 각 요소의 HTML 콘텐츠를 반환하거나 맞춤 JavaScript를 실행합니다. 이 함수는 웹 스크래핑 및 브라우저 자동화 작업에 유용합니다.

## Syntax

```powershell
Get-WebbrowserTabDomNodes -QuerySelector <String[]> [[-ModifyScript] <String>] [-ByReference <PSObject>] [-Chrome] [-Chromium] [-Edge] [-Firefox] [-NoAutoSelectTab] [-Page <Object>] [-Webkit] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-QuerySelector` | String[] | ✅ | — | 0 | — | DOM 노드를 선택하는 데 사용할 쿼리 선택기 문자열 또는 문자열 배열 |
| `-ModifyScript` | String | — | — | 1 | `''` | 쿼리 선택기의 출력을 수정하는 스크립트, 예: e.outerHTML 또는 e.outerHTML='hello world' |
| `-Edge` | SwitchParameter | — | — | Named | — | Microsoft Edge 브라우저 사용 |
| `-Chrome` | SwitchParameter | — | — | Named | — | Google Chrome 브라우저를 사용하세요 |
| `-Chromium` | SwitchParameter | — | — | Named | — | 기본 브라우저에 따라 Microsoft Edge 또는 Google Chrome을 사용하세요. |
| `-Firefox` | SwitchParameter | — | — | Named | — | 파이어폭스 브라우저를 사용하세요 |
| `-Webkit` | SwitchParameter | — | — | Named | — | Playwright-managed WebKit 브라우저 사용 |
| `-Page` | Object | — | — | Named | — | 특정 탭을 대상으로 하는 브라우저 페이지 객체 참조 |
| `-ByReference` | PSObject | — | — | Named | — | 기존 브라우저 세션을 재사용하기 위한 브라우저 세션 참조 객체 |
| `-NoAutoSelectTab` | SwitchParameter | — | — | Named | — | 자동 탭 선택 방지 |

## Examples

### Get HTML of all header divs Get-WebbrowserTabDomNodes -QuerySelector "div.header"

```powershell
Get HTML of all header divs
Get-WebbrowserTabDomNodes -QuerySelector "div.header"
```

### Pause all videos on the page wl "video" "e.pause()"

```powershell
Pause all videos on the page
wl "video" "e.pause()"
```

## Related Links

- [Get-WebbrowserTabDomNodes on GitHub](https://github.com/genXdev/genXdev)

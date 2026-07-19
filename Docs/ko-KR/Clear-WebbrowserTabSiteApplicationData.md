# Clear-WebbrowserTabSiteApplicationData

> **Module:** GenXdev.Webbrowser | **Type:** Function | **Aliases:** `clearsitedata

## Synopsis

> Edge 또는 Chrome에서 현재 탭의 모든 브라우저 저장소 데이터를 지웁니다.

## Description

Clear-WebbrowserTabSiteApplicationData cmdlet은 현재 탭의 다양한 브라우저 저장소를 지우는 JavaScript 스니펫을 실행하며, 여기에는 다음이 포함됩니다:
- 로컬 저장소
- 세션 저장소
- 쿠키
- IndexedDB 데이터베이스
- 캐시 저장소
- 서비스 워커 등록

## Syntax

```powershell
Clear-WebbrowserTabSiteApplicationData [-Chrome] [-Chromium] [-Edge] [-Firefox] [-Webkit] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-Edge` | SwitchParameter | — | — | Named | — | Microsoft Edge에서 지우기 |
| `-Chrome` | SwitchParameter | — | — | Named | — | Google Chrome에서 지우기 |
| `-Chromium` | SwitchParameter | — | — | Named | — | Microsoft Edge 또는 Google Chrome에서 지우기(기본 브라우저에 따라 다름) |
| `-Firefox` | SwitchParameter | — | — | Named | — | Firefox에서 지우기 |
| `-Webkit` | SwitchParameter | — | — | Named | — | Playwright 관리형 WebKit 브라우저에서 지우기 |

## Examples

### Clear-WebbrowserTabSiteApplicationData -Edge Clears all browser storage data in the current Edge tab.

```powershell
Clear-WebbrowserTabSiteApplicationData -Edge
Clears all browser storage data in the current Edge tab.
```

### clearsitedata -Chrome Clears all browser storage data in the current Chrome tab using the alias. ##############################################################################

```powershell
clearsitedata -Chrome
Clears all browser storage data in the current Chrome tab using the alias.
##############################################################################
```

## Related Links

- [Clear-WebbrowserTabSiteApplicationData on GitHub](https://github.com/genXdev/genXdev)

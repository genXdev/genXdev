# Set-WebbrowserTabLocation

> **Module:** GenXdev.Webbrowser | **Type:** Function | **Aliases:** `lt, `Nav

## Synopsis

> 현재 웹브라우저 탭을 지정된 URL로 이동시킵니다.

## Description

현재 선택된 웹브라우저 탭의 위치(URL)를 설정합니다. 선택적 스위치를 통해 Edge 및 Chrome 브라우저를 모두 지원합니다. 탐색에는 URL 유효성 검사가 포함되며, 비동기 작업을 통해 올바른 페이지 로딩을 보장합니다.

## Syntax

```powershell
Set-WebbrowserTabLocation -Url <String> [-ByReference <PSObject>] [-Chromium] [-Firefox] [-NoAutoSelectTab] [-Page <Object>] [-Webkit] [<CommonParameters>]

Set-WebbrowserTabLocation [-Edge] [<CommonParameters>]

Set-WebbrowserTabLocation [-Chrome] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-Url` | String | ✅ | ✅ (ByValue, ByPropertyName) | 0 | — | 이동할 URL |
| `-NoAutoSelectTab` | SwitchParameter | — | — | Named | — | 자동 탭 선택 방지 |
| `-Edge` | SwitchParameter | — | — | Named | — | Microsoft Edge 브라우저를 사용하여 탐색 *(Parameter set: )* |
| `-Chrome` | SwitchParameter | — | — | Named | — | Google Chrome 브라우저를 사용하여 탐색 *(Parameter set: )* |
| `-Chromium` | SwitchParameter | — | — | Named | — | 기본 브라우저에 따라 Microsoft Edge나 Google Chrome을 사용하여 탐색하세요. |
| `-Firefox` | SwitchParameter | — | — | Named | — | Firefox 브라우저를 사용하여 탐색 |
| `-Webkit` | SwitchParameter | — | — | Named | — | Playwright가 관리하는 WebKit 브라우저를 사용하여 탐색 |
| `-Page` | Object | — | — | Named | — | 브라우저 페이지 객체 참조 |
| `-ByReference` | PSObject | — | — | Named | — | 브라우저 세션 참조 객체 |

## Examples

### Set-WebbrowserTabLocation -Url "https://github.com/microsoft" -Edge

```powershell
Set-WebbrowserTabLocation -Url "https://github.com/microsoft" -Edge
```

### "https://github.com/microsoft" | lt -ch

```powershell
"https://github.com/microsoft" | lt -ch
```

## Related Links

- [Set-WebbrowserTabLocation on GitHub](https://github.com/genXdev/genXdev)

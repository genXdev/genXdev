# Get-WebbrowserTabDomNodes

> **Module:** GenXdev.Webbrowser | **Type:** Function | **Aliases:** `wl

## Synopsis

> *(No synopsis provided)*

## Syntax

```powershell
Get-WebbrowserTabDomNodes -QuerySelector <String[]> [[-ModifyScript] <String>] [-ByReference <PSObject>] [-Chrome] [-Edge] [-NoAutoSelectTab] [-Page <Object>] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-QuerySelector` | String[] | ✅ | — | 0 | — | DOM 노드를 선택하는 데 사용할 쿼리 선택기 문자열 또는 문자열 배열 |
| `-ModifyScript` | String | — | — | 1 | `''` | 쿼리 선택기의 출력을 수정하는 스크립트, 예: e.outerHTML 또는 e.outerHTML='hello world' |
| `-Edge` | SwitchParameter | — | — | Named | — | Microsoft Edge 브라우저 사용 |
| `-Chrome` | SwitchParameter | — | — | Named | — | Google Chrome 브라우저를 사용하세요 |
| `-Page` | Object | — | — | Named | — | 브라우저 페이지 객체 참조 |
| `-ByReference` | PSObject | — | — | Named | — | 브라우저 세션 참조 객체 |
| `-NoAutoSelectTab` | SwitchParameter | — | — | Named | — | 자동 탭 선택 방지 |

## Related Links

- [Get-WebbrowserTabDomNodes on GitHub](https://github.com/genXdev/genXdev)

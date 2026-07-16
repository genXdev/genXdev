# Set-WebbrowserTabLocation

> **Module:** GenXdev.Webbrowser | **Type:** Function | **Aliases:** `lt, `Nav

## Synopsis

> *(No synopsis provided)*

## Syntax

```powershell
Set-WebbrowserTabLocation -Url <String> [-ByReference <PSObject>] [-NoAutoSelectTab] [-Page <Object>] [<CommonParameters>]

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
| `-Page` | Object | — | — | Named | — | 브라우저 페이지 객체 참조 |
| `-ByReference` | PSObject | — | — | Named | — | 브라우저 세션 참조 객체 |

## Related Links

- [Set-WebbrowserTabLocation on GitHub](https://github.com/genXdev/genXdev)

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
| `-Url` | String | ✅ | ✅ (ByValue, ByPropertyName) | 0 | — | 要导航到的 URL |
| `-NoAutoSelectTab` | SwitchParameter | — | — | Named | — | Prevent automatic tab selection |
| `-Edge` | SwitchParameter | — | — | Named | — | 使用 Microsoft Edge 浏览器导航 *(Parameter set: )* |
| `-Chrome` | SwitchParameter | — | — | Named | — | 使用 Google Chrome 浏览器导航 *(Parameter set: )* |
| `-Page` | Object | — | — | Named | — | 浏览器页面对象引用 |
| `-ByReference` | PSObject | — | — | Named | — | 浏览器会话引用对象 |

## Related Links

- [Set-WebbrowserTabLocation on GitHub](https://github.com/genXdev/genXdev)

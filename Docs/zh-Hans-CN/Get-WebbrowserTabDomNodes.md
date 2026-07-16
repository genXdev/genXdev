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
| `-QuerySelector` | String[] | ✅ | — | 0 | — | 用于选择 DOM 节点的查询选择器字符串或字符串数组 |
| `-ModifyScript` | String | — | — | 1 | `''` | 用于修改查询选择器输出的脚本，例如 e.outerHTML 或 e.outerHTML='hello world' |
| `-Edge` | SwitchParameter | — | — | Named | — | 请使用 Microsoft Edge 浏览器 |
| `-Chrome` | SwitchParameter | — | — | Named | — | 请使用谷歌浏览器 |
| `-Page` | Object | — | — | Named | — | 浏览器页面对象引用 |
| `-ByReference` | PSObject | — | — | Named | — | 浏览器会话引用对象 |
| `-NoAutoSelectTab` | SwitchParameter | — | — | Named | — | Prevent automatic tab selection |

## Related Links

- [Get-WebbrowserTabDomNodes on GitHub](https://github.com/genXdev/genXdev)

# Get-WebbrowserTabDomNodes

> **Module:** GenXdev.Webbrowser | **Type:** Function | **Aliases:** `wl

## Synopsis

> 使用CSS选择器查询和操作活动浏览器标签中的DOM节点。

## Description

使用浏览器自动化来查找与CSS选择器匹配的元素，并返回它们的HTML内容，或对每个匹配的元素执行自定义JavaScript。此函数对于网页抓取和浏览器自动化任务非常有用。

## Syntax

```powershell
Get-WebbrowserTabDomNodes -QuerySelector <String[]> [[-ModifyScript] <String>] [-ByReference <PSObject>] [-Chrome] [-Chromium] [-Edge] [-Firefox] [-NoAutoSelectTab] [-Page <Object>] [-Webkit] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-QuerySelector` | String[] | ✅ | — | 0 | — | 用于选择 DOM 节点的查询选择器字符串或字符串数组 |
| `-ModifyScript` | String | — | — | 1 | `''` | 用于修改查询选择器输出的脚本，例如 e.outerHTML 或 e.outerHTML='hello world' |
| `-Edge` | SwitchParameter | — | — | Named | — | 请使用 Microsoft Edge 浏览器 |
| `-Chrome` | SwitchParameter | — | — | Named | — | 请使用谷歌浏览器 |
| `-Chromium` | SwitchParameter | — | — | Named | — | 根据默认浏览器是什么，使用 Microsoft Edge 或 Google Chrome。 |
| `-Firefox` | SwitchParameter | — | — | Named | — | 使用 Firefox 浏览器 |
| `-Webkit` | SwitchParameter | — | — | Named | — | 使用 Playwright 管理的 WebKit 浏览器 |
| `-Page` | Object | — | — | Named | — | 用于定位特定标签页的浏览器页面对象引用 |
| `-ByReference` | PSObject | — | — | Named | — | 用于重用现有浏览器会话的浏览器会话引用对象 |
| `-NoAutoSelectTab` | SwitchParameter | — | — | Named | — | Prevent automatic tab selection |

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

# Clear-YoutubeWatched

> **Module:** GenXdev.Queries.Webbrowser | **Type:** Function | **Aliases:** —

## Synopsis

> 从浏览器的本地存储中清除YouTube观看历史记录。

## Description

此函数选择浏览器中的 YouTube 标签页，并通过重置 Open-AllYoutubeVideos -> qvideos cmdlet 中已观看视频的本地存储值来清除观看历史记录。它需要在浏览器中打开一个 YouTube 标签页。

## Syntax

```powershell
Clear-YoutubeWatched [-Chrome] [-Chromium] [-Edge] [-Firefox] [-Webkit] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-Edge` | SwitchParameter | — | — | Named | — | 请使用 Microsoft Edge 浏览器 |
| `-Chrome` | SwitchParameter | — | — | Named | — | 请使用谷歌浏览器 |
| `-Chromium` | SwitchParameter | — | — | Named | — | 根据默认浏览器是什么，使用 Microsoft Edge 或 Google Chrome。 |
| `-Firefox` | SwitchParameter | — | — | Named | — | 使用 Firefox 浏览器 |
| `-Webkit` | SwitchParameter | — | — | Named | — | 使用 Playwright 管理的 WebKit 浏览器 |

## Examples

### Clear-YoutubeWatched Clears the watch history of the Open-AllYoutubeVideos -> qvideos cmdlet, in the currently open YouTube tab.

```powershell
Clear-YoutubeWatched
Clears the watch history of the Open-AllYoutubeVideos -> qvideos cmdlet, in the
currently open YouTube tab.
```

## Related Links

- [Clear-YoutubeWatched on GitHub](https://github.com/genXdev/genXdev)

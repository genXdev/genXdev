# Open-AllYoutubeVideos

> **Module:** GenXdev.Queries.Webbrowser | **Type:** Function | **Aliases:** `qvideos, `qyt

## Synopsis

> 在浏览器窗口中通过键盘快捷键打开和控制YouTube视频。

## Description

在浏览器窗口中打开与搜索词匹配或来自YouTube各板块的YouTube视频。通过交互界面提供键盘控制，用于视频播放和导航。支持多种浏览器和各类YouTube内容类型，包括搜索结果、订阅、稍后观看、推荐视频和热门内容。

## Syntax

```powershell
Open-AllYoutubeVideos [[-Queries] <String[]>] [-AcceptLang <String>] [-ApplicationMode] [-Chrome] [-Chromium] [-Edge] [-Firefox] [-NoFullScreen] [-Private] [-Recommended] [-Subscriptions] [-Trending] [-WatchLater] [-Webkit] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-Queries` | String[] | — | ✅ (ByValue, ByPropertyName) | 0 | `@('')` | YouTube搜索词，用于查找视频 |
| `-Subscriptions` | SwitchParameter | — | — | Named | — | 打开已订阅频道的视频 |
| `-WatchLater` | SwitchParameter | — | — | Named | — | 从稍后观看列表中播放视频 |
| `-Recommended` | SwitchParameter | — | — | Named | — | 打开推荐视频 |
| `-Trending` | SwitchParameter | — | — | Named | — | 打开热门视频 |
| `-Private` | SwitchParameter | — | — | Named | — | 在无痕/隐私浏览模式下打开 |
| `-Edge` | SwitchParameter | — | — | Named | — | 在 Microsoft Edge 中打开 |
| `-Chrome` | SwitchParameter | — | — | Named | — | 在谷歌浏览器中打开 |
| `-Chromium` | SwitchParameter | — | — | Named | — | 根据默认浏览器，在 Microsoft Edge 或 Google Chrome 中打开 |
| `-Firefox` | SwitchParameter | — | — | Named | — | 在 Firefox 中打开 |
| `-Webkit` | SwitchParameter | — | — | Named | — | 使用 Playwright 管理的 WebKit 浏览器 |
| `-NoFullScreen` | SwitchParameter | — | — | Named | — | 阻止以全屏模式打开 |
| `-ApplicationMode` | SwitchParameter | — | — | Named | — | 隐藏浏览器控件 |
| `-AcceptLang` | String | — | — | Named | `$null` | 设置浏览器接受语言 HTTP 头 |

## Examples

### Open-AllYoutubeVideos -Queries "PowerShell tutorial","vscode tips" -Edge

```powershell
Open-AllYoutubeVideos -Queries "PowerShell tutorial","vscode tips" -Edge
```

### qvideos "PowerShell tutorial" -e

```powershell
qvideos "PowerShell tutorial" -e
```

## Related Links

- [Open-AllYoutubeVideos on GitHub](https://github.com/genXdev/genXdev)

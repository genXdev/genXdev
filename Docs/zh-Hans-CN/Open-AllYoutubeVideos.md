# Open-AllYoutubeVideos

> **Module:** GenXdev.Queries.Webbrowser | **Type:** Function | **Aliases:** `qvideos, `qyt

## Synopsis

> *(No synopsis provided)*

## Syntax

```powershell
Open-AllYoutubeVideos [[-Queries] <String[]>] [-AcceptLang <String>] [-ApplicationMode] [-Chrome] [-Edge] [-NoFullScreen] [-Private] [-Recommended] [-Subscriptions] [-Trending] [-WatchLater] [<CommonParameters>]
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
| `-NoFullScreen` | SwitchParameter | — | — | Named | — | 阻止以全屏模式打开 |
| `-ApplicationMode` | SwitchParameter | — | — | Named | — | 隐藏浏览器控件 |
| `-AcceptLang` | String | — | — | Named | `$null` | 设置浏览器接受语言 HTTP 头 |

## Related Links

- [Open-AllYoutubeVideos on GitHub](https://github.com/genXdev/genXdev)

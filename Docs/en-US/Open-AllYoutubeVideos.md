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
| `-Queries` | String[] | — | ✅ (ByValue, ByPropertyName) | 0 | `@('')` | YouTube search terms to find videos |
| `-Subscriptions` | SwitchParameter | — | — | Named | — | Open videos from subscribed channels |
| `-WatchLater` | SwitchParameter | — | — | Named | — | Open videos from watch later playlist |
| `-Recommended` | SwitchParameter | — | — | Named | — | Open recommended videos |
| `-Trending` | SwitchParameter | — | — | Named | — | Open trending videos |
| `-Private` | SwitchParameter | — | — | Named | — | Opens in incognito/private browsing mode |
| `-Edge` | SwitchParameter | — | — | Named | — | Opens in Microsoft Edge |
| `-Chrome` | SwitchParameter | — | — | Named | — | Opens in Google Chrome |
| `-NoFullScreen` | SwitchParameter | — | — | Named | — | Prevents opening in fullscreen mode |
| `-ApplicationMode` | SwitchParameter | — | — | Named | — | Hide the browser controls |
| `-AcceptLang` | String | — | — | Named | `$null` | Set the browser accept-lang http header |

## Related Links

- [Open-AllYoutubeVideos on GitHub](https://github.com/genXdev/genXdev)

# Open-AllYoutubeVideos

> **Module:** GenXdev.Queries.Webbrowser | **Type:** Function | **Aliases:** `qvideos, `qyt

## Synopsis

> Opens and controls YouTube videos in a browser window with keyboard shortcuts.

## Description

Opens YouTube videos matching search terms or from various YouTube sections in a
browser window. Provides keyboard controls for video playback and navigation
through an interactive interface. Supports multiple browsers and various YouTube
content types including search results, subscriptions, watch later, recommended
videos, and trending content.

## Syntax

```powershell
Open-AllYoutubeVideos [[-Queries] <String[]>] [-AcceptLang <String>] [-ApplicationMode] [-Chrome] [-Chromium] [-Edge] [-Firefox] [-NoFullScreen] [-Private] [-Recommended] [-Subscriptions] [-Trending] [-WatchLater] [-Webkit] [<CommonParameters>]
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
| `-Chromium` | SwitchParameter | — | — | Named | — | Opens in Microsoft Edge or Google Chrome, depending on what the default browser is |
| `-Firefox` | SwitchParameter | — | — | Named | — | Opens in Firefox |
| `-Webkit` | SwitchParameter | — | — | Named | — | Uses the Playwright-managed WebKit browser |
| `-NoFullScreen` | SwitchParameter | — | — | Named | — | Prevents opening in fullscreen mode |
| `-ApplicationMode` | SwitchParameter | — | — | Named | — | Hide the browser controls |
| `-AcceptLang` | String | — | — | Named | `$null` | Set the browser accept-lang http header |

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

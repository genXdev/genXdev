# Clear-YoutubeWatched

> **Module:** GenXdev.Queries.Webbrowser | **Type:** Function | **Aliases:** —

## Synopsis

> Clears the YouTube watch history from the browser's local storage.

## Description

This function selects a YouTube tab in the browser and clears the watch history
by resetting the local storage value for watched videos of the
Open-AllYoutubeVideos -> qvideos cmdlet. It requires an open
YouTube tab in the browser.

## Syntax

```powershell
Clear-YoutubeWatched [-Chrome] [-Chromium] [-Edge] [-Firefox] [-Webkit] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-Edge` | SwitchParameter | — | — | Named | — | Use Microsoft Edge browser |
| `-Chrome` | SwitchParameter | — | — | Named | — | Use Google Chrome browser |
| `-Chromium` | SwitchParameter | — | — | Named | — | Use Microsoft Edge or Google Chrome, depending on what the default browser is |
| `-Firefox` | SwitchParameter | — | — | Named | — | Use Firefox browser |
| `-Webkit` | SwitchParameter | — | — | Named | — | Use the Playwright-managed WebKit browser |

## Examples

### Clear-YoutubeWatched Clears the watch history of the Open-AllYoutubeVideos -> qvideos cmdlet, in the currently open YouTube tab.

```powershell
Clear-YoutubeWatched
Clears the watch history of the Open-AllYoutubeVideos -> qvideos cmdlet, in the
currently open YouTube tab.
```

## Related Links

- [Clear-YoutubeWatched on GitHub](https://github.com/genXdev/genXdev)

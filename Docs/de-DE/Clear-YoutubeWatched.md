# Clear-YoutubeWatched

> **Module:** GenXdev.Queries.Webbrowser | **Type:** Function | **Aliases:** —

## Synopsis

> Löscht den YouTube-Verlauf aus dem lokalen Speicher des Browsers.

## Description

Diese Funktion wählt einen YouTube-Tab im Browser aus und löscht den Wiedergabeverlauf, indem sie den lokalen Speicherwert für angesehene Videos des Open-AllYoutubeVideos -> qvideos Cmdlets zurücksetzt. Sie erfordert einen geöffneten YouTube-Tab im Browser.

## Syntax

```powershell
Clear-YoutubeWatched [-Chrome] [-Chromium] [-Edge] [-Firefox] [-Webkit] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-Edge` | SwitchParameter | — | — | Named | — | Verwenden Sie den Microsoft Edge-Browser |
| `-Chrome` | SwitchParameter | — | — | Named | — | Use Google Chrome browser |
| `-Chromium` | SwitchParameter | — | — | Named | — | Verwenden Sie Microsoft Edge oder Google Chrome, je nachdem, welcher der Standardbrowser ist. |
| `-Firefox` | SwitchParameter | — | — | Named | — | Verwenden Sie den Firefox-Browser |
| `-Webkit` | SwitchParameter | — | — | Named | — | Verwenden Sie den Playwright-verwalteten WebKit-Browser |

## Examples

### Clear-YoutubeWatched Clears the watch history of the Open-AllYoutubeVideos -> qvideos cmdlet, in the currently open YouTube tab.

```powershell
Clear-YoutubeWatched
Clears the watch history of the Open-AllYoutubeVideos -> qvideos cmdlet, in the
currently open YouTube tab.
```

## Related Links

- [Clear-YoutubeWatched on GitHub](https://github.com/genXdev/genXdev)

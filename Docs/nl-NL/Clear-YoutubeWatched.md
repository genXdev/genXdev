# Clear-YoutubeWatched

> **Module:** GenXdev.Queries.Webbrowser | **Type:** Function | **Aliases:** —

## Synopsis

> Wischt den YouTube-Verlauf aus dem lokalen Speicher des Browsers.

## Description

Deze functie selecteert een YouTube-tabblad in de browser en wist de kijkgeschiedenis door de lokale opslagwaarde voor bekeken video's van de Open-AllYoutubeVideos -> qvideos cmdlet te resetten. Er is een open YouTube-tabblad in de browser vereist.

## Syntax

```powershell
Clear-YoutubeWatched [-Chrome] [-Chromium] [-Edge] [-Firefox] [-Webkit] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-Edge` | SwitchParameter | — | — | Named | — | Gebruik de Microsoft Edge-browser |
| `-Chrome` | SwitchParameter | — | — | Named | — | Gebruik de Google Chrome-browser |
| `-Chromium` | SwitchParameter | — | — | Named | — | Gebruik Microsoft Edge of Google Chrome, afhankelijk van wat de standaardbrowser is |
| `-Firefox` | SwitchParameter | — | — | Named | — | Gebruik Firefox-browser |
| `-Webkit` | SwitchParameter | — | — | Named | — | Gebruik de door Playwright beheerde WebKit-browser |

## Examples

### Clear-YoutubeWatched Clears the watch history of the Open-AllYoutubeVideos -> qvideos cmdlet, in the currently open YouTube tab.

```powershell
Clear-YoutubeWatched
Clears the watch history of the Open-AllYoutubeVideos -> qvideos cmdlet, in the
currently open YouTube tab.
```

## Related Links

- [Clear-YoutubeWatched on GitHub](https://github.com/genXdev/genXdev)

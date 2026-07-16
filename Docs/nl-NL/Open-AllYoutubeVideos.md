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
| `-Queries` | String[] | — | ✅ (ByValue, ByPropertyName) | 0 | `@('')` | YouTube-zoektermen om video's te vinden |
| `-Subscriptions` | SwitchParameter | — | — | Named | — | Open video's van geabonneerde kanalen |
| `-WatchLater` | SwitchParameter | — | — | Named | — | Open videos from watch later playlist |
| `-Recommended` | SwitchParameter | — | — | Named | — | Open aanbevolen video's |
| `-Trending` | SwitchParameter | — | — | Named | — | Open trending videos |
| `-Private` | SwitchParameter | — | — | Named | — | Opent in incognito-/privatieve browse-modus |
| `-Edge` | SwitchParameter | — | — | Named | — | Wordt geopend in Microsoft Edge |
| `-Chrome` | SwitchParameter | — | — | Named | — | Opent in Google Chrome |
| `-NoFullScreen` | SwitchParameter | — | — | Named | — | Voorkomt openen in volledige schermmodus |
| `-ApplicationMode` | SwitchParameter | — | — | Named | — | Verberg de browserbediening |
| `-AcceptLang` | String | — | — | Named | `$null` | Stel de browser accept-lang http-header in |

## Related Links

- [Open-AllYoutubeVideos on GitHub](https://github.com/genXdev/genXdev)

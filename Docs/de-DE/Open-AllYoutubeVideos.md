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
| `-WatchLater` | SwitchParameter | — | — | Named | — | Öffne Videos aus der Wiedergabeliste "Später ansehen" |
| `-Recommended` | SwitchParameter | — | — | Named | — | Empfohlene Videos öffnen |
| `-Trending` | SwitchParameter | — | — | Named | — | Trending-Videos öffnen |
| `-Private` | SwitchParameter | — | — | Named | — | Öffnet im Inkognito-/Privatmodus |
| `-Edge` | SwitchParameter | — | — | Named | — | Wird in Microsoft Edge geöffnet |
| `-Chrome` | SwitchParameter | — | — | Named | — | Öffnet in Google Chrome |
| `-NoFullScreen` | SwitchParameter | — | — | Named | — | Verhindert das Öffnen im Vollbildmodus |
| `-ApplicationMode` | SwitchParameter | — | — | Named | — | Blenden Sie die Browsersteuerelemente aus |
| `-AcceptLang` | String | — | — | Named | `$null` | Setzen Sie den Accept-Language-HTTP-Header des Browsers |

## Related Links

- [Open-AllYoutubeVideos on GitHub](https://github.com/genXdev/genXdev)

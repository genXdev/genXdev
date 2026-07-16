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
| `-Queries` | String[] | — | ✅ (ByValue, ByPropertyName) | 0 | `@('')` | Termes de recherche YouTube pour trouver des vidéos |
| `-Subscriptions` | SwitchParameter | — | — | Named | — | Ouvrir les vidéos des chaînes auxquelles vous êtes abonné |
| `-WatchLater` | SwitchParameter | — | — | Named | — | Open videos from watch later playlist |
| `-Recommended` | SwitchParameter | — | — | Named | — | Ouvrir les vidéos recommandées |
| `-Trending` | SwitchParameter | — | — | Named | — | Vidéos tendances |
| `-Private` | SwitchParameter | — | — | Named | — | S'ouvre en mode Navigation privée |
| `-Edge` | SwitchParameter | — | — | Named | — | Ouvre dans Microsoft Edge |
| `-Chrome` | SwitchParameter | — | — | Named | — | S'ouvre dans Google Chrome |
| `-NoFullScreen` | SwitchParameter | — | — | Named | — | Empêche l'ouverture en mode plein écran |
| `-ApplicationMode` | SwitchParameter | — | — | Named | — | Masquer les contrôles du navigateur |
| `-AcceptLang` | String | — | — | Named | `$null` | Set browser accept-language HTTP header |

## Related Links

- [Open-AllYoutubeVideos on GitHub](https://github.com/genXdev/genXdev)

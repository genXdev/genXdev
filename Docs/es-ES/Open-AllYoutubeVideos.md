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
| `-Queries` | String[] | — | ✅ (ByValue, ByPropertyName) | 0 | `@('')` | Términos de búsqueda de YouTube para encontrar videos |
| `-Subscriptions` | SwitchParameter | — | — | Named | — | Abrir videos de canales suscritos |
| `-WatchLater` | SwitchParameter | — | — | Named | — | Open videos from watch later playlist |
| `-Recommended` | SwitchParameter | — | — | Named | — | Abrir videos recomendados |
| `-Trending` | SwitchParameter | — | — | Named | — | Abrir videos de tendencia |
| `-Private` | SwitchParameter | — | — | Named | — | Se abre en modo de incógnito/navegación privada |
| `-Edge` | SwitchParameter | — | — | Named | — | Se abre en Microsoft Edge |
| `-Chrome` | SwitchParameter | — | — | Named | — | Se abre en Google Chrome |
| `-NoFullScreen` | SwitchParameter | — | — | Named | — | Evita abrir en modo de pantalla completa |
| `-ApplicationMode` | SwitchParameter | — | — | Named | — | Ocultar los controles del navegador |
| `-AcceptLang` | String | — | — | Named | `$null` | Set browser accept-lang http header |

## Related Links

- [Open-AllYoutubeVideos on GitHub](https://github.com/genXdev/genXdev)

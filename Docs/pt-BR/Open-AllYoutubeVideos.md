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
| `-Queries` | String[] | — | ✅ (ByValue, ByPropertyName) | 0 | `@('')` | Termos de busca no YouTube para encontrar vídeos |
| `-Subscriptions` | SwitchParameter | — | — | Named | — | Abrir vídeos de canais inscritos |
| `-WatchLater` | SwitchParameter | — | — | Named | — | Abrir vídeos da lista 'Assistir mais tarde' |
| `-Recommended` | SwitchParameter | — | — | Named | — | Abrir vídeos recomendados |
| `-Trending` | SwitchParameter | — | — | Named | — | Vídeos em alta |
| `-Private` | SwitchParameter | — | — | Named | — | Abre no modo de navegação anônima/privada |
| `-Edge` | SwitchParameter | — | — | Named | — | Abre no Microsoft Edge |
| `-Chrome` | SwitchParameter | — | — | Named | — | Abre no Google Chrome |
| `-NoFullScreen` | SwitchParameter | — | — | Named | — | Impede a abertura em modo de tela cheia |
| `-ApplicationMode` | SwitchParameter | — | — | Named | — | Ocultar os controles do navegador |
| `-AcceptLang` | String | — | — | Named | `$null` | Definir o cabeçalho HTTP Accept-Language do navegador |

## Related Links

- [Open-AllYoutubeVideos on GitHub](https://github.com/genXdev/genXdev)

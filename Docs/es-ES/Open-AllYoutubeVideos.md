# Open-AllYoutubeVideos

> **Module:** GenXdev.Queries.Webbrowser | **Type:** Function | **Aliases:** `qvideos, `qyt

## Synopsis

> Abre y controla vídeos de YouTube en una ventana del navegador con atajos de teclado.

## Description

Abre videos de YouTube que coinciden con términos de búsqueda o de varias secciones de YouTube en una ventana del navegador. Proporciona controles de teclado para la reproducción de video y navegación a través de una interfaz interactiva. Admite múltiples navegadores y varios tipos de contenido de YouTube, incluidos resultados de búsqueda, suscripciones, ver más tarde, videos recomendados y contenido de tendencias.

## Syntax

```powershell
Open-AllYoutubeVideos [[-Queries] <String[]>] [-AcceptLang <String>] [-ApplicationMode] [-Chrome] [-Chromium] [-Edge] [-Firefox] [-NoFullScreen] [-Private] [-Recommended] [-Subscriptions] [-Trending] [-WatchLater] [-Webkit] [<CommonParameters>]
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
| `-Chromium` | SwitchParameter | — | — | Named | — | Se abre en Microsoft Edge o Google Chrome, dependiendo de cuál sea el navegador predeterminado |
| `-Firefox` | SwitchParameter | — | — | Named | — | Se abre en Firefox |
| `-Webkit` | SwitchParameter | — | — | Named | — | Usa el navegador WebKit gestionado por Playwright |
| `-NoFullScreen` | SwitchParameter | — | — | Named | — | Evita abrir en modo de pantalla completa |
| `-ApplicationMode` | SwitchParameter | — | — | Named | — | Ocultar los controles del navegador |
| `-AcceptLang` | String | — | — | Named | `$null` | Set browser accept-lang http header |

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

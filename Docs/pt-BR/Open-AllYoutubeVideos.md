# Open-AllYoutubeVideos

> **Module:** GenXdev.Queries.Webbrowser | **Type:** Function | **Aliases:** `qvideos, `qyt

## Synopsis

> Abre e controla vídeos do YouTube em uma janela do navegador com atalhos de teclado.

## Description

Abre vídeos do YouTube correspondentes a termos de busca ou de várias seções do YouTube em uma janela do navegador. Fornece controles de teclado para reprodução de vídeo e navegação através de uma interface interativa. Suporta vários navegadores e diversos tipos de conteúdo do YouTube, incluindo resultados de busca, inscrições, assistir mais tarde, vídeos recomendados e conteúdo em alta.

## Syntax

```powershell
Open-AllYoutubeVideos [[-Queries] <String[]>] [-AcceptLang <String>] [-ApplicationMode] [-Chrome] [-Chromium] [-Edge] [-Firefox] [-NoFullScreen] [-Private] [-Recommended] [-Subscriptions] [-Trending] [-WatchLater] [-Webkit] [<CommonParameters>]
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
| `-Chromium` | SwitchParameter | — | — | Named | — | Abre no Microsoft Edge ou Google Chrome, dependendo de qual é o navegador padrão |
| `-Firefox` | SwitchParameter | — | — | Named | — | Abre no Firefox |
| `-Webkit` | SwitchParameter | — | — | Named | — | Usa o navegador WebKit gerenciado pelo Playwright |
| `-NoFullScreen` | SwitchParameter | — | — | Named | — | Impede a abertura em modo de tela cheia |
| `-ApplicationMode` | SwitchParameter | — | — | Named | — | Ocultar os controles do navegador |
| `-AcceptLang` | String | — | — | Named | `$null` | Definir o cabeçalho HTTP Accept-Language do navegador |

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

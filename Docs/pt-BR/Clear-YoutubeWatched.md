# Clear-YoutubeWatched

> **Module:** GenXdev.Queries.Webbrowser | **Type:** Function | **Aliases:** —

## Synopsis

> Limpa o histórico de exibição do YouTube do armazenamento local do navegador.

## Description

Esta função seleciona uma guia do YouTube no navegador e limpa o histórico de exibição, redefinindo o valor do armazenamento local para vídeos assistidos do cmdlet Open-AllYoutubeVideos -> qvideos. Ela requer uma guia do YouTube aberta no navegador.

## Syntax

```powershell
Clear-YoutubeWatched [-Chrome] [-Chromium] [-Edge] [-Firefox] [-Webkit] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-Edge` | SwitchParameter | — | — | Named | — | Use o navegador Microsoft Edge |
| `-Chrome` | SwitchParameter | — | — | Named | — | Use o navegador Google Chrome |
| `-Chromium` | SwitchParameter | — | — | Named | — | Use o Microsoft Edge ou o Google Chrome, dependendo de qual é o navegador padrão |
| `-Firefox` | SwitchParameter | — | — | Named | — | Use o navegador Firefox |
| `-Webkit` | SwitchParameter | — | — | Named | — | Use o navegador WebKit gerenciado pelo Playwright |

## Examples

### Clear-YoutubeWatched Clears the watch history of the Open-AllYoutubeVideos -> qvideos cmdlet, in the currently open YouTube tab.

```powershell
Clear-YoutubeWatched
Clears the watch history of the Open-AllYoutubeVideos -> qvideos cmdlet, in the
currently open YouTube tab.
```

## Related Links

- [Clear-YoutubeWatched on GitHub](https://github.com/genXdev/genXdev)

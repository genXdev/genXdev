# Stop-WebbrowserVideos

> **Module:** GenXdev.Webbrowser.Playwright | **Type:** Function | **Aliases:** `wbsst, `ssst, `wbvideostop

## Synopsis

> Pausa a reprodução de vídeo em todas as sessões ativas do navegador.

## Description

Itera por todas as sessões de navegador ativas e pausa quaisquer vídeos em reprodução executando comandos JavaScript. A função mantém o estado original da sessão e lida com erros de forma elegante.

## Syntax

```powershell
Stop-WebbrowserVideos [-Chrome] [-Chromium] [-Edge] [-Firefox] [-Webkit] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-Edge` | SwitchParameter | — | — | Named | — | Abre no Microsoft Edge |
| `-Chrome` | SwitchParameter | — | — | Named | — | Abre no Google Chrome |
| `-Chromium` | SwitchParameter | — | — | Named | — | Abre no Microsoft Edge ou Google Chrome, dependendo de qual é o navegador padrão |
| `-Firefox` | SwitchParameter | — | — | Named | — | Abre no Firefox |
| `-Webkit` | SwitchParameter | — | — | Named | — | Usa o navegador WebKit gerenciado pelo Playwright |

## Examples

### Stop-WebbrowserVideos

```powershell
Stop-WebbrowserVideos
```

### wbsst ##############################################################################

```powershell
wbsst
##############################################################################
```

## Related Links

- [Stop-WebbrowserVideos on GitHub](https://github.com/genXdev/genXdev)

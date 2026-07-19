# Set-BrowserVideoFullscreen

> **Module:** GenXdev.Webbrowser | **Type:** Function | **Aliases:** `fsvideo

## Synopsis

> Maximiza o primeiro elemento de vídeo encontrado na aba atual do navegador.

## Description

Executa código JavaScript para localizar e maximizar o primeiro elemento de vídeo na página web atual. O vídeo é configurado para cobrir toda a janela de visualização com o máximo z-index para garantir visibilidade. As barras de rolagem da página são ocultadas para uma experiência de tela cheia limpa.

## Syntax

```powershell
Set-BrowserVideoFullscreen [-Chrome] [-Chromium] [-Edge] [-Firefox] [-Webkit] [<CommonParameters>]
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

### Set-BrowserVideoFullscreen

```powershell
Set-BrowserVideoFullscreen
```

## Related Links

- [Set-BrowserVideoFullscreen on GitHub](https://github.com/genXdev/genXdev)

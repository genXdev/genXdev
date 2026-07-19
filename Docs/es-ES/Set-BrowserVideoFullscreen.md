# Set-BrowserVideoFullscreen

> **Module:** GenXdev.Webbrowser | **Type:** Function | **Aliases:** `fsvideo

## Synopsis

> Maximiza el primer elemento de video encontrado en la pestaña actual del navegador.

## Description

Ejecuta código JavaScript para localizar y maximizar el primer elemento de video en la página web actual. El video se ajusta para cubrir toda la ventana gráfica con el máximo índice z para garantizar la visibilidad. Las barras de desplazamiento de la página se ocultan para una experiencia de pantalla completa limpia.

## Syntax

```powershell
Set-BrowserVideoFullscreen [-Chrome] [-Chromium] [-Edge] [-Firefox] [-Webkit] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-Edge` | SwitchParameter | — | — | Named | — | Usa el navegador Microsoft Edge |
| `-Chrome` | SwitchParameter | — | — | Named | — | Utiliza el navegador Google Chrome |
| `-Chromium` | SwitchParameter | — | — | Named | — | Usa Microsoft Edge o Google Chrome, según cuál sea el navegador predeterminado |
| `-Firefox` | SwitchParameter | — | — | Named | — | Usa el navegador Firefox |
| `-Webkit` | SwitchParameter | — | — | Named | — | Use el navegador WebKit administrado por Playwright |

## Examples

### Set-BrowserVideoFullscreen

```powershell
Set-BrowserVideoFullscreen
```

## Related Links

- [Set-BrowserVideoFullscreen on GitHub](https://github.com/genXdev/genXdev)

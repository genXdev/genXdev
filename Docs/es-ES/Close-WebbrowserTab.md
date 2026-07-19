# Close-WebbrowserTab

> **Module:** GenXdev.Webbrowser | **Type:** Function | **Aliases:** `ct, `CloseTab

## Synopsis

> Cierra la pestaña del navegador web seleccionada actualmente.

## Description

Cierra la pestaña del navegador web actualmente seleccionada usando el método CloseAsync() de ChromeDriver.
Si no hay ninguna pestaña seleccionada, la función intentará automáticamente
seleccionar la última pestaña utilizada antes de cerrarla.

## Syntax

```powershell
Close-WebbrowserTab [-Chrome] [-Chromium] [-Edge] [-Firefox] [-Webkit] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-Edge` | SwitchParameter | — | — | Named | — | Navigate using Microsoft Edge browser |
| `-Chrome` | SwitchParameter | — | — | Named | — | Navegar usando el navegador Google Chrome |
| `-Chromium` | SwitchParameter | — | — | Named | — | Se abre en Microsoft Edge o Google Chrome, dependiendo de cuál sea el navegador predeterminado |
| `-Firefox` | SwitchParameter | — | — | Named | — | Se abre en Firefox |
| `-Webkit` | SwitchParameter | — | — | Named | — | Usa el navegador WebKit gestionado por Playwright |

## Examples

### Close-WebbrowserTab Closes the currently active browser tab

```powershell
Close-WebbrowserTab
Closes the currently active browser tab
```

### ct Uses the alias to close the currently active browser tab

```powershell
ct
Uses the alias to close the currently active browser tab
```

## Related Links

- [Close-WebbrowserTab on GitHub](https://github.com/genXdev/genXdev)

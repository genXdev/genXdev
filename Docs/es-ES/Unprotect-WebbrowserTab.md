# Unprotect-WebbrowserTab

> **Module:** GenXdev.Webbrowser.Playwright | **Type:** Function | **Aliases:** `wbctrl

## Synopsis

> Toma el control de una pestaña del navegador web seleccionada para su manipulación interactiva.

## Description

Esta función permite el control interactivo de una pestaña del navegador que fue previamente seleccionada usando Select-WebbrowserTab. Proporciona acceso directo a las propiedades y métodos del objeto Page de Microsoft Playwright, permitiendo la interacción automatizada con el navegador.

## Syntax

```powershell
Unprotect-WebbrowserTab [-Force] [-UseCurrent] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-UseCurrent` | SwitchParameter | — | — | Named | — | Usar la pestaña actual en lugar de seleccionar una nueva *(Parameter set: )* |
| `-Force` | SwitchParameter | — | — | Named | — | Reiniciar el navegador si no se detecta un servidor de depuración *(Parameter set: )* |

## Examples

### Unprotect-WebbrowserTab -UseCurrent

```powershell
Unprotect-WebbrowserTab -UseCurrent
```

### wbctrl -Force

```powershell
wbctrl -Force
```

## Related Links

- [Unprotect-WebbrowserTab on GitHub](https://github.com/genXdev/genXdev)

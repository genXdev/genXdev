# Clear-WebbrowserTabSiteApplicationData

> **Module:** GenXdev.Webbrowser | **Type:** Function | **Aliases:** `clearsitedata

## Synopsis

> Limpia todos los datos de almacenamiento del navegador para la pestaña actual en Edge o Chrome.

## Description

El cmdlet Clear-WebbrowserTabSiteApplicationData ejecuta un fragmento de JavaScript
que limpia varios tipos de almacenamiento del navegador para la pestaña actual, incluyendo:
- Almacenamiento local
- Almacenamiento de sesión
- Cookies
- Bases de datos IndexedDB
- Almacenamiento en caché
- Registros de service workers

## Syntax

```powershell
Clear-WebbrowserTabSiteApplicationData [-Chrome] [-Chromium] [-Edge] [-Firefox] [-Webkit] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-Edge` | SwitchParameter | — | — | Named | — | Clear en Microsoft Edge |
| `-Chrome` | SwitchParameter | — | — | Named | — | Eliminar en Google Chrome |
| `-Chromium` | SwitchParameter | — | — | Named | — | Borrar en Microsoft Edge o Google Chrome, dependiendo de cuál sea el navegador predeterminado |
| `-Firefox` | SwitchParameter | — | — | Named | — | Limpiar en Firefox |
| `-Webkit` | SwitchParameter | — | — | Named | — | Limpiar en el navegador WebKit administrado por Playwright |

## Examples

### Clear-WebbrowserTabSiteApplicationData -Edge Clears all browser storage data in the current Edge tab.

```powershell
Clear-WebbrowserTabSiteApplicationData -Edge
Clears all browser storage data in the current Edge tab.
```

### clearsitedata -Chrome Clears all browser storage data in the current Chrome tab using the alias. ##############################################################################

```powershell
clearsitedata -Chrome
Clears all browser storage data in the current Chrome tab using the alias.
##############################################################################
```

## Related Links

- [Clear-WebbrowserTabSiteApplicationData on GitHub](https://github.com/genXdev/genXdev)

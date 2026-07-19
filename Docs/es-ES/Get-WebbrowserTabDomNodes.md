# Get-WebbrowserTabDomNodes

> **Module:** GenXdev.Webbrowser | **Type:** Function | **Aliases:** `wl

## Synopsis

> Consulta y manipula nodos del DOM en la pestaña activa del navegador utilizando selectores CSS.

## Description

Utiliza la automatización del navegador para encontrar elementos que coincidan con un selector CSS y devuelve su contenido HTML o ejecuta JavaScript personalizado en cada elemento coincidente. Esta función es útil para tareas de scraping web y automatización del navegador.

## Syntax

```powershell
Get-WebbrowserTabDomNodes -QuerySelector <String[]> [[-ModifyScript] <String>] [-ByReference <PSObject>] [-Chrome] [-Chromium] [-Edge] [-Firefox] [-NoAutoSelectTab] [-Page <Object>] [-Webkit] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-QuerySelector` | String[] | ✅ | — | 0 | — | La cadena o matriz de cadenas de selección de consulta para usar en la selección de nodos DOM |
| `-ModifyScript` | String | — | — | 1 | `''` | El script para modificar la salida del selector de consultas, por ejemplo, e.outerHTML o e.outerHTML = 'hola mundo' |
| `-Edge` | SwitchParameter | — | — | Named | — | Usa el navegador Microsoft Edge |
| `-Chrome` | SwitchParameter | — | — | Named | — | Utiliza el navegador Google Chrome |
| `-Chromium` | SwitchParameter | — | — | Named | — | Usa Microsoft Edge o Google Chrome, según cuál sea el navegador predeterminado |
| `-Firefox` | SwitchParameter | — | — | Named | — | Usa el navegador Firefox |
| `-Webkit` | SwitchParameter | — | — | Named | — | Use el navegador WebKit administrado por Playwright |
| `-Page` | Object | — | — | Named | — | Referencia del objeto de página del navegador para apuntar a una pestaña específica |
| `-ByReference` | PSObject | — | — | Named | — | Objeto de referencia de sesión de navegador para reutilizar una sesión de navegador existente |
| `-NoAutoSelectTab` | SwitchParameter | — | — | Named | — | Prevenir la selección automática de pestañas |

## Examples

### Get HTML of all header divs Get-WebbrowserTabDomNodes -QuerySelector "div.header"

```powershell
Get HTML of all header divs
Get-WebbrowserTabDomNodes -QuerySelector "div.header"
```

### Pause all videos on the page wl "video" "e.pause()"

```powershell
Pause all videos on the page
wl "video" "e.pause()"
```

## Related Links

- [Get-WebbrowserTabDomNodes on GitHub](https://github.com/genXdev/genXdev)

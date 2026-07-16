# Get-WebbrowserTabDomNodes

> **Module:** GenXdev.Webbrowser | **Type:** Function | **Aliases:** `wl

## Synopsis

> *(No synopsis provided)*

## Syntax

```powershell
Get-WebbrowserTabDomNodes -QuerySelector <String[]> [[-ModifyScript] <String>] [-ByReference <PSObject>] [-Chrome] [-Edge] [-NoAutoSelectTab] [-Page <Object>] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-QuerySelector` | String[] | ✅ | — | 0 | — | La cadena o matriz de cadenas de selección de consulta para usar en la selección de nodos DOM |
| `-ModifyScript` | String | — | — | 1 | `''` | El script para modificar la salida del selector de consultas, por ejemplo, e.outerHTML o e.outerHTML = 'hola mundo' |
| `-Edge` | SwitchParameter | — | — | Named | — | Usa el navegador Microsoft Edge |
| `-Chrome` | SwitchParameter | — | — | Named | — | Utiliza el navegador Google Chrome |
| `-Page` | Object | — | — | Named | — | Referencia del objeto de página del navegador |
| `-ByReference` | PSObject | — | — | Named | — | Objeto de referencia de sesión del navegador |
| `-NoAutoSelectTab` | SwitchParameter | — | — | Named | — | Prevenir la selección automática de pestañas |

## Related Links

- [Get-WebbrowserTabDomNodes on GitHub](https://github.com/genXdev/genXdev)

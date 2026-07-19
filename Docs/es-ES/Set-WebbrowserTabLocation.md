# Set-WebbrowserTabLocation

> **Module:** GenXdev.Webbrowser | **Type:** Function | **Aliases:** `lt, `Nav

## Synopsis

> Navega a una URL específica en la pestaña actual del navegador web.

## Description

Establece la ubicación (URL) de la pestaña del navegador web actualmente seleccionada. Admite tanto los navegadores Edge como Chrome mediante interruptores opcionales. La navegación incluye validación de la URL y asegura la carga adecuada de la página a través de operaciones asíncronas.

## Syntax

```powershell
Set-WebbrowserTabLocation -Url <String> [-ByReference <PSObject>] [-Chromium] [-Firefox] [-NoAutoSelectTab] [-Page <Object>] [-Webkit] [<CommonParameters>]

Set-WebbrowserTabLocation [-Edge] [<CommonParameters>]

Set-WebbrowserTabLocation [-Chrome] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-Url` | String | ✅ | ✅ (ByValue, ByPropertyName) | 0 | — | La URL a la que navegar |
| `-NoAutoSelectTab` | SwitchParameter | — | — | Named | — | Prevenir la selección automática de pestañas |
| `-Edge` | SwitchParameter | — | — | Named | — | Navigate using Microsoft Edge browser *(Parameter set: )* |
| `-Chrome` | SwitchParameter | — | — | Named | — | Navegar usando el navegador Google Chrome *(Parameter set: )* |
| `-Chromium` | SwitchParameter | — | — | Named | — | Navegue usando Microsoft Edge o Google Chrome, dependiendo de cuál sea el navegador predeterminado |
| `-Firefox` | SwitchParameter | — | — | Named | — | Navegar usando el navegador Firefox |
| `-Webkit` | SwitchParameter | — | — | Named | — | Navega usando el navegador WebKit gestionado por Playwright |
| `-Page` | Object | — | — | Named | — | Referencia del objeto de página del navegador |
| `-ByReference` | PSObject | — | — | Named | — | Objeto de referencia de sesión del navegador |

## Examples

### Set-WebbrowserTabLocation -Url "https://github.com/microsoft" -Edge

```powershell
Set-WebbrowserTabLocation -Url "https://github.com/microsoft" -Edge
```

### "https://github.com/microsoft" | lt -ch

```powershell
"https://github.com/microsoft" | lt -ch
```

## Related Links

- [Set-WebbrowserTabLocation on GitHub](https://github.com/genXdev/genXdev)

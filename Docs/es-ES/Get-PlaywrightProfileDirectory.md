# Get-PlaywrightProfileDirectory

> **Module:** GenXdev.Webbrowser.Playwright | **Type:** Cmdlet | **Aliases:** —

## Synopsis

> Obtiene el directorio del perfil del navegador Playwright para sesiones persistentes.

## Description

* Crea y gestiona directorios de perfiles de navegador para pruebas automatizadas con Playwright.
* Los perfiles se almacenan en LocalAppData, en GenXdev.Powershell\Playwright.profiles.
* Estos perfiles permiten sesiones persistentes en múltiples ejecuciones de automatización del navegador.

## Syntax

```powershell
Get-PlaywrightProfileDirectory [[-BrowserType] <string>] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-BrowserType` | String | — | — | 0 | — | El tipo de navegador (Chromium, Firefox o Webkit) |

## Examples

### Example 1

```powershell
Get-PlaywrightProfileDirectory -BrowserType Chromium
```

Crea o devuelve la ruta para el perfil del navegador Chromium.

### Example 2

```powershell
Get-PlaywrightProfileDirectory Firefox
```

Crea o devuelve el directorio del perfil de Firefox usando un parámetro posicional.

## Related Links

- [Get-PlaywrightProfileDirectory on GitHub](https://github.com/genXdev/genXdev)

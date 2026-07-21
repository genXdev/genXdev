# Get-PlaywrightProfileDirectory

> **Module:** GenXdev.Webbrowser.Playwright | **Type:** Cmdlet | **Aliases:** —

## Synopsis

> Obtiene el directorio de perfil del navegador Playwright para sesiones persistentes.

## Description

* Crea y gestiona directorios de perfil de navegador para pruebas automatizadas con Playwright.
* Los perfiles se almacenan en LocalAppData bajo GenXdev.Powershell\Playwright.profiles.
* Cada valor de BrowserType tiene su propio subdirectorio, manteniendo los perfiles de navegador reales (ChromeNormal, EdgeNormal) separados de los perfiles empaquetados de Playwright (ChromiumPlaywright, FirefoxPlaywright, WebKitPlaywright).

## Syntax

```powershell
Get-PlaywrightProfileDirectory [[-BrowserType] <String>] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-BrowserType` | String | — | — | 0 | — | El tipo de navegador: ChromeNormal, EdgeNormal, ChromiumNormal, ChromiumPlaywright, FirefoxPlaywright o WebKitPlaywright |

## Examples

### Example 1

```powershell
Get-PlaywrightProfileDirectory -BrowserType ChromeNormal
```

Crea o devuelve la ruta para el perfil del navegador Chrome instalado por el sistema operativo.

### Example 2

```powershell
Get-PlaywrightProfileDirectory -BrowserType ChromiumNormal
```

Crea o devuelve la ruta para el perfil de navegador Chromium detectado automáticamente.

### Example 3

```powershell
Get-PlaywrightProfileDirectory -BrowserType ChromiumPlaywright
```

Crea o devuelve la ruta para el perfil de Chromium incluido con Playwright.

## Parameter Details

### `-BrowserType <String>`

> El tipo de navegador: ChromeNormal, EdgeNormal, ChromiumNormal, ChromiumPlaywright, FirefoxPlaywright o WebKitPlaywright

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | 0 |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
## Related Links

- [Connect-PlaywrightViaDebuggingPort](https://github.com/genXdev/genXdev/blob/main/Docs/es-ES/Connect-PlaywrightViaDebuggingPort.md)
- [Open-PlayWrightBrowser](https://github.com/genXdev/genXdev/blob/main/Docs/es-ES/Open-PlayWrightBrowser.md)
- [Resume-WebbrowserTabVideo](https://github.com/genXdev/genXdev/blob/main/Docs/es-ES/Resume-WebbrowserTabVideo.md)
- [Stop-WebbrowserVideos](https://github.com/genXdev/genXdev/blob/main/Docs/es-ES/Stop-WebbrowserVideos.md)
- [Unprotect-WebbrowserTab](https://github.com/genXdev/genXdev/blob/main/Docs/es-ES/Unprotect-WebbrowserTab.md)

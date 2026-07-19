# Get-BrowserBookmark

> **Module:** GenXdev.Webbrowser | **Type:** Function | **Aliases:** `gbm

## Synopsis

> Devuelve todos los marcadores de los navegadores web instalados.

## Description

Recupera los marcadores de Microsoft Edge, Google Chrome o Mozilla Firefox instalados en el sistema. La función puede filtrar por tipo de navegador y devuelve información detallada de los marcadores, incluyendo nombre, URL, ubicación de la carpeta y marcas de tiempo. Maneja automáticamente el consentimiento para la instalación del paquete NuGet System.Data.SQLite al leer los marcadores de Firefox.

## Syntax

```powershell
Get-BrowserBookmark [-Chrome] [-ConsentToThirdPartySoftwareInstallation] [-Edge] [-ForceConsent] [<CommonParameters>]

Get-BrowserBookmark [-Firefox] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-Chrome` | SwitchParameter | — | — | Named | — | Devuelve los marcadores de Google Chrome |
| `-Edge` | SwitchParameter | — | — | Named | — | Devuelve los favoritos de Microsoft Edge |
| `-Firefox` | SwitchParameter | — | — | Named | — | Devuelve marcadores de Mozilla Firefox *(Parameter set: )* |
| `-ForceConsent` | SwitchParameter | — | — | Named | — | Forzar consentimiento para la instalación de software de terceros |
| `-ConsentToThirdPartySoftwareInstallation` | SwitchParameter | — | — | Named | — | Consentimiento para la instalación de software de terceros |

## Examples

### Get-BrowserBookmark -Edge | Format-Table Name, URL, Folder Returns Edge bookmarks formatted as a table showing name, URL and folder.

```powershell
Get-BrowserBookmark -Edge | Format-Table Name, URL, Folder
Returns Edge bookmarks formatted as a table showing name, URL and folder.
```

### gbm -Chrome | Where-Object URL -like "*github*" Returns Chrome bookmarks filtered to only show GitHub-related URLs.

```powershell
gbm -Chrome | Where-Object URL -like "*github*"
Returns Chrome bookmarks filtered to only show GitHub-related URLs.
```

### Get-BrowserBookmark -Firefox -ConsentToThirdPartySoftwareInstallation Returns Firefox bookmarks with automatic consent to SQLite package installation.

```powershell
Get-BrowserBookmark -Firefox -ConsentToThirdPartySoftwareInstallation
Returns Firefox bookmarks with automatic consent to SQLite package installation.
```

## Outputs

- `Object[]`

## Related Links

- [Get-BrowserBookmark on GitHub](https://github.com/genXdev/genXdev)

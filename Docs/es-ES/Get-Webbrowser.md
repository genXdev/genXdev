# Get-Webbrowser

> **Module:** GenXdev.Webbrowser | **Type:** Cmdlet | **Aliases:** —

## Synopsis

> Devuelve una colección de navegadores web modernos instalados.

## Description

* Descubre y devuelve información sobre los navegadores web modernos instalados en el sistema.
* Recupera información que incluye nombre, descripción, ruta del icono, ruta del ejecutable y estado de navegador predeterminado consultando el registro de Windows.
* Solo devuelve navegadores que tengan las capacidades requeridas registradas en Windows.

## Syntax

```powershell
Get-Webbrowser [<CommonParameters>]

Get-Webbrowser [-Edge] [-Chrome] [-Chromium] [-Firefox] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-Edge` | SwitchParameter | — | — | Named | `False` | Selecciona instancias del navegador Microsoft Edge *(Parameter set: )* |
| `-Chrome` | SwitchParameter | — | — | Named | `False` | Selecciona instancias del navegador Google Chrome *(Parameter set: )* |
| `-Chromium` | SwitchParameter | — | — | Named | `False` | Selecciona el navegador predeterminado basado en Chromium *(Parameter set: )* |
| `-Firefox` | SwitchParameter | — | — | Named | `False` | Selecciona instancias del navegador Firefox *(Parameter set: )* |

## Examples

### Example 1

```powershell
Get-Webbrowser | Select-Object Name, Description | Format-Table
```

Devuelve una colección de todos los navegadores web modernos instalados.

### Example 2

```powershell
Get-Webbrowser | Where-Object { $_.IsDefaultBrowser }
```

Filtros para mostrar solo el navegador predeterminado del sistema.

## Related Links

- [Get-Webbrowser on GitHub](https://github.com/genXdev/genXdev)

# Select-WebbrowserTab

> **Module:** GenXdev.Webbrowser | **Type:** Function | **Aliases:** `st

## Synopsis

> Selecciona una pestaña del navegador de los navegadores gestionados por Playwright en ejecución.

## Description

Enumera y selecciona pestañas del navegador de todas las instancias de Playwright en ejecución. Cuando se invoca sin criterios de selección, muestra una tabla de todas las pestañas disponibles en todos los tipos de navegador. Admite selección por índice numérico, patrón de URL o referencia directa a la página.

Cuando se selecciona una pestaña, establece $Global:chromeController y $Global:chromeSession para compatibilidad con otros cmdlets de Webbrowser.

## Syntax

```powershell
Select-WebbrowserTab [[-Id] <Int32>] [<CommonParameters>]

Select-WebbrowserTab -Name <String> [<CommonParameters>]

Select-WebbrowserTab -ByReference <Object> [<CommonParameters>]

Select-WebbrowserTab [-All] [-Chrome] [-Chromium] [-Edge] [-Firefox] [-Force] [-PlayWright] [-Webkit] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-Id` | Int32 | — | — | 0 | `-1` | Índice de pestañas de la lista mostrada *(Parameter set: )* |
| `-Name` | String | ✅ | — | 0 | — | Selecciona la primera pestaña que contenga este texto en su URL *(Parameter set: )* 🌐 *Supports wildcards* |
| `-ByReference` | Object | ✅ | — | Named | — | Referencia directa a página desde un estado del navegador Playwright *(Parameter set: )* |
| `-Edge` | SwitchParameter | — | — | Named | — | Filtrar pestañas a instancias del navegador Microsoft Edge |
| `-Chrome` | SwitchParameter | — | — | Named | — | Filtrar pestañas a instancias del navegador Google Chrome |
| `-Chromium` | SwitchParameter | — | — | Named | — | Filtrar pestañas a instancias de navegador basadas en Chromium (Edge o Chrome) |
| `-Firefox` | SwitchParameter | — | — | Named | — | Filtrar pestañas a instancias del navegador Firefox |
| `-PlayWright` | SwitchParameter | — | — | Named | — | Filtra las pestañas a todos los tipos de navegador administrados por Playwright |
| `-Webkit` | SwitchParameter | — | — | Named | — | Filtrar pestañas a instancias del navegador WebKit |
| `-All` | SwitchParameter | — | — | Named | — | Mostrar pestañas de todos los tipos de navegador (sin filtro) |
| `-Force` | SwitchParameter | — | — | Named | — | Omitir confirmación y seleccionar la primera pestaña coincidente |

## Examples

### Select-WebbrowserTab Lists all open tabs across all Playwright browser types.

```powershell
Select-WebbrowserTab
Lists all open tabs across all Playwright browser types.
```

### Select-WebbrowserTab -Id 2 Selects the tab at index 2 from the list.

```powershell
Select-WebbrowserTab -Id 2
Selects the tab at index 2 from the list.
```

### st -Name "github.com" Selects the first tab whose URL contains "github.com".

```powershell
st -Name "github.com"
Selects the first tab whose URL contains "github.com".
```

### st -Firefox -Id 0 Selects the first tab from the Firefox browser.

```powershell
st -Firefox -Id 0
Selects the first tab from the Firefox browser.
```

## Outputs

- `PSObject`

## Related Links

- [Select-WebbrowserTab on GitHub](https://github.com/genXdev/genXdev)

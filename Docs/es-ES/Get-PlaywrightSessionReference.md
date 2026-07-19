# Get-PlaywrightSessionReference

> **Module:** GenXdev.Webbrowser | **Type:** Function | **Aliases:** —

## Synopsis

> Obtiene una referencia a la sesión actual del navegador Playwright.

## Description

Devuelve una tabla hash que contiene la página de Playwright, el contexto del navegador y los datos de sesión para la página actual del navegador. Esta referencia se puede usar con Invoke-WebbrowserEvaluation -ByReference para apuntar a una página específica.

El tipo de navegador se puede especificar usando los modificadores -Edge, -Chrome, -Chromium, -Firefox o -Webkit. Si no se especifica ningún modificador, se prefiere Chromium.

## Syntax

```powershell
Get-PlaywrightSessionReference [-Chrome] [-Chromium] [-Edge] [-Firefox] [-Webkit] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-Edge` | SwitchParameter | — | — | Named | — | Preferir la sesión del navegador Microsoft Edge |
| `-Chrome` | SwitchParameter | — | — | Named | — | Prefiera la sesión del navegador Google Chrome |
| `-Chromium` | SwitchParameter | — | — | Named | — | Prefiere Microsoft Edge o Google Chrome, según cuál sea el navegador predeterminado |
| `-Firefox` | SwitchParameter | — | — | Named | — | Preferir sesión del navegador Firefox |
| `-Webkit` | SwitchParameter | — | — | Named | — | Preferir sesión del navegador WebKit |

## Examples

### Get a reference to the current browser session $sessionRef = Get-PlaywrightSessionReference

```powershell
Get a reference to the current browser session
$sessionRef = Get-PlaywrightSessionReference
```

### Store the reference and use it later to execute JavaScript $ref = Get-PlaywrightSessionReference Invoke-WebbrowserEvaluation "document.title" -ByReference $ref

```powershell
Store the reference and use it later to execute JavaScript
$ref = Get-PlaywrightSessionReference
Invoke-WebbrowserEvaluation "document.title" -ByReference $ref
```

## Outputs

- `Collections.Hashtable`

## Related Links

- [Get-PlaywrightSessionReference on GitHub](https://github.com/genXdev/genXdev)

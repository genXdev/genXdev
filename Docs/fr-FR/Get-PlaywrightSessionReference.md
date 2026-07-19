# Get-PlaywrightSessionReference

> **Module:** GenXdev.Webbrowser | **Type:** Function | **Aliases:** —

## Synopsis

> Obtient une référence à la session de navigateur Playwright actuelle.

## Description

Retourne une table de hachage contenant la Page Playwright, le BrowserContext et les données de session pour la page actuelle du navigateur. Cette référence peut être utilisée avec Invoke-WebbrowserEvaluation -ByReference pour cibler une page spécifique.

Le type de navigateur peut être spécifié à l'aide des commutateurs -Edge, -Chrome, -Chromium, -Firefox ou -Webkit. Si aucun commutateur n'est spécifié, Chromium est préféré.

## Syntax

```powershell
Get-PlaywrightSessionReference [-Chrome] [-Chromium] [-Edge] [-Firefox] [-Webkit] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-Edge` | SwitchParameter | — | — | Named | — | Préférez une session du navigateur Microsoft Edge |
| `-Chrome` | SwitchParameter | — | — | Named | — | Préférer la session de navigateur Google Chrome |
| `-Chromium` | SwitchParameter | — | — | Named | — | Préférer Microsoft Edge ou Google Chrome, selon le navigateur par défaut |
| `-Firefox` | SwitchParameter | — | — | Named | — | Session de navigateur Firefox préférée |
| `-Webkit` | SwitchParameter | — | — | Named | — | Session de navigateur WebKit préférée |

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

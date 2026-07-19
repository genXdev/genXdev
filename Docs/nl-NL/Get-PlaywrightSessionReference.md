# Get-PlaywrightSessionReference

> **Module:** GenXdev.Webbrowser | **Type:** Function | **Aliases:** —

## Synopsis

> Krijgt een referentie naar de huidige Playwright-browsersessie.

## Description

Retourneert een hashtable met de Playwright-pagina, BrowserContext en sessiegegevens voor de huidige browserpagina. Deze verwijzing kan worden gebruikt met Invoke-WebbrowserEvaluation -ByReference om een specifieke pagina te targeten.

Het browsertype kan worden gespecificeerd met de schakelaars -Edge, -Chrome, -Chromium, -Firefox of -Webkit. Als er geen schakelaar wordt opgegeven, heeft Chromium de voorkeur.

## Syntax

```powershell
Get-PlaywrightSessionReference [-Chrome] [-Chromium] [-Edge] [-Firefox] [-Webkit] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-Edge` | SwitchParameter | — | — | Named | — | Voorkeur voor Microsoft Edge browsertabblad |
| `-Chrome` | SwitchParameter | — | — | Named | — | Geef de voorkeur aan een Google Chrome-browsersessie |
| `-Chromium` | SwitchParameter | — | — | Named | — | Geef de voorkeur aan Microsoft Edge of Google Chrome, afhankelijk van wat de standaardbrowser is |
| `-Firefox` | SwitchParameter | — | — | Named | — | Geef de voorkeur aan een Firefox-browsersessie |
| `-Webkit` | SwitchParameter | — | — | Named | — | Geef de voorkeur aan een WebKit-browsersessie |

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

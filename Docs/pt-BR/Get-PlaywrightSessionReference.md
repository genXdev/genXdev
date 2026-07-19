# Get-PlaywrightSessionReference

> **Module:** GenXdev.Webbrowser | **Type:** Function | **Aliases:** —

## Synopsis

> Obtém uma referência para a sessão atual do navegador Playwright.

## Description

Retorna uma hashtable contendo a Página do Playwright, o BrowserContext e os dados de sessão para a página atual do navegador. Essa referência pode ser usada com Invoke-WebbrowserEvaluation -ByReference para direcionar uma página específica.

O tipo de navegador pode ser especificado usando os switches -Edge, -Chrome, -Chromium, -Firefox ou -Webkit. Se nenhum switch for especificado, o Chromium é preferido.

## Syntax

```powershell
Get-PlaywrightSessionReference [-Chrome] [-Chromium] [-Edge] [-Firefox] [-Webkit] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-Edge` | SwitchParameter | — | — | Named | — | Prefira a sessão do navegador Microsoft Edge |
| `-Chrome` | SwitchParameter | — | — | Named | — | Preferir sessão do navegador Google Chrome |
| `-Chromium` | SwitchParameter | — | — | Named | — | Prefira o Microsoft Edge ou o Google Chrome, dependendo de qual é o navegador padrão |
| `-Firefox` | SwitchParameter | — | — | Named | — | Preferir sessão do navegador Firefox |
| `-Webkit` | SwitchParameter | — | — | Named | — | Preferir sessão de navegador WebKit |

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

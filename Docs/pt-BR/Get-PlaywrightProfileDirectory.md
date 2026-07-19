# Get-PlaywrightProfileDirectory

> **Module:** GenXdev.Webbrowser.Playwright | **Type:** Cmdlet | **Aliases:** —

## Synopsis

> Obtém o diretório de perfil do navegador Playwright para sessões persistentes.

## Description

* Cria e gerencia diretórios de perfil de navegador para testes automatizados com Playwright.
* Os perfis são armazenados em LocalAppData, em
  GenXdev.Powershell\Playwright.profiles.
* Esses perfis permitem sessões persistentes entre execuções de automação de navegador.

## Syntax

```powershell
Get-PlaywrightProfileDirectory [[-BrowserType] <string>] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-BrowserType` | String | — | — | 0 | — | O tipo de navegador (Chromium, Firefox ou Webkit) |

## Examples

### Example 1

```powershell
Get-PlaywrightProfileDirectory -BrowserType Chromium
```

Cria ou retorna o caminho para o perfil do navegador Chromium.

### Example 2

```powershell
Get-PlaywrightProfileDirectory Firefox
```

Cria ou retorna o diretório de perfil do Firefox usando parâmetro posicional.

## Related Links

- [Get-PlaywrightProfileDirectory on GitHub](https://github.com/genXdev/genXdev)

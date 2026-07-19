# Get-PlaywrightProfileDirectory

> **Module:** GenXdev.Webbrowser.Playwright | **Type:** Cmdlet | **Aliases:** —

## Synopsis

> Obtient le répertoire de profil du navigateur Playwright pour les sessions persistantes.

## Description

* Crée et gère les répertoires de profils de navigateur pour les tests automatisés Playwright.
* Les profils sont stockés dans LocalAppData sous GenXdev.Powershell\Playwright.profiles.
* Ces profils permettent des sessions persistantes lors des exécutions d'automatisation du navigateur.

## Syntax

```powershell
Get-PlaywrightProfileDirectory [[-BrowserType] <string>] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-BrowserType` | String | — | — | 0 | — | Le type de navigateur (Chromium, Firefox ou Webkit) |

## Examples

### Example 1

```powershell
Get-PlaywrightProfileDirectory -BrowserType Chromium
```

Crée ou renvoie le chemin du profil du navigateur Chromium.

### Example 2

```powershell
Get-PlaywrightProfileDirectory Firefox
```

Crée ou renvoie le répertoire du profil Firefox en utilisant le paramètre positionnel.

## Related Links

- [Get-PlaywrightProfileDirectory on GitHub](https://github.com/genXdev/genXdev)

# Clear-WebbrowserTabSiteApplicationData

> **Module:** GenXdev.Webbrowser | **Type:** Function | **Aliases:** `clearsitedata

## Synopsis

> Clears all browser storage data for the current tab in Edge or Chrome.

## Description

L'applet de commande Clear-WebbrowserTabSiteApplicationData exécute un extrait JavaScript qui efface différents types de stockage du navigateur pour l'onglet actif, notamment :
- Stockage local
- Stockage de session
- Cookies
- Bases de données IndexedDB
- Stockage de cache
- Enregistrements des service workers

## Syntax

```powershell
Clear-WebbrowserTabSiteApplicationData [-Chrome] [-Chromium] [-Edge] [-Firefox] [-Webkit] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-Edge` | SwitchParameter | — | — | Named | — | Effacer dans Microsoft Edge |
| `-Chrome` | SwitchParameter | — | — | Named | — | Supprimer dans Google Chrome |
| `-Chromium` | SwitchParameter | — | — | Named | — | Effacer dans Microsoft Edge ou Google Chrome, selon le navigateur par défaut |
| `-Firefox` | SwitchParameter | — | — | Named | — | Effacer dans Firefox |
| `-Webkit` | SwitchParameter | — | — | Named | — | Effacer dans le navigateur WebKit géré par Playwright |

## Examples

### Clear-WebbrowserTabSiteApplicationData -Edge Clears all browser storage data in the current Edge tab.

```powershell
Clear-WebbrowserTabSiteApplicationData -Edge
Clears all browser storage data in the current Edge tab.
```

### clearsitedata -Chrome Clears all browser storage data in the current Chrome tab using the alias. ##############################################################################

```powershell
clearsitedata -Chrome
Clears all browser storage data in the current Chrome tab using the alias.
##############################################################################
```

## Related Links

- [Clear-WebbrowserTabSiteApplicationData on GitHub](https://github.com/genXdev/genXdev)

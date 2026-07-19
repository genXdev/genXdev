# Get-WebbrowserTabDomNodes

> **Module:** GenXdev.Webbrowser | **Type:** Function | **Aliases:** `wl

## Synopsis

> Interroge et manipule les nœuds DOM dans l'onglet actif du navigateur en utilisant des sélecteurs CSS.

## Description

Utilise l'automatisation du navigateur pour trouver des éléments correspondant à un sélecteur CSS et retourne leur contenu HTML ou exécute du JavaScript personnalisé sur chaque élément correspondant. Cette fonction est utile pour le scraping web et les tâches d'automatisation du navigateur.

## Syntax

```powershell
Get-WebbrowserTabDomNodes -QuerySelector <String[]> [[-ModifyScript] <String>] [-ByReference <PSObject>] [-Chrome] [-Chromium] [-Edge] [-Firefox] [-NoAutoSelectTab] [-Page <Object>] [-Webkit] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-QuerySelector` | String[] | ✅ | — | 0 | — | La chaîne de sélecteur de requête ou le tableau de chaînes à utiliser pour sélectionner les nœuds DOM |
| `-ModifyScript` | String | — | — | 1 | `''` | Le script pour modifier la sortie du sélecteur de requête, p. ex. e.outerHTML ou e.outerHTML='hello world' |
| `-Edge` | SwitchParameter | — | — | Named | — | Utilisez le navigateur Microsoft Edge |
| `-Chrome` | SwitchParameter | — | — | Named | — | Utilisez le navigateur Google Chrome |
| `-Chromium` | SwitchParameter | — | — | Named | — | Utilisez Microsoft Edge ou Google Chrome, selon le navigateur par défaut. |
| `-Firefox` | SwitchParameter | — | — | Named | — | Utilisez le navigateur Firefox |
| `-Webkit` | SwitchParameter | — | — | Named | — | Utilisez le navigateur WebKit géré par Playwright |
| `-Page` | Object | — | — | Named | — | Référence d'objet de page de navigateur pour cibler un onglet spécifique |
| `-ByReference` | PSObject | — | — | Named | — | Objet de référence de session de navigateur pour réutiliser une session de navigateur existante |
| `-NoAutoSelectTab` | SwitchParameter | — | — | Named | — | Empêcher la sélection automatique des onglets |

## Examples

### Get HTML of all header divs Get-WebbrowserTabDomNodes -QuerySelector "div.header"

```powershell
Get HTML of all header divs
Get-WebbrowserTabDomNodes -QuerySelector "div.header"
```

### Pause all videos on the page wl "video" "e.pause()"

```powershell
Pause all videos on the page
wl "video" "e.pause()"
```

## Related Links

- [Get-WebbrowserTabDomNodes on GitHub](https://github.com/genXdev/genXdev)

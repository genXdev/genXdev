# Set-BrowserVideoFullscreen

> **Module:** GenXdev.Webbrowser | **Type:** Function | **Aliases:** `fsvideo

## Synopsis

> Maximizes the first video element found in the current browser tab.

## Description

Exécute du code JavaScript pour localiser et agrandir le premier élément vidéo sur la page web actuelle. La vidéo est configurée pour couvrir l'intégralité de la fenêtre avec un z-index maximal afin d'assurer sa visibilité. Les barres de défilement de la page sont masquées pour une expérience plein écran propre.

## Syntax

```powershell
Set-BrowserVideoFullscreen [-Chrome] [-Chromium] [-Edge] [-Firefox] [-Webkit] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-Edge` | SwitchParameter | — | — | Named | — | Utilisez le navigateur Microsoft Edge |
| `-Chrome` | SwitchParameter | — | — | Named | — | Utilisez le navigateur Google Chrome |
| `-Chromium` | SwitchParameter | — | — | Named | — | Utilisez Microsoft Edge ou Google Chrome, selon le navigateur par défaut. |
| `-Firefox` | SwitchParameter | — | — | Named | — | Utilisez le navigateur Firefox |
| `-Webkit` | SwitchParameter | — | — | Named | — | Utilisez le navigateur WebKit géré par Playwright |

## Examples

### Set-BrowserVideoFullscreen

```powershell
Set-BrowserVideoFullscreen
```

## Related Links

- [Set-BrowserVideoFullscreen on GitHub](https://github.com/genXdev/genXdev)

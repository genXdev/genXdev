# Open-AllYoutubeVideos

> **Module:** GenXdev.Queries.Webbrowser | **Type:** Function | **Aliases:** `qvideos, `qyt

## Synopsis

> Ouvre et contrôle des vidéos YouTube dans une fenêtre de navigateur avec des raccourcis clavier.

## Description

Ouvre des vidéos YouTube correspondant à des termes de recherche ou provenant de diverses sections de YouTube dans une fenêtre de navigateur. Fournit des commandes clavier pour la lecture vidéo et la navigation via une interface interactive. Prend en charge plusieurs navigateurs et différents types de contenu YouTube, y compris les résultats de recherche, les abonnements, à regarder plus tard, les vidéos recommandées et les contenus tendance.

## Syntax

```powershell
Open-AllYoutubeVideos [[-Queries] <String[]>] [-AcceptLang <String>] [-ApplicationMode] [-Chrome] [-Chromium] [-Edge] [-Firefox] [-NoFullScreen] [-Private] [-Recommended] [-Subscriptions] [-Trending] [-WatchLater] [-Webkit] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-Queries` | String[] | — | ✅ (ByValue, ByPropertyName) | 0 | `@('')` | Termes de recherche YouTube pour trouver des vidéos |
| `-Subscriptions` | SwitchParameter | — | — | Named | — | Ouvrir les vidéos des chaînes auxquelles vous êtes abonné |
| `-WatchLater` | SwitchParameter | — | — | Named | — | Open videos from watch later playlist |
| `-Recommended` | SwitchParameter | — | — | Named | — | Ouvrir les vidéos recommandées |
| `-Trending` | SwitchParameter | — | — | Named | — | Vidéos tendances |
| `-Private` | SwitchParameter | — | — | Named | — | S'ouvre en mode Navigation privée |
| `-Edge` | SwitchParameter | — | — | Named | — | Ouvre dans Microsoft Edge |
| `-Chrome` | SwitchParameter | — | — | Named | — | S'ouvre dans Google Chrome |
| `-Chromium` | SwitchParameter | — | — | Named | — | Ouvre dans Microsoft Edge ou Google Chrome, selon le navigateur par défaut |
| `-Firefox` | SwitchParameter | — | — | Named | — | S'ouvre dans Firefox |
| `-Webkit` | SwitchParameter | — | — | Named | — | Utilise le navigateur WebKit géré par Playwright |
| `-NoFullScreen` | SwitchParameter | — | — | Named | — | Empêche l'ouverture en mode plein écran |
| `-ApplicationMode` | SwitchParameter | — | — | Named | — | Masquer les contrôles du navigateur |
| `-AcceptLang` | String | — | — | Named | `$null` | Set browser accept-language HTTP header |

## Examples

### Open-AllYoutubeVideos -Queries "PowerShell tutorial","vscode tips" -Edge

```powershell
Open-AllYoutubeVideos -Queries "PowerShell tutorial","vscode tips" -Edge
```

### qvideos "PowerShell tutorial" -e

```powershell
qvideos "PowerShell tutorial" -e
```

## Related Links

- [Open-AllYoutubeVideos on GitHub](https://github.com/genXdev/genXdev)

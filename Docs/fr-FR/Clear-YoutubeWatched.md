# Clear-YoutubeWatched

> **Module:** GenXdev.Queries.Webbrowser | **Type:** Function | **Aliases:** —

## Synopsis

> Efface l'historique de visionnage YouTube du stockage local du navigateur.

## Description

Cette fonction sélectionne un onglet YouTube dans le navigateur et efface l'historique de visualisation en réinitialisant la valeur du stockage local pour les vidéos regardées de l'applet de commande Open-AllYoutubeVideos -> qvideos. Elle nécessite un onglet YouTube ouvert dans le navigateur.

## Syntax

```powershell
Clear-YoutubeWatched [-Chrome] [-Chromium] [-Edge] [-Firefox] [-Webkit] [<CommonParameters>]
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

### Clear-YoutubeWatched Clears the watch history of the Open-AllYoutubeVideos -> qvideos cmdlet, in the currently open YouTube tab.

```powershell
Clear-YoutubeWatched
Clears the watch history of the Open-AllYoutubeVideos -> qvideos cmdlet, in the
currently open YouTube tab.
```

## Related Links

- [Clear-YoutubeWatched on GitHub](https://github.com/genXdev/genXdev)

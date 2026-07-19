# Close-Webbrowser

> **Module:** GenXdev.Webbrowser | **Type:** Function | **Aliases:** `wbc

## Synopsis

> Ferme sélectivement une ou plusieurs instances du navigateur web.

## Description

Offre un contrôle granulaire sur la fermeture des instances de navigateur web. Peut cibler des navigateurs spécifiques (Edge, Chrome, Firefox) ou fermer tous les navigateurs. Prend en charge la fermeture des fenêtres principales et des processus en arrière-plan.

## Syntax

```powershell
Close-Webbrowser [-Chrome] [-Chromium] [-Edge] [-Firefox] [<CommonParameters>]

Close-Webbrowser [-All] [-Headless] [-IncludeBackgroundProcesses] [-PlayWright] [-Webkit] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-Edge` | SwitchParameter | — | — | Named | — | Ferme les instances du navigateur Microsoft Edge *(Parameter set: )* |
| `-Chrome` | SwitchParameter | — | — | Named | — | Ferme les instances du navigateur Google Chrome *(Parameter set: )* |
| `-Chromium` | SwitchParameter | — | — | Named | — | Ferme le navigateur basé sur Chromium par défaut *(Parameter set: )* |
| `-Firefox` | SwitchParameter | — | — | Named | — | Ferme les instances du navigateur Firefox *(Parameter set: )* |
| `-PlayWright` | SwitchParameter | — | — | Named | — | Utiliser le navigateur géré par Playwright au lieu du navigateur installé sur le système d'exploitation |
| `-Webkit` | SwitchParameter | — | — | Named | — | Ouvre le navigateur WebKit géré par Playwright. Implique -PlayWright |
| `-Headless` | SwitchParameter | — | — | Named | — | Exécutez le navigateur sans fenêtre visible |
| `-All` | SwitchParameter | — | — | Named | — | S'ouvre dans tous les navigateurs modernes enregistrés |
| `-IncludeBackgroundProcesses` | SwitchParameter | — | — | Named | — | Ferme toutes les instances, y compris les tâches en arrière-plan |

## Examples

### Close-Webbrowser -Chrome -Firefox -IncludeBackgroundProcesses Closes all Chrome and Firefox instances including background processes

```powershell
Close-Webbrowser -Chrome -Firefox -IncludeBackgroundProcesses
Closes all Chrome and Firefox instances including background processes
```

### wbc -a -bg Closes all browser instances including background processes using aliases

```powershell
wbc -a -bg
Closes all browser instances including background processes using aliases
```

## Related Links

- [Close-Webbrowser on GitHub](https://github.com/genXdev/genXdev)

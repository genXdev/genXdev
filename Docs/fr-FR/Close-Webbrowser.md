# Close-Webbrowser

> **Module:** GenXdev.Webbrowser | **Type:** Function | **Aliases:** `wbc

## Synopsis

> *(No synopsis provided)*

## Syntax

```powershell
Close-Webbrowser [-Edge] [-Chrome] [-Chromium] [-Firefox] [<CommonParameters>]

Close-Webbrowser [-All] [-IncludeBackgroundProcesses] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-Edge` | SwitchParameter | — | — | 0 | — | Ferme les instances du navigateur Microsoft Edge *(Parameter set: )* |
| `-Chrome` | SwitchParameter | — | — | 1 | — | Ferme les instances du navigateur Google Chrome *(Parameter set: )* |
| `-Chromium` | SwitchParameter | — | — | 2 | — | Ferme le navigateur basé sur Chromium par défaut *(Parameter set: )* |
| `-Firefox` | SwitchParameter | — | — | 3 | — | Ferme les instances du navigateur Firefox *(Parameter set: )* |
| `-All` | SwitchParameter | — | — | 0 | — | Ferme tous les navigateurs modernes enregistrés |
| `-IncludeBackgroundProcesses` | SwitchParameter | — | — | 4 | — | Ferme toutes les instances, y compris les tâches en arrière-plan |

## Related Links

- [Close-Webbrowser on GitHub](https://github.com/genXdev/genXdev)

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
| `-Edge` | SwitchParameter | — | — | 0 | — | Schließt Microsoft Edge Browserinstanzen *(Parameter set: )* |
| `-Chrome` | SwitchParameter | — | — | 1 | — | Schließt Instanzen des Google Chrome Browsers *(Parameter set: )* |
| `-Chromium` | SwitchParameter | — | — | 2 | — | Schließt den standardmäßigen Chromium-basierten Browser *(Parameter set: )* |
| `-Firefox` | SwitchParameter | — | — | 3 | — | Schließt Firefox-Browserinstanzen *(Parameter set: )* |
| `-All` | SwitchParameter | — | — | 0 | — | Schließt alle registrierten modernen Browser |
| `-IncludeBackgroundProcesses` | SwitchParameter | — | — | 4 | — | Schließt alle Instanzen einschließlich Hintergrundaufgaben |

## Related Links

- [Close-Webbrowser on GitHub](https://github.com/genXdev/genXdev)

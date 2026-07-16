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
| `-Edge` | SwitchParameter | — | — | 0 | — | Closes Microsoft Edge browser instances *(Parameter set: )* |
| `-Chrome` | SwitchParameter | — | — | 1 | — | Closes Google Chrome browser instances *(Parameter set: )* |
| `-Chromium` | SwitchParameter | — | — | 2 | — | Closes default chromium-based browser *(Parameter set: )* |
| `-Firefox` | SwitchParameter | — | — | 3 | — | Closes Firefox browser instances *(Parameter set: )* |
| `-All` | SwitchParameter | — | — | 0 | — | Closes all registered modern browsers |
| `-IncludeBackgroundProcesses` | SwitchParameter | — | — | 4 | — | Closes all instances including background tasks |

## Related Links

- [Close-Webbrowser on GitHub](https://github.com/genXdev/genXdev)

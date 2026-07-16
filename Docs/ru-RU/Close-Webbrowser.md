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
| `-Edge` | SwitchParameter | — | — | 0 | — | Завершает работу экземпляров браузера Microsoft Edge *(Parameter set: )* |
| `-Chrome` | SwitchParameter | — | — | 1 | — | Закрывает экземпляры браузера Google Chrome *(Parameter set: )* |
| `-Chromium` | SwitchParameter | — | — | 2 | — | Closes default chromium-based browser *(Parameter set: )* |
| `-Firefox` | SwitchParameter | — | — | 3 | — | Закрывает экземпляры браузера Firefox *(Parameter set: )* |
| `-All` | SwitchParameter | — | — | 0 | — | Закрывает все зарегистрированные современные браузеры |
| `-IncludeBackgroundProcesses` | SwitchParameter | — | — | 4 | — | Закрывает все экземпляры, включая фоновые задачи |

## Related Links

- [Close-Webbrowser on GitHub](https://github.com/genXdev/genXdev)

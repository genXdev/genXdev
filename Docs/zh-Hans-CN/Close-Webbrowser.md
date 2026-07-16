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
| `-Edge` | SwitchParameter | — | — | 0 | — | 关闭 Microsoft Edge 浏览器实例 *(Parameter set: )* |
| `-Chrome` | SwitchParameter | — | — | 1 | — | 关闭谷歌浏览器实例 *(Parameter set: )* |
| `-Chromium` | SwitchParameter | — | — | 2 | — | 关闭默认的Chromium内核浏览器 *(Parameter set: )* |
| `-Firefox` | SwitchParameter | — | — | 3 | — | 关闭 Firefox 浏览器实例 *(Parameter set: )* |
| `-All` | SwitchParameter | — | — | 0 | — | 关闭所有已注册的现代浏览器 |
| `-IncludeBackgroundProcesses` | SwitchParameter | — | — | 4 | — | 关闭所有实例，包括后台任务 |

## Related Links

- [Close-Webbrowser on GitHub](https://github.com/genXdev/genXdev)

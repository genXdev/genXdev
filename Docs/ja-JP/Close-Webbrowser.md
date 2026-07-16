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
| `-Edge` | SwitchParameter | — | — | 0 | — | Microsoft Edge ブラウザのインスタンスを閉じます *(Parameter set: )* |
| `-Chrome` | SwitchParameter | — | — | 1 | — | Google Chromeブラウザのインスタンスを閉じます *(Parameter set: )* |
| `-Chromium` | SwitchParameter | — | — | 2 | — | デフォルトのChromiumベースのブラウザを閉じる *(Parameter set: )* |
| `-Firefox` | SwitchParameter | — | — | 3 | — | Firefoxブラウザのインスタンスを閉じます *(Parameter set: )* |
| `-All` | SwitchParameter | — | — | 0 | — | 登録されているすべてのモダンブラウザを閉じます |
| `-IncludeBackgroundProcesses` | SwitchParameter | — | — | 4 | — | バックグラウンドタスクを含むすべてのインスタンスを閉じます |

## Related Links

- [Close-Webbrowser on GitHub](https://github.com/genXdev/genXdev)

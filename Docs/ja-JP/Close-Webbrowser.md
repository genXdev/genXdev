# Close-Webbrowser

> **Module:** GenXdev.Webbrowser | **Type:** Function | **Aliases:** `wbc

## Synopsis

> 1つ以上のウェブブラウザインスタンスを選択的に閉じます。

## Description

Webブラウザインスタンスの終了を詳細に制御します。特定のブラウザ（Edge、Chrome、Firefox）を対象とすることも、すべてのブラウザを閉じることも可能です。メインウィンドウとバックグラウンドプロセスの両方の終了をサポートします。

## Syntax

```powershell
Close-Webbrowser [-Chrome] [-Chromium] [-Edge] [-Firefox] [<CommonParameters>]

Close-Webbrowser [-All] [-Headless] [-IncludeBackgroundProcesses] [-PlayWright] [-Webkit] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-Edge` | SwitchParameter | — | — | Named | — | Microsoft Edge ブラウザのインスタンスを閉じます *(Parameter set: )* |
| `-Chrome` | SwitchParameter | — | — | Named | — | Google Chromeブラウザのインスタンスを閉じます *(Parameter set: )* |
| `-Chromium` | SwitchParameter | — | — | Named | — | デフォルトのChromiumベースのブラウザを閉じる *(Parameter set: )* |
| `-Firefox` | SwitchParameter | — | — | Named | — | Firefoxブラウザのインスタンスを閉じます *(Parameter set: )* |
| `-PlayWright` | SwitchParameter | — | — | Named | — | OSにインストールされているブラウザの代わりにPlaywright管理のブラウザを使用する |
| `-Webkit` | SwitchParameter | — | — | Named | — | Playwright 管理の WebKit ブラウザを開きます。-PlayWright を暗示します。 |
| `-Headless` | SwitchParameter | — | — | Named | — | 表示ウィンドウなしでブラウザを実行する |
| `-All` | SwitchParameter | — | — | Named | — | 登録されているすべての最新ブラウザで開きます |
| `-IncludeBackgroundProcesses` | SwitchParameter | — | — | Named | — | バックグラウンドタスクを含むすべてのインスタンスを閉じます |

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

# Close-WebbrowserTab

> **Module:** GenXdev.Webbrowser | **Type:** Function | **Aliases:** `ct, `CloseTab

## Synopsis

> 現在選択されているウェブブラウザのタブを閉じます。

## Description

ChromeDriverのCloseAsync()メソッドを使用して、現在選択されているウェブブラウザのタブを閉じます。現在タブが選択されていない場合、関数は自動的に最後に使用されたタブを選択してから閉じようとします。

## Syntax

```powershell
Close-WebbrowserTab [-Chrome] [-Chromium] [-Edge] [-Firefox] [-Webkit] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-Edge` | SwitchParameter | — | — | Named | — | Microsoft Edge ブラウザを使用して移動する |
| `-Chrome` | SwitchParameter | — | — | Named | — | Google Chrome ブラウザを使用してナビゲートする |
| `-Chromium` | SwitchParameter | — | — | Named | — | デフォルトのブラウザに応じて、Microsoft EdgeまたはGoogle Chromeで開きます |
| `-Firefox` | SwitchParameter | — | — | Named | — | Firefox で開く |
| `-Webkit` | SwitchParameter | — | — | Named | — | Playwright で管理される WebKit ブラウザを使用します |

## Examples

### Close-WebbrowserTab Closes the currently active browser tab

```powershell
Close-WebbrowserTab
Closes the currently active browser tab
```

### ct Uses the alias to close the currently active browser tab

```powershell
ct
Uses the alias to close the currently active browser tab
```

## Related Links

- [Close-WebbrowserTab on GitHub](https://github.com/genXdev/genXdev)

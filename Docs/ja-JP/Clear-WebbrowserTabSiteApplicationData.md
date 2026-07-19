# Clear-WebbrowserTabSiteApplicationData

> **Module:** GenXdev.Webbrowser | **Type:** Function | **Aliases:** `clearsitedata

## Synopsis

> 現在のタブのEdgeまたはChromeにおけるブラウザストレージデータをすべて消去します。

## Description

Clear-WebbrowserTabSiteApplicationData コマンドレットは、現在のタブのブラウザストレージのさまざまな種類（ローカルストレージ、セッションストレージ、Cookie、IndexedDBデータベース、キャッシュストレージ、サービスワーカーの登録）をクリアするJavaScriptスニペットを実行します。

## Syntax

```powershell
Clear-WebbrowserTabSiteApplicationData [-Chrome] [-Chromium] [-Edge] [-Firefox] [-Webkit] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-Edge` | SwitchParameter | — | — | Named | — | Microsoft Edge で消去 |
| `-Chrome` | SwitchParameter | — | — | Named | — | Google Chrome で消去 |
| `-Chromium` | SwitchParameter | — | — | Named | — | Microsoft Edge または Google Chrome でクリアします。デフォルトのブラウザによって異なります。 |
| `-Firefox` | SwitchParameter | — | — | Named | — | Firefox でクリア |
| `-Webkit` | SwitchParameter | — | — | Named | — | Playwright管理下のWebKitブラウザでクリア |

## Examples

### Clear-WebbrowserTabSiteApplicationData -Edge Clears all browser storage data in the current Edge tab.

```powershell
Clear-WebbrowserTabSiteApplicationData -Edge
Clears all browser storage data in the current Edge tab.
```

### clearsitedata -Chrome Clears all browser storage data in the current Chrome tab using the alias. ##############################################################################

```powershell
clearsitedata -Chrome
Clears all browser storage data in the current Chrome tab using the alias.
##############################################################################
```

## Related Links

- [Clear-WebbrowserTabSiteApplicationData on GitHub](https://github.com/genXdev/genXdev)

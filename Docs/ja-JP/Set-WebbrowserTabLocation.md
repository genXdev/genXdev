# Set-WebbrowserTabLocation

> **Module:** GenXdev.Webbrowser | **Type:** Function | **Aliases:** `lt, `Nav

## Synopsis

> 現在のウェブブラウザのタブを指定されたURLに移動します。

## Description

現在選択されているウェブブラウザのタブの場所（URL）を設定します。オプションのスイッチを使用して、EdgeとChromeの両方のブラウザをサポートしています。ナビゲーションにはURLの検証が含まれており、非同期操作を通じて適切なページ読み込みを保証します。

## Syntax

```powershell
Set-WebbrowserTabLocation -Url <String> [-ByReference <PSObject>] [-Chromium] [-Firefox] [-NoAutoSelectTab] [-Page <Object>] [-Webkit] [<CommonParameters>]

Set-WebbrowserTabLocation [-Edge] [<CommonParameters>]

Set-WebbrowserTabLocation [-Chrome] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-Url` | String | ✅ | ✅ (ByValue, ByPropertyName) | 0 | — | 遷移するURL |
| `-NoAutoSelectTab` | SwitchParameter | — | — | Named | — | 自動タブ選択を防止する |
| `-Edge` | SwitchParameter | — | — | Named | — | Microsoft Edge ブラウザを使用して移動する *(Parameter set: )* |
| `-Chrome` | SwitchParameter | — | — | Named | — | Google Chrome ブラウザを使用してナビゲートする *(Parameter set: )* |
| `-Chromium` | SwitchParameter | — | — | Named | — | デフォルトのブラウザに応じて、Microsoft Edge または Google Chrome を使用してナビゲートしてください。 |
| `-Firefox` | SwitchParameter | — | — | Named | — | Firefoxブラウザを使用してナビゲートする |
| `-Webkit` | SwitchParameter | — | — | Named | — | Playwrightが管理するWebKitブラウザを使用してナビゲートします |
| `-Page` | Object | — | — | Named | — | ブラウザページオブジェクト参照 |
| `-ByReference` | PSObject | — | — | Named | — | ブラウザセッション参照オブジェクト |

## Examples

### Set-WebbrowserTabLocation -Url "https://github.com/microsoft" -Edge

```powershell
Set-WebbrowserTabLocation -Url "https://github.com/microsoft" -Edge
```

### "https://github.com/microsoft" | lt -ch

```powershell
"https://github.com/microsoft" | lt -ch
```

## Related Links

- [Set-WebbrowserTabLocation on GitHub](https://github.com/genXdev/genXdev)

# Set-WebbrowserTabLocation

> **Module:** GenXdev.Webbrowser | **Type:** Function | **Aliases:** `lt, `Nav

## Synopsis

> *(No synopsis provided)*

## Syntax

```powershell
Set-WebbrowserTabLocation -Url <String> [-ByReference <PSObject>] [-NoAutoSelectTab] [-Page <Object>] [<CommonParameters>]

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
| `-Page` | Object | — | — | Named | — | ブラウザページオブジェクト参照 |
| `-ByReference` | PSObject | — | — | Named | — | ブラウザセッション参照オブジェクト |

## Related Links

- [Set-WebbrowserTabLocation on GitHub](https://github.com/genXdev/genXdev)

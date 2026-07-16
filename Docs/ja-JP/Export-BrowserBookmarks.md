# Export-BrowserBookmarks

> **Module:** GenXdev.Webbrowser | **Type:** Function | **Aliases:** —

## Synopsis

> *(No synopsis provided)*

## Syntax

```powershell
Export-BrowserBookmarks -OutputFile <String> [-Chrome] [-Edge] [<CommonParameters>]

Export-BrowserBookmarks [-Firefox] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-OutputFile` | String | ✅ | — | 0 | — | ブックマークが保存されるJSONファイルへのパス |
| `-Chrome` | SwitchParameter | — | — | Named | — | Google Chrome からブックマークをエクスポートする |
| `-Edge` | SwitchParameter | — | — | Named | — | Microsoft Edge からブックマークをエクスポートする |
| `-Firefox` | SwitchParameter | — | — | Named | — | Mozilla Firefoxからブックマークをエクスポート *(Parameter set: )* |

## Related Links

- [Export-BrowserBookmarks on GitHub](https://github.com/genXdev/genXdev)

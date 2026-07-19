# Export-BrowserBookmarks

> **Module:** GenXdev.Webbrowser | **Type:** Function | **Aliases:** —

## Synopsis

> ブラウザのブックマークをJSONファイルにエクスポートします。

## Description

Export-BrowserBookmarks コマンドレットは、指定されたウェブブラウザー（Microsoft Edge、Google Chrome、またはMozilla Firefox）からブックマークをJSONファイルにエクスポートします。一度に指定できるブラウザーの種類は1つだけです。ブックマークは、その構造とメタデータを完全に保持した状態でエクスポートされます。

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

## Examples

### Export-BrowserBookmarks -OutputFile "C:\MyBookmarks.json" -Edge

```powershell
Export-BrowserBookmarks -OutputFile "C:\MyBookmarks.json" -Edge
```

### Export-BrowserBookmarks "C:\MyBookmarks.json" -Chrome

```powershell
Export-BrowserBookmarks "C:\MyBookmarks.json" -Chrome
```

## Related Links

- [Export-BrowserBookmarks on GitHub](https://github.com/genXdev/genXdev)

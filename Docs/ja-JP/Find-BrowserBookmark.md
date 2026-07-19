# Find-BrowserBookmark

> **Module:** GenXdev.Webbrowser | **Type:** Function | **Aliases:** `bookmarks

## Synopsis

> 1つ以上のウェブブラウザからブックマークを検索します。

## Description

Microsoft Edge、Google Chrome、Mozilla Firefoxのブックマークを検索します。名前に1つ以上の検索クエリが一致するブックマークを返します。名前、URL、フォルダーパスのいずれかに一致する場合です。クエリが指定されていない場合は、選択したブラウザからすべてのブックマークを返します。

## Syntax

```powershell
Find-BrowserBookmark [[-Queries] <String[]>] [-Chrome] [-Count <Int32>] [-Edge] [-Firefox] [-PassThru] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-Queries` | String[] | — | ✅ (ByValue, ByPropertyName) | 0 | — | 一致するブックマークを見つけるための検索語句 🌐 *Supports wildcards* |
| `-Edge` | SwitchParameter | — | — | Named | — | Microsoft Edge ブックマークを検索する |
| `-Chrome` | SwitchParameter | — | — | Named | — | Google Chrome のブックマークを検索する |
| `-Firefox` | SwitchParameter | — | — | Named | — | Firefox ブックマークを検索 |
| `-Count` | Int32 | — | — | Named | `99999999` | 返す結果の最大数 |
| `-PassThru` | SwitchParameter | — | — | Named | — | Return bookmark objects instead of just URLs |

## Examples

### Find-BrowserBookmark -Query "github" -Edge -Chrome -Count 10 Searches Edge and Chrome bookmarks for "github", returns first 10 URLs

```powershell
Find-BrowserBookmark -Query "github" -Edge -Chrome -Count 10
Searches Edge and Chrome bookmarks for "github", returns first 10 URLs
```

### bookmarks powershell -e -ff -PassThru Searches Edge and Firefox bookmarks for "powershell", returns full objects

```powershell
bookmarks powershell -e -ff -PassThru
Searches Edge and Firefox bookmarks for "powershell", returns full objects
```

## Related Links

- [Find-BrowserBookmark on GitHub](https://github.com/genXdev/genXdev)

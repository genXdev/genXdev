# Export-BrowserBookmarks

> **Module:** GenXdev.Webbrowser | **Type:** Function | **Aliases:** —

## Synopsis

> 将浏览器书签导出到 JSON 文件。

## Description

Export-BrowserBookmarks cmdlet 将指定网页浏览器（Microsoft Edge、Google Chrome 或 Mozilla Firefox）中的书签导出到 JSON 文件。每次只能指定一种浏览器类型。导出书签时将完整保留其结构和元数据。

## Syntax

```powershell
Export-BrowserBookmarks -OutputFile <String> [-Chrome] [-Edge] [<CommonParameters>]

Export-BrowserBookmarks [-Firefox] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-OutputFile` | String | ✅ | — | 0 | — | 书签将保存到的JSON文件路径 |
| `-Chrome` | SwitchParameter | — | — | Named | — | 从谷歌浏览器导出书签 |
| `-Edge` | SwitchParameter | — | — | Named | — | 从 Microsoft Edge 导出书签 |
| `-Firefox` | SwitchParameter | — | — | Named | — | 从 Mozilla Firefox 导出书签 *(Parameter set: )* |

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

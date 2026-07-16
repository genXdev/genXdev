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
| `-OutputFile` | String | ✅ | — | 0 | — | 书签将保存到的JSON文件路径 |
| `-Chrome` | SwitchParameter | — | — | Named | — | 从谷歌浏览器导出书签 |
| `-Edge` | SwitchParameter | — | — | Named | — | 从 Microsoft Edge 导出书签 |
| `-Firefox` | SwitchParameter | — | — | Named | — | 从 Mozilla Firefox 导出书签 *(Parameter set: )* |

## Related Links

- [Export-BrowserBookmarks on GitHub](https://github.com/genXdev/genXdev)

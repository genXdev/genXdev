# Import-GenXdevBookmarkletMenu

> **Module:** GenXdev.Webbrowser | **Type:** Function | **Aliases:** —

## Synopsis

> *(No synopsis provided)*

## Syntax

```powershell
Import-GenXdevBookmarkletMenu [[-SnippetsPath] <String>] [[-TargetFolder] <String>] [-Chrome] [-Edge] [-Firefox] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-SnippetsPath` | String | — | — | 0 | `"$($MyInvocation.MyCommand.Module.ModuleBase)\Bookmarklets"` | 包含书签小工具片段文件的目录路径 |
| `-TargetFolder` | String | — | — | 1 | `""` | 浏览器书签结构中的目标书签文件夹 |
| `-Edge` | SwitchParameter | — | — | Named | — | 将书签导入Microsoft Edge浏览器 |
| `-Chrome` | SwitchParameter | — | — | Named | — | 将书签工具导入谷歌浏览器 |
| `-Firefox` | SwitchParameter | — | — | Named | — | 将书签小工具导入 Mozilla Firefox 浏览器 |

## Related Links

- [Import-GenXdevBookmarkletMenu on GitHub](https://github.com/genXdev/genXdev)

# Import-GenXdevBookmarkletMenu

> **Module:** GenXdev.Webbrowser | **Type:** Function | **Aliases:** —

## Synopsis

> 将 GenXdev JavaScript 书签导入浏览器的书签集合中。

## Description

此函数扫描目录中的GenXdev书签文件，这些文件具有

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

## Examples

### Import-GenXdevBookmarkletMenu -Edge

```powershell
Import-GenXdevBookmarkletMenu -Edge
```

将默认代码片段目录中的所有书签工具文件导入到Microsoft Edge的书签栏文件夹中。

### Import-GenXdevBookmarkletMenu -SnippetsPath "C:\MyBookmarklets" -Chrome -WhatIf

```powershell
Import-GenXdevBookmarkletMenu -SnippetsPath "C:\MyBookmarklets" -Chrome -WhatIf
```

显示将从指定路径导入到 Google Chrome 的书签小工具，而不实际执行导入操作。

## Related Links

- [Import-GenXdevBookmarkletMenu on GitHub](https://github.com/genXdev/genXdev)

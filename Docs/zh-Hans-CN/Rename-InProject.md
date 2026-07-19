# Rename-InProject

> **Module:** GenXdev.FileSystem | **Type:** Function | **Aliases:** `rip

## Synopsis

> 在整个项目目录中执行文本替换。

## Description

递归扫描项目中的文件和目录以执行文本替换。同时处理文件/目录名称和文件内容。跳过常见的二进制文件和仓库文件夹（.git、.svn）以避免损坏。文件操作使用无BOM的UTF-8编码。支持区分大小写和不区分大小写的替换模式。

## Syntax

```powershell
Rename-InProject [[-Source] <String>] -FindText <String> -ReplacementText <String> [-CaseInsensitive] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-Source` | String | — | — | 0 | — | 目录、文件路径或目录+搜索掩码 |
| `-FindText` | String | ✅ | — | 1 | — | 要查找的文本（大小写敏感性由 CaseInsensitive 参数控制） |
| `-ReplacementText` | String | ✅ | — | 2 | — | 要替换匹配的文本 |
| `-CaseInsensitive` | SwitchParameter | — | — | Named | — | Perform case-insensitive text replacement |

## Examples

### Rename-InProject -Source .\src\*.js -FindText "oldName" `     -ReplacementText "newName"

```powershell
Rename-InProject -Source .\src\*.js -FindText "oldName" `
    -ReplacementText "newName"
```

### rip . "MyClass" "MyNewClass" -WhatIf

```powershell
rip . "MyClass" "MyNewClass" -WhatIf
```

### rip . "OLDNAME" "NewName" -CaseInsensitive

```powershell
rip . "OLDNAME" "NewName" -CaseInsensitive
```

## Related Links

- [Rename-InProject on GitHub](https://github.com/genXdev/genXdev)

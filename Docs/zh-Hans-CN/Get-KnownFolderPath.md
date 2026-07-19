# Get-KnownFolderPath

> **Module:** GenXdev.Windows | **Type:** Function | **Aliases:** `folder

## Synopsis

> 使用Windows Shell32 API获取Windows已知文件夹的路径。

## Description

使用 Shell32 API 中的 SHGetKnownFolderPath 函数检索指定 Windows 已知文件夹的路径。此方法比使用环境变量更可靠，因为它能在不同 Windows 版本和语言设置中保持一致。支持所有标准 Windows 已知文件夹，如文档、下载、AppData 等。

## Syntax

```powershell
Get-KnownFolderPath -KnownFolder <String> [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-KnownFolder` | String | ✅ | — | 0 | — | 用于获取路径的 Windows 已知文件夹名称 |

## Examples

### Get-KnownFolderPath -KnownFolder 'Documents' Returns: C:\Users\Username\Documents

```powershell
Get-KnownFolderPath -KnownFolder 'Documents'
Returns: C:\Users\Username\Documents
```

### folder Downloads Returns: C:\Users\Username\Downloads using the alias

```powershell
folder Downloads
Returns: C:\Users\Username\Downloads using the alias
```

### cd (folder Desktop) Changes to the Desktop folder using the alias

```powershell
cd (folder Desktop)
Changes to the Desktop folder using the alias
```

## Related Links

- [Get-KnownFolderPath on GitHub](https://github.com/genXdev/genXdev)

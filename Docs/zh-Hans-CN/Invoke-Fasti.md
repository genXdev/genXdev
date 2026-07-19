# Invoke-Fasti

> **Module:** GenXdev.FileSystem | **Type:** Function | **Aliases:** `fasti

## Synopsis

> 将当前目录下的归档文件解压到各自的文件夹中，然后删除这些归档文件。

## Description

自动提取当前目录中的常见归档格式（zip、7z、tar等），并将其解压到以每个归档文件命名的单独文件夹中。解压成功后，将删除原始归档文件。系统需要安装7-Zip。

## Syntax

```powershell
Invoke-Fasti [[-Password] <String>] [-ExtractOutputToo] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-Password` | String | — | — | 0 | — | 请输入加密存档的密码 |
| `-ExtractOutputToo` | SwitchParameter | — | — | Named | — | 递归提取已解压文件夹中的压缩包 |

## Examples

### PS C:\Downloads> Invoke-Fasti

```powershell
PS C:\Downloads> Invoke-Fasti
```

### PS C:\Downloads> fasti

```powershell
PS C:\Downloads> fasti
```

## Related Links

- [Invoke-Fasti on GitHub](https://github.com/genXdev/genXdev)

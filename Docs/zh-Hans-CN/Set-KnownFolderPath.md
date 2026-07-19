# Set-KnownFolderPath

> **Module:** GenXdev.Windows | **Type:** Function | **Aliases:** —

## Synopsis

> 修改Windows已知文件夹的物理路径。

## Description

使用Windows Shell32 API将系统文件夹（如文档、下载、桌面或其他已知的Windows文件夹）重新定位到新位置。该函数会验证目标路径是否存在，从全面的已知文件夹注册表中查找该文件夹的唯一GUID，并使用SHSetKnownFolderPath API执行重新定位。常见用例包括将用户文件夹移动到不同的驱动器以进行空间管理或整理。移动系统关键文件夹时需谨慎，因为这可能影响系统稳定性。

## Syntax

```powershell
Set-KnownFolderPath -KnownFolder <String> -Path <String> [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-KnownFolder` | String | ✅ | — | 0 | — | 已知要修改的文件夹 |
| `-Path` | String | ✅ | — | 1 | — | 已知文件夹的新路径 |

## Examples

### Set-KnownFolderPath -KnownFolder 'Documents' -Path 'D:\UserDocs'

```powershell
Set-KnownFolderPath -KnownFolder 'Documents' -Path 'D:\UserDocs'
```

### Set-KnownFolderPath Downloads 'E:\Downloads'

```powershell
Set-KnownFolderPath Downloads 'E:\Downloads'
```

## Related Links

- [Set-KnownFolderPath on GitHub](https://github.com/genXdev/genXdev)

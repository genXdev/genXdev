# Get-KeyValueStorePath

> **Module:** GenXdev.Data.KeyValueStore | **Type:** Cmdlet | **Aliases:** —

## Synopsis

> 获取键值存储的文件路径。

## Description

根据同步键、存储名称和基础目录构造键值存储的文件路径。

## Syntax

```powershell
Get-KeyValueStorePath [-SynchronizationKey] <string> [-StoreName] <string> [-BasePath <string>] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-SynchronizationKey` | String | ✅ | — | 0 | — | 用于标识存储的同步密钥 |
| `-StoreName` | String | ✅ | — | 1 | — | 键值存储的名称 |
| `-BasePath` | String | — | — | Named | — | 存储文件的基础目录路径 |

## Examples

### Example 1

```powershell
Get-KeyValueStorePath -SynchronizationKey "Local" -StoreName "MyStore"
```

获取本地键值存储的路径。

## Related Links

- [Get-KeyValueStorePath on GitHub](https://github.com/genXdev/genXdev)

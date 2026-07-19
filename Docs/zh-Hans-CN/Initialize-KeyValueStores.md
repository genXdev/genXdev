# Initialize-KeyValueStores

> **Module:** GenXdev.Data.KeyValueStore | **Type:** Cmdlet | **Aliases:** —

## Synopsis

> 为本地和OneDrive存储初始化KeyValueStore目录结构。

## Description

为基于JSON的键值存储创建目录结构，分别位于两个位置：本地机器用于即时访问，OneDrive文件夹用于云同步。该cmdlet确保两个目录均存在并正确配置。

## Syntax

```powershell
Initialize-KeyValueStores [[-DatabasePath] <string>] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-DatabasePath` | String | — | — | 0 | — | 键值存储数据文件的数据库路径 |

## Examples

### Example 1

```powershell
Initialize-KeyValueStores
```

为键值存储创建标准的本地和 OneDrive 目录。

### Example 2

```powershell
Initialize-KeyValueStores -DatabasePath "C:\MyStores"
```

在指定的自定义路径下创建键值存储目录。

## Related Links

- [Initialize-KeyValueStores on GitHub](https://github.com/genXdev/genXdev)

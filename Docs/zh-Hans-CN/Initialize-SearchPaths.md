# Initialize-SearchPaths

> **Module:** GenXdev.Helpers | **Type:** Cmdlet | **Aliases:** —

## Synopsis

> 初始化并配置软件包管理的系统搜索路径。

## Description

* 通过结合默认系统位置、Chocolatey路径、开发工具路径以及自定义包路径，构建一个全面的搜索路径列表。
* 使用这些合并后的路径更新系统的PATH环境变量。

## Syntax

```powershell
Initialize-SearchPaths [[-WorkspaceFolder] <string>] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-WorkspaceFolder` | String | — | — | 0 | — | 用于Node模块和PowerShell路径的工作区文件夹路径。 |

## Examples

### Example 1

```powershell
Initialize-SearchPaths
```

使用默认工作区文件夹初始化搜索路径。

### Example 2

```powershell
Initialize-SearchPaths -WorkspaceFolder "C:\workspace"
```

使用特定的工作区文件夹初始化搜索路径。

## Related Links

- [Initialize-SearchPaths on GitHub](https://github.com/genXdev/genXdev)

# Get-GenXDevNewModulesInOrderOfDependency

> **Module:** GenXdev.Coding.PowerShell.Modules | **Type:** Function | **Aliases:** —

## Synopsis

> 按依赖顺序检索 GenXDev 模块。

## Description

此函数返回一个按正确依赖顺序排列的 GenXDev 模块列表，以确保模块正确加载。它首先检索所有模块信息，然后根据其依赖关系对它们进行排序，从核心模块开始，以依赖模块结束。这确保了模块按正确顺序加载。

## Syntax

```powershell
Get-GenXDevNewModulesInOrderOfDependency [[-ModuleName] <String[]>] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-ModuleName` | String[] | — | ✅ (ByValue, ByPropertyName) | 0 | `@('GenXdev*')` | 用于过滤的一个或多个模块名称 |

## Examples

### Get-GenXDevNewModulesInOrderOfDependency -ModuleName "GenXdev.Helpers"

```powershell
Get-GenXDevNewModulesInOrderOfDependency -ModuleName "GenXdev.Helpers"
```

### "GenXdev.Console" | Get-GenXDevNewModulesInOrderOfDependency

```powershell
"GenXdev.Console" | Get-GenXDevNewModulesInOrderOfDependency
```

## Related Links

- [Get-GenXDevNewModulesInOrderOfDependency on GitHub](https://github.com/genXdev/genXdev)

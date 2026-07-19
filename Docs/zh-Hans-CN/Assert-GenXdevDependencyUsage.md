# Assert-GenXdevDependencyUsage

> **Module:** GenXdev.Coding.PowerShell.Modules | **Type:** Function | **Aliases:** `checkgenxdevdependencies

## Synopsis

> 验证 GenXdev 模块间的依赖使用，确保维护正确的模块层级。

## Description

该函数分析GenXdev模块以确保它们遵循正确的依赖层次结构。它检查模块是否仅引用其RequiredModules清单中列出的依赖项，并通过验证模块不引用依赖链中较晚出现的模块来防止循环依赖。

## Syntax

```powershell
Assert-GenXdevDependencyUsage [[-ModuleName] <String[]>] [-FromScripts] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-ModuleName` | String[] | — | ✅ (ByValue, ByPropertyName) | 1 | `@('GenXdev*')` | 应用于模块名称的过滤器 🌐 *Supports wildcards* |
| `-FromScripts` | SwitchParameter | — | — | Named | — | 在脚本文件中搜索而非模块文件 |

## Examples

### Assert-GenXdevDependencyUsage -ModuleName "GenXdev.Coding"

```powershell
Assert-GenXdevDependencyUsage -ModuleName "GenXdev.Coding"
```

### checkgenxdevdependencies "GenXdev*" -FromScripts

```powershell
checkgenxdevdependencies "GenXdev*" -FromScripts
```

## Related Links

- [Assert-GenXdevDependencyUsage on GitHub](https://github.com/genXdev/genXdev)

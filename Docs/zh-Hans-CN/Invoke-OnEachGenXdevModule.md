# Invoke-OnEachGenXdevModule

> **Module:** GenXdev.Helpers | **Type:** Function | **Aliases:** `foreach-genxdev-module-do

## Synopsis

> *(No synopsis provided)*

## Syntax

```powershell
Invoke-OnEachGenXdevModule -Script <ScriptBlock> [[-ModuleName] <String[]>] [-FromScripts] [-IncludeScripts] [-NoLocal] [-OnlyPublished] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-Script` | ScriptBlock | ✅ | — | 0 | — | 为每个GenXdev模块执行的脚本块 |
| `-ModuleName` | String[] | — | — | 1 | `@('GenXdev*')` | 应用于模块名称的过滤器 🌐 *Supports wildcards* |
| `-NoLocal` | SwitchParameter | — | — | Named | — | 从处理中排除本地开发模块 |
| `-OnlyPublished` | SwitchParameter | — | — | Named | — | 只包含已发布的模块，这些模块需要有LICENSE和README.md文件 |
| `-FromScripts` | SwitchParameter | — | — | Named | — | 处理脚本目录而非模块目录 |
| `-IncludeScripts` | SwitchParameter | — | — | Named | — | 除了常规模块外，还包括脚本目录 |

## Related Links

- [Invoke-OnEachGenXdevModule on GitHub](https://github.com/genXdev/genXdev)

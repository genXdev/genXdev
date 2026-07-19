# Invoke-OnEachGenXdevModule

> **Module:** GenXdev.Helpers | **Type:** Function | **Aliases:** `foreach-genxdev-module-do

## Synopsis

> 对工作区中的每个 GenXdev 模块执行脚本块。

## Description

此函数会遍历工作区中的 GenXdev 模块，并对每个模块执行提供的脚本块。它可按名称模式过滤模块、排除本地模块、仅包含已发布模块，或处理脚本而非模块。函数会在执行脚本块前自动导航至正确的模块目录。

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

## Examples

### Invoke-OnEachGenXdevModule -Script { Write-Host $args[0].Name }

```powershell
Invoke-OnEachGenXdevModule -Script { Write-Host $args[0].Name }
```

GenXdev, GenXdev.FileSystem, GenXdev.Web, GenXdev.Core, GenXdev.Drawing, GenXdev.Data, GenXdev.Hosting, GenXdev.Numerics, GenXdev.Console, GenXdev.Environment, GenXdev.Diagnostics, GenXdev.Cryptography, GenXdev.Networking

### foreach-genxdev-module-do {     param($ModuleObj, $isScriptsFolder, $isSubModule, $subModuleName)     Get-ChildItem } -ModuleName "GenXdev.AI"

```powershell
foreach-genxdev-module-do {
    param($ModuleObj, $isScriptsFolder, $isSubModule, $subModuleName)
    Get-ChildItem
} -ModuleName "GenXdev.AI"
```

使用别名列出 GenXdev.AI 模块目录的内容。

## Related Links

- [Invoke-OnEachGenXdevModule on GitHub](https://github.com/genXdev/genXdev)

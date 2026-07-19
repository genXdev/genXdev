# Import-GenXdevModules

> **Module:** GenXdev.Helpers | **Type:** Function | **Aliases:** `reloadgenxdev

## Synopsis

> 将所有 GenXdev PowerShell 模块导入到全局作用域。

## Description

扫描父目录中的 GenXdev 模块，并将每个模块导入到全局作用域中。使用位置栈管理来保留工作目录，并为成功和失败的导入提供视觉反馈。在导入过程中跟踪函数计数的变化。

## Syntax

```powershell
Import-GenXdevModules [-DebugFailedModuleDefinitions] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-DebugFailedModuleDefinitions` | SwitchParameter | — | — | Named | — | 启用失败模块定义的调试输出 |

## Examples

### Import-GenXdevModules -DebugFailedModuleDefinitions Imports modules with debug output for failures

```powershell
Import-GenXdevModules -DebugFailedModuleDefinitions
Imports modules with debug output for failures
```

### reloadgenxdev Imports all modules using the alias

```powershell
reloadgenxdev
Imports all modules using the alias
```

## Related Links

- [Import-GenXdevModules on GitHub](https://github.com/genXdev/genXdev)

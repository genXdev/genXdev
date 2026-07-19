# Invoke-HuggingFaceCli

> **Module:** GenXdev.AI | **Type:** Function | **Aliases:** —

## Synopsis

> 使用指定的参数调用Hugging Face CLI。

## Description

调用 EnsureHuggingFace 确保 CLI 已安装，然后使用提供的参数执行 Hugging Face CLI。从 $ENV:LOCALAPPDATA\GenXdev.PowerShell\hfclilocation.json 读取 CLI 路径。返回命令输出为字符串；失败时通过 Write-Error 抛出错误。

## Syntax

```powershell
Invoke-HuggingFaceCli -Arguments <String[]> [[-Timeout] <Int32>] [-Force] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-Arguments` | String[] | ✅ | — | 0 | — | 要传递给 Hugging Face CLI 的参数 |
| `-Timeout` | Int32 | — | — | 1 | `36000` | CLI 执行和依赖安装的超时时间（秒） |
| `-Force` | SwitchParameter | — | — | Named | — | 强制重新安装 Hugging Face CLI |

## Examples

### Invoke-HuggingFaceCli -Arguments @("login") -Timeout 600 -Force

```powershell
Invoke-HuggingFaceCli -Arguments @("login") -Timeout 600 -Force
```

使用 "login" 命令调用 CLI，强制重新安装。

### Invoke-HuggingFaceCli @("whoami") 300

```powershell
Invoke-HuggingFaceCli @("whoami") 300
```

使用 "whoami" 命令调用 CLI，超时时间为 300 秒。

## Related Links

- [Invoke-HuggingFaceCli on GitHub](https://github.com/genXdev/genXdev)

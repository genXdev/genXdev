# Invoke-HuggingFaceCli

> **Module:** GenXdev.AI | **Type:** Function | **Aliases:** —

## Synopsis

> *(No synopsis provided)*

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

## Related Links

- [Invoke-HuggingFaceCli on GitHub](https://github.com/genXdev/genXdev)

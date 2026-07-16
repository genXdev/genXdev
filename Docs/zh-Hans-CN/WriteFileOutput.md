# WriteFileOutput

> **Module:** GenXdev.FileSystem | **Type:** Function | **Aliases:** —

## Synopsis

> *(No synopsis provided)*

## Syntax

```powershell
WriteFileOutput -CallerInvocation <Object> -Input <Object> [-FullPaths] [-Prefix <String>] [-RelativeBasePath <String>] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-CallerInvocation` | Object | ✅ | ✅ (ByValue) | 0 | — | 来自调用函数的调用信息 |
| `-Input` | Object | ✅ | ✅ (ByValue) | 1 | — | The input object to process, which can be a file path or object |
| `-Prefix` | String | — | — | Named | — | 一个可选的字符串前缀，添加到输出显示前以提供额外上下文 |
| `-RelativeBasePath` | String | — | — | Named | — | 在输出中生成相对文件路径的基路径 |
| `-FullPaths` | SwitchParameter | — | — | Named | — | 强制输出使用完整绝对路径而非相对路径 |

## Related Links

- [WriteFileOutput on GitHub](https://github.com/genXdev/genXdev)

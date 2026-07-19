# WriteFileOutput

> **Module:** GenXdev.FileSystem | **Type:** Function | **Aliases:** —

## Synopsis

> 输出带有超链接显示名称的文件信息，以增强用户体验。

## Description

此函数处理文件输入对象，并以用户友好的格式输出，在控制台显示时提供超链接文件名。它支持不同类型的输入，包括字符串、FileInfo对象及其他对象类型。该函数会自动检测输出是否被重定向或捕获到管道中，并相应调整其行为。

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

## Examples

### WriteFileOutput -CallerInvocation $MyInvocation -Input "C:\temp\file.txt"

```powershell
WriteFileOutput -CallerInvocation $MyInvocation -Input "C:\temp\file.txt"
```

### Get-ChildItem | WriteFileOutput -CallerInvocation $MyInvocation -Input $_

```powershell
Get-ChildItem | WriteFileOutput -CallerInvocation $MyInvocation -Input $_
```

## Related Links

- [WriteFileOutput on GitHub](https://github.com/genXdev/genXdev)

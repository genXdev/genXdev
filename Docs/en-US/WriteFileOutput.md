# WriteFileOutput

> **Module:** GenXdev.FileSystem | **Type:** Function | **Aliases:** —

## Synopsis

> Outputs file information with hyperlinked display names for enhanced user
experience.

## Description

This function processes file input objects and outputs them in a user-friendly
format with hyperlinked file names when displayed in the console. It handles
different input types including strings, FileInfo objects, and other object
types. The function automatically detects if output is being redirected or
captured in a pipeline and adjusts its behavior accordingly.

## Syntax

```powershell
WriteFileOutput -CallerInvocation <Object> -Input <Object> [-FullPaths] [-Prefix <String>] [-RelativeBasePath <String>] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-CallerInvocation` | Object | ✅ | ✅ (ByValue) | 0 | — | The invocation information from the calling function |
| `-Input` | Object | ✅ | ✅ (ByValue) | 1 | — | The input object to process, which can be a file path or object |
| `-Prefix` | String | — | — | Named | — | An optional string prefix to prepend to the output display for additional context |
| `-RelativeBasePath` | String | — | — | Named | — | Base path for generating relative file paths in output |
| `-FullPaths` | SwitchParameter | — | — | Named | — | Forces output to use full absolute paths instead of relative paths |

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

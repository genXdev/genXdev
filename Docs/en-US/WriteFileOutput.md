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
| `-CallerInvocation` | Object | ✅ | ✅ (ByValue) | 0 | — | The invocation information from the calling function |
| `-Input` | Object | ✅ | ✅ (ByValue) | 1 | — | The input object to process, which can be a file path or object |
| `-Prefix` | String | — | — | Named | — | An optional string prefix to prepend to the output display for additional context |
| `-RelativeBasePath` | String | — | — | Named | — | Base path for generating relative file paths in output |
| `-FullPaths` | SwitchParameter | — | — | Named | — | Forces output to use full absolute paths instead of relative paths |

## Related Links

- [WriteFileOutput on GitHub](https://github.com/genXdev/genXdev)

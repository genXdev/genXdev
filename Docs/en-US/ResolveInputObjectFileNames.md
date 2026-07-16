# ResolveInputObjectFileNames

> **Module:** GenXdev.FileSystem | **Type:** Function | **Aliases:** —

## Synopsis

> *(No synopsis provided)*

## Syntax

```powershell
ResolveInputObjectFileNames [[-InputObject] <Object>] [[-RelativeBasePath] <String>] [-AllDrives] [-File] [-IncludeAlternateFileStreams] [-NoRecurse] [-PassThru] [<CommonParameters>]

ResolveInputObjectFileNames [[-Pattern] <String>] [<CommonParameters>]

ResolveInputObjectFileNames [-Directory] [-FilesAndDirectories] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-InputObject` | Object | — | ✅ (ByValue, ByPropertyName) | 0 | — | Input object containing file names or directories |
| `-File` | SwitchParameter | — | — | Named | — | Return only files |
| `-Pattern` | String | — | — | 1 | — | Regular expression pattern to search within content *(Parameter set: )* 🌐 *Supports wildcards* |
| `-RelativeBasePath` | String | — | — | 2 | — | Base path for resolving relative paths in output |
| `-AllDrives` | SwitchParameter | — | — | Named | — | Search across all available drives |
| `-Directory` | SwitchParameter | — | — | Named | — | Search for directories only *(Parameter set: )* |
| `-FilesAndDirectories` | SwitchParameter | — | — | Named | — | Include both files and directories *(Parameter set: )* |
| `-PassThru` | SwitchParameter | — | — | Named | — | Output matched items as objects |
| `-IncludeAlternateFileStreams` | SwitchParameter | — | — | Named | — | Include alternate data streams in search results |
| `-NoRecurse` | SwitchParameter | — | — | Named | — | Do not recurse into subdirectories |

## Related Links

- [ResolveInputObjectFileNames on GitHub](https://github.com/genXdev/genXdev)

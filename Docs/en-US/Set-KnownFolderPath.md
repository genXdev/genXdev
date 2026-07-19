# Set-KnownFolderPath

> **Module:** GenXdev.Windows | **Type:** Function | **Aliases:** —

## Synopsis

> Modifies the physical path of a Windows known folder.

## Description

Uses the Windows Shell32 API to relocate system folders like Documents,
Downloads, Desktop, or other known Windows folders to a new location. The
function validates the target path exists, looks up the folder's unique GUID
from the comprehensive known folders registry, and uses the SHSetKnownFolderPath
API to perform the relocation. Common use cases include moving user folders to
a different drive for space management or organization. Exercise caution when
moving system-critical folders as this may affect system stability.

## Syntax

```powershell
Set-KnownFolderPath -KnownFolder <String> -Path <String> [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-KnownFolder` | String | ✅ | — | 0 | — | Known folder to modify |
| `-Path` | String | ✅ | — | 1 | — | New path for the known folder |

## Examples

### Set-KnownFolderPath -KnownFolder 'Documents' -Path 'D:\UserDocs'

```powershell
Set-KnownFolderPath -KnownFolder 'Documents' -Path 'D:\UserDocs'
```

### Set-KnownFolderPath Downloads 'E:\Downloads'

```powershell
Set-KnownFolderPath Downloads 'E:\Downloads'
```

## Related Links

- [Set-KnownFolderPath on GitHub](https://github.com/genXdev/genXdev)

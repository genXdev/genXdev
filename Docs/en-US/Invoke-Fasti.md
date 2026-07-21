# Invoke-Fasti

> **Module:** GenXdev.FileSystem | **Type:** Function | **Aliases:** `fasti`

## Synopsis

> Extracts archive files in the current directory to their own folders and deletes
them afterwards.

## Description

Automatically extracts common archive formats (zip, 7z, tar, etc.) found in the
current directory into individual folders named after each archive. After
successful extraction, the original archive files are deleted. Requires 7-Zip
to be installed on the system.

## Syntax

```powershell
Invoke-Fasti [[-Password] <String>] [-ExtractOutputToo] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-Password` | String | — | — | 0 | — | Enter the password for the encrypted archive(s) |
| `-ExtractOutputToo` | SwitchParameter | — | — | Named | — | Recursively extract archives found within extracted folders |

## Examples

### PS C:\Downloads> Invoke-Fasti

```powershell
PS C:\Downloads> Invoke-Fasti
```

### PS C:\Downloads> fasti

```powershell
PS C:\Downloads> fasti
```

## Parameter Details

### `-Password <String>`

> Enter the password for the encrypted archive(s)

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | 0 |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-ExtractOutputToo`

> Recursively extract archives found within extracted folders

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
## Related Links

- [Copy-FilesToDateFolder](https://github.com/genXdev/genXdev/blob/main/Docs/en-US/Copy-FilesToDateFolder.md)
- [Expand-Path](https://github.com/genXdev/genXdev/blob/main/Docs/en-US/Expand-Path.md)
- [Find-DuplicateFiles](https://github.com/genXdev/genXdev/blob/main/Docs/en-US/Find-DuplicateFiles.md)
- [Find-Item](https://github.com/genXdev/genXdev/blob/main/Docs/en-US/Find-Item.md)
- [Move-FilesToDateFolder](https://github.com/genXdev/genXdev/blob/main/Docs/en-US/Move-FilesToDateFolder.md)
- [Move-ItemWithTracking](https://github.com/genXdev/genXdev/blob/main/Docs/en-US/Move-ItemWithTracking.md)
- [Move-ToRecycleBin](https://github.com/genXdev/genXdev/blob/main/Docs/en-US/Move-ToRecycleBin.md)
- [ReadJsonWithRetry](https://github.com/genXdev/genXdev/blob/main/Docs/en-US/ReadJsonWithRetry.md)
- [Remove-AllItems](https://github.com/genXdev/genXdev/blob/main/Docs/en-US/Remove-AllItems.md)
- [Remove-ItemWithFallback](https://github.com/genXdev/genXdev/blob/main/Docs/en-US/Remove-ItemWithFallback.md)
- [Remove-OnReboot](https://github.com/genXdev/genXdev/blob/main/Docs/en-US/Remove-OnReboot.md)
- [Rename-InProject](https://github.com/genXdev/genXdev/blob/main/Docs/en-US/Rename-InProject.md)
- [Set-FoundLocation](https://github.com/genXdev/genXdev/blob/main/Docs/en-US/Set-FoundLocation.md)
- [Set-LocationParent](https://github.com/genXdev/genXdev/blob/main/Docs/en-US/Set-LocationParent.md)
- [Set-LocationParent2](https://github.com/genXdev/genXdev/blob/main/Docs/en-US/Set-LocationParent2.md)
- [Set-LocationParent3](https://github.com/genXdev/genXdev/blob/main/Docs/en-US/Set-LocationParent3.md)
- [Set-LocationParent4](https://github.com/genXdev/genXdev/blob/main/Docs/en-US/Set-LocationParent4.md)
- [Set-LocationParent5](https://github.com/genXdev/genXdev/blob/main/Docs/en-US/Set-LocationParent5.md)
- [Start-RoboCopy](https://github.com/genXdev/genXdev/blob/main/Docs/en-US/Start-RoboCopy.md)
- [Write-FileAtomic](https://github.com/genXdev/genXdev/blob/main/Docs/en-US/Write-FileAtomic.md)
- [Write-JsonFileAtomic](https://github.com/genXdev/genXdev/blob/main/Docs/en-US/Write-JsonFileAtomic.md)
- [Write-TextFileAtomic](https://github.com/genXdev/genXdev/blob/main/Docs/en-US/Write-TextFileAtomic.md)

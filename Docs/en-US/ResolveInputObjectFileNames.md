# ResolveInputObjectFileNames

> **Module:** GenXdev.FileSystem | **Type:** Function | **Aliases:** —

## Synopsis

> Expands input objects into file and directory names, supporting various
filters and output options.

## Description

This function processes input objects (files, directories, or collections)
and expands them into file and directory names. It supports filtering,
pattern matching, and can output results as objects. The function is
designed to work with pipeline input and provides options for recursion,
alternate data streams, and more.

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

## Examples

### ResolveInputObjectFileNames -Input "C:\Temp" -File

```powershell
ResolveInputObjectFileNames -Input "C:\Temp" -File
```

## Parameter Details

### `-InputObject <Object>`

> Input object containing file names or directories

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | 0 |
| **Default value** | *(none)* |
| **Accept pipeline input?** | True (ByValue, ByPropertyName) |
| **Aliases** | `Path`, `FilePath`, `Input` |
| **Accept wildcard characters?** | No |

<hr/>
### `-File`

> Return only files

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-Pattern <String>`

> Regular expression pattern to search within content

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | 1 |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | `mc`, `matchcontent` |
| **Accept wildcard characters?** | Yes |
| **Parameter set** | WithPattern |

<hr/>
### `-RelativeBasePath <String>`

> Base path for resolving relative paths in output

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | 2 |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | `base` |
| **Accept wildcard characters?** | No |

<hr/>
### `-AllDrives`

> Search across all available drives

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-Directory`

> Search for directories only

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | `dir` |
| **Accept wildcard characters?** | No |
| **Parameter set** | DirectoriesOnly |

<hr/>
### `-FilesAndDirectories`

> Include both files and directories

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | `both` |
| **Accept wildcard characters?** | No |
| **Parameter set** | DirectoriesOnly |

<hr/>
### `-PassThru`

> Output matched items as objects

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | `pt` |
| **Accept wildcard characters?** | No |

<hr/>
### `-IncludeAlternateFileStreams`

> Include alternate data streams in search results

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | `ads` |
| **Accept wildcard characters?** | No |

<hr/>
### `-NoRecurse`

> Do not recurse into subdirectories

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

- [Confirm-InstallationConsent](https://github.com/genXdev/genXdev/blob/main/Docs/en-US/Confirm-InstallationConsent.md)
- [Copy-FilesToDateFolder](https://github.com/genXdev/genXdev/blob/main/Docs/en-US/Copy-FilesToDateFolder.md)
- [Copy-IdenticalParamValues](https://github.com/genXdev/genXdev/blob/main/Docs/en-US/Copy-IdenticalParamValues.md)
- [EnsurePester](https://github.com/genXdev/genXdev/blob/main/Docs/en-US/EnsurePester.md)
- [Expand-Path](https://github.com/genXdev/genXdev/blob/main/Docs/en-US/Expand-Path.md)
- [Find-DuplicateFiles](https://github.com/genXdev/genXdev/blob/main/Docs/en-US/Find-DuplicateFiles.md)
- [Find-Item](https://github.com/genXdev/genXdev/blob/main/Docs/en-US/Find-Item.md)
- [Get-MediaFileCreationDate](https://github.com/genXdev/genXdev/blob/main/Docs/en-US/Get-MediaFileCreationDate.md)
- [Invoke-Fasti](https://github.com/genXdev/genXdev/blob/main/Docs/en-US/Invoke-Fasti.md)
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
- [WriteFileOutput](https://github.com/genXdev/genXdev/blob/main/Docs/en-US/WriteFileOutput.md)

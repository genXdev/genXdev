# Get-MediaFileCreationDate

> **Module:** GenXdev.FileSystem | **Type:** Function | **Aliases:** —

## Synopsis

> Extracts the best-effort creation date for media and other files.

## Description

Attempts several strategies to determine an accurate creation or capture
date for the specified file. strategies include reading image EXIF metadata,
parsing date/time information from filenames, and falling back to the file's
last-write time when no other reliable information is available. the function
always returns a [DateTime]; when no date can be determined it returns
[DateTime]::MinValue.

## Syntax

```powershell
Get-MediaFileCreationDate -FilePath <String> [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-FilePath` | String | ✅ | ✅ (ByValue, ByPropertyName) | 0 | — | The `-FilePath` parameter. |

## Examples

### Get-MediaFileCreationDate -FilePath '.\IMG_20250601_123000.jpg'

```powershell
Get-MediaFileCreationDate -FilePath '.\IMG_20250601_123000.jpg'
```

## Parameter Details

### `-FilePath <String>`

> The `-FilePath` parameter.

| Property | Value |
|:---|:---|
| **Required?** | Yes |
| **Position?** | 0 |
| **Default value** | *(none)* |
| **Accept pipeline input?** | True (ByValue, ByPropertyName) |
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
- [Invoke-Fasti](https://github.com/genXdev/genXdev/blob/main/Docs/en-US/Invoke-Fasti.md)
- [Move-FilesToDateFolder](https://github.com/genXdev/genXdev/blob/main/Docs/en-US/Move-FilesToDateFolder.md)
- [Move-ItemWithTracking](https://github.com/genXdev/genXdev/blob/main/Docs/en-US/Move-ItemWithTracking.md)
- [Move-ToRecycleBin](https://github.com/genXdev/genXdev/blob/main/Docs/en-US/Move-ToRecycleBin.md)
- [ReadJsonWithRetry](https://github.com/genXdev/genXdev/blob/main/Docs/en-US/ReadJsonWithRetry.md)
- [Remove-AllItems](https://github.com/genXdev/genXdev/blob/main/Docs/en-US/Remove-AllItems.md)
- [Remove-ItemWithFallback](https://github.com/genXdev/genXdev/blob/main/Docs/en-US/Remove-ItemWithFallback.md)
- [Remove-OnReboot](https://github.com/genXdev/genXdev/blob/main/Docs/en-US/Remove-OnReboot.md)
- [Rename-InProject](https://github.com/genXdev/genXdev/blob/main/Docs/en-US/Rename-InProject.md)
- [ResolveInputObjectFileNames](https://github.com/genXdev/genXdev/blob/main/Docs/en-US/ResolveInputObjectFileNames.md)
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

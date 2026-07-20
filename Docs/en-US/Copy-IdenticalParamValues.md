# Copy-IdenticalParamValues

> **Module:** GenXdev.FileSystem | **Type:** Cmdlet | **Aliases:** —

## Synopsis

> Copies parameter values from bound parameters to a new hashtable based on
another function's possible parameters.

## Description

* This cmdlet creates a new hashtable containing only the parameter values
  that match the parameters defined in the specified target function.
* The resulting hashtable can then be used to invoke the function using
  PowerShell splatting.
* Switch parameters are only included in the result if they were explicitly
  provided and set to $true in the bound parameters.
* Non-present switch parameters are excluded from the result to maintain
  proper parameter semantics.

## Syntax

```powershell
Copy-IdenticalParamValues -BoundParameters <Object[]> -FunctionName <String> [[-DefaultValues] <Object>] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-BoundParameters` | Object[] | ✅ | — | 0 | — | Source bound parameters to copy from |
| `-FunctionName` | String | ✅ | — | 1 | — | Target function name to filter parameters |
| `-DefaultValues` | Object | — | — | 2 | — | Default values for parameters |

## Examples

### Example 1

```powershell
function Test-Function {
    [CmdletBinding()]
    param(
        [Parameter(Mandatory = $true)]
        [string] $Path,
        [Parameter(Mandatory = $false)]
        [switch] $Recurse
    )

    $params = GenXdev\Copy-IdenticalParamValues `
        -BoundParameters $PSBoundParameters `
        -FunctionName 'Get-ChildItem'

    Get-ChildItem @params
}
```

Demonstrates copying bound parameters for use with splatting.

## Parameter Details

### `-BoundParameters <Object[]>`

> Source bound parameters to copy from

| Property | Value |
|:---|:---|
| **Required?** | Yes |
| **Position?** | 0 |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-FunctionName <String>`

> Target function name to filter parameters

| Property | Value |
|:---|:---|
| **Required?** | Yes |
| **Position?** | 1 |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-DefaultValues <Object>`

> Default values for parameters

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | 2 |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
## Related Links

- [Confirm-InstallationConsent](https://github.com/genXdev/genXdev/blob/main/Docs/en-US/Confirm-InstallationConsent.md)
- [Copy-FilesToDateFolder](https://github.com/genXdev/genXdev/blob/main/Docs/en-US/Copy-FilesToDateFolder.md)
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

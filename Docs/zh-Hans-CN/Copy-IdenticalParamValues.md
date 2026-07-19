# Copy-IdenticalParamValues

> **Module:** GenXdev.FileSystem | **Type:** Cmdlet | **Aliases:** —

## Synopsis

> 根据另一个函数的可能参数，将绑定参数的副本值复制到一个新的哈希表中。

## Description

* 该 cmdlet 创建一个新的哈希表，仅包含与指定目标函数中定义的参数相匹配的参数值。
* 随后，可以利用生成的哈希表通过 PowerShell 展开（splatting）来调用该函数。
* 只有在绑定参数中显式提供并设置为 $true 的开关参数才会包含在结果中。
* 未出现的开关参数将从结果中排除，以保持正确的参数语义。

## Syntax

```powershell
Copy-IdenticalParamValues [-BoundParameters] <Object[]> [-FunctionName] <string> [[-DefaultValues] <Object>] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-BoundParameters` | Object[] | ✅ | — | 0 | — | 从源绑定参数复制 |
| `-FunctionName` | String | ✅ | — | 1 | — | 用于过滤参数的目标函数名 |
| `-DefaultValues` | Object | — | — | 2 | — | 参数的默认值 |

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

演示如何复制绑定参数以用于 splatting。

## Related Links

- [Copy-IdenticalParamValues on GitHub](https://github.com/genXdev/genXdev)

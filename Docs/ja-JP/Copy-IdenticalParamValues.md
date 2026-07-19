# Copy-IdenticalParamValues

> **Module:** GenXdev.FileSystem | **Type:** Cmdlet | **Aliases:** —

## Synopsis

> バインドされたパラメータから、別の関数の可能なパラメータに基づいて新しいハッシュテーブルにパラメータ値をコピーします。

## Description

* このコマンドレットは、指定されたターゲット関数で定義されたパラメータに一致するパラメータ値のみを含む新しいハッシュテーブルを作成します。
* 結果のハッシュテーブルは、PowerShellのスプラッティングを使用して関数を呼び出すために使用できます。
* スイッチパラメータは、バインドされたパラメータで明示的に指定され、$trueに設定されている場合のみ結果に含まれます。
* 存在しないスイッチパラメータは、適切なパラメータセマンティクスを維持するために結果から除外されます。

## Syntax

```powershell
Copy-IdenticalParamValues [-BoundParameters] <Object[]> [-FunctionName] <string> [[-DefaultValues] <Object>] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-BoundParameters` | Object[] | ✅ | — | 0 | — | コピー元のソースバインドパラメータ |
| `-FunctionName` | String | ✅ | — | 1 | — | パラメータをフィルタリングするターゲット関数名 |
| `-DefaultValues` | Object | — | — | 2 | — | パラメータのデフォルト値 |

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

スプラッティングで使用するためにバインドされたパラメータをコピーする方法を示します。

## Related Links

- [Copy-IdenticalParamValues on GitHub](https://github.com/genXdev/genXdev)

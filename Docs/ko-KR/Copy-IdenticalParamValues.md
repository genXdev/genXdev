# Copy-IdenticalParamValues

> **Module:** GenXdev.FileSystem | **Type:** Cmdlet | **Aliases:** —

## Synopsis

> 바인딩된 매개변수에서 값을 복사하여 다른 함수의 가능한 매개변수를 기반으로 새 해시테이블을 만듭니다.

## Description

* 이 cmdlet은 지정된 대상 함수에 정의된 매개변수와 일치하는 매개변수 값만 포함하는 새 해시테이블을 생성합니다.
* 결과 해시테이블은 PowerShell 스플래팅을 사용하여 함수를 호출하는 데 사용할 수 있습니다.
* 스위치 매개변수는 바인딩된 매개변수에서 명시적으로 제공되고 $true로 설정된 경우에만 결과에 포함됩니다.
* 제공되지 않은 스위치 매개변수는 적절한 매개변수 의미 체계를 유지하기 위해 결과에서 제외됩니다.

## Syntax

```powershell
Copy-IdenticalParamValues [-BoundParameters] <Object[]> [-FunctionName] <string> [[-DefaultValues] <Object>] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-BoundParameters` | Object[] | ✅ | — | 0 | — | 복사할 소스 바인딩 파라미터 |
| `-FunctionName` | String | ✅ | — | 1 | — | 매개변수를 필터링할 대상 함수 이름 |
| `-DefaultValues` | Object | — | — | 2 | — | 매개변수의 기본값 |

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

바인딩된 매개변수를 스플래팅에 사용하기 위해 복사하는 방법을 설명합니다.

## Related Links

- [Copy-IdenticalParamValues on GitHub](https://github.com/genXdev/genXdev)

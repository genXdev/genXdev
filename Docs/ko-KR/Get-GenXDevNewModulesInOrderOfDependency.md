# Get-GenXDevNewModulesInOrderOfDependency

> **Module:** GenXdev.Coding.PowerShell.Modules | **Type:** Function | **Aliases:** —

## Synopsis

> 종속성 순서로 GenXDev 모듈을 검색합니다.

## Description

이 함수는 올바른 모듈 로딩을 보장하기 위해 올바른 종속성 순서로 정렬된 GenXDev 모듈 목록을 반환합니다. 먼저 모든 모듈 정보를 검색한 다음 종속성을 기준으로 코어 모듈부터 시작하여 종속 모듈로 끝나도록 순서를 지정합니다. 이렇게 하면 모듈이 올바른 순서로 로드됩니다.

## Syntax

```powershell
Get-GenXDevNewModulesInOrderOfDependency [[-ModuleName] <String[]>] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-ModuleName` | String[] | — | ✅ (ByValue, ByPropertyName) | 0 | `@('GenXdev*')` | 필터링할 모듈 이름 하나 이상 |

## Examples

### Get-GenXDevNewModulesInOrderOfDependency -ModuleName "GenXdev.Helpers"

```powershell
Get-GenXDevNewModulesInOrderOfDependency -ModuleName "GenXdev.Helpers"
```

### "GenXdev.Console" | Get-GenXDevNewModulesInOrderOfDependency

```powershell
"GenXdev.Console" | Get-GenXDevNewModulesInOrderOfDependency
```

## Related Links

- [Get-GenXDevNewModulesInOrderOfDependency on GitHub](https://github.com/genXdev/genXdev)

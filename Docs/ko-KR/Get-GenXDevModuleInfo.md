# Get-GenXDevModuleInfo

> **Module:** GenXdev.Coding.PowerShell.Modules | **Type:** Function | **Aliases:** —

## Synopsis

> GenXdev PowerShell 모듈에 대한 자세한 정보를 검색합니다.

## Description

이 함수는 GenXdev PowerShell 모듈을 검사하여 해당 모듈의 구성, 버전 및 주요 파일의 존재 여부에 대한 정보를 반환합니다. 지정된 모듈 또는 사용 가능한 모든 모듈을 처리할 수 있습니다.

## Syntax

```powershell
Get-GenXDevModuleInfo [[-ModuleName] <String[]>] [-IncludeLocal] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-ModuleName` | String[] | — | ✅ (ByValue, ByPropertyName) | 0 | `@()` | 분석할 모듈의 이름 |
| `-IncludeLocal` | SwitchParameter | — | — | Named | — | The `-IncludeLocal` parameter. |

## Examples

### Get-GenXDevModuleInfo -ModuleName "GenXdev.Console"

```powershell
Get-GenXDevModuleInfo -ModuleName "GenXdev.Console"
```

### "GenXdev.Console" | Get-GenXDevModuleInfo

```powershell
"GenXdev.Console" | Get-GenXDevModuleInfo
```

## Related Links

- [Get-GenXDevModuleInfo on GitHub](https://github.com/genXdev/genXdev)

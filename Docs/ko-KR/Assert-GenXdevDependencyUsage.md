# Assert-GenXdevDependencyUsage

> **Module:** GenXdev.Coding.PowerShell.Modules | **Type:** Function | **Aliases:** `checkgenxdevdependencies

## Synopsis

> GenXDev 모듈 전반에 걸친 종속성 사용을 검증하여 적절한 모듈 계층 구조가 유지되도록 합니다.

## Description

이 함수는 GenXdev 모듈이 올바른 종속성 계층을 따르는지 분석합니다. 모듈이 RequiredModules 매니페스트에 나열된 종속성만 참조하는지 확인하고, 종속성 체인에서 나중에 오는 모듈을 참조하지 않도록 검증하여 순환 종속성을 방지합니다.

## Syntax

```powershell
Assert-GenXdevDependencyUsage [[-ModuleName] <String[]>] [-FromScripts] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-ModuleName` | String[] | — | ✅ (ByValue, ByPropertyName) | 1 | `@('GenXdev*')` | 모듈 이름에 적용할 필터 🌐 *Supports wildcards* |
| `-FromScripts` | SwitchParameter | — | — | Named | — | 스크립트 파일에서 검색 (모듈 파일 대신) |

## Examples

### Assert-GenXdevDependencyUsage -ModuleName "GenXdev.Coding"

```powershell
Assert-GenXdevDependencyUsage -ModuleName "GenXdev.Coding"
```

### checkgenxdevdependencies "GenXdev*" -FromScripts

```powershell
checkgenxdevdependencies "GenXdev*" -FromScripts
```

## Related Links

- [Assert-GenXdevDependencyUsage on GitHub](https://github.com/genXdev/genXdev)

# Assert-GenXdevDependencyUsage

> **Module:** GenXdev.Coding.PowerShell.Modules | **Type:** Function | **Aliases:** `checkgenxdevdependencies

## Synopsis

> *(No synopsis provided)*

## Syntax

```powershell
Assert-GenXdevDependencyUsage [[-ModuleName] <String[]>] [-FromScripts] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-ModuleName` | String[] | — | ✅ (ByValue, ByPropertyName) | 1 | `@('GenXdev*')` | 모듈 이름에 적용할 필터 🌐 *Supports wildcards* |
| `-FromScripts` | SwitchParameter | — | — | Named | — | 스크립트 파일에서 검색 (모듈 파일 대신) |

## Related Links

- [Assert-GenXdevDependencyUsage on GitHub](https://github.com/genXdev/genXdev)

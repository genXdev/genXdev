# Invoke-OnEachGenXdevModule

> **Module:** GenXdev.Helpers | **Type:** Function | **Aliases:** `foreach-genxdev-module-do

## Synopsis

> *(No synopsis provided)*

## Syntax

```powershell
Invoke-OnEachGenXdevModule -Script <ScriptBlock> [[-ModuleName] <String[]>] [-FromScripts] [-IncludeScripts] [-NoLocal] [-OnlyPublished] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-Script` | ScriptBlock | ✅ | — | 0 | — | 각 GenXdev 모듈에 대해 실행할 스크립트 블록 |
| `-ModuleName` | String[] | — | — | 1 | `@('GenXdev*')` | 모듈 이름에 적용할 필터 🌐 *Supports wildcards* |
| `-NoLocal` | SwitchParameter | — | — | Named | — | 로컬 개발 모듈을 처리에서 제외 |
| `-OnlyPublished` | SwitchParameter | — | — | Named | — | LICENSE 파일과 README.md 파일이 있는 게시된 모듈만 포함합니다. |
| `-FromScripts` | SwitchParameter | — | — | Named | — | 모듈 디렉토리 대신 스크립트 디렉토리 처리 |
| `-IncludeScripts` | SwitchParameter | — | — | Named | — | 일반 모듈 외에 scripts 디렉토리를 포함합니다 |

## Related Links

- [Invoke-OnEachGenXdevModule on GitHub](https://github.com/genXdev/genXdev)

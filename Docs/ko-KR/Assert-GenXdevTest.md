# Assert-GenXdevTest

> **Module:** GenXdev.Coding.PowerShell.Modules | **Type:** Function | **Aliases:** `rungenxdevtests

## Synopsis

> *(No synopsis provided)*

## Syntax

```powershell
Assert-GenXdevTest [[-CmdletName] <String>] [[-TestFailedAction] <String>] [[-DefinitionMatches] <String>] [[-ModuleName] <String[]>] [-AllowLongRunningTests] [-ExactMatch] [-FromScripts] [-NoLocal] [-OnlyPublished] [-OnlyReturnModuleNames] [-SkipPesterTests] [-SkipPSAnalyzerTests] [-StackTraceVerbosity <String>] [-Verbosity <String>] [<CommonParameters>]

Assert-GenXdevTest [-IncludeScripts] [-SkipModuleImports] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-CmdletName` | String | — | ✅ (ByPropertyName) | 0 | — | cmdlet을 필터링하는 검색 패턴 🌐 *Supports wildcards* |
| `-TestFailedAction` | String | — | — | 1 | `'Continue'` | 테스트 실패 시 수행할 작업. 옵션: Ask, Continue, Stop, SolveWithAI, Write-Error, Throw |
| `-DefinitionMatches` | String | — | ✅ (ByValue, ByPropertyName) | 2 | — | cmdlet 정의와 일치하는 정규 표현식 |
| `-ModuleName` | String[] | — | ✅ (ByValue, ByPropertyName) | 3 | — | GenXdev 모듈 검색 이름 🌐 *Supports wildcards* |
| `-NoLocal` | SwitchParameter | — | — | Named | — | 로컬 모듈 경로에서 검색 건너뛰기 |
| `-OnlyPublished` | SwitchParameter | — | — | Named | — | 게시된 모듈 경로에서만 검색 |
| `-FromScripts` | SwitchParameter | — | — | Named | — | 스크립트 파일에서 검색 (모듈 대신) |
| `-IncludeScripts` | SwitchParameter | — | — | Named | — | 일반 모듈 외에 scripts 디렉토리를 포함합니다 *(Parameter set: )* |
| `-OnlyReturnModuleNames` | SwitchParameter | — | — | Named | — | The `-OnlyReturnModuleNames` parameter. |
| `-ExactMatch` | SwitchParameter | — | — | Named | — | cmdlet 이름에 대해 정확히 일치해야 함 |
| `-Verbosity` | String | — | — | Named | `'Normal'` | 출력 상세 수준 |
| `-StackTraceVerbosity` | String | — | — | Named | `'FirstLine'` | 스택 트레이스 상세 수준 |
| `-AllowLongRunningTests` | SwitchParameter | — | — | Named | — | 또한 실행 시간이 긴 단위 테스트를 선택합니다 |
| `-SkipModuleImports` | SwitchParameter | — | — | Named | — | 테스트 전 GenXdev 모듈 가져오기 건너뛰기 *(Parameter set: )* |
| `-SkipPSAnalyzerTests` | SwitchParameter | — | — | Named | — | PSAnalyzer 테스트 호출을 건너뜁니다 |
| `-SkipPesterTests` | SwitchParameter | — | — | Named | — | Pester 테스트 호출을 건너뜁니다 |

## Related Links

- [Assert-GenXdevTest on GitHub](https://github.com/genXdev/genXdev)

# Invoke-OnEachGenXdevModule

> **Module:** GenXdev.Helpers | **Type:** Function | **Aliases:** `foreach-genxdev-module-do

## Synopsis

> 워크스페이스의 각 GenXdev 모듈에서 스크립트 블록을 실행합니다.

## Description

이 함수는 작업 영역에서 GenXdev 모듈을 반복하고 제공된 스크립트 블록을 각 모듈에 대해 실행합니다. 이름 패턴별로 모듈을 필터링하고, 로컬 모듈을 제외하고, 게시된 모듈만 포함하거나, 모듈 대신 스크립트를 처리할 수 있습니다. 함수는 스크립트 블록을 실행하기 전에 자동으로 올바른 모듈 디렉토리로 이동합니다.

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

## Examples

### Invoke-OnEachGenXdevModule -Script { Write-Host $args[0].Name }

```powershell
Invoke-OnEachGenXdevModule -Script { Write-Host $args[0].Name }
```

GenXdev.Coding,
GenXdev.Commands,
GenXdev.Console,
GenXdev.Core,
GenXdev.Data,
GenXdev.Dotnet,
GenXdev.Hosting,
GenXdev.IO,
GenXdev.Licensing,
GenXdev.Localization,
GenXdev.Media,
GenXdev.Networking,
GenXdev.Packaging,
GenXdev.Printing,
GenXdev.Security,
GenXdev.Speech,
GenXdev.Storage,
GenXdev.System,
GenXdev.Templates,
GenXdev.Text,
GenXdev.ThirdParty,
GenXdev.Web,
GenXdev.WebAPI,
GenXdev.Windows,
GenXdev.Xml

### foreach-genxdev-module-do {     param($ModuleObj, $isScriptsFolder, $isSubModule, $subModuleName)     Get-ChildItem } -ModuleName "GenXdev.AI"

```powershell
foreach-genxdev-module-do {
    param($ModuleObj, $isScriptsFolder, $isSubModule, $subModuleName)
    Get-ChildItem
} -ModuleName "GenXdev.AI"
```

별칭을 사용하여 GenXdev.AI 모듈 디렉토리의 내용을 나열합니다.

## Related Links

- [Invoke-OnEachGenXdevModule on GitHub](https://github.com/genXdev/genXdev)

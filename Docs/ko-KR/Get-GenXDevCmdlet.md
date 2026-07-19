# Get-GenXDevCmdlet

> **Module:** GenXdev.Helpers | **Type:** Function | **Aliases:** `gcmds

## Synopsis

> 모든 GenXdev cmdlet과 해당 세부 정보를 검색하여 나열합니다.

## Description

설치된 GenXdev 모듈 및 스크립트 파일을 검색하여 cmdlet, 별칭 및 설명을 찾습니다. 이름 패턴과 모듈 이름으로 필터링할 수 있습니다. cmdlet 정의로 필터링을 지원하며 로컬 및 게시된 모듈 경로 모두에서 유연한 검색 옵션을 제공합니다.

## Syntax

```powershell
Get-GenXDevCmdlet [[-CmdletName] <String[]>] [[-DefinitionMatches] <String>] [[-ModuleName] <String[]>] [-ExactMatch] [-FromScripts] [-NoLocal] [-OnlyPublished] [-OnlyReturnModuleNames] [<CommonParameters>]

Get-GenXDevCmdlet [-IncludeScripts] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-CmdletName` | String[] | — | ✅ (ByPropertyName) | 0 | — | cmdlet을 필터링하는 검색 패턴 🌐 *Supports wildcards* |
| `-DefinitionMatches` | String | — | ✅ (ByValue, ByPropertyName) | 1 | — | cmdlet 정의와 일치하는 정규 표현식 |
| `-ModuleName` | String[] | — | ✅ (ByValue, ByPropertyName) | 2 | — | GenXdev 모듈 검색 이름 🌐 *Supports wildcards* |
| `-NoLocal` | SwitchParameter | — | — | Named | — | 로컬 모듈 경로에서 검색 건너뛰기 |
| `-OnlyPublished` | SwitchParameter | — | — | Named | — | 게시된 모듈 경로에서만 검색 |
| `-FromScripts` | SwitchParameter | — | — | Named | — | 스크립트 파일에서 검색 (모듈 대신) |
| `-IncludeScripts` | SwitchParameter | — | — | Named | — | 일반 모듈 외에 scripts 디렉토리를 포함합니다 *(Parameter set: )* |
| `-OnlyReturnModuleNames` | SwitchParameter | — | — | Named | — | The `-OnlyReturnModuleNames` parameter. |
| `-ExactMatch` | SwitchParameter | — | — | Named | — | 와일드카드 일치 대신 정확히 일치 수행 |

## Examples

### Get-GenXDevCmdlet -CmdletName "Get-*" -ModuleName "Console" -NoLocal

```powershell
Get-GenXDevCmdlet -CmdletName "Get-*" -ModuleName "Console" -NoLocal
```

### gcmds Get-*

```powershell
gcmds Get-*
```

### Get-GenXDevCmdlet -OnlyReturnModuleNames

```powershell
Get-GenXDevCmdlet -OnlyReturnModuleNames
```

## Outputs

- `GenXdev.Helpers.GenXdevCmdletInfo`
- `String`

## Related Links

- [Get-GenXDevCmdlet on GitHub](https://github.com/genXdev/genXdev)

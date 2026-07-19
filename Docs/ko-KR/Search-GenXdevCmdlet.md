# Search-GenXdevCmdlet

> **Module:** GenXdev.Coding.PowerShell.Modules | **Type:** Function | **Aliases:** `searchcmdlet

## Synopsis

> GenXdev cmdlet을 검색하고 선택적으로 IDE에서 편집할 수 있도록 엽니다.

## Description

이 함수는 패턴을 사용하여 GenXdev cmdlet을 검색하고, 발견된 cmdlet의 소스 파일을 Visual Studio Code 또는 Visual Studio에서 선택적으로 열어 편집할 수 있도록 합니다. cmdlet 정보를 검색하고 함수 정의로 빠르게 이동할 수 있는 키보드 단축키를 제공합니다.

## Syntax

```powershell
Search-GenXdevCmdlet [[-CmdletName] <String>] [[-ModuleName] <String[]>] [-Code] [-EditCmdlet] [-FromScripts] [-NoLocal] [-OnlyPublished] [-VisualStudio] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-CmdletName` | String | — | — | 0 | — | cmdlet을 필터링하는 검색 패턴 🌐 *Supports wildcards* |
| `-ModuleName` | String[] | — | ✅ (ByValue, ByPropertyName) | 1 | — | GenXdev 모듈 검색 이름 🌐 *Supports wildcards* |
| `-NoLocal` | SwitchParameter | — | — | Named | — | 로컬 모듈 경로에서 검색 건너뛰기 |
| `-OnlyPublished` | SwitchParameter | — | — | Named | — | 검색을 발행된 모듈 경로로만 제한 |
| `-FromScripts` | SwitchParameter | — | — | Named | — | 스크립트 파일에서 검색 (모듈 파일 대신) |
| `-Code` | SwitchParameter | — | — | Named | — | Visual Studio Code에서 찾은 cmdlet을 엽니다. |
| `-VisualStudio` | SwitchParameter | — | — | Named | — | 발견된 cmdlet을 Visual Studio에서 열기 |
| `-EditCmdlet` | SwitchParameter | — | — | Named | — | 또한 찾은 후 편집기에서 파일을 엽니다 |

## Examples

### Search-GenXdevCmdlet -CmdletName "Get-*" -Code Opens first matching cmdlet starting with "Get-" in Visual Studio Code.

```powershell
Search-GenXdevCmdlet -CmdletName "Get-*" -Code
Opens first matching cmdlet starting with "Get-" in Visual Studio Code.
```

### searchcmdlet "Set-GitConfig" -EditCmdlet Searches for Set-GitConfig cmdlet and opens it for editing.

```powershell
searchcmdlet "Set-GitConfig" -EditCmdlet
Searches for Set-GitConfig cmdlet and opens it for editing.
```

## Related Links

- [Search-GenXdevCmdlet on GitHub](https://github.com/genXdev/genXdev)

# Search-GenXdevCmdlet

> **Module:** GenXdev.Coding.PowerShell.Modules | **Type:** Function | **Aliases:** `searchcmdlet

## Synopsis

> *(No synopsis provided)*

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

## Related Links

- [Search-GenXdevCmdlet on GitHub](https://github.com/genXdev/genXdev)
